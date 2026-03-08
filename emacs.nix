{ pkgs, config, ... }:

let
  emacsPath = "${config.home.homeDirectory}/zixos/emacs";
in {

  services.emacs = {

    enable = true;

    defaultEditor = true;

  };



  programs.emacs = {

    enable = true;

    package = pkgs.emacs-gtk;

    extraPackages = epkgs: with epkgs; [

      vterm

      treesit-grammars.with-all-grammars

      treesit-auto

    ];

  };

  xdg.configFile."emacs".source = config.lib.file.mkOutOfStoreSymlink "${configPath}/emacs";



  
}
