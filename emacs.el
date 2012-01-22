(add-to-list 'load-path "~/.emacs.d")

;; (add-to-list 'exec-path "/usr/local/bin")
;; (setq magit-git-executable "/usr/local/bin/git")
(setq magit-git-executable "/usr/bin/git")

(load "local")
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/org/school.org" "~/org/work.org" "~/org/home.org"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
