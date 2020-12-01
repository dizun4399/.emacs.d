;;关闭工具栏
(tool-bar-mode -1)
;;关闭文件滑动控件
(scroll-bar-mode -1)
(menu-bar-mode -1)
;;关闭启动帮助动画
(setq inhibit-splash-screen t)
;;设置光标样式
(setq-default cursor-type 'bar)

;;(setq  initial-frame-alist (quote ((fullscreen . maximized))))
;;设置界面透明度
(setq alpha-list '((100 100) (95 65) (85 55) (75 45) (65 35))) 
(defun loop-alpha () 
  (interactive) 
  (let ((h (car alpha-list)))                ;; head value will set to 
    ((lambda (a ab) 
       (set-frame-parameter (selected-frame) 'alpha (list a ab)) 
       (add-to-list 'default-frame-alist (cons 'alpha (list a ab))) 
       ) (car h) (car (cdr h))) 
    (setq alpha-list (cdr (append alpha-list (list h)))) 
    ) 
  )
;;高亮当前行
(global-hl-line-mode t)
;;设置全局行号
(global-linum-mode t)

(provide 'init-ui)
