(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(set-face-attribute 'default nil :family "Hack" :height 120 :weight 'normal)
(hl-line-mode 1)

(require 'use-package)
(setq use-package-always-ensure t) 
(use-package evil)
(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t)) ; if nil, italics is universally disabled

(use-package minions)
;; Enable Evil
(require 'evil)
(evil-mode 1)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

(use-package tree-sitter)
(use-package tree-sitter-langs)

(require 'tree-sitter)
(require 'tree-sitter-langs)
(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (setq lsp-headerline-breadcrumb-icons-enable nil)
)
(use-package lsp-ui)
(use-package flycheck)
(use-package company)
(use-package lsp-treemacs)
(use-package treemacs)
(use-package treemacs-all-the-icons)
(use-package helm) 
(use-package helm-lsp) 
(use-package dap-mode) 
(use-package powerline)
(use-package haskell-mode)
(use-package rust-mode)
(use-package rustic)
(use-package lsp-haskell)
(use-package yasnippet) 
(use-package projectile)

(add-hook 'c-mode-hook #'lsp)
(add-hook 'haskell-mode-hook #'lsp)
(add-hook 'rust-mode-hook #'lsp)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350" default))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(treemacs-all-the-icons minions yasnippet which-key vscode-dark-plus-theme use-package tree-sitter-langs projectile lsp-ui helm-xref helm-lsp flycheck evil elcord doom-themes doom-modeline dap-mode company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'doom-material)
(tool-bar-mode -1)
(scroll-bar-mode -1)
