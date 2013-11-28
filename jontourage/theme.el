(require 'color-theme)
(color-theme-initialize)
; (setq color-theme-is-global t)

(add-to-list 'custom-theme-load-path "~/.emacs.d/vendor/custom-color-themes")
; (color-theme-initialize)

;; (load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-all-hallows-eve.el")
;; (color-theme-all-hallows-eve)

;; (load-file "~/.emacs.d/vendor/twilight-emacs/color-theme-twilight.el")
;; (color-theme-twilight)

;; (load-file "~/.emacs.d/vendor/custom-color-themes/monokai-dark-soda-theme.el")
;; (monokai-dark-soda)

;; (load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-inspiration.el")
;; (color-theme-inspiration)

;; (load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-molokai.el")
;; (color-theme-molokai)

;; soloarized color theme mode
;; (require 'color-theme-solarized)
;; (load-theme 'solarized-dark t)
;; (load-theme 'solarized-light t)

;; (load-theme 'heroku t)

;; (load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-tomorrow.el")
;; (color-theme-tomorrow-night-eighties)
;; (color-theme-tomorrow-night-bright)
;; (color-theme-tomorrow-night)
; (color-theme-tomorrow)
; (color-theme-tomorrow-night-blue)

(require 'color-theme-sanityinc-tomorrow)
(color-theme-sanityinc-tomorrow-eighties)

;; (load-file "~/.emacs.d/elpa/color-theme-molokai-0.1/color-theme-molokai.el")
;; (color-theme-molokai)

; (load-file "~/.emacs.d/elpa/color-theme-railscasts-0.0.2/color-theme-railscasts.el")
; (color-theme-railscasts)

(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))
