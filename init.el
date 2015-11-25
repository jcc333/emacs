(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(global-set-key (kbd "M-1") 'neotree-toggle)

(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))

(require 'color-theme)
(color-theme-initialize)
(color-theme-calm-forest)

(linum-mode)

(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
(global-set-key (kbd "C-x g") 'beginning-of-buffer)
(require 'transpose-frame)

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(global-set-key "\C-c\C-d" "\C-a\C- \C-n\M-w\C-y")

(defalias 'qrr 'query-replace-regexp)

(package-initialize)

(setq linum-format "%d ")
(global-linum-mode t)
(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))
