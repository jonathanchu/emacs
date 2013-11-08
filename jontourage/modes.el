;; others
; (load "jontourage/python")
(require 'python)

;; espresso mode
(autoload #'espresso-mode "espresso" "Start espresso-mode" t)
(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))

;; all modes
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; magit
(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")))

;; yaml
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))
(add-hook 'yaml-mode-hook
  '(lambda ()
    (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; tpl for smarty templates
;; (add-to-list 'auto-mode-alist '("\\.tpl$" . html-mode))
;; (add-to-list 'auto-mode-alist '("\\.twig$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.tpl?\\'" . web-mode))

;; markdown
(add-to-list 'load-path "~/.emacs.d/vendor/markdown-mode")
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.markdown" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.ron" . markdown-mode) auto-mode-alist))
(add-hook 'markdown-mode-hook '(lambda ()
                                 (define-key markdown-mode-map (kbd "A-r") 'markdown-preview)
                                 (define-key markdown-mode-map (kbd "<tab>") 'jontourage-mod-2-indent)))

;; django html mode
(add-to-list 'load-path "~/.emacs.d/vendor/django-html-mode")
(autoload 'django-html-mode "django-html-mode")
(add-to-list 'auto-mode-alist '("\\.[sx]?html?\\'" . django-html-mode))
(add-to-list 'auto-mode-alist '("\\.twig$" . django-html-mode))

;; zencoding mode
; (add-to-list 'load-path "~/vendor/zencoding/")
; (require 'zencoding-mode)
; (add-hook 'sgml-mode-hook 'zencoding-mode)

;; full-ack mode
(add-to-list 'load-path "~/.emacs.d/vendor/full-ack")
(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)

;; sass, less
; (add-to-list 'auto-mode-alist '("\\.scss$" . css-mode))
; (add-to-list 'auto-mode-alist '("\\.less$" . css-mode))

;; ctv
(add-to-list 'auto-mode-alist '("\\.ctv$" . nxml-mode))

;; hl tags mode
; (require 'hl-tags-mode)
; (add-hook 'sgml-mode-hook (lambda () (hl-tags-mode 1)))
; (add-hook 'nxml-mode-hook (lambda () (hl-tags-mode 1)))

;; org mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-to-list 'auto-mode-alist '("\\.org_archive\\'" . org-mode))

;; peepopen
(load "peepopen")

;; powerline
(require 'cl)
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-powerline")
(require 'powerline)

;; coffee mode
(add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode")
(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;; haml mode
(add-to-list 'load-path "~/.emacs.d/vendor/haml-mode")
(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))

;; less mode
(require 'less-mode)
(autoload 'less-mode "less-mode")

;; scss mode
(require 'scss-mode)
(autoload 'scss-mode "scss-mode")

;; lorem ipsum
(require 'lorem-ipsum)
(add-hook 'sgml-mode-hook (lambda ()
    (setq Lorem-ipsum-paragraph-separator "<br><br>\n"
        Lorem-ipsum-sentence-separator "&nbsp;&nbsp;"
        Lorem-ipsum-list-beginning "<ul>\n"
        Lorem-ipsum-list-bullet "<li>"
        Lorem-ipsum-list-item-end "</li>\n"
        Lorem-ipsum-list-end "</ul>\n")))

(autoload 'Lorem-ipsum-insert-paragraphs "lorem-ipsum" "" t)
(autoload 'Lorem-ipsum-insert-sentences "lorem-ipsum" "" t)
(autoload 'Lorem-ipsum-insert-list "lorem-ipsum" "" t)

;; tramp
(setq tramp-default-method "ssh")

;; deft
(require 'deft)
;(setq deft-extension "org")
(setq deft-extension "txt")
; (setq deft-directory "~/Dropbox/org")
(setq deft-directory "~/Dropbox/Simplenote")
; (setq deft-text-mode 'org-mode)
(setq deft-text-mode 'text-mode)
(setq deft-use-filename-as-title t)

;; web-mode
;; (require 'web-mode)
;; (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(require 'nav)
(nav-disable-overeager-window-splitting)
