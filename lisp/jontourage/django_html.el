;; django_html.el --- hook for commenting selected regions in django-html

;; Thanks to http://xahlee.org/emacs/elisp_comment_handling.html

(add-hook 'django-html-mode-hook
  (lambda ()
  (define-key django-html-mode-map [remap comment-dwim] 
      'django-html-comment-dwim)))

(defun django-html-comment-dwim (arg)
  "Comment a selected region using 'M-;'.  If no region selected, comment
is added at end of line"
  (interactive "*P")
  (require 'newcomment)
  (let ((deactivate-mark nil) (comment-start "{#") (comment-end "#}"))
       (comment-dwim arg)))
