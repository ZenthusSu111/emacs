(use-package eglot
  :ensure nil
  :hook ((rust-ts-mode . eglot-ensure)
         (nix-ts-mode . eglot-ensure)
         (python-ts-mode . eglot-ensure)
         (c-mode . eglot-ensure)
         (c++-mode . eglot-ensure))
  :config
  (setq eglot-autoshutdown t))


(provide 'lsp)