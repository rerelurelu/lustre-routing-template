import lustre/element.{text}
import lustre/element/html
import lustre/attribute

pub fn view() {
  html.div([attribute.class("text-2xl")], [text("Hello, Lustre!")])
}
