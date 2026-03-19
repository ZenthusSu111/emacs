(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory)) ; 載入 lisp資料夾

(require 'init-no-littering)
(require 'init-treesitter)
(require 'init-settings)
(require 'init-completion)
(require 'init-direnv)
(require 'init-lsp)
(require 'init-treemacs)
