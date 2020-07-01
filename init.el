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
(el-get-bundle 'yasnippet)
(el-get-bundle 'magit)
(el-get-bundle 'flycheck)
(el-get-bundle 'auto-save-buffers-enhanced)
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
(el-get-bundle 'undo-tree)
(el-get-bundle 'lsp-mode)
(el-get-bundle 'lsp-ui)
(el-get-bundle 'org-mode)

(global-auto-revert-mode 1)
(defvar auto-revert-interval 1)

(global-undo-tree-mode t)

(load-theme 'tango-dark t)
(fset 'yes-or-no-p 'y-or-n-p)
(recentf-mode 1)
(menu-bar-mode nil)
(column-number-mode t)

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

(global-set-key (kbd "M-n") 'iflipb-next-buffer)
(global-set-key (kbd "M-p") 'iflipb-previous-buffer)

;; バッファ中の行番号表示
(global-linum-mode t)
(setq linum-format "%4d ")

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

;; yasnippet
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"))
(yas-global-mode 1)

;; company-mode
(global-company-mode)
(setq company-idle-delay 0)
(setq company-selection-wrap-around t)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-search-map (kbd "C-n") 'company-select-next)
(define-key company-search-map (kbd "C-p") 'company-select-previous)
(define-key company-active-map [tab] 'company-complete-selection)

(defvar company-mode/enable-yas t
  "Enable yasnippet for all backends.")
(defun company-mode/backend-with-yas (backend)
  (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
      backend
    (append (if (consp backend) backend (list backend))
            '(:with company-yasnippet))))
(setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

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

;; golang
(add-hook 'go-mode-hook
          (lambda ()
            (setq gofmt-command "goimports")
            (setq-default)))
;; git
(setq magit-last-seen-setup-instructions "1.4.0")

;; org-mode
(setq org-directory "~/Dropbox/org")
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cc" 'org-capture)
(setq org-capture-templates
      '(
        ("a" "aws" entry (file+headline "~/Dropbox/org/aws.org" "aws") "* %?")
        ("n" "Note" entry (file+headline "~/Dropbox/org/notes.org" "Notes") "* %?\nEntered on %<%Y-%m-%d %H:%M:%S>")
        ))
(setq org-log-done t)

;; markdown
(setq auto-mode-alist
      (append '(("\\.md$" . markdown-mode)) auto-mode-alist))

(setq require-final-newline nil)

;; YAML
(require 'yaml-mode)
(put 'downcase-region 'disabled nil)

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
    (docker-compose-mode minitest company js-auto-format-mode pipenv python-docstring iflipb auto-save-buffers-enhanced))))

;; scss
(autoload 'scss-mode "scss-mode")
(setq scss-compile-at-save nil) ;; 自動コンパイルをオフにする
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "M-.") 'helm-etags-select)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-c h") 'helm-semantic-or-imenu)
(setq helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match    t)

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

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-builtin-face ((t (:foreground "color-141"))))
 '(font-lock-string-face ((t (:foreground "color-142"))))
 '(line-number ((t (:foreground "brightmagenta"))))
 '(line-number-current-line ((t (:background "brightmagenta" :foreground "black"))))
 '(magit-section-highlight ((t (:background "brightblack"))))
 '(company-tooltip ((t (:foreground "black" :background "lightgrey"))))
 '(company-tooltip-common ((t (:foreground "black" :background "lightgrey"))))
 '(company-tooltip-common-selection ((t (:foreground "white" :background "steelblue"))))
 '(company-tooltip-selection ((t (:foreground "black" :background "steelblue"))))
 '(company-preview-common ((t (:background nil :foreground "lightgrey" :underline t))))
 '(company-scrollbar-fg ((t (:background "orange"))))
 '(company-scrollbar-bg ((t (:background "gray40")))))

(provide 'init)
;;; init.el ends here
