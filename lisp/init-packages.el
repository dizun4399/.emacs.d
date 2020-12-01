(require 'cl)

(when (>= emacs-major-version 24)
  (add-to-list 'package-archives '("gnu"   . "http://elpa.emacs-china.org/gnu/") t)
  (add-to-list 'package-archives '("melpa" . "http://elpa.emacs-china.org/melpa/") t)
  
  )

;;add whatever packages you want here
(defvar zilongshanren/packages '(
                 company
                 monokai-theme
                 hungry-delete
                 swiper
                 counsel
                 smartparens
                 js2-mode
		 yasnippet
                 nodejs-repl
                 exec-path-from-shell
                 popwin
                 reveal-in-osx-finder
                 web-mode
                 js2-refactor
                 expand-region
                 iedit
		 magit
		 web-server
                 )  "Default packages")

(setq package-selected-packages zilongshanren/packages)

(defun zilongshanren/packages-installed-p ()
  (loop for pkg in zilongshanren/packages
    when (not (package-installed-p pkg)) do (return nil)
    finally (return t)))

(unless (zilongshanren/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg zilongshanren/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; let emacs could find the execuable
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))





(ivy-mode 1)
(setq ivy-use-virtual-buffers t)



(require 'web-server)







(require 'popwin)    ;;when require, wh(setq company-minimum-prefix-length 1)en not require
(popwin-mode t)



(require 'init-web)
(require 'init-emacs-lisp)
(require 'init-theme)
(require 'init-yasnippet)
(require 'init-company)
(provide 'init-packages)
