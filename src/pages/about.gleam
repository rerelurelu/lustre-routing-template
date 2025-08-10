import lustre/attribute
import lustre/element.{text}
import lustre/element/html

pub fn view() {
  html.div([attribute.class("text-2xl")], [text("About page")])
}
