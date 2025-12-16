class AppRoutes {
  static Route login = Route(name: "Login", path: "/");
  static Route dashboard = Route(name: "Dashboard", path: "/dashboard");

  static Route gridItemDetails = Route(
    name: "GridItemDetails",
    path: "/grid-item-details",
  );

  static Route srouceTabDetails = Route(
    name: "SourceTabDetails",
    path: "/source-tab-details",
  );
}

class Route {
  final String name;
  final String path;

  Route({required this.name, required this.path});
}
