(defvar is-NixOS-p (file-exists-p "/etc/NIXOS"))

(use-package treesit-auto
  :custom
  (treesit-auto-install 'prompt) ; 如果缺少文法，詢問是否安裝
  :config
;  (treesit-auto-add-to-auto-mode-alist 'all)
  (global-treesit-auto-mode))
(setq treesit-auto-langs '(c cpp cmake c-sharp java lua html javascript tsx typescript vue  python rust go nix org bash markdown php sql yaml dockerfile))

(provide 'treesitter)
