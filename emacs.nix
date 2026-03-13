{ pkgs, config, ... }:

let
  emacsPath = "${config.home.homeDirectory}/zixos";
in {

  services.emacs = {

    enable = true;
  
  };



  programs.emacs = {

    enable = true;

    package = pkgs.emacs-gtk;

    extraPackages = epkgs: with epkgs; [
      treesit-grammars.with-all-grammars
    ];

  };

  xdg.configFile."emacs".source = config.lib.file.mkOutOfStoreSymlink "${emacsPath}/emacs";



  
}
