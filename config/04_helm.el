; Heml
(helm-mode 1)

;; helm settings (TAB in helm window for actions over selected items,
;; C-SPC to select items)
(require 'helm-config)
(require 'helm-misc)
(require 'helm-projectile)
(require 'helm-locate)
(setq helm-quick-update t)
(setq helm-bookmark-show-location t)
(setq helm-buffers-fuzzy-matching t)

(define-key evil-normal-state-map " " 'helm-mini)

(global-set-key (kbd "M-x") 'helm-M-x)
