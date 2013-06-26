(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; mobileorg settings
(setq org-directory "~/org")
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
(setq org-mobile-inbox-for-pull "~/org/flagged.org")

(setq org-log-done t)

(setq org-agenda-files (list "~/org/projects.org"))
