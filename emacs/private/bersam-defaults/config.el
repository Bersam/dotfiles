;; Different font for Farsi characters
(set-fontset-font
 "fontset-default"
 (cons (decode-char 'ucs #x0600) (decode-char 'ucs #x06ff)) ; arabic
 "B Traffic-15")


(setq frame-title-format
      '("emacs%@" (:eval (system-name)) ": " (:eval (if (buffer-file-name)
                                                        (abbreviate-file-name (buffer-file-name))
                                                      "%b")) " [%*]"))

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
;; (setq js2-basic-offset 2)
(setq-default js2-basic-offset 4
              js-indent-level 4
              standard-indent 4
              tab-width 4
              indent-tabs-mode nil
              js2-strict-semi-warning nil
              js2-missing-semi-one-line-override nil
              web-mode-markup-indent-offset 4
              web-mode-css-indent-offset 4
              web-mode-code-indent-offset 4
              web-mode-indent-style 4
              javascript-indent-level 4; javascript-mode
              js-indent-level 4 ; js-mode
              react-indent-level 4 ; react-mode
              js2-basic-offset 4 ; js2-mode, in latest js2-mode, it's alias of js-indent-level
              react-indent-level 4) ; react-mode
;;   (setq-local javascript-indent-level n) ; javascript-mode
;;   (setq-local js-indent-level n) ; js-mode
;;   (setq-local react-indent-level n) ; react-mode
;;   (setq-local js2-basic-offset n) ; js2-mode, in latest js2-mode, it's alias of js-indent-level
