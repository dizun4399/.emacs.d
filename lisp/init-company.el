;;(global-company-mode t)
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0.5)
;; weight by frequency
(setq company-transformers '(company-sort-by-occurrence))

(defvar company-mode/enable-yas t "Enable yasnippet for all backends.")

(defun company-mode/backend-with-yas (backend)
  (if (or (not company-mode/enable-yas) (and (listp backend)    (member 'company-yasnippet backend)))
  backend
(append (if (consp backend) backend (list backend))
        '(:with company-yasnippet))))

(setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))
(provide 'init-company)
