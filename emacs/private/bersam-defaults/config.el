;; Different font for Farsi characters
(set-fontset-font
 "fontset-default"
 (cons (decode-char 'ucs #x0600) (decode-char 'ucs #x06ff)) ; arabic
 "B Traffic-15")

(visual-line-mode t)

(setq frame-title-format
      '("emacs%@" (:eval (system-name)) ": " (:eval (if (buffer-file-name)
                                                        (abbreviate-file-name (buffer-file-name))
                                                      "%b")) " [%*]"))

(setq js2-basic-offset 2)
(evil-leader/set-key
  "o" 'ranger)

(set-frame-font "Ubuntu Mono 12")
(set-face-attribute 'default nil :font "Ubuntu Mono 12" :height 130)
(set-face-font 'default "Ubuntu Mono 12")
(set-fontset-font
 "fontset-default"
 (cons (decode-char 'ucs #x0600) (decode-char 'ucs #x06ff)) ; arabic
 "B Traffic-15")
(add-hook 'org-mode-hook (lambda () (setq bidi-paragraph-direction 'nil)))

(visual-line-mode t)
(setq-default js2-basic-offset 2
              js-indent-level 2)
