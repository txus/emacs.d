; etags
(cond ((eq system-type 'gnu/linux)
       (setq path-to-ctags "/usr/local/bin/ctags")))

(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (shell-command
    (format "%s -f %s/tags -eR %s" path-to-ctags
            (directory-file-name dir-name) (directory-file-name dir-name))))
