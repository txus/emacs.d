(add-to-list 'load-path "~/.emacs.d/config")

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(if (require 'quelpa nil t)
  t
  ; (quelpa '(quelpa :repo "quelpa/quelpa" :fetcher github) :upgrade t) ; auto upgrade on startup
  (with-temp-buffer
    (url-insert-file-contents "https://raw.github.com/quelpa/quelpa/master/bootstrap.el")
    (eval-buffer)))

(quelpa 'color-theme-approximate)
(quelpa 'evil)
(quelpa 'evil-tabs)
(quelpa 'evil-leader)
(quelpa 'evil-search-highlight-persist)
(quelpa 'projectile)
(quelpa 'helm)
(quelpa 'helm-projectile)
(quelpa 'ace-jump-mode)
(quelpa 'smooth-scrolling)
(quelpa 'key-chord)
(quelpa 'flycheck)
(quelpa 'powerline-evil)
(quelpa 'dtrt-indent)
(quelpa 'autopair)
(quelpa 'ag)
(quelpa 'color-identifiers-mode)
(quelpa 'rainbow-delimiters)
(quelpa 'magit)
(quelpa 'evil-paredit)
(quelpa 'dash)
(quelpa 'dash-at-point)
(quelpa 'clojure-mode)
(quelpa 'paredit)
(quelpa 'helm-company)
(quelpa 'cider)

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
(load "10_cider.el")

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
