((actionscript-mode status "installed" recipe
		    (:name actionscript-mode :after nil :type github :description "An actionscript-mode for Emacs" :pkgname "austinhaas/actionscript-mode" :prepare
			   (progn
			     (add-to-list 'auto-mode-alist
					  '("\\.as$" . actionscript-mode)))))
 (add-node-modules-path status "installed" recipe
			(:name add-node-modules-path :type elpa :after nil))
 (ag status "installed" recipe
     (:name ag :after nil :depends
	    (s dash)
	    :description "A simple ag frontend, loosely based on ack-and-half.el." :type github :pkgname "Wilfred/ag.el"))
 (ample-regexps status "installed" recipe
		(:name ample-regexps :description "Compose and reuse Emacs regular expressions with ease" :type github :pkgname "immerrr/ample-regexps.el"))
 (auto-complete status "installed" recipe
		(:name auto-complete :after nil :features
		       (auto-complete-config)
		       :depends
		       (fuzzy popup)
		       :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :post-init
		       (progn
			 (add-to-list 'ac-dictionary-directories
				      (expand-file-name "dict" default-directory))
			 (ac-config-default))))
 (auto-save-buffers-enhanced status "installed" recipe
			     (:name auto-save-buffers-enhanced :type elpa :after nil))
 (cl-lib status "installed" recipe
	 (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :website "http://elpa.gnu.org/packages/cl-lib.html"))
 (company status "installed" recipe
	  (:name company :type elpa :after nil))
 (dash status "installed" recipe
       (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (docker status "installed" recipe
	 (:name docker :after nil :depends
		(json-mode tablist docker-tramp dash s magit)
		:description "Manage docker images & containers from Emacs" :type github :pkgname "Silex/docker.el"))
 (docker-compose-mode status "installed" recipe
		      (:name docker-compose-mode :type elpa :after nil))
 (docker-tramp status "installed" recipe
	       (:name docker-tramp :description "TRAMP integration for docker containers" :type github :pkgname "emacs-pe/docker-tramp.el"))
 (dockerfile-mode status "installed" recipe
		  (:name dockerfile-mode :after nil :depends
			 (s)
			 :description "An emacs mode for handling Dockerfiles." :type github :pkgname "spotify/dockerfile-mode" :prepare
			 (progn
			   (add-to-list 'auto-mode-alist
					'("Dockerfile\\'" . dockerfile-mode)))))
 (editorconfig status "installed" recipe
	       (:name editorconfig :after nil :website "http://editorconfig.org" :description "Define and maintain consistent coding styles" :type github :branch "master" :pkgname "editorconfig/editorconfig-emacs"))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
		("el-get.*\\.el$" "methods/")
		:features el-get :post-init
		(when
		    (memq 'el-get
			  (bound-and-true-p package-activated-list))
		  (message "Deleting melpa bootstrap el-get")
		  (unless package--initialized
		    (package-initialize t))
		  (when
		      (package-installed-p 'el-get)
		    (let
			((feats
			  (delete-dups
			   (el-get-package-features
			    (el-get-elpa-package-directory 'el-get)))))
		      (el-get-elpa-delete-package 'el-get)
		      (dolist
			  (feat feats)
			(unload-feature feat t))))
		  (require 'el-get))))
 (emacs-async status "installed" recipe
	      (:name emacs-async :description "Simple library for asynchronous processing in Emacs" :type github :pkgname "jwiegley/emacs-async"))
 (epl status "installed" recipe
      (:name epl :description "EPL provides a convenient high-level API for various package.el versions, and aims to overcome its most striking idiocies." :type github :pkgname "cask/epl"))
 (flycheck status "installed" recipe
	   (:name flycheck :after nil :depends
		  (seq let-alist pkg-info dash)
		  :type github :pkgname "flycheck/flycheck" :minimum-emacs-version "24.3" :description "On-the-fly syntax checking extension"))
 (fuzzy status "installed" recipe
	(:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (go-mode status "installed" recipe
	  (:name go-mode :after nil :description "Major mode for the Go programming language" :type github :pkgname "dominikh/go-mode.el"))
 (helm status "installed" recipe
       (:name helm :after nil :features
	      ("helm-config")
	      :depends
	      (emacs-async)
	      :description "Emacs incremental completion and narrowing framework" :type github :pkgname "emacs-helm/helm" :autoloads "helm-autoloads" :build
	      `(("make" ,(concat "ASYNC_ELPA_DIR="
				 (el-get-package-directory 'emacs-async))))
	      :build/darwin
	      `(("make" ,(concat "ASYNC_ELPA_DIR="
				 (el-get-package-directory 'emacs-async))
		 ,(format "EMACS_COMMAND=%s" el-get-emacs)))
	      :build/windows-nt
	      (let
		  ((generated-autoload-file
		    (expand-file-name "helm-autoloads.el"))
		   \
		   (backup-inhibited t))
		(update-directory-autoloads default-directory)
		nil)
	      :build/berkeley-unix
	      `(("gmake" ,(concat "ASYNC_ELPA_DIR="
				  (el-get-package-directory 'emacs-async))))
	      :post-init
	      (helm-mode)))
 (iflipb status "installed" recipe
	 (:name iflipb :type elpa :after nil))
 (js-auto-format-mode status "installed" recipe
		      (:name js-auto-format-mode :type elpa :after nil))
 (js2-mode status "installed" recipe
	   (:name js2-mode :website "https://github.com/mooz/js2-mode#readme" :description "An improved JavaScript editing mode" :type github :pkgname "mooz/js2-mode" :prepare
		  (autoload 'js2-mode "js2-mode" nil t)))
 (json-mode status "installed" recipe
	    (:name json-mode :after nil :depends
		   (json-reformat json-snatcher)
		   :description "Major mode for editing JSON files, extends the builtin js-mode to add better syntax highlighting for JSON." :type github :pkgname "joshwnj/json-mode"))
 (json-reformat status "installed" recipe
		(:name json-reformat :description "Reformatting tool for JSON." :type github :pkgname "gongo/json-reformat"))
 (json-snatcher status "installed" recipe
		(:name json-snatcher :description "Find the path to a value in JSON" :type github :pkgname "Sterlingg/json-snatcher"))
 (let-alist status "installed" recipe
	    (:name let-alist :description "Easily let-bind values of an assoc-list by their names." :builtin "25.0.50" :type elpa :website "https://elpa.gnu.org/packages/let-alist.html"))
 (lua-mode status "installed" recipe
	   (:name lua-mode :after nil :depends
		  (ample-regexps)
		  :description "A major-mode for editing Lua scripts" :type github :pkgname "immerrr/lua-mode"))
 (magit status "installed" recipe
	(:name magit :after nil :depends
	       (with-editor transient dash)
	       :website "https://github.com/magit/magit#readme" :description "It's Magit! An Emacs mode for Git." :type github :pkgname "magit/magit" :branch "master" :minimum-emacs-version "25.1" :info "Documentation" :load-path "lisp/" :compile "lisp/" :build
	       `(("make" ,(format "EMACSBIN=%s" el-get-emacs)
		  "docs")
		 ("touch" "lisp/magit-autoloads.el"))
	       :build/berkeley-unix
	       `(("gmake" ,(format "EMACSBIN=%s" el-get-emacs)
		  "docs")
		 ("touch" "lisp/magit-autoloads.el"))
	       :build/windows-nt
	       (with-temp-file "lisp/magit-autoloads.el" nil)))
 (markdown-mode status "installed" recipe
		(:name markdown-mode :after nil :description "Major mode to edit Markdown files in Emacs" :website "http://jblevins.org/projects/markdown-mode/" :type github :pkgname "jrblevin/markdown-mode" :prepare
		       (add-to-list 'auto-mode-alist
				    '("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
 (meghanada-mode status "required" recipe nil)
 (minitest status "installed" recipe
	   (:name minitest :type elpa :after nil))
 (package status "installed" recipe
	  (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin "24" :type http :url "https://repo.or.cz/w/emacs.git/blob_plain/ba08b24186711eaeb3748f3d1f23e2c2d9ed0d09:/lisp/emacs-lisp/package.el" :features package :post-init
		 (progn
		   (let
		       ((old-package-user-dir
			 (expand-file-name
			  (convert-standard-filename
			   (concat
			    (file-name-as-directory default-directory)
			    "elpa")))))
		     (when
			 (file-directory-p old-package-user-dir)
		       (add-to-list 'package-directory-list old-package-user-dir)))
		   (setq package-archives
			 (bound-and-true-p package-archives))
		   (let
		       ((protocol
			 (if
			     (and
			      (fboundp 'gnutls-available-p)
			      (gnutls-available-p))
			     "https://"
			   (lwarn
			    '(el-get tls)
			    :warning "Your Emacs doesn't support HTTPS (TLS)%s"
			    (if
				(eq system-type 'windows-nt)
				",\n  see https://github.com/dimitri/el-get/wiki/Installation-on-Windows." "."))
			   "http://"))
			(archives
			 '(("melpa" . "melpa.org/packages/")
			   ("gnu" . "elpa.gnu.org/packages/")
			   ("marmalade" . "marmalade-repo.org/packages/"))))
		     (dolist
			 (archive archives)
		       (add-to-list 'package-archives
				    (cons
				     (car archive)
				     (concat protocol
					     (cdr archive)))))))))
 (php-mode status "installed" recipe
	   (:name php-mode :after nil :description "A PHP mode for GNU Emacs " :type github :pkgname "ejmr/php-mode" :website "https://github.com/ejmr/php-mode"))
 (pipenv status "installed" recipe
	 (:name pipenv :type elpa :after nil))
 (pkg-info status "installed" recipe
	   (:name pkg-info :description "Provide information about Emacs packages." :type github :pkgname "lunaryorn/pkg-info.el" :depends
		  (dash epl)))
 (popup status "installed" recipe
	(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :depends cl-lib :pkgname "auto-complete/popup-el"))
 (prettier-js status "installed" recipe
	      (:name prettier-js :after nil :website "https://github.com/prettier/prettier-emacs" :description "Minor mode to format JS code on file save " :type github :pkgname "prettier/prettier-emacs"))
 (py-autopep8 status "installed" recipe
	      (:name py-autopep8 :after nil :description "Use autopep8 to beautify a Python buffer." :type github :pkgname "paetzke/py-autopep8.el"))
 (python-docstring status "installed" recipe
		   (:name python-docstring :type elpa :after nil))
 (rhtml-mode status "installed" recipe
	     (:name rhtml-mode :after nil :description "Major mode for editing RHTML files" :type github :pkgname "eschulte/rhtml" :prepare
		    (progn
		      (autoload 'rhtml-mode "rhtml-mode" nil t)
		      (add-to-list 'auto-mode-alist
				   '("\\.html.erb$" . rhtml-mode)))))
 (rjsx-mode status "installed" recipe
	    (:name rjsx-mode :after nil :depends
		   (js2-mode)
		   :description "A major mode for editing JSX files" :type github :pkgname "felipeochoa/rjsx-mode" :minimum-emacs-version "24.4"))
 (rspec-mode status "installed" recipe
	     (:name rspec-mode :after nil :features
		    (rspec-mode)
		    :description "Enhance ruby-mode for RSpec" :type github :pkgname "pezra/rspec-mode"))
 (rubocop status "installed" recipe
	  (:name rubocop :after nil :depends
		 (dash)
		 :description "A simple Emacs interface for RuboCop." :type github :pkgname "bbatsov/rubocop-emacs"))
 (ruby-mode status "installed" recipe
	    (:name ruby-mode :after nil :builtin "24" :type http :description "Major mode for editing Ruby files." :url "http://bugs.ruby-lang.org/projects/ruby-trunk/repository/raw/misc/ruby-mode.el"))
 (s status "installed" recipe
    (:name s :description "The long lost Emacs string manipulation library." :type github :pkgname "magnars/s.el"))
 (scss-mode status "installed" recipe
	    (:name scss-mode :after nil :description "Major mode for editing SCSS files(http://sass-lang.com)" :type github :pkgname "antonj/scss-mode"))
 (seq status "installed" recipe
      (:name seq :description "Sequence manipulation functions" :builtin "25" :type elpa :website "https://elpa.gnu.org/packages/seq.html"))
 (simplenote status "installed" recipe
	     (:name simplenote :after nil :features
		    (simplenote)
		    :website "https://github.com/cefstat/simplenote.el#readme" :description "Helper functions for simple-note.appspot.com" :type github :pkgname "cefstat/simplenote.el" :load "simplenote.el" :compile "simplenote.el" :post-init
		    (simplenote-setup)))
 (tablist status "installed" recipe
	  (:name tablist :description "Extended Emacs tabulated-list-mode." :website "https://github.com/politza/tablist" :type github :pkgname "politza/tablist"))
 (transient status "installed" recipe
	    (:name transient :website "https://github.com/magit/transient#readme" :description "Transient commands used by magit." :type github :pkgname "magit/transient" :branch "master" :minimum-emacs-version "25.1" :depends
		   (dash)
		   :info "docs" :load-path "lisp/" :compile "lisp/" :build
		   `(("make" ,(format "EMACSBIN=%s" el-get-emacs)
		      "info"))
		   :build/berkeley-unix
		   `(("gmake" ,(format "EMACSBIN=%s" el-get-emacs)
		      "info"))))
 (use-package status "installed" recipe
	      (:name use-package :after nil :type github :description "A use-package declaration for simplifying your .emacs" :pkgname "jwiegley/use-package"))
 (web-mode status "installed" recipe
	   (:name web-mode :after nil :description "emacs major mode for editing PHP/JSP/ASP HTML templates (with embedded CSS and JS blocks)" :type github :pkgname "fxbois/web-mode"))
 (with-editor status "installed" recipe
	      (:name with-editor :description "Use the Emacsclient as $EDITOR" :type github :pkgname "magit/with-editor"))
 (yaml-mode status "installed" recipe
	    (:name yaml-mode :after nil :description "Simple major mode to edit YAML file for emacs" :type github :pkgname "yoshiki/yaml-mode"))
 (yasnippet status "installed" recipe
	    (:name yasnippet :after nil :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil)))
