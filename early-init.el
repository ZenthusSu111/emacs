;;; disable use-package auto download
(defvar is-NixOS (file-exists-p "/etc/NIXOS"))

(if is-NixOS
    (setq use-package-always-ensure nil)
  (setq use-package-always-ensure t))

;;; disable menu-bar
(when (fboundp 'menu-bar-mode)
  (menu-bar-mode -1))

;;; disable tool-bar
(when (fboundp 'tool-bar-mode)
	(tool-bar-mode -1))
;;; disable bell ring
(setq-default ring-bell-function 'ignore)
;;; disable startup screen
(setq-default inhibit-startup-screen t)


(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))
;;; 行號顯示
(global-display-line-numbers-mode 1)
;;; 相對行號
(setq display-line-numbers-type 'relative)
