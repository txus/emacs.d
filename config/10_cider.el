(add-hook 'clojure-mode-hook 'cider-mode)
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
; (setq nrepl-hide-special-buffers t)
; (setq cider-repl-pop-to-buffer-on-connect nil)
(setq cider-stacktrace-fill-column 80)
(setq nrepl-buffer-name-show-port t)
(setq cider-repl-display-in-current-window t)
(setq cider-repl-result-prefix ";; => ")
(setq cider-repl-use-clojure-font-lock t)

(global-company-mode)

(add-hook 'cider-repl-mode-hook 'cider-repl-toggle-pretty-printing)
(add-hook 'cider-mode-hook 'cider-repl-toggle-pretty-printing)
