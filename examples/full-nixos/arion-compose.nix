{
  docker-compose.services.webserver = { pkgs, ... }: {
    nixos.useInit = true;
    nixos.configuration.services.nginx.enable = true;
    nixos.configuration.services.nginx.virtualHosts.localhost.root = "${pkgs.nix.doc}/share/doc/nix/manual";
    service.useHostStore = true;
    service.ports = [
      "8000:80" # host:container
    ];
  };
}
