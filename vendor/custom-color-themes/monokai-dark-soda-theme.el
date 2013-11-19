;;; monokai-dark-soda-theme.el --- Custom face theme for Emacs

;; Copyright (C) 2010 Seth Chisamore
;; Theme inspired by https://github.com/mrlundis/Monokai-Dark-Soda.tmTheme

;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(deftheme monokai-dark-soda)

(custom-theme-set-faces
 'monokai-dark-soda
 '(default ((t (:background "#242424" :foreground "#F8F8F2" :weight bold))))
 '(cursor ((t (:background "#F8F8F0" :foreground "#EEDC82"))))
 '(region ((t (:background "#A63A62"))))
 '(mode-line ((t (:background "#EEDC82" :foreground "#EEDC82"))))
 '(mode-line-inactive ((t (:background "#EEDC82" :foreground "#EEDC82"))))
 '(fringe ((t (:background "#EEDC82"))))
 '(minibuffer-prompt ((t (:foreground "#EEDC82"))))
 '(font-lock-builtin-face ((t (:foreground "#FF80F4"))))
 '(font-lock-comment-face ((t (:foreground "#8C8C8C"))))
 '(font-lock-constant-face ((t (:foreground "#FF80F4"))))
 '(font-lock-function-name-face ((t (:foreground "#A6E22E"))))
 '(font-lock-keyword-face ((t (:foreground "#F92672"))))
 '(font-lock-string-face ((t (:foreground "#FFEE99"))))
 '(font-lock-type-face ((t (:foreground "#66D9EF" :italic))))
 '(font-lock-variable-name-face ((t (:foreground "#FD971F" :italic))))
 '(font-lock-warning-face ((t (:foreground "#EEDC82" :weight bold))))
 '(isearch ((t (:background "#EEDC82" :foreground "#EEDC82"))))
 '(lazy-highlight ((t (:background "#EEDC82"))))
 '(link ((t (:foreground "#EEDC82" :underline t))))
 '(link-visited ((t (:foreground "#EEDC82" :underline t))))
 '(button ((t (:underline t))))
 '(header-line ((t (:background "#EEDC82" :foreground "#EEDC82")))))

 ;; Enhanced-Ruby-Mode
 '(ruby-string-delimiter-face  ((t (:foreground "#5A6340"))))
 '(ruby-regexp-delimiter-face ((t (:foreground "orange"))))
 '(ruby-heredoc-delimiter-face ((t (:foreground "#9B859D"))))
 '(ruby-op-face ((t (:foreground "#CDA869"))))

(provide-theme 'monokai-dark-soda)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; monokai-dark-soda-theme.el  ends here
