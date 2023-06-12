;; hud config and stuff

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;;the setq hell

(setq display-line-numbers 'relative t)
(setq inhibit-startup-screen t) ;; this one broke ????

;; MELPA PACKAGE MANAGER TRADEMARK

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

;; I have NO CLUE of what this one does but I'll keep


(setq backup-directory-alist '(("." . "~/.emacs_saves")))


(require 'ido)
(ido-mode t) ;; for my FILE SEARCHS




;; HERE I WILL SETUP SOME KEYBINDINGS

(global-set-key (kbd "C-c C-s") 'comment-line) ;; comment the line..

;; TODO change focused buffer on screen

;; TODO better keybindings to change buffers



	     
