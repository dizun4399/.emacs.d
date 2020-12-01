;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))


;; add more personal func
;; new init-func.el 
;;(add-to-list 'load-path "~/rusta/first/target/debug/")
;;(require 'first)
;;(first-say-hello "Emacs")
;; (require 'init-func.el)
(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-keybindings)
(require 'org)


(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))


(load-file custom-file)















