(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(add-to-list 'load-path "~/.emacs.d/custom")
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

;; Read lines in emacs Lisp
(defun read-lines (filePath)
  "Return a list of lines of a file at filePath."
  (with-temp-buffer
    (insert-file-contents filePath)
    (split-string (buffer-string) "\n" t)))

;; F11 = Full Screen
(defun switch-full-screen ()
  (interactive)
  (shell-command "wmctrl -r :ACTIVE: -btoggle,fullscreen"))
(global-set-key [f11] 'switch-full-screen)

;; Disable tool-bar & Menu Bar
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Save Commands History
(savehist-mode t)

;;;;;;;;;;;;; Plugin and Packages will be added after this line ;;;;;;;;;;;;;;;;;
(package-initialize)

(setq evil-search-module 'evil-search
      evil-want-C-u-scroll t
      evil-want-C-w-in-emacs-state t)

(require-package 'evil)
(require 'evil)
(evil-mode t)

(defun minibuffer-keyboard-quit ()
 "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
 (interactive)
 (if (and delete-selection-mode transient-mark-mode mark-active)
     (setq deactivate-mark  t)
   (when (get-buffer "Completions") (delete-windows-on "Completions"))
   (abort-recursive-edit))) 

(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

;; Q = Kill window
(defun my-window-killer ()
 "closes the window, and deletes the buffer if it's the last window open."
 (interactive)
 (if (> buffer-display-count 1)
     (if (= (length (window-list)) 1)
         (kill-buffer)
       (delete-window))
   (kill-buffer-and-window)))

(define-key evil-normal-state-map (kbd "Q") 'my-window-killer)

(require-package 'surround)
(require 'surround)
(global-surround-mode 1)

(require 'ido)
(setq ido-enable-prefix nil)
(setq ido-use-virtual-buffers t)
(setq ido-enable-flex-matching t)
(setq ido-create-new-buffer 'always)
(setq ido-use-filename-at-point 'guess)
(setq ido-save-directory-list-file (concat user-emacs-directory ".cache/ido.ast"))

(ido-mode t)
(ido-everywhere t)

(require-package 'ido-ubiquitous)
(ido-ubiquitous-mode t)

(require-package 'flx-ido)
(flx-ido-mode t)

(require-package 'ido-vertical-mode)
(ido-vertical-mode)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(require-package 'smex)
(require 'smex)
(setq smex-save-file (concat user-emacs-directory ".cache/smex-items"))
(smex-initialize)

(require-package 'undo-tree)
(require 'undo-tree)
(setq undo-tree-auto-save-history t)
(setq undo-tree-history-directory-alist
      `(("." . ,(concat user-emacs-directory ".cache/undo"))))
(global-undo-tree-mode)

(require-package 'projectile)
(require 'projectile)(define-key evil-normal-state-map (kbd "C-p") 'projectile-find-file)

(require-package 'auto-complete)
(require 'auto-complete-config)

(ac-set-trigger-key "TAB")
(define-key ac-mode-map  [(control tab)] 'auto-complete)
(define-key ac-mode-map  [(control tab)] 'auto-complete)

;; dirty fix for having AC everywhere
(define-globalized-minor-mode real-global-auto-complete-mode
  auto-complete-mode (lambda ()
                       (if (not (minibufferp (current-buffer)))
                           (auto-complete-mode 1))
                       ))
(real-global-auto-complete-mode t)

;;(autoload 'poor-mans-bidi-mode "poor-mans-bidi" "" t)

(require-package 'simple-httpd)
(require 'simple-httpd)

(require-package 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(require 'js2-mode)

(require-package 'skewer-mode)
(require 'skewer-mode)
(skewer-setup)

(require-package 'ac-js2)
(require 'ac-js2)
(add-hook 'js2-mode-hook 'ac-js2-mode)
(setq ac-js2-evaluate-calls t)

(require-package 'magit)
(require 'magit)

(require-package 'auctex)

;; Latex Configs
;(defun my-ac-tex-setup()
;  (setq ac-sources (append '(ac-source-auctex-bibs) ac-sources)))
;(add-hook 'TeX-mode-hook 'my-ac-tex-setup)

;; Read .my-erc-account
(let ((acc (read-lines "~/.my-erc-account")))
  (setq erc-nick (car acc))  
  (setq erc-password (nth 1 acc)))

;; DuckDuckGo
(require 'ddg)
(require 'ddg-search)
(require 'ddg-mode)

(require-package 'color-theme-solarized)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
