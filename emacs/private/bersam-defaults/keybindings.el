(spacemacs/set-leader-keys "o" 'deer)

(defun add-semicolon-and-go-next-line ()
  "Add a semicolon to the end of line and go to next"
  (interactive) ; Do the following interactively
  (end-of-line) ; Move to the end of line
  (insert ";") ; Add the semicolon
  ;; (evil-next-line) ; Go to the next line
  )
(define-key evil-insert-state-map ";;" 'add-semicolon-and-go-next-line)

(define-key evil-normal-state-map "Q" 'kill-this-buffer)
(define-key evil-normal-state-map "W" 'save-buffer)

;; (defun my-setup-indent (n)
;;   ;; java/c/c++
;;   (setq-local standard-indent n)
;;   (setq-local c-basic-offset n)
;;   ;; web development
;;   (setq-local javascript-indent-level n) ; javascript-mode
;;   (setq-local js-indent-level n) ; js-mode
;;   (setq-local react-indent-level n) ; react-mode
;;   (setq-local js2-basic-offset n) ; js2-mode, in latest js2-mode, it's alias of js-indent-level
;;   (setq-local web-mode-attr-indent-offset n) ; web-mode
;;   (setq-local web-mode-code-indent-offset n) ; web-mode, js code in html file
;;   (setq-local web-mode-css-indent-offset n) ; web-mode, css in html file
;;   (setq-local web-mode-markup-indent-offset n) ; web-mode, html tag in html file
;;   (setq-local web-mode-sql-indent-offset n) ; web-mode
;;   (setq-local web-mode-attr-value-indent-offset n) ; web-mode
;;   (setq-local css-indent-offset n) ; css-mode
;;   (setq-local sh-basic-offset n) ; shell scripts
;;   (setq-local sh-indentation n))

;; (defun my-personal-code-style ()
;;   (interactive)
;;   (message "My personal code style!")
;;   ;; use space instead of tab
;;   (setq indent-tabs-mode nil)
;;   ;; indent 2 spaces width
;;   (my-setup-indent 2))

;; (my-personal-code-style) ;; it would be lovely if this was enough, but it gets stomped on by modes >:(

;; (add-hook 'css-mode-hook 'my-personal-code-style)
;; (add-hook 'js2-mode-hook 'my-personal-code-style)
;; (add-hook 'react-mode-hook 'my-personal-code-style)
;; (add-hook 'sh-mode-hook 'my-personal-code-style)
