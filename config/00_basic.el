(color-theme-approximate-on)

(menu-bar-mode -1)

  ;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)

;; Disable backups
(setq backup-inhibited t)
;;disable auto save
(setq auto-save-default nil)
(setq inhibit-startup-message t)

(global-linum-mode 1)
(setq linum-format "%3d ")

(require 'iso-transl)

(show-paren-mode 1)
