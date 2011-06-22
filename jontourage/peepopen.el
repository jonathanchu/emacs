;;;###autoload
(defun peepopen-goto-file-gui ()
  "Uses external GUI app to quickly jump to a file in the project."
  (interactive)
  (defun string-join (separator strings)
    "Join all STRINGS using SEPARATOR."
    (mapconcat 'identity strings separator))
  (let ((root (textmate-project-root)))
    (when (null root)
      (error
       (concat
        "Can't find a suitable project root ("
        (string-join " " *textmate-project-roots* )
        ")")))
    (shell-command-to-string
     (format "open -a PeepOpen '%s'"
             (expand-file-name root)))))

;;;###autoload
(defun peepopen-bind-keys ()
  (cond ((featurep 'aquamacs) (peepopen-bind-aquamacs-keys))
	((featurep 'mac-carbon) (peepopen-bind-carbon-keys))
	((featurep 'ns) (peepopen-bind-ns-keys))))

(defun peepopen-bind-aquamacs-keys ()
  ;; Need `osx-key-mode-map' to override
  (define-key osx-key-mode-map (kbd "A-t") 'peepopen-goto-file-gui)
  (define-key *textmate-mode-map* (kbd "A-t") 'peepopen-goto-file-gui))

(defun peepopen-bind-carbon-keys ()
  (define-key *textmate-mode-map* [(meta t)] 'peepopen-goto-file-gui))

(defun peepopen-bind-ns-keys ()
  (define-key *textmate-mode-map* [(super t)] 'peepopen-goto-file-gui))

;;;###autoload
(add-hook 'textmate-mode-hook 'peepopen-bind-keys)

(provide 'peepopen)