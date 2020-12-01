(require 'yasnippet)

;; 使用Ctrl-c k作为唯一的触发快捷键
;; (define-key yas-minor-mode-map (kbd "<tab>") nil)
;; (define-key yas-minor-mode-map (kbd "TAB") nil)
;; (define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)

(setq yas-snippet-dirs
  '("~/.emacs.d/Mysnippets"))

(yas-global-mode t)
(provide 'init-yasnippet)
