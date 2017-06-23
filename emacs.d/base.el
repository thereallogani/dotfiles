(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

(setq-default truncate-lines t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default tab-stop-list (number-sequence 2 120 2))

(defalias 'yes-or-no-p 'y-or-n-p)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq prettify-symbols-unprettify-at-point t)
(prettify-symbols-mode)

;; Fix Ubuntu's broken PATH for emacs
(setenv "PATH" (concat (getenv "PATH") ":/bin"))
(setq exec-path (append exec-path '("/bin")))

;; Enable yanking and pasting to and from both clipboards
(setq x-select-enable-clipboard t)
(setq x-select-enable-primary t)
(setq mouse-drag-copy-region t)
