; Evil
(require 'evil)
(evil-mode 1)

(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))

(global-evil-tabs-mode t)

(setq evil-leader/in-all-states 1)
(global-evil-leader-mode)
(evil-leader/set-leader ",")

(evil-leader/set-key
  "w" 'save-buffer
  "d" 'dash-at-point
  "q" 'save-buffers-kill-terminal
  "o" 'projectile-find-file
  "gs" 'magit-status
  "gb" 'magit-blame-mode
  "a" 'ag)

(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-bottom)

(define-key evil-visual-state-map (kbd ",co") 'comment-region)

(define-key evil-normal-state-map (kbd "C-u") (lambda ()
                    (interactive)
                    (evil-scroll-up nil)))
(define-key evil-normal-state-map (kbd "C-d") (lambda ()
                        (interactive)
                        (evil-scroll-down nil)))

(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

(evil-leader/set-key "v" 'split-window-right)
(evil-leader/set-key "h" 'split-window-below)

(key-chord-mode 1)
(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state)

(require 'evil-search-highlight-persist)
(global-evil-search-highlight-persist t)

(evil-leader/set-key "SPC" 'evil-search-highlight-persist-remove-all)
