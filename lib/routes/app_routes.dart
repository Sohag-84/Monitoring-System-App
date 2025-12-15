class AppRoutes {
  static Route login = Route(name: "Login", path: "/");
}

class Route {
  final String name;
  final String path;

  Route({required this.name, required this.path});
}
