; general
(global-set-key "\M-i" 'insert-soft-tab)
(global-set-key [C-return] 'jontourage-duplicate-line)
(global-set-key "\C-xg" 'magit-status)

;; org mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
;; (global-set-key "\C-cb" 'org-iswitchb)

;; sorting
(global-set-key (kbd "M-`") 'sort-lines)

;; deletion
(global-set-key (kbd "C-D") 'delete-char)
(global-set-key (kbd "C-S-D") 'kill-word)
(global-set-key (kbd "C-c C-o") 'just-one-space)

;; font-size
(define-key global-map (kbd "C-=") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; mo-git-blame
(global-set-key [?\C-c ?g ?c] 'mo-git-blame-current)
(global-set-key [?\C-c ?g ?f] 'mo-git-blame-file)

;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
