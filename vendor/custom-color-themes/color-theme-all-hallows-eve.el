;; All Hallows Eve Color Theme for Emacs.
;;
;; MIT License Copyright (c) 2010 Jonathan Chu
;;

(defun color-theme-all-hallows-eve ()
  (interactive)
  (color-theme-install
   '(color-theme-all-hallows-eve
     ; ((background-color . "#292929")
     ; ((background-color . "#141414")
     ((background-color . "#000000")
	  (background-mode . dark)
	  (cursor-color . "#73597E")
      (foreground-color . "#FFFFFF"))
     ; (default ((t nil)))
     (default ((t (:background "#141414" :foreground "#CACACA"))))
	 (bold ((t (:bold t))))
	 (bold-italic ((t (:italic t :bold t))))
	 (buffers-tab ((t (:background "#141414" :foreground "#CACACA"))))
     (font-lock-builtin-face ((t (:foreground "#cacaca"))))
     (font-lock-comment-face ((t (:foreground "#ab51d5" :italic t))))
	 (font-lock-constant-face ((t (:foreground "#3387CC"))))
	 (font-lock-doc-string-face ((t (:foreground "red"))))
     ; (font-lock-function-name-face ((t (:foreground "white"))))
     ; (font-lock-function-name-face ((t (:foreground "#9B703F"))))
     (font-lock-function-name-face ((t (:foreground "#FFC66D"))))
	 (font-lock-keyword-face ((t (:foreground "#CC7833"))))
	 (font-lock-preprocessor-face ((t (:foreground "#CC7833"))))
	 (font-lock-reference-face ((t (:foreground "red"))))
     ; (font-lock-string-face ((t (:foreground "#66CC33"))))
	 (font-lock-string-face ((t (:foreground "#8F9D6A"))))
     ; (font-lock-type-face ((t (:foreground "white"))))
     (font-lock-type-face ((t (:foreground "#9B703F"))))
     ; (font-lock-type-face ((t (:foreground "#66CC33"))))
     ; (font-lock-variable-name-face ((t (:foreground "white"))))
     (font-lock-variable-name-face ((t (:foreground "#66CC33"))))
     (font-lock-string-face ((t (:foreground "#66CC33"))))
	 (font-lock-warning-face ((t (:foreground "red"))))
	 
	 (minibuffer-prompt ((t (:foreground "#5F5A60"))))
     (ido-subdir ((t (:foreground "#CF6A4C"))))
     (ido-first-match ((t (:foreground "#8F9D6A"))))
     (ido-only-match ((t (:foreground "#8F9D6A"))))
     (mumamo-background-chunk-submode ((t (:background "#222222"))))
	 
	 (highlight ((t (:background "red"))))
	 (italic ((t (:italic t))))
	 (underline ((t (:underline t)))))))