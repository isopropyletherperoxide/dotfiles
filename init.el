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

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

(use-package magit)

(use-package helm) 
(use-package tree-sitter)

(use-package twittering-mode)
(helm-mode)

(global-set-key (kbd "M-x") 'helm-M-x)
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
(use-package treemacs-evil)
(use-package treemacs-all-the-icons)
(use-package helm-lsp) 
(use-package dap-mode) 
(use-package powerline)
(use-package haskell-mode)
(use-package markdown-mode)
(use-package rust-mode)
(use-package rustic)
(use-package lsp-haskell)
(use-package yasnippet) 
(use-package projectile)

(use-package obsidian
  :ensure t
  :demand t
  :config
  (obsidian-specify-path "~/Dropbox/uwu")
  (global-obsidian-mode t)
  :custom
  ;; This directory will be used for `obsidian-capture' if set.
  (obsidian-inbox-directory "~/Dropbox/uwu")
  :bind (:map obsidian-mode-map
  ;; Replace C-c C-o with Obsidian.el's implementation. It's ok to use another key binding.
  ("C-c C-o" . obsidian-follow-link-at-point)
  ;; Jump to backlinks
  ("C-c C-b" . obsidian-backlink-jump)
  ;; If you prefer you can use `obsidian-insert-link'
  ("C-c C-l" . obsidian-insert-wikilink)))

(add-hook 'c-mode-hook #'lsp)
(add-hook 'haskell-mode-hook #'lsp)
(add-hook 'rust-mode-hook #'lsp)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("ff24d14f5f7d355f47d53fd016565ed128bf3af30eb7ce8cae307ee4fe7f3fd0" "631c52620e2953e744f2b56d102eae503017047fb43d65ce028e88ef5846ea3b" "2078837f21ac3b0cc84167306fa1058e3199bbd12b6d5b56e3777a4125ff6851" "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350" default))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(magit obsidian treemacs-all-the-icons minions yasnippet which-key vscode-dark-plus-theme use-package tree-sitter-langs projectile lsp-ui helm-xref helm-lsp flycheck evil elcord doom-themes doom-modeline dap-mode company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'doom-material)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-hl-line-mode)
(global-linum-mode)
(treemacs-load-theme "all-the-icons")
(global-company-mode)
