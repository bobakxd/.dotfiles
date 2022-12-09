(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "mononoki" :foundry "NONE" :slant normal :weight normal :height 158 :width normal))))
 '(line-number ((t (:background nil))))
 )
 
(tool-bar-mode -1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruvbox-dark-hard))
 '(custom-safe-themes
   '("d80952c58cf1b06d936b1392c38230b74ae1a2a6729594770762dc0779ac66b7" default))
 '(package-selected-packages
   '(go-mode company eglot gruvbox-theme dracula-theme color-theme-sanityinc-tomorrow ayu-theme railscasts-theme)))


(require 'eglot)
(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
(add-to-list 'eglot-server-programs '(ruby-mode . ("~/.rbenv/shims/solargraph" "stdio")))
(add-to-list 'eglot-server-programs '(go-mode . ("~/go/bin/gopls" "serve")))
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)
(add-hook 'ruby-mode-hook 'eglot-ensure)
(add-hook 'go-mode-hook 'eglot-ensure)

;; turn on company mode for all modes derived from prog-mode, and cmake-mode
(add-hook 'prog-mode-hook 'company-mode)
(add-hook 'cmake-mode-hook 'company-mode)

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
