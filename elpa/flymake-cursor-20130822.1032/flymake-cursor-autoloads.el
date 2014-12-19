;;; flymake-cursor-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "flymake-cursor" "flymake-cursor.el" (21652
;;;;;;  39020 0 0))
;;; Generated autoloads from flymake-cursor.el

(autoload 'flyc/show-fly-error-at-point-now "flymake-cursor" "\
If the cursor is sitting on a flymake error, display
the error message in the  minibuffer.

\(fn)" t nil)

(autoload 'flyc/show-fly-error-at-point-pretty-soon "flymake-cursor" "\
If the cursor is sitting on a flymake error, grab the error,
and set a timer for \"pretty soon\". When the timer fires, the error
message will be displayed in the minibuffer.

This allows a post-command-hook to NOT cause the minibuffer to be
updated 10,000 times as a user scrolls through a buffer
quickly. Only when the user pauses on a line for more than a
second, does the flymake error message (if any) get displayed.

\(fn)" nil nil)

(eval-after-load "flymake" '(progn (defadvice flymake-goto-next-error (after flyc/display-message-1 activate compile) "Display the error in the mini-buffer rather than having to mouse over it" (flyc/show-fly-error-at-point-now)) (defadvice flymake-goto-prev-error (after flyc/display-message-2 activate compile) "Display the error in the mini-buffer rather than having to mouse over it" (flyc/show-fly-error-at-point-now)) (defadvice flymake-mode (before flyc/post-command-fn activate compile) "Add functionality to the post command hook so that if the\ncursor is sitting on a flymake error the error information is\ndisplayed in the minibuffer (rather than having to mouse over\nit)" (add-hook 'post-command-hook 'flyc/show-fly-error-at-point-pretty-soon t t))))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; flymake-cursor-autoloads.el ends here
