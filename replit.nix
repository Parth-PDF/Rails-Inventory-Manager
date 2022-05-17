{ pkgs }: {
  deps = [
    pkgs.ruby_3_1_2
    pkgs.rubyPackages_3_1_2.solargraph
    pkgs.rufo
    pkgs.sqlite
  ];
}
