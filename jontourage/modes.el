;; others
; (load "jontourage/python")
(require 'python)

;; espresso mode
;; (autoload #'espresso-mode "espresso" "Start espresso-mode" t)
;; (add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
;; (add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))

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
;; (add-to-list 'auto-mode-alist '("\\.tpl?\\'" . web-mode))

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
;; (add-to-list 'load-path "~/.emacs.d/vendor/full-ack")
;; (autoload 'ack-same "full-ack" nil t)
;; (autoload 'ack "full-ack" nil t)
;; (autoload 'ack-find-same-file "full-ack" nil t)
;; (autoload 'ack-find-file "full-ack" nil t)

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

;; nav-mode
(require 'nav)
(nav-disable-overeager-window-splitting)

;; dirtree mode
(require 'dirtree)
(defun ep-dirtree()
    (interactive)
    (dirtree-in-buffer eproject-root t))

;; speedbar
;; (setq speedbar-mode-hook '(lambda ()
;;     (interactive)
;;     (other-frame 0)))

;; python-mode
(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
;; (require 'python-mode)

;; pymacs
; (add-to-list 'load-path "~/.emacs.d/vendor/pymacs")
(add-to-list 'load-path "~/.emacs.d/elpa/pymacs-0.25")
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-autoload "pymacs")

(setenv "PYMACS_PYTHON" "/usr/local/bin/python")

;; ropemacs
(require 'pymacs)
(add-to-list 'load-path "~/.emacs.d/vendor/ropemacs")
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)

(setq py-load-pymacs-p 'nil)

;; auto-complete
(require 'auto-complete)
(global-auto-complete-mode t)

;; projectile
(projectile-global-mode)
(setq projectile-completion-system 'grizzl)

;; flx-ido
(require 'flx-ido)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-use-faces nil)

;; flymake-easy
(require 'flymake-easy)

;; flymake-python-pyflakes
(require 'flymake-python-pyflakes)
(add-hook 'python-mode-hook 'flymake-mode)
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
(setq flymake-python-pyflakes-executable "flake8")
(require 'flymake-cursor)

(setq gc-cons-threshold 20000000)

;; jshint-mode
(add-to-list 'load-path "~/.emacs.d/vendor/jshint-mode")
(require 'flymake-jshint)
(add-hook 'javascript-mode-hook
     (lambda () (flymake-mode t)))

(add-hook 'find-file-hook 'flymake-find-file-hook)
(defun flymake-xml-init ())

;; mo-git-blame
(add-to-list 'load-path "~/.emacs.d/vendor/mo-git-blame")
(autoload 'mo-git-blame-file "mo-git-blame" nil t)
(autoload 'mo-git-blame-current "mo-git-blame" nil t)
