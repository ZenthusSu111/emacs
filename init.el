
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory)) ; 載入 lisp資料夾

(require 'no-littering)
(require 'treesitter)
(require 'settings)
(require 'completion)
(require 'direnv)
(require 'lsp)
