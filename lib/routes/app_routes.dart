class AppRoutes {
  static Route login = Route(name: "Login", path: "/");
  static Route dashboard = Route(name: "Dashboard", path: "/dashboard");
}

class Route {
  final String name;
  final String path;

  Route({required this.name, required this.path});
}
