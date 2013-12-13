(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;;; from purcell/emacs.d
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

;; F11 = Full Screen
(defun switch-full-screen ()
  (interactive)
  (shell-command "wmctrl -r :ACTIVE: -btoggle,fullscreen"))
 
(global-set-key [f11] 'switch-full-screen)
;; Disable tool-bar
(tool-bar-mode -1)

;; Disable Menu Bar
(menu-bar-mode -1)

;; Save Commands History
(savehist-mode t)

;;;;;;;;;;;;; Plugin and Packages will be added after this line ;;;;;;;;;;;;;;;;;
(package-initialize)

;; evil-mode
(require-package 'evil)
(setq evil-search-module 'evil-search
      evil-want-C-u-scroll t
      evil-want-C-w-in-emacs-state t)

(require 'evil)
(evil-mode t)
;; /evil-mode

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (deeper-blue))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; auto-complete
(require-package 'auto-complete)
(require 'auto-complete-config)

;; Set TAB to auto-complete
(ac-set-trigger-key "TAB")
(define-key ac-mode-map  [(control tab)] 'auto-complete)
(define-key ac-mode-map  [(control tab)] 'auto-complete)


;; skewer-mode
(require-package 'js2-mode)
(require-package 'simple-httpd)
(require-package 'skewer-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(require 'simple-httpd)
(require 'js2-mode)
(require 'skewer-mode)
(skewer-setup)
;; /skewer-mode

;; js completion via skewer
(require-package 'ac-js2)
(require 'ac-js2)
(add-hook 'js2-mode-hook 'ac-js2-mode)
(setq ac-js2-evaluate-calls t)
;; /js completion
