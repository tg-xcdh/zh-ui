;; https://www.cnblogs.com/FengXueTing-px/p/5614367.html
;;(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(make-backup-files nil)
 '(package-selected-packages (quote (neotree go-mode)))
 '(transient-mark-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(region ((t (:background "steel blue" :distant-foreground "gtk_selection_fg_color")))))

;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))

;;
;; 自动保存
;; https://www.jianshu.com/p/998ceaf522d1
;;
(require 'auto-save)            ;; 加载自动保存模块
(auto-save-enable)              ;; 开启自动保存功能
(setq auto-save-slient t)       ;; 自动保存的时候静悄悄的， 不要打扰我

;; 自动打开neotree
(neotree-toggle)

;; 启动之后自动最大化
;; https://blog.csdn.net/grey_csdn/article/details/79052984
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; 高亮匹配括号
(show-paren-mode t)

;; https://www.cnblogs.com/tuhooo/p/7020583.html
;; 设定不产生备份文件
(setq make-backup-files nil)
;; 关闭自动保存
(setq auto-save-default nil)
;; 自动保存模式关闭
(setq auto-save-mode nil)
;; 不生成临时文件
(setq-default make-backup-files nil)

(provide 'init)
