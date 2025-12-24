# thoth

## About

The goal of this project is to be an online reference to the ancient Egyptian hieroglyphs, and a dictionary of the
various ancient Egyptian languages as written in hieroglyphs.

While I initially started this project for personal use, this project aims to provide a comprehensive resource for 
scholars, students, and enthusiasts alike who are interested in ancient Egyptian culture and language. By offering a
digital platform for exploring hieroglyphs and their meanings, I hope to facilitate a deeper understanding and
appreciation of this rich and complex civilization.

If you have any questions or feedback, please feel free to reach out to me. I am always open to suggestions and ideas
for improving this project.


## Tech Choices

### Data Store

I've chosen to use SurrealDB, a Rust-based database with its own SQL-like query language. Initially chosen simply for
the purpose of gaining experience with it and its query language, it turns out that its flexibility of relationships,
and accessors as both relational and graph-based make it a great fit for the unique complexities of this project.

The schema can be found in the `schema` directory.

### Backend

I haven't chosen a backend language, yet. If I'm going with what I know, it'll be Go. If I want to slow down, and brush
up elsewhere, it'll be Rust.

### Frontend

This will depend on the backend language. If I go with Go, I'll likely use a React frontend. If I go with Rust, I'll
likely use something like Leptos with whatever CSS framework seems in vogue. (Foundation, maybe SemanticUI still exists?)


## Acknowledgements

### Literature

Without their exceptional scholarship and contributions to the field of Egyptology, this project would not be possible.
Myself and all contemporary scholars (academic and armchair alike) owe a great deal to the following contributors to the
field (alphabetically):

- Allen, James P.
- Borghouts, Joris F.
- Gardiner, Sir Alan H.
- Hornung, Erik
- Ritner, Robert K.

This list is by no means comprehensive, but it does represent the bulk of authors on the subject on my shelves.

### Digital Assets

This project gratefully makes significant use of open source and free-use resources. Each resource comes with its own
copyright and license(s). The maintainers of each resource are acknowledged for their contributions and support.

- Dr. Nederhof's [resjs](https://github.com/nederhof/resjs)
- Dr. Nederhof's [NewRitner](https://github.com/nederhof/NewRitner) font, but as taken from the `resjs` repository, not
  from the original source. NOTE: The NewRitner TTF has been converted to WOFF2 for use in this project, with efforts
  made to preserve the original font's characteristics as determinable from a TTX dump comparison.

### Personal

A special thanks to my partner. She has shown a great deal of patience with me as I repeatedly purchase books I really
can't afford. It makes my brain happy, and she "loves that for me." :-P Moreso...because I have nobody else to discuss
this shit with, she gets to hear it all long after her eyes glass over. Like I said, a lot of patience.

Sorry-not-sorry.


## License

This project is licensed under the Apache License, Version 2.0 (the "License"); you may not use the contents of this
repository except in compliance with the License. You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific
language governing permissions and limitations under the License.
