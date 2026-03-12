{ pkgs, config, ... }:

let
  emacsPath = "${config.home.homeDirectory}/zixos";
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
      nix-ts-mode

      nerd-icons

      orderless
      corfu
      marginalia
      cape
      vertico
      consult
      magit
      envrc
    ];

  };

  home.packages = with pkgs; [
    nixd
  ];

  programs = {
    direnv = {
      enable = true;
      enableBashIntegration = true; # see note on other shells below
      nix-direnv.enable = true;
    };

    bash.enable = true; # see note on other shells below
  };

  xdg.configFile."emacs".source = config.lib.file.mkOutOfStoreSymlink "${emacsPath}/emacs";



  
}
