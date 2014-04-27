;; no toolbar
(when (functionp 'tool-bar-mode)
  (tool-bar-mode -1))

;; define toggle-fullscreen for now
(defun toggle-fullscreen ()
  "Toggle full screen"
  (interactive)
  (when window-system
    (set-frame-parameter
     nil 'fullscreen
     (when (not (frame-parameter nil 'fullscreen)) 'fullboth))))

(global-set-key (kbd "<C-s-268632070>") 'toggle-fullscreen)

;; no splash screen
(setq inhibit-startup-screen t)

;; no scrollbar
(set-scroll-bar-mode 'nil)

;; custom font
;; (set-default-font "-apple-Menlo-medium-normal-normal-*-12-*-*-*-m-0-iso10646-1")
;; (set-default-font "-apple-Menlo-medium-normal-normal-*-18-*-*-*-m-0-iso10646-1")
;; (set-default-font "-apple-Meslo_LG_S_DZ-medium-normal-normal-*-13-*-*-*-m-0-iso10646-1")
;; (set-default-font "-apple-Monaco-medium-normal-normal-*-11-*-*-*-m-0-iso10646-1")
;; (set-default-font "-apple-Ubuntu_Mono-medium-normal-normal-*-15-*-*-*-m-0-iso10646-1")
;; (set-default-font "-apple-Anonymous-medium-normal-normal-*-13-*-*-*-m-0-iso10646-1")
(set-default-font "-apple-Inconsolata-medium-normal-normal-*-15-*-*-*-m-0-iso10646-1")
;; (set-default-font "-apple-CosmicSansNeueMono-medium-normal-normal-*-15-*-*-*-m-0-iso10646-1")
;; (set-default-font "-apple-Source_Sans_pro-medium-normal-normal-*-15-*-*-*-m-0-iso10646-1")
(modify-frame-parameters nil '((wait-for-wm .nil)))

(set-face-attribute 'default nil :height 160)
(setq-default line-spacing 4)

;; show line number in mode line
(line-number-mode 1)

;; show column number in the mode line
(column-number-mode 1)

;; show extra whitespace
(setq show-trailing-whitespace t)

;; ensure last line is a return
(setq require-final-newline t)

;; set encoding
(prefer-coding-system 'utf-8)

;; allows syntax highlighting to work among other things
(global-font-lock-mode 1)

;; transparency using alpha values
; (add-to-list 'default-frame-alist '(alpha 97 50))

;; tab
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq indent-line-function 'insert-tab)

;; uniquify for better buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; ido
(require 'ido)
(ido-mode t)

;; cursor
(setq-default cursor-type 'bar)
(blink-cursor-mode 1)

;; highlight current line
;; (global-hl-line-mode 1)

;; highlight brackets
(require 'paren)
(show-paren-mode 1)

;; linum mode
(require 'linum)
(global-linum-mode 1)
(setq linum-format
    (lambda (line) (propertize
        (format (let ((w (length (number-to-string (count-lines (point-min) (point-max))))))
            (concat " %" (number-to-string w) "d ")) line) 'face 'linum)))


;; stop opening a new frame (window) for each file (for peepopen)
(setq ns-pop-up-frames nil)
;; (server-start)

;; make sure looking at most recent changes
(global-auto-revert-mode 1)

;; fullscreen mode
(global-set-key (kbd "M-RET") 'toggle-fullscreen)

;; whitespace cleanup
(global-whitespace-mode 1)
(setq whitespace-action '(auto-cleanup)) ;; automatically clean up bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab)) ;; only show bad whitespace

(display-time-mode 1)

; fill column indicator
(require 'fill-column-indicator)
(setq-default fci-rule-column 79)
(setq fci-rule-width 1)
(setq fci-rule-color "LightGrey")

;; autopair
;; (require 'autopair)
;; (autopair-global-mode t)

; packages
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                        ("marmalade" . "http://marmalade-repo.org/packages/")
                        ("melpa" . "http://melpa.milkbox.net/packages/")))

; window splits auto-balance
(setq window-combination-resize t)

(require 'package)
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

(setq default-directory "~/")

;; play nice
(define-coding-system-alias 'UTF-8 'utf-8)

;; scroll one line at a time
(setq scroll-step 1)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

;; highlight current line in linum mode
(require 'hlinum)
(hlinum-activate)
(setq linum-highlight-in-all-buffersp t)
