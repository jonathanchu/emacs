;; no toolbar
(when (functionp 'tool-bar-mode)
  (tool-bar-mode -1))

;; no splash screen
(setq inhibit-startup-screen t)

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

;; uniquify for better buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; ido
(require 'ido)
(ido-mode t)

;; cursor
(setq-default cursor-type 'bar)