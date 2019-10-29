;;; package --- Summary
;;; init.el
;;; Commentary:
;;; Code:
;(package-initialize)

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
 (unless (require 'el-get nil 'noerror)
   (with-current-buffer
       (url-retrieve-synchronously "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
     (goto-char (point-max))
     (eval-print-last-sexp)))
 (add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

(el-get-bundle 'ag)
(el-get-bundle 'helm)
(el-get-bundle 'auto-complete)
(el-get-bundle 'yasnippet)
(el-get-bundle 'magit)
(el-get-bundle 'flycheck)
(el-get-bundle 'auto-save-buffers-enhanced)
(el-get-bundle 'simplenote)
(el-get-bundle 'editorconfig)
(el-get-bundle 'iflipb)
(el-get-bundle 'py-autopep8)
(el-get-bundle 'python-docstring)
(el-get-bundle 'pipenv)
(el-get-bundle 'rjsx-mode)
(el-get-bundle 'prettier-js)
(el-get-bundle 'js2-mode)
(el-get-bundle 'json-mode)
(el-get-bundle 'js-auto-format-mode)
(el-get-bundle 'add-node-modules-path)
(el-get-bundle 'rhtml-mode)
(el-get-bundle 'ruby-mode)
(el-get-bundle 'scss-mode)
(el-get-bundle 'php-mode)
(el-get-bundle 'web-mode)
(el-get-bundle 'lua-mode)
(el-get-bundle 'actionscript-mode)
(el-get-bundle 'yaml-mode)
(el-get-bundle 'markdown-mode)
(el-get-bundle 'go-mode)
(el-get-bundle 'rubocop)
(el-get-bundle 'company)
(el-get-bundle 'minitest)
(el-get-bundle 'rspec-mode)
(el-get-bundle 'docker)
(el-get-bundle 'dockerfile-mode)
(el-get-bundle 'docker-compose-mode)
(el-get-bundle 'docker-tramp)
(el-get-bundle 'use-package)

(global-auto-revert-mode 1)
(defvar auto-revert-interval 1)

;; theme
(load-theme 'tango-dark t)

(fset 'yes-or-no-p 'y-or-n-p)

(recentf-mode 1)

(prefer-coding-system 'utf-8-unix)
(set-file-name-coding-system 'utf-8-unix)
(setq default-process-coding-system '(utf-8-unix . utf-8-unix))

(setq load-path
      (append '("~/.emacs.d/site-lisp") load-path))

(setq make-backup-files nil)
;;; バックアップファイルを作らない
(setq backup-inhibited t)
;;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)
;; テンキーのエンター
(global-set-key [kp-enter] 'newline)

(setq-default indent-tabs-mode nil)

(menu-bar-mode nil)

(column-number-mode t)

(global-set-key (kbd "M-n") 'iflipb-next-buffer)
(global-set-key (kbd "M-p") 'iflipb-previous-buffer)

;; バッファ中の行番号表示
(global-display-line-numbers-mode)

;; 現在行をハイライト
(global-hl-line-mode t)
(defface my-hl-line-face
  '((((class color) (background dark))
     (:background "DarkSlateGray" t))
    (((class color) (background light))
     (:background "DarkSlateGray" t))
    (t (:bold t)))
  "hl-line's my face")
(setq hl-line-face 'my-hl-line-face)

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; editorconfig
;(editorconfig-mode 1)
;(setq editorconfig-get-properties-function
;      'editorconfig-core-get-properties-hash)

;; php-mode
(defun my-php-mode-setup ()
  "My PHP-mode hook."
  (subword-mode 1)
  (setq show-trailing-whitespace t)
  (setq-local page-delimiter "\\_<\\(class\\|function\\|namespace\\)\\_>.+$")

  (flycheck-mode t)
  (add-to-list 'flycheck-disabled-checkers 'php-phpmd)
  (add-to-list 'flycheck-disabled-checkers 'php-phpcs))

(use-package php-mode
  :hook ((php-mode . my-php-mode-setup))
  :custom
  (php-manual-url 'ja)
  (php-mode-coding-style 'psr2)
  (php-mode-template-compatibility nil))

(add-hook 'php-mode-hook
          (function (lambda ()
                      (define-key php-mode-map "/" 'self-insert-command)
                      (setq comment-style 'extra-line)
                      (setq comment-continue " * ")
                      (setq comment-start "/** ")
                      (setq comment-end " */"))))

(defun php-cs-fix ()
  (interactive)
  (progn (shell-command (concat "php-cs-fixer fix " (buffer-file-name) " --rules=@Symfony"))
         (revert-buffer nil t)))

;; ruby-mode
(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(setq auto-mode-alist
      (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
                                     interpreter-mode-alist))

;; auto-save-buffers
(require 'auto-save-buffers-enhanced)
(auto-save-buffers-enhanced t)
;(run-with-idle-timer 0.5 t 'auto-save-buffers-enhanced)


(setq truncate-partial-width-windows nil)

;; cperl-mode
(defalias 'perl-mode 'cperl-mode)
(add-hook 'cperl-mode-hook
          '(lambda ()
             (cperl-set-style "PerlStyle")))

;; Lua
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;; ActionScript
(autoload 'actionscript-mode "actionscript-mode" "actionscript" t)
(setq auto-mode-alist
      (append '(("\\.as$" . actionscript-mode))
              auto-mode-alist))

;; golang
(add-hook 'go-mode-hook
          (lambda ()
            (setq gofmt-command "goimports")
            (setq-default)))
;; git
(require 'magit)
(setq magit-last-seen-setup-instructions "1.4.0")
;(require 'git-blame)
;(require 'vc-git)

;; company-mode
(add-hook 'java-mode-hook 'company-mode)
(add-hook 'php-mode-hook 'company-mode)
(add-hook 'python-mode-hook 'company-mode)
(add-hook 'ruby-mode-hook 'company-mode)
(with-eval-after-load 'company
  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous)
  (define-key company-active-map [tab] 'company-complete-selection)
  (define-key company-active-map (kbd "C-h") nil))

;; org-mode
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; markdown
(setq auto-mode-alist
      (append '(("\\.md$" . markdown-mode)) auto-mode-alist))

(setq require-final-newline nil)

;; YAML
(require 'yaml-mode)
(put 'downcase-region 'disabled nil)

;; coffee
(defun coffee-custom ()
  "coffee-mode-hook"
 (set (make-local-variable 'tab-width) 2)
 (setq coffee-tab-width 2))

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))

;; js
(setq indet-tabs-mode nil js-indent-level 2)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js-auto-format-command "prettier")
 '(js-auto-format-command-args "--write --single-quote")
 '(package-selected-packages
   (quote
    (meghanada docker-compose-mode minitest company js-auto-format-mode pipenv python-docstring iflipb auto-save-buffers-enhanced))))

;; scss
(autoload 'scss-mode "scss-mode")
(setq scss-compile-at-save nil) ;; 自動コンパイルをオフにする
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; helm
(require 'helm)
;(require 'helm-config)
;(helm-mode 1)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "M-.") 'helm-etags-select)

(require 'cl)
(defun close-all-buffers ()
  (interactive)
  (loop for buffer being the buffers
        do (kill-buffer buffer)))

;; rst.elを読み込み
(require 'rst)
;; *.rst, *.restファイルをrst-modeでOpen
(setq auto-mode-alist
      (append '(("\\.rst$" . rst-mode)
                ("\\.rest$" . rst-mode)
                ) auto-mode-alist))

;; yasnippet
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"))
(yas-global-mode 1)

(require 'autoinsert)
;; テンプレートのディレクトリ
(setq auto-insert-directory "~/.emacs.d/template/")
;; 各ファイルによってテンプレートを切り替える
(setq auto-insert-alist
      (nconc '(
               ("\\.md$" . ["template.md" my-template])
               ("\\.rst$" . ["template.rst" my-template])
               ("\\.rb$" . ["ruby" my-template])
               ("Rakefile$" . ["ruby" my-template])
               ) auto-insert-alist))

;; テンプレート置換文字列
(defvar template-replacements-alists
  '(("%date%" . (lambda () (format-time-string "%Y-%m-%d %H:%M:%S")))))

(defun my-template ()
  (time-stamp)
  (mapc #'(lambda(c)
        (progn
          (goto-char (point-min))
          (replace-string (car c) (funcall (cdr c)) nil)))
    template-replacements-alists)
  (goto-char (point-max))
  (message "done."))
(add-hook 'find-file-not-found-hooks 'auto-insert)


(add-hook 'rhtml-mode-hook
          (lambda ()
            (set-face-background 'erb-face "brightblack")
            (set-face-underline-p 'erb-face t)
            (set-face-background 'erb-exec-face "brightblack")
            (set-face-underline-p 'erb-exec-face t)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-builtin-face ((t (:foreground "color-141"))))
 '(font-lock-string-face ((t (:foreground "color-142"))))
 '(line-number ((t (:foreground "brightmagenta"))))
 '(line-number-current-line ((t (:background "brightmagenta" :foreground "black"))))
 '(magit-section-highlight ((t (:background "brightblack")))))

(provide 'init)
;;; init.el ends here
