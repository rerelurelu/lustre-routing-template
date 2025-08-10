import lustre/element.{type Element, text}
import lustre/element/html
import lustre/attribute

pub fn view() -> Element(msg) {
  html.header([attribute.class("bg-white shadow-sm border-b border-gray-200")], [
    html.div([attribute.class("mx-auto px-6 py-4")], [
      html.div([attribute.class("flex items-center justify-between")], [
        html.h1([attribute.class("text-2xl font-bold text-fuchsia-400")], [
          text("Lustre Routing Template")
        ]),

        html.nav([attribute.class("flex space-x-8")], [
          html.a([
            attribute.href("/"),
            attribute.class("text-gray-700 hover:text-blue-600 transition-colors duration-200")
          ], [text("Home")]),

          html.a([
            attribute.href("/about"),
            attribute.class("text-gray-700 hover:text-blue-600 transition-colors duration-200")
          ], [text("About")])
        ])
      ])
    ])
  ])
}
