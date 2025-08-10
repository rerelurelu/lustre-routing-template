import ui/layout
import gleam/result
import gleam/uri
import lustre
import lustre/effect
import modem

import pages/index
import pages/about

pub type Route { Home About }
pub type Msg { UrlChanged(Route) }

fn parse_route(u: uri.Uri) -> Route {
  case uri.path_segments(u.path) {
    ["about"] -> About
    _ -> Home
  }
}

fn on_url_change(u: uri.Uri) -> Msg {
  UrlChanged(parse_route(u))
}

fn init(_) -> #(Route, effect.Effect(Msg)) {
  let route =
    modem.initial_uri()
    |> result.map(parse_route)
    |> result.unwrap(Home)
  #(route, modem.init(on_url_change))
}

fn update(_model: Route, msg: Msg) -> #(Route, effect.Effect(Msg)) {
  case msg { UrlChanged(next) -> #(next, effect.none()) }
}

fn view(route: Route) {
  layout.view([], [
    case route {
      Home -> index.view()
      About -> about.view()
    }
  ])
}

pub fn main() {
  let app = lustre.application(init, update, view)
  let assert Ok(_) = lustre.start(app, "#app", [])
  Nil
}
