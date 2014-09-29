(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

(add-to-list 'load-path "~/.emacs.d/config")

(load "00_basic.el")
(load "01_badwolf.el")
(load "02_evil.el")
(load "03_projectile.el")
(load "04_helm.el")
(load "05_etags.el")
(load "06_ace.el")
(load "07_smooth-scrolling.el")
(load "08_flycheck.el")
(load "09_powerline.el")

(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized))))) ;; start maximized

(require 'dtrt-indent)
(dtrt-indent-mode 1)

(define-key global-map (kbd "RET") 'newline-and-indent)

(require 'autopair)
(autopair-global-mode)

(setq make-backup-files nil)

(setq save-place-file "~/.emacs.d/saveplace")
(setq-default save-place t)
(require 'saveplace)

(setq gdb-many-windows t)

(require 'color-identifiers-mode)
(global-color-identifiers-mode)

(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

