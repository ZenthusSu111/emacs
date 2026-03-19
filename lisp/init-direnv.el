(use-package envrc
  :hook (after-init . envrc-global-mode)
  :config
  (setq envrc-process-type 'asynchronous))

(provide 'init-direnv)
