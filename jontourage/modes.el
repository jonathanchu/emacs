;; others
; (load "jontourage/python")

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
(add-to-list 'auto-mode-alist '("\\.tpl$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.twig$" . html-mode))

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
(add-to-list 'load-path "~/.emacs.d/vendor")
(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)

;; sass, less
(add-to-list 'auto-mode-alist '("\\.scss$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.less$" . css-mode))

;; ctv
(add-to-list 'auto-mode-alist '("\\.ctv$" . nxml-mode))

;; hl tags mode
(require 'hl-tags-mode)
(add-hook 'sgml-mode-hook (lambda () (hl-tags-mode 1)))
(add-hook 'nxml-mode-hook (lambda () (hl-tags-mode 1)))

;; soloarized color theme mode
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-color-theme-solarized")

;; org mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
