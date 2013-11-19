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
 '(custom-safe-themes (quote ("a3ed2ac2b5acf0765bf7f419f2e3c0c8b083e5ef512232e58d8b2339717f3483" "7b75b4406a1eec11a6d997b0c80f2a1286113c366edcc3abedc3ed49afd7d685" "238744911114fd238f7e3a7544537cfecdd31c17b274f921209d8f776ed8e8ac" "6bb35c604b8d510a3649455159346c61992c24a193b90d8d60066dc640724bc4" "3b1973119d3ca55a31abffd64cf6b7d12ce9de125ae07574dd43b90c5f9d5896" default)))
 '(org-agenda-files nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))
