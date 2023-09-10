{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/23.11-pre";
  outputs = { self, nixpkgs}:
  let
    pkgs = import nixpkgs { system = "x86_64-linux"; };
  in
  {
    devShell.x86_64-linux = pkgs.mkShell {
      BuildInputs = with pkgs.buildPackages; [
        iperf
        nettools
        nmap
        traceroute
      ];
    };
  };
}
