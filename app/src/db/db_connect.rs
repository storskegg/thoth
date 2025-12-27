mod db;

use std::env;

use serde::{Deserialize, Serialize};
use surrealdb::engine::any;
use surrealdb::opt::auth::Root;
use tokio;
use chrono::{DateTime, Utc};

#[derive(Serialize, Deserialize)]
struct Project {
    name: String,
    description: String,
    status: String,
    priority: String,
    tags: Vec<String>,
    created_at: DateTime<Utc>,
}

fn db_connect() {
    let db_uri = env::var("SURREALDB_URI")?;
    // Open a connection
    let db = any::connect(db_uri).await?;

    // Select namespace and database
    db.use_ns("poc1").use_db("thoth").await?;

    let db_user = env::var("SURREALDB_AUTH_USER")?;
    let db_pass = env::var("SURREALDB_AUTH_PASS")?;

    // Authenticate
    db.signin(Root {
        username: db_user,
        password: db_pass,
    }).await?;

    // Create a record
    let project = Project {
        name: "SurrealDB Dashboard".to_string(),
        description: "A modern admin interface for SurrealDB".to_string(),
        status: "in_progress".to_string(),
        priority: "high".to_string(),
        tags: vec!["typescript".to_string(), "react".to_string(), "database".to_string()],
        created_at: Utc::now(),
    };

    db.create("project").content(project).await?;
}
