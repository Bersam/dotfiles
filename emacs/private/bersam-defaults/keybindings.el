(spacemacs/set-leader-keys "d" 'deer)

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
