(use-package eglot
  :ensure nil
  :hook ((rust-ts-mode . eglot-ensure)
         (nix-ts-mode . eglot-ensure)
         (python-ts-mode . eglot-ensure)
         (c-ts-mode . eglot-ensure)
         (cpp-ts-mode . eglot-ensure))
  :config
  (setq eglot-autoshutdown t))


(provide 'init-lsp)
