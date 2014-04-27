(package-initialize)

(add-to-list 'load-path "~/.emacs.d/vendor")

(load "jontourage/global")
(load "jontourage/defuns")
(load "jontourage/bindings")
(load "jontourage/modes")
(load "jontourage/theme")
(load "jontourage/temp_files")
(load "jontourage/django_html")

(vendor 'ack)
(vendor 'textmate)
(textmate-mode)
(vendor 'yaml-mode)
