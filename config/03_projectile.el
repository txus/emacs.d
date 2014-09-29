; Projectile

(projectile-global-mode)

(setq projectile-enable-caching t)

(setq projectile-require-project-root nil)

(evil-leader/set-key "o" 'projectile-find-file)
