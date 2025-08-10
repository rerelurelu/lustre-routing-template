import ui/header
import lustre/element.{type Element}
import lustre/element/html
import lustre/attribute

pub fn view(attrs: List(attribute.Attribute(msg)), children: List(Element(msg))) -> Element(msg) {
  html.div([attribute.class("grid grid-rows-2"), ..attrs], [
    header.view(),
    html.div([attribute.class("p-4 place-self-center")], children)
  ])
}
