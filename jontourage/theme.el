(require 'color-theme)
(setq color-theme-is-global t)

(add-to-list 'custom-theme-load-path "~/.emacs.d/vendor/custom-color-themes")

; (load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-all-hallows-eve.el")
; (color-theme-all-hallows-eve)

; (load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-railscasts.el")
; (color-theme-railscasts)

; (load-file "~/.emacs.d/vendor/twilight-emacs/color-theme-twilight.el")
; (color-theme-twilight)

; (load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-inspiration.el")
; (color-theme-inspiration)

; (load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-molokai.el")
; (color-theme-molokai)

;; soloarized color theme mode
; (add-to-list 'load-path "~/.emacs.d/vendor/emacs-color-theme-solarized")
; (load-file "~/.emacs.d/vendor/emacs-color-theme-solarized/color-theme-solarized.el")
; (color-theme-solarized-dark)
; (color-theme-solarized-light)

; (load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-zenburn.el")
; (color-theme-zenburn)

; (load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-textmate-monokai.el")
; (color-theme-monokai)

; (load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-heroku.el")
; (color-theme-heroku)

(load-file "~/.emacs.d/vendor/custom-color-themes/color-theme-tomorrow.el")
; (color-theme-tomorrow-night-eighties)
; (color-theme-tomorrow-night-bright)
(color-theme-tomorrow-night)
; (color-theme-tomorrow)
; (color-theme-tomorrow-night-blue)

; (load-file "~/.emacs.d/elpa/color-theme-github-0.0.3/color-theme-github.el")
; (color-theme-github)

; (load-file "~/.emacs.d/elpa/color-theme-molokai-0.1/color-theme-molokai.el")
; (color-theme-molokai)

; (load-file "~/.emacs.d/elpa/color-theme-monokai-0.0.5/color-theme-monokai.el")
; (color-theme-monokai)

; (load-file "~/.emacs.d/elpa/color-theme-railscasts-0.0.2/color-theme-railscasts.el")
; (color-theme-railscasts)

(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))