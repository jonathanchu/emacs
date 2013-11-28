;;; projector-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (projector-switch-to-shell-buffer-in-project projector-switch-to-shell-buffer
;;;;;;  projector-open-project-shell projector-switch-to-or-create-project-shell
;;;;;;  projector-run-shell-command-current-directory-background
;;;;;;  projector-run-shell-command-current-directory projector-run-shell-command-project-root-background
;;;;;;  projector-run-shell-command-project-root) "projector" "projector.el"
;;;;;;  (21131 7870 0 0))
;;; Generated autoloads from projector.el

(autoload 'projector-run-shell-command-project-root "projector" "\
Execute command from minibuffer at the projector root.
By default, it outputs into a dedicated buffer.
With the optional argument NOTIFY-ON-EXIT, execute command in the background
and send the exit message as a notification.

\(fn &optional NOTIFY-ON-EXIT)" t nil)

(autoload 'projector-run-shell-command-project-root-background "projector" "\
Execute command from minibuffer at the projector root in the background.
Sends the exit message as a notification.

\(fn)" t nil)

(autoload 'projector-run-shell-command-current-directory "projector" "\
Execute command from minibuffer in the current directory.
By default, it outputs into a dedicated buffer.
With the optional argument NOTIFY-ON-EXIT, execute command in the background
and send the exit message as a notification.

\(fn &optional NOTIFY-ON-EXIT)" t nil)

(autoload 'projector-run-shell-command-current-directory-background "projector" "\
Execute command from minibuffer in the current directory.
Sends the exit message as a notification.

\(fn)" t nil)

(autoload 'projector-switch-to-or-create-project-shell "projector" "\
Find or create a dedicated shell for the current repository.

\(fn)" t nil)

(autoload 'projector-open-project-shell "projector" "\
Use `ido-completing-read' to find or create a project shell for a repository.

\(fn)" t nil)

(autoload 'projector-switch-to-shell-buffer "projector" "\
Use `ido-completing-read' to switch to an open projector shell buffer.

\(fn)" t nil)

(autoload 'projector-switch-to-shell-buffer-in-project "projector" "\
Use `ido-completing-read' to switch to an open projector shell buffer in the current repository.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("projector-pkg.el") (21131 7870 518787
;;;;;;  0))

;;;***

(provide 'projector-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; projector-autoloads.el ends here
