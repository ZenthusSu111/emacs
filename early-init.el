;;; -------------------- PERFORMANCE & HACKS
;; HACK: inscrease startup speed

;; Delay garbage collection while Emacs is booting
(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6)

;; Schedule garbage collection sensible defaults for after booting
(add-hook 'after-init-hook
          (lambda ()
            (setq gc-cons-threshold (* 100 1024 1024)
                  gc-cons-percentage 0.1)))

;; Single VC backend inscreases booting speed
(setq vc-handled-backends '(Git))

;; Do not native compile if on battery power
(setopt native-comp-async-on-battery-power nil) ; EMACS-31



;; Avoid raising the *Messages* buffer if anything is still without
;; lexical bindings
(setq warning-minimum-level :error)  ; 提高警告程度 避免warning就導致emacs無法開啟
(setq warning-suppress-types '((lexical-binding)))

;; Always start Emacs and new frames maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))


(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'tooltip-mode) (tooltip-mode -1))
(if (fboundp 'fringe-mode) (fringe-mode -1))

(provide 'early-init)
