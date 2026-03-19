(use-package emacs
  :ensure nil
  :init
  :config
  (global-display-line-numbers-mode t)
  
  :custom
  (use-package-always-ensure t)                   ; use-package 預設下載套件
  (create-lockfiles nil)                          ; 關閉lock-files
  (ring-bell-function 'ignore)                    ; 關閉bell
  (display-line-numbers-type 'relative)           ; 開啟相對行號
  (line-number-mode t)                            ; 行號
  (column-number-mode t)                          ; 相對行號
  (blink-cursor-mode nil)                         ; 光標閃爍
  (tab-width 4)
  (line-spacing nil)                              ; 使用字體的間距
  (initial-scratch-message """")                  ; 讓預設buffer沒有文字出現
  (frame-resize-pixelwise t)                      ; 以像素為標準縮放視窗而非字元
  (delete-selection-mode t)                       ; 反白選取後直接覆蓋 而不是貼上
  (help-window-select t)                          ; help文檔開啟後光標自動轉換
  (use-short-answer t)                            ; yes/no詢問簡化為y/n
)
;;; load theme
(load-theme 'modus-vivendi-tinted t)

(add-to-list 'default-frame-alist
             '(font . "Iosevka Nerd Font-16"))

;;; 關閉shell treemacs 行數顯示
(dolist (hook '(treemacs-mode-hook
				eshell-mode-hook))
  (add-hook hook (lambda () (display-line-numbers-mode -1))))

;;; 讓eshell彈出在下方
(add-to-list 'display-buffer-alist
  '("\\*eshell\\*"
    (display-buffer-in-side-window)
    (side . bottom)
    (slot . 0)
    (window-height . 0.3)))


(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)


(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(provide 'init-settings)
