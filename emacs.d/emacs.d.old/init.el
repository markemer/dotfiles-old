(add-to-list 'load-path "~/.emacs.d/elisp/")
(require 'init-melpa)
(require 'init-looks)

(setq ns-option-modifier 'meta)
(setq ns-command-modifier 'super)
(setq ns-funtion-modifer 'hyper)

;; Name and Email
(setq user-full-name "Mark Anderson")
(setq user-mail-address "emer@emer.net")
(setq calendar-latitude 38.9)
(setq calendar-longitude -77.2)
(setq calendar-location-name "McLean, VA")

(when window-system (set-frame-size (selected-frame) 125 40))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (lua-mode git))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
