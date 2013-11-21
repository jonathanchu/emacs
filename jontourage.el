(package-initialize)

(add-to-list 'load-path "~/.emacs.d/vendor")

(load "jontourage/global")
(load "jontourage/defuns")
(load "jontourage/bindings")
(load "jontourage/modes")
(load "jontourage/theme")
(load "jontourage/temp_files")
(load "jontourage/git")
(load "jontourage/yasnippet")
(load "jontourage/django_html")
(load "jontourage/coffee")
(load "jontourage/org_mode")

(vendor 'ack)
(vendor 'textmate)
(textmate-mode)
(vendor 'php-mode)
(vendor 'minimap)
(vendor 'yaml-mode)
