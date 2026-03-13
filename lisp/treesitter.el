(defvar is-NixOS-p (file-exists-p "/etc/NIXOS"))

(use-package treesit-auto
  :custom
  (treesit-auto-install (not is-NixOS-p))
  :config
  (treesit-auto-add-to-auto-mode-alist 'all) ; 將所有支援的語言加入關聯
  (global-treesit-auto-mode))
  
(provide 'treesitter)