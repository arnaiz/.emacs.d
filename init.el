;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;
No splash(setq inhibit-splash-screen t)
(setq initial-scratch-message "")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") 
(package-initialize)
(custom-set-variables 
 ;; custom-set-variables was added by Custom. 
 ;; If you edit it by hand, you could mess it up, so be careful. 
 ;; Your init file should contain only one such instance. 
 ;; If there is more than one, they won't work right. '(package-selected-packages   (quote    (dracula-theme plan9-theme nyan-prompt nyan-mode jdee eclim))))(custom-set-faces ;; custom-set-faces was added by Custom. ;; If you edit it by hand, you could mess it up, so be careful. 
 ;; Your init file should contain only one such instance. 
 ;; If there is more than one, they won't work right. )

 ;;(setq tramp-default-method "plink")(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")                         ("marmalade" . "https://marmalade-repo.org/packages/")                         ("melpa" . "https://stable.melpa.org/packages/")    ))
(defun donovan ()  (setq shell-file-name "bash")  (interactive)  (let ((default-directory "/plink:oscar@192.168.56.101:"))    (shell))  )
(if (eq system-type 'windows-nt)      (setq tramp-default-method "plink"))
(load-theme 'dracula t)
;;column indicators(setq column-number-mode t)
;;my keybindings(define-key global-map(kbd "C-c i") 'iedit-mode)
;;Autocomplete(require 'auto-complete)(require 'auto-complete-config)(ac-config-default)
;;Yasnippet(require 'yasnippet)(yas-global-mode 1)
;;nyan mode(require 'nyan-mode)(nyan-mode)(nyan-start-animation);;(setq-default nyan-wavy-trail t)
;;(require 'linum-mode)(global-linum-mode t)
 
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
