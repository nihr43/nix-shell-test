{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = with pkgs.buildPackages; [
      iperf
      nettools
      nmap
      traceroute
    ];
}
