{
  inpus.nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
  outputs = { self, nixpkgs}:
  let
    pkgs = imports nixpkgs { system = "x86_64-linux"; };
  in
  {
    devShell.x86_64-linux - pkgs.mkShell {
      BuildInputs = with pkgs.buildPackages; [
        iperf
        nettools
        nmap
        traceroute
      ];
    }
  };
}
