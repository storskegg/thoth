use leptos::prelude::*;
use leptos_meta::{Title};


/// Renders the home page of your application.
#[component]
pub fn HomePage() -> impl IntoView {
    // Creates a reactive value to update the button
    // let count = RwSignal::new(0);
    // let on_click_up = move |_| *count.write() += 1;
    // let on_click_down = move |_| *count.write() -= 1;

    let (count, set_value) = signal(0);
    let on_click_up = move |_| set_value.update(|value| *value += 1);
    let on_click_down = move |_| set_value.update(|value| *value -= 1);

    view! {
        // sets the document title
        <Title text="Welcome to Leptos"/>
        <main>
            <div class="bg-gradient-to-tl from-blue-800 to-blue-500 text-white font-mono flex flex-col min-h-screen">
                <div class="flex flex-row-reverse flex-wrap m-auto">
                    <button on:click=on_click_up class="rounded px-3 py-2 m-1 border-b-4 border-l-2 shadow-lg bg-blue-700 border-blue-800 text-white">
                        "+"
                    </button>
                    <button class="rounded px-3 py-2 m-1 border-b-4 border-l-2 shadow-lg bg-blue-800 border-blue-900 text-white">
                        {count}
                    </button>
                    <button
                        on:click=on_click_down
                        class="rounded px-3 py-2 m-1 border-b-4 border-l-2 shadow-lg bg-blue-700 border-blue-800 text-white"
                        class:invisible=move || {count.get() <= -10}
                    >
                        "-"
                    </button>
                </div>
            </div>
        </main>
    }
}
