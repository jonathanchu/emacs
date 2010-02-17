(add-to-list 'load-path "~/.emacs.d/vendor")

(load "jontourage/global")
(load "jontourage/defuns")
(load "jontourage/bindings")
(load "jontourage/modes")
(load "jontourage/theme")
(load "jontourage/temp_files")
(load "jontourage/git")

(vendor 'magit)
(vendor 'textmate)
(textmate-mode)
(vendor 'php-mode)
(vendor 'minimap)
(vendor 'yaml-mode)