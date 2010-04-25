(defun insert-soft-tab ()
  (interactive)
  (insert "    "))

(defun jontourage-indent ()
  (interactive)
  (insert "  "))

; for loading libraries in from the vendor directory
(defun vendor (library)
  (let* ((file (symbol-name library))
         (normal (concat "~/.emacs.d/vendor/" file))
         (suffix (concat normal ".el"))
         (jontourage (concat "~/.emacs.d/jontourage/" file)))
    (cond
     ((file-directory-p normal) (add-to-list 'load-path normal) (require library))
     ((file-directory-p suffix) (add-to-list 'load-path suffix) (require library))
     ((file-exists-p suffix) (require library)))
    (when (file-exists-p (concat jontourage ".el"))
      (load jontourage))))