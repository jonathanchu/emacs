(require 'color-theme)
; (setq color-theme-is-global t)

(add-to-list 'custom-theme-load-path "~/.emacs.d/vendor/custom-color-themes")
; (color-theme-initialize)

;; (load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-all-hallows-eve.el")
;; (color-theme-all-hallows-eve)

;; (load-file "~/.emacs.d/vendor/twilight-emacs/color-theme-twilight.el")
;; (color-theme-twilight)

;;(load-file "~/.emacs.d/vendor/custom-color-themes/monokai-dark-soda-theme.el")
;; (monokai-dark-soda)

;; (load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-inspiration.el")
;; (color-theme-inspiration)

;; (load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-molokai.el")
;; (color-theme-molokai)

;; soloarized color theme mode
;; (require 'color-theme-solarized)
;; (load-theme 'solarized-dark t)
;; (load-theme 'solarized-light t)

; (load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-heroku.el")
; (color-theme-heroku)
; (load-theme 'heroku t)

;; (load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-tomorrow.el")
;; (color-theme-tomorrow-night-eighties)
;; (color-theme-tomorrow-night-bright)
;; (color-theme-tomorrow-night)
;; (color-theme-tomorrow)
; (color-theme-tomorrow-night-blue)

;; (load-file "~/.emacs.d/elpa/color-theme-molokai-0.1/color-theme-molokai.el")
;; (color-theme-molokai)

;; (load-file "~/.emacs.d/elpa/color-theme-railscasts-0.0.2/color-theme-railscasts.el")
;; (load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-railscasts.el")
;; (color-theme-railscasts)

;; (load-theme 'base16-monokai t)

;; (load-file "~/.emacs.d/vendor/custom-color-themes/atom-dark-theme.el")
(load-file "~/.emacs.d/vendor/custom-color-themes/oceanic-eighties-theme.el")

;; (load-file "~/.emacs.d/vendor/custom-color-themes/justine256-theme.el")


;(custom-set-faces
; '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
; '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))
;#4182c4

(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "#4182c4" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))
