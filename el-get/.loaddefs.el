;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "actionscript-mode/actionscript-config" "actionscript-mode/actionscript-config.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from actionscript-mode/actionscript-config.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "actionscript-mode/actionscript-config" '("as-")))

;;;***

;;;### (autoloads nil "actionscript-mode/actionscript-mode" "actionscript-mode/actionscript-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from actionscript-mode/actionscript-mode.el

(autoload 'actionscript-mode "actionscript-mode/actionscript-mode" "\
Major mode for editing Actionscript files.
\\{actionscript-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.as\\'" . actionscript-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "actionscript-mode/actionscript-mode" '("reload-actionscript-mode" "actionscript-" "preprocessor-kwds")))

;;;***

;;;### (autoloads nil "add-node-modules-path/add-node-modules-path"
;;;;;;  "add-node-modules-path/add-node-modules-path.el" (0 0 0 0))
;;; Generated autoloads from add-node-modules-path/add-node-modules-path.el

(defvar add-node-modules-path-debug nil "\
Enable verbose output when non nil.")

(custom-autoload 'add-node-modules-path-debug "add-node-modules-path/add-node-modules-path" t)

(defvar add-node-modules-max-depth 20 "\
Max depth to look for node_modules.")

(custom-autoload 'add-node-modules-max-depth "add-node-modules-path/add-node-modules-path" t)

(autoload 'add-node-modules-path "add-node-modules-path/add-node-modules-path" "\
Search the current buffer's parent directories for `node_modules/.bin`.
Traverse the directory structure up, until reaching the user's home directory,
 or hitting add-node-modules-max-depth.
Any path found is added to the `exec-path'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ag/ag" "ag/ag.el" (0 0 0 0))
;;; Generated autoloads from ag/ag.el

(autoload 'ag "ag/ag" "\
Search using ag in a given DIRECTORY for a given literal search STRING,
with STRING defaulting to the symbol under point.

If called with a prefix, prompts for flags to pass to ag.

\(fn STRING DIRECTORY)" t nil)

(autoload 'ag-files "ag/ag" "\
Search using ag in a given DIRECTORY for a given literal search STRING,
limited to files that match FILE-TYPE. STRING defaults to the
symbol under point.

If called with a prefix, prompts for flags to pass to ag.

\(fn STRING FILE-TYPE DIRECTORY)" t nil)

(autoload 'ag-regexp "ag/ag" "\
Search using ag in a given directory for a given regexp.
The regexp should be in PCRE syntax, not Emacs regexp syntax.

If called with a prefix, prompts for flags to pass to ag.

\(fn STRING DIRECTORY)" t nil)

(autoload 'ag-project "ag/ag" "\
Guess the root of the current project and search it with ag
for the given literal search STRING.

If called with a prefix, prompts for flags to pass to ag.

\(fn STRING)" t nil)

(autoload 'ag-project-files "ag/ag" "\
Search using ag for a given literal search STRING,
limited to files that match FILE-TYPE. STRING defaults to the
symbol under point.

If called with a prefix, prompts for flags to pass to ag.

\(fn STRING FILE-TYPE)" t nil)

(autoload 'ag-project-regexp "ag/ag" "\
Guess the root of the current project and search it with ag
for the given regexp. The regexp should be in PCRE syntax, not
Emacs regexp syntax.

If called with a prefix, prompts for flags to pass to ag.

\(fn REGEXP)" t nil)

(defalias 'ag-project-at-point 'ag-project)

(defalias 'ag-regexp-project-at-point 'ag-project-regexp)

(autoload 'ag-dired "ag/ag" "\
Recursively find files in DIR matching literal search STRING.

The PATTERN is matched against the full path to the file, not
only against the file name.

The results are presented as a `dired-mode' buffer with
`default-directory' being DIR.

See also `ag-dired-regexp'.

\(fn DIR STRING)" t nil)

(autoload 'ag-dired-regexp "ag/ag" "\
Recursively find files in DIR matching REGEXP.
REGEXP should be in PCRE syntax, not Emacs regexp syntax.

The REGEXP is matched against the full path to the file, not
only against the file name.

Results are presented as a `dired-mode' buffer with
`default-directory' being DIR.

See also `find-dired'.

\(fn DIR REGEXP)" t nil)

(autoload 'ag-project-dired "ag/ag" "\
Recursively find files in current project matching PATTERN.

See also `ag-dired'.

\(fn PATTERN)" t nil)

(autoload 'ag-project-dired-regexp "ag/ag" "\
Recursively find files in current project matching REGEXP.

See also `ag-dired-regexp'.

\(fn REGEXP)" t nil)

(autoload 'ag-kill-buffers "ag/ag" "\
Kill all `ag-mode' buffers.

\(fn)" t nil)

(autoload 'ag-kill-other-buffers "ag/ag" "\
Kill all `ag-mode' buffers other than the current buffer.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ag/ag" '("ag-" "ag/")))

;;;***

;;;### (autoloads nil "ample-regexps/ample-regexps" "ample-regexps/ample-regexps.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ample-regexps/ample-regexps.el

(autoload 'define-arx "ample-regexps/ample-regexps" "\
Generate a custom rx-like macro under name MACRO.

See `rx' for how the generated macro can be invoked.

FORM-DEFS is a list of custom s-exp definitions to create whose
elements have the form (SYM DEF), where DEF is one of
the following:

- \"LITERAL\" -- create a matcher to match a string literally

- (regexp \"LITERAL\") -- create a match given a regexp

- SYMBOL -- create an alias for a symbol either defined earlier
  on the list or provided by `rx'

- (SUBFORM ...) -- create an alias for an application of s-exp
  subform either defined earlier on the list or provided by `rx'

- (:func #'FORM-FUNC ...) -- create an s-exp definition

The most interesting here is the last variant.  When a
corresponding rx form will be encountered, FORM-FUNC will be
called with all elements of that form as arguments (with the
first one being the form symbol itself).  FORM-FUNC must then
return a valid s-exp or a properly grouped plain regexp.

Another keywords that are recognized in the plist are:
- :min-args -- minimum number of arguments for that form (default nil)
- :max-args -- maximum number of arguments for that form (default nil)
- :predicate -- if given, all rx form arguments must satisfy it

\(fn MACRO FORM-DEFS)" nil t)

(autoload 'arx-and "ample-regexps/ample-regexps" "\
Generate an expression to match a sequence of FORMS.

\(fn FORMS)" nil nil)

(autoload 'arx-or "ample-regexps/ample-regexps" "\
Generate an expression to match one of FORMS.

\(fn FORMS)" nil nil)

(autoload 'arx-builder "ample-regexps/ample-regexps" "\
Run `re-builder' using arx form named ARX-NAME.

\(fn &optional ARX-NAME)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ample-regexps/ample-regexps" '("define-arx--fn" "arx-")))

;;;***

;;;### (autoloads nil "ample-regexps/init-tryout" "ample-regexps/init-tryout.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ample-regexps/init-tryout.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ample-regexps/init-tryout" '("foobar-rx")))

;;;***

;;;### (autoloads nil "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

(autoload 'auto-complete-mode "auto-complete/auto-complete" "\
AutoComplete mode

\(fn &optional ARG)" t nil)

(defvar global-auto-complete-mode nil "\
Non-nil if Global Auto-Complete mode is enabled.
See the `global-auto-complete-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-auto-complete-mode'.")

(custom-autoload 'global-auto-complete-mode "auto-complete/auto-complete" nil)

(autoload 'global-auto-complete-mode "auto-complete/auto-complete" "\
Toggle Auto-Complete mode in all buffers.
With prefix ARG, enable Global Auto-Complete mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Complete mode is enabled in all buffers where
`auto-complete-mode-maybe' would do it.
See `auto-complete-mode' for more information on Auto-Complete mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "auto-complete/auto-complete" '("auto-complete-mode" "ac-")))

;;;***

;;;### (autoloads nil "auto-complete/auto-complete-config" "auto-complete/auto-complete-config.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from auto-complete/auto-complete-config.el

(autoload 'ac-config-default "auto-complete/auto-complete-config" "\


\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "auto-complete/auto-complete-config" '("ac-")))

;;;***

;;;### (autoloads nil "auto-save-buffers-enhanced/auto-save-buffers-enhanced"
;;;;;;  "auto-save-buffers-enhanced/auto-save-buffers-enhanced.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from auto-save-buffers-enhanced/auto-save-buffers-enhanced.el

(autoload 'auto-save-buffers-enhanced "auto-save-buffers-enhanced/auto-save-buffers-enhanced" "\
If `flag' is non-nil, activate `auto-save-buffers-enhanced' and start
auto-saving.

\(fn FLAG)" nil nil)

(autoload 'auto-save-buffers-enhanced-include-only-checkout-path "auto-save-buffers-enhanced/auto-save-buffers-enhanced" "\
If `flag' is non-nil, `auto-save-buffers-enhanced' saves only
the directories under VCS.

\(fn FLAG)" nil nil)

(autoload 'auto-save-buffers-enhanced-toggle-activity "auto-save-buffers-enhanced/auto-save-buffers-enhanced" "\
Toggle `auto-save-buffers-enhanced' activity

\(fn)" t nil)

(autoload 'auto-save-buffers-enhanced-reload-svk "auto-save-buffers-enhanced/auto-save-buffers-enhanced" "\
Reload the checkout paths from SVK configuration file.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "auto-save-buffers-enhanced/auto-save-buffers-enhanced" '("auto-save-buffers-enhanced-")))

;;;***

;;;### (autoloads nil "company/company" "company/company.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from company/company.el

(autoload 'company-mode "company/company" "\
\"complete anything\"; is an in-buffer completion framework.
Completion starts automatically, depending on the values
`company-idle-delay' and `company-minimum-prefix-length'.

Completion can be controlled with the commands:
`company-complete-common', `company-complete-selection', `company-complete',
`company-select-next', `company-select-previous'.  If these commands are
called before `company-idle-delay', completion will also start.

Completions can be searched with `company-search-candidates' or
`company-filter-candidates'.  These can be used while completion is
inactive, as well.

The completion data is retrieved using `company-backends' and displayed
using `company-frontends'.  If you want to start a specific backend, call
it interactively or use `company-begin-backend'.

By default, the completions list is sorted alphabetically, unless the
backend chooses otherwise, or `company-transformers' changes it later.

regular keymap (`company-mode-map'):

\\{company-mode-map}
keymap during active completions (`company-active-map'):

\\{company-active-map}

\(fn &optional ARG)" t nil)

(defvar global-company-mode nil "\
Non-nil if Global Company mode is enabled.
See the `global-company-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-company-mode'.")

(custom-autoload 'global-company-mode "company/company" nil)

(autoload 'global-company-mode "company/company" "\
Toggle Company mode in all buffers.
With prefix ARG, enable Global Company mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Company mode is enabled in all buffers where
`company-mode-on' would do it.
See `company-mode' for more information on Company mode.

\(fn &optional ARG)" t nil)

(autoload 'company-manual-begin "company/company" "\


\(fn)" t nil)

(autoload 'company-complete "company/company" "\
Insert the common part of all candidates or the current selection.
The first time this is called, the common part is inserted, the second
time, or when the selection has been changed, the selected candidate is
inserted.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company" '("company-")))

;;;***

;;;### (autoloads nil "company/company-abbrev" "company/company-abbrev.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-abbrev.el

(autoload 'company-abbrev "company/company-abbrev" "\
`company-mode' completion backend for abbrev.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-abbrev" '("company-abbrev-insert")))

;;;***

;;;### (autoloads nil "company/company-bbdb" "company/company-bbdb.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-bbdb.el

(autoload 'company-bbdb "company/company-bbdb" "\
`company-mode' completion backend for BBDB.

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-bbdb" '("company-bbdb-")))

;;;***

;;;### (autoloads nil "company/company-capf" "company/company-capf.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-capf.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-capf" '("company-")))

;;;***

;;;### (autoloads nil "company/company-clang" "company/company-clang.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-clang.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-clang" '("company-clang")))

;;;***

;;;### (autoloads nil "company/company-cmake" "company/company-cmake.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-cmake.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-cmake" '("company-cmake")))

;;;***

;;;### (autoloads nil "company/company-css" "company/company-css.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-css.el

(autoload 'company-css "company/company-css" "\
`company-mode' completion backend for `css-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-css" '("company-css-")))

;;;***

;;;### (autoloads nil "company/company-dabbrev" "company/company-dabbrev.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-dabbrev.el

(autoload 'company-dabbrev "company/company-dabbrev" "\
dabbrev-like `company-mode' completion backend.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-dabbrev" '("company-dabbrev-")))

;;;***

;;;### (autoloads nil "company/company-dabbrev-code" "company/company-dabbrev-code.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-dabbrev-code.el

(autoload 'company-dabbrev-code "company/company-dabbrev-code" "\
dabbrev-like `company-mode' backend for code.
The backend looks for all symbols in the current buffer that aren't in
comments or strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-dabbrev-code" '("company-dabbrev-code-")))

;;;***

;;;### (autoloads nil "company/company-eclim" "company/company-eclim.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-eclim.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-eclim" '("company-eclim")))

;;;***

;;;### (autoloads nil "company/company-elisp" "company/company-elisp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-elisp.el

(autoload 'company-elisp "company/company-elisp" "\
`company-mode' completion backend for Emacs Lisp.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-elisp" '("company-elisp-")))

;;;***

;;;### (autoloads nil "company/company-etags" "company/company-etags.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-etags.el

(autoload 'company-etags "company/company-etags" "\
`company-mode' completion backend for etags.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-etags" '("company-etags-")))

;;;***

;;;### (autoloads nil "company/company-files" "company/company-files.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-files.el

(autoload 'company-files "company/company-files" "\
`company-mode' completion backend existing file names.
Completions works for proper absolute and relative files paths.
File paths with spaces are only supported inside strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-files" '("company-file")))

;;;***

;;;### (autoloads nil "company/company-gtags" "company/company-gtags.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-gtags.el

(autoload 'company-gtags "company/company-gtags" "\
`company-mode' completion backend for GNU Global.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-gtags" '("company-gtags-")))

;;;***

;;;### (autoloads nil "company/company-ispell" "company/company-ispell.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-ispell.el

(autoload 'company-ispell "company/company-ispell" "\
`company-mode' completion backend using Ispell.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-ispell" '("company-ispell-")))

;;;***

;;;### (autoloads nil "company/company-keywords" "company/company-keywords.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-keywords.el

(autoload 'company-keywords "company/company-keywords" "\
`company-mode' backend for programming language keywords.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-keywords" '("company-keywords-")))

;;;***

;;;### (autoloads nil "company/company-nxml" "company/company-nxml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-nxml.el

(autoload 'company-nxml "company/company-nxml" "\
`company-mode' completion backend for `nxml-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-nxml" '("company-nxml-")))

;;;***

;;;### (autoloads nil "company/company-oddmuse" "company/company-oddmuse.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-oddmuse.el

(autoload 'company-oddmuse "company/company-oddmuse" "\
`company-mode' completion backend for `oddmuse-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-oddmuse" '("company-oddmuse-")))

;;;***

;;;### (autoloads nil "company/company-semantic" "company/company-semantic.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-semantic.el

(autoload 'company-semantic "company/company-semantic" "\
`company-mode' completion backend using CEDET Semantic.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-semantic" '("company-semantic-")))

;;;***

;;;### (autoloads nil "company/company-template" "company/company-template.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-template.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-template" '("company-template-")))

;;;***

;;;### (autoloads nil "company/company-tempo" "company/company-tempo.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-tempo.el

(autoload 'company-tempo "company/company-tempo" "\
`company-mode' completion backend for tempo.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-tempo" '("company-tempo-")))

;;;***

;;;### (autoloads nil "company/company-tng" "company/company-tng.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-tng.el

(autoload 'company-tng-frontend "company/company-tng" "\
When the user changes the selection at least once, this
frontend will display the candidate in the buffer as if it's
already there and any key outside of `company-active-map' will
confirm the selection and finish the completion.

\(fn COMMAND)" nil nil)

(autoload 'company-tng-configure-default "company/company-tng" "\
Applies the default configuration to enable company-tng.

\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-tng" '("company-tng--")))

;;;***

;;;### (autoloads nil "company/company-xcode" "company/company-xcode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-xcode.el

(autoload 'company-xcode "company/company-xcode" "\
`company-mode' completion backend for Xcode projects.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-xcode" '("company-xcode-")))

;;;***

;;;### (autoloads nil "company/company-yasnippet" "company/company-yasnippet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company/company-yasnippet.el

(autoload 'company-yasnippet "company/company-yasnippet" "\
`company-mode' backend for `yasnippet'.

This backend should be used with care, because as long as there are
snippets defined for the current major mode, this backend will always
shadow backends that come after it.  Recommended usages:

* In a buffer-local value of `company-backends', grouped with a backend or
  several that provide actual text completions.

  (add-hook 'js-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends)
                   '((company-dabbrev-code company-yasnippet)))))

* After keyword `:with', grouped with other backends.

  (push '(company-semantic :with company-yasnippet) company-backends)

* Not in `company-backends', just bound to a key.

  (global-set-key (kbd \"C-c y\") 'company-yasnippet)

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company/company-yasnippet" '("company-yasnippet--")))

;;;***

;;;### (autoloads nil "dash/dash" "dash/dash.el" (0 0 0 0))
;;; Generated autoloads from dash/dash.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dash/dash" '("dash-" "-keep" "-butlast" "-non" "-only-some" "-zip" "-e" "->" "-a" "-gr" "-when-let" "-d" "-l" "-s" "-p" "-r" "-m" "-i" "-f" "-u" "-value-to-list" "-t" "--" "-c" "!cons" "!cdr")))

;;;***

;;;### (autoloads nil "dash/dash-functional" "dash/dash-functional.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from dash/dash-functional.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dash/dash-functional" '("-rpartial" "-juxt" "-not" "-o" "-a" "-iteratefn" "-c" "-f" "-p")))

;;;***

;;;### (autoloads nil "docker-compose-mode/docker-compose-mode" "docker-compose-mode/docker-compose-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from docker-compose-mode/docker-compose-mode.el

(autoload 'docker-compose-mode "docker-compose-mode/docker-compose-mode" "\
Major mode to edit docker-compose files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("docker-compose[^/]*\\.yml\\'" . docker-compose-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docker-compose-mode/docker-compose-mode" '("docker-compose-")))

;;;***

;;;### (autoloads nil "docker-tramp/docker-tramp" "docker-tramp/docker-tramp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from docker-tramp/docker-tramp.el

(defvar docker-tramp-docker-options nil "\
List of docker options.")

(custom-autoload 'docker-tramp-docker-options "docker-tramp/docker-tramp" t)

(defconst docker-tramp-completion-function-alist '((docker-tramp--parse-running-containers "")) "\
Default list of (FUNCTION FILE) pairs to be examined for docker method.")

(defconst docker-tramp-method "docker" "\
Method to connect docker containers.")

(autoload 'docker-tramp-cleanup "docker-tramp/docker-tramp" "\
Cleanup TRAMP cache for docker method.

\(fn)" t nil)

(autoload 'docker-tramp-add-method "docker-tramp/docker-tramp" "\
Add docker tramp method.

\(fn)" nil nil)

(eval-after-load 'tramp '(progn (docker-tramp-add-method) (tramp-set-completion-function docker-tramp-method docker-tramp-completion-function-alist)))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docker-tramp/docker-tramp" '("docker-tramp-")))

;;;***

;;;### (autoloads nil "docker/docker" "docker/docker.el" (0 0 0 0))
;;; Generated autoloads from docker/docker.el
 (autoload 'docker "docker" nil t)

;;;***

;;;### (autoloads nil "docker/docker-compose" "docker/docker-compose.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from docker/docker-compose.el

(autoload 'docker-compose-build "docker/docker-compose" "\
Run \"docker-compose build ARGS SERVICES\".

\(fn SERVICES ARGS)" t nil)

(autoload 'docker-compose-create "docker/docker-compose" "\
Run \"docker-compose create ARGS SERVICES\".

\(fn SERVICES ARGS)" t nil)

(autoload 'docker-compose-down "docker/docker-compose" "\
Run \"docker-compose down ARGS SERVICES\".

\(fn SERVICES ARGS)" t nil)

(autoload 'docker-compose-exec "docker/docker-compose" "\
Run \"docker-compose exec ARGS SERVICE COMMAND\".

\(fn SERVICE COMMAND ARGS)" t nil)

(autoload 'docker-compose-logs "docker/docker-compose" "\
Run \"docker-compose logs ARGS SERVICES\".

\(fn SERVICES ARGS)" t nil)

(autoload 'docker-compose-pull "docker/docker-compose" "\
Run \"docker-compose pull ARGS SERVICES\".

\(fn SERVICES ARGS)" t nil)

(autoload 'docker-compose-push "docker/docker-compose" "\
Run \"docker-compose push ARGS SERVICES\".

\(fn SERVICES ARGS)" t nil)

(autoload 'docker-compose-restart "docker/docker-compose" "\
Run \"docker-compose restart ARGS SERVICES\".

\(fn SERVICES ARGS)" t nil)

(autoload 'docker-compose-rm "docker/docker-compose" "\
Run \"docker-compose rm ARGS SERVICES\".

\(fn SERVICES ARGS)" t nil)

(autoload 'docker-compose-run "docker/docker-compose" "\
Run \"docker-compose run ARGS SERVICE COMMAND\".

\(fn SERVICE COMMAND ARGS)" t nil)

(autoload 'docker-compose-start "docker/docker-compose" "\
Run \"docker-compose start ARGS SERVICES\".

\(fn SERVICES ARGS)" t nil)

(autoload 'docker-compose-stop "docker/docker-compose" "\
Run \"docker-compose stop ARGS SERVICES\".

\(fn SERVICES ARGS)" t nil)

(autoload 'docker-compose-up "docker/docker-compose" "\
Run \"docker-compose up ARGS SERVICES\".

\(fn SERVICES ARGS)" t nil)

(autoload 'docker-compose-config "docker/docker-compose" "\
Run \"docker-compose config ARGS\".

\(fn ARGS)" t nil)
 (autoload 'docker-compose "docker-compose" nil t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docker/docker-compose" '("docker-compose-")))

;;;***

;;;### (autoloads nil "docker/docker-container" "docker/docker-container.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from docker/docker-container.el

(autoload 'docker-container-attach "docker/docker-container" "\
Run \"docker attach ARGS CONTAINER\".

\(fn CONTAINER ARGS)" t nil)

(autoload 'docker-container-eshell "docker/docker-container" "\
Open `eshell' in CONTAINER.

\(fn CONTAINER)" t nil)

(autoload 'docker-container-find-directory "docker/docker-container" "\
Inside CONTAINER open DIRECTORY.

\(fn CONTAINER DIRECTORY)" t nil)

(autoload 'docker-container-find-file "docker/docker-container" "\
Open FILE inside CONTAINER.

\(fn CONTAINER FILE)" t nil)

(autoload 'docker-container-shell "docker/docker-container" "\
Open `shell' in CONTAINER.  When READ-SHELL is not nil, ask the user for it.

\(fn CONTAINER &optional READ-SHELL)" t nil)

(autoload 'docker-diff "docker/docker-container" "\
Diff the container named NAME.

\(fn NAME)" t nil)

(autoload 'docker-inspect "docker/docker-container" "\
Inspect the container named NAME.

\(fn NAME)" t nil)

(autoload 'docker-kill "docker/docker-container" "\
Kill the container named NAME using SIGNAL.

\(fn NAME &optional SIGNAL)" t nil)

(autoload 'docker-logs "docker/docker-container" "\
Show the logs from container NAME.

If FOLLOW is set, run in `async-shell-command'.

\(fn NAME &optional FOLLOW)" t nil)

(autoload 'docker-pause "docker/docker-container" "\
Pause the container named NAME.

\(fn NAME)" t nil)

(autoload 'docker-rename "docker/docker-container" "\
Rename CONTAINER using NAME.

\(fn CONTAINER NAME)" t nil)

(autoload 'docker-restart "docker/docker-container" "\
Restart the container named NAME.

TIMEOUT is the number of seconds to wait for the container to stop before killing it.

\(fn NAME &optional TIMEOUT)" t nil)

(autoload 'docker-rm "docker/docker-container" "\
Remove the container named NAME.

With prefix argument, sets FORCE to true.

Force the removal even if the container is running when FORCE is set.
Remove the specified link and not the underlying container when LINK is set.
Remove the volumes associated with the container when VOLUMES is set.

\(fn NAME &optional FORCE LINK VOLUMES)" t nil)

(autoload 'docker-start "docker/docker-container" "\
Start the container named NAME.

\(fn NAME)" t nil)

(autoload 'docker-stop "docker/docker-container" "\
Stop the container named NAME.

TIMEOUT is the number of seconds to wait for the container to stop before killing it.

\(fn NAME &optional TIMEOUT)" t nil)

(autoload 'docker-unpause "docker/docker-container" "\
Unpause the container named NAME.

\(fn NAME)" t nil)

(autoload 'docker-containers "docker/docker-container" "\
List docker containers.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docker/docker-container" '("docker-container-")))

;;;***

;;;### (autoloads nil "docker/docker-image" "docker/docker-image.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from docker/docker-image.el

(autoload 'docker-pull "docker/docker-image" "\
Pull the image named NAME.  If ALL is set, use \"-a\".

\(fn NAME &optional ALL)" t nil)

(autoload 'docker-push "docker/docker-image" "\
Push the image named NAME.

\(fn NAME)" t nil)

(autoload 'docker-rmi "docker/docker-image" "\
Destroy or untag the image named NAME.

Force removal of the image when FORCE is set.
Do not delete untagged parents when NO-PRUNE is set.

\(fn NAME &optional FORCE NO-PRUNE)" t nil)

(autoload 'docker-tag "docker/docker-image" "\
Tag IMAGE using NAME.

\(fn IMAGE NAME)" t nil)

(autoload 'docker-images "docker/docker-image" "\
List docker images.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docker/docker-image" '("docker-image-")))

;;;***

;;;### (autoloads nil "docker/docker-machine" "docker/docker-machine.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from docker/docker-machine.el

(autoload 'docker-machine-config "docker/docker-machine" "\
Print the connection config for the machine NAME.

\(fn NAME)" t nil)

(autoload 'docker-machine-create "docker/docker-machine" "\
Create a machine NAME using DRIVER.

\(fn NAME DRIVER)" t nil)

(autoload 'docker-machine-env "docker/docker-machine" "\
Parse and set environment variables from \"docker-machine env NAME\" output.

\(fn NAME)" t nil)

(autoload 'docker-machine-inspect "docker/docker-machine" "\
Inspect information about the machine NAME.

\(fn NAME)" t nil)

(autoload 'docker-machine-ip "docker/docker-machine" "\
Get the IP address of the machine NAME.

\(fn NAME)" t nil)

(autoload 'docker-machine-kill "docker/docker-machine" "\
Kill the machine NAME.

\(fn NAME)" t nil)

(autoload 'docker-machine-restart "docker/docker-machine" "\
Restart the machine NAME.

\(fn NAME)" t nil)

(autoload 'docker-machine-rm "docker/docker-machine" "\
Destroy or uncommand the machine NAME.  If FORCE is set, use \"--force\".

\(fn NAME &optional FORCE)" t nil)

(autoload 'docker-machine-start "docker/docker-machine" "\
Start the machine NAME.

\(fn NAME)" t nil)

(autoload 'docker-machine-status "docker/docker-machine" "\
Get the status of the machine NAME.

\(fn NAME)" t nil)

(autoload 'docker-machine-stop "docker/docker-machine" "\
Stop the machine NAME.

\(fn NAME)" t nil)

(autoload 'docker-machine-upgrade "docker/docker-machine" "\
Upgrade the machine NAME to the latest version of Docker.

\(fn NAME)" t nil)

(autoload 'docker-machines "docker/docker-machine" "\
List docker machines.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docker/docker-machine" '("docker-machine-")))

;;;***

;;;### (autoloads nil "docker/docker-network" "docker/docker-network.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from docker/docker-network.el

(autoload 'docker-network-rm "docker/docker-network" "\
Destroy the network named NAME.

\(fn NAME)" t nil)

(autoload 'docker-networks "docker/docker-network" "\
List docker networks.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docker/docker-network" '("docker-network-")))

;;;***

;;;### (autoloads nil "docker/docker-process" "docker/docker-process.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from docker/docker-process.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docker/docker-process" '("docker-")))

;;;***

;;;### (autoloads nil "docker/docker-utils" "docker/docker-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from docker/docker-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docker/docker-utils" '("docker-utils-")))

;;;***

;;;### (autoloads nil "docker/docker-volume" "docker/docker-volume.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from docker/docker-volume.el

(autoload 'docker-volume-dired "docker/docker-volume" "\
Enter `dired' in the volume named NAME.

\(fn NAME)" t nil)

(autoload 'docker-volume-rm "docker/docker-volume" "\
Destroy the volume named NAME.

\(fn NAME)" t nil)

(autoload 'docker-volumes "docker/docker-volume" "\
List docker volumes.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docker/docker-volume" '("docker-volume-")))

;;;***

;;;### (autoloads nil "dockerfile-mode/dockerfile-mode" "dockerfile-mode/dockerfile-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from dockerfile-mode/dockerfile-mode.el

(autoload 'dockerfile-build-buffer "dockerfile-mode/dockerfile-mode" "\
Build an image called IMAGE-NAME based upon the buffer.
If prefix arg NO-CACHE is set, don't cache the image.

\(fn IMAGE-NAME &optional NO-CACHE)" t nil)

(autoload 'dockerfile-build-no-cache-buffer "dockerfile-mode/dockerfile-mode" "\
Build an image called IMAGE-NAME based upon the buffer without cache.

\(fn IMAGE-NAME)" t nil)

(autoload 'dockerfile-mode "dockerfile-mode/dockerfile-mode" "\
A major mode to edit Dockerfiles.
\\{dockerfile-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("Dockerfile\\(?:\\..*\\)?\\'" . dockerfile-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dockerfile-mode/dockerfile-mode" '("dockerfile-")))

;;;***

;;;### (autoloads nil "editorconfig/editorconfig" "editorconfig/editorconfig.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from editorconfig/editorconfig.el

(autoload 'editorconfig-apply "editorconfig/editorconfig" "\
Get and apply EditorConfig properties to current buffer.
This function ignores `editorconfig-exclude-modes' and
`editorconfig-exclude-regexps', and always applies available properties.

\(fn)" t nil)

(defvar editorconfig-mode nil "\
Non-nil if Editorconfig mode is enabled.
See the `editorconfig-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `editorconfig-mode'.")

(custom-autoload 'editorconfig-mode "editorconfig/editorconfig" nil)

(autoload 'editorconfig-mode "editorconfig/editorconfig" "\
Toggle EditorConfig feature.

To disable EditorConfig in some buffers, modify
`editorconfig-exclude-modes' or `editorconfig-exclude-regexps'.

\(fn &optional ARG)" t nil)

(autoload 'editorconfig-find-current-editorconfig "editorconfig/editorconfig" "\
Find the closest .editorconfig file for current file.

\(fn)" t nil)

(autoload 'editorconfig-display-current-properties "editorconfig/editorconfig" "\
Display EditorConfig properties extracted for current buffer.

\(fn)" t nil)

(defalias 'describe-editorconfig-properties 'editorconfig-display-current-properties)

(autoload 'editorconfig-format-buffer "editorconfig/editorconfig" "\
Format buffer according to .editorconfig indent_style and indent_width.

\(fn)" t nil)

(autoload 'editorconfig-version "editorconfig/editorconfig" "\
Get EditorConfig version as string.

If called interactively or if SHOW-VERSION is non-nil, show the
version in the echo area and the messages buffer.

\(fn &optional SHOW-VERSION)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "editorconfig/editorconfig" '("editorconfig-")))

;;;***

;;;### (autoloads nil "editorconfig/editorconfig-conf-mode" "editorconfig/editorconfig-conf-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from editorconfig/editorconfig-conf-mode.el

(autoload 'editorconfig-conf-mode "editorconfig/editorconfig-conf-mode" "\
Major mode for editing .editorconfig files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.editorconfig\\'" . editorconfig-conf-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "editorconfig/editorconfig-conf-mode" '("editorconfig-conf-mode-syntax-table")))

;;;***

;;;### (autoloads nil "editorconfig/editorconfig-core" "editorconfig/editorconfig-core.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from editorconfig/editorconfig-core.el

(autoload 'editorconfig-core-get-nearest-editorconfig "editorconfig/editorconfig-core" "\
Return path to .editorconfig file that is closest to DIRECTORY.

\(fn DIRECTORY)" nil nil)

(autoload 'editorconfig-core-get-properties "editorconfig/editorconfig-core" "\
Get EditorConfig properties for FILE.
If FILE is not given, use currently visiting file.
Give CONFNAME for basename of config file other than .editorconfig.
If need to specify config format version, give CONFVERSION.

This functions returns alist of properties.  Each element will look like
'(KEY . VALUE) .

\(fn &optional FILE CONFNAME CONFVERSION)" nil nil)

(autoload 'editorconfig-core-get-properties-hash "editorconfig/editorconfig-core" "\
Get EditorConfig properties for FILE.
If FILE is not given, use currently visiting file.
Give CONFNAME for basename of config file other than .editorconfig.
If need to specify config format version, give CONFVERSION.

This function is almost same as `editorconfig-core-get-properties', but returns
hash object instead.

\(fn &optional FILE CONFNAME CONFVERSION)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "editorconfig/editorconfig-core" '("editorconfig-core--")))

;;;***

;;;### (autoloads nil "editorconfig/editorconfig-core-handle" "editorconfig/editorconfig-core-handle.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from editorconfig/editorconfig-core-handle.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "editorconfig/editorconfig-core-handle" '("editorconfig-core-handle")))

;;;***

;;;### (autoloads nil "editorconfig/editorconfig-fnmatch" "editorconfig/editorconfig-fnmatch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from editorconfig/editorconfig-fnmatch.el

(autoload 'editorconfig-fnmatch-p "editorconfig/editorconfig-fnmatch" "\
Test whether STRING match PATTERN.

Matching ignores case if `case-fold-search' is non-nil.

PATTERN should be a shell glob pattern, and some zsh-like wildcard matchings can
be used:

*           Matches any string of characters, except path separators (/)
**          Matches any string of characters
?           Matches any single character
\[name]      Matches any single character in name
\[^name]     Matches any single character not in name
{s1,s2,s3}  Matches any of the strings given (separated by commas)
{min..max}  Matches any number between min and max

\(fn STRING PATTERN)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "editorconfig/editorconfig-fnmatch" '("editorconfig-fnmatch-")))

;;;***

;;;### (autoloads nil "el-get/el-get" "el-get/el-get.el" (0 0 0 0))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-install "el-get/el-get" "\
Cause the named PACKAGE to be installed after all of its
dependencies (if any).

PACKAGE may be either a string or the corresponding symbol.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update "el-get/el-get" "\
Update PACKAGE.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-remove "el-get/el-get" "\
Remove any PACKAGE that is know to be installed or required.

\(fn PACKAGE)" t nil)

(autoload 'el-get-reinstall "el-get/el-get" "\
Remove PACKAGE and then install it again.

\(fn PACKAGE)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE)" t nil)

(autoload 'el-get-self-checksum "el-get/el-get" "\
Compute the checksum of the running version of el-get itself.

Also put the checksum in the kill-ring.

\(fn)" t nil)

(autoload 'el-get "el-get/el-get" "\
Ensure that packages have been downloaded once and init them as needed.

This will not update the sources by using `apt-get install' or
`git pull', but it will ensure that:

* the packages have been installed
* load-path is set so their elisp files can be found
* Info-directory-list is set so their info files can be found
* Autoloads have been prepared and evaluated for each package
* Any post-installation setup (e.g. `(require 'feature)') happens

When SYNC is nil (the default), all installations run
concurrently, in the background.

When SYNC is 'sync, each package will be installed synchronously,
and any error will stop it all.

Please note that the `el-get-init' part of `el-get' is always
done synchronously. There's `byte-compile' support though, and
the packages you use are welcome to use `autoload' too.

PACKAGES is expected to be a list of packages you want to install
or init.  When PACKAGES is omited (the default), the list of
already installed packages is considered.

\(fn &optional SYNC &rest PACKAGES)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-autoloading" "el-get/el-get-autoloading.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-autoloading.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-autoloading" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-build" "el-get/el-get-build.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-build.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-build" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-bundle" "el-get/el-get-bundle.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-bundle.el

(autoload 'el-get-bundle-el-get "el-get/el-get-bundle" "\


\(fn SRC SYNC)" nil nil)

(autoload 'el-get-bundle "el-get/el-get-bundle" "\
Install PACKAGE and run initialization FORM.

PACKAGE can be either a simple package name or a package name
with a modifier before the name to specify local recipe source
information:

* `<owner>/' : specifies a Github owner name
* `gist:<id>' : specifies a Gist ID
* `<type>:' : specifies a type of the package source

If `FEATURE in PACKAGE' form is used instead of PACKAGE, then
that FEATURE is `require'd after installing PACKAGE.  You can
also use `el-get-bundle!' macro if FEATURE and PACKAGE are the
same.  If you wish to `require' more than one feature, then use
`:features' property in FORM.

The initialization FORM may start with a property list that
describes a local recipe.  The property list may include the keyword
`:bundle-sync' with a value of either `t' or `nil' to request that
`el-get-bundle' invoke `el-get' synchronously (respectively asynchronously).
The keyword `:bundle-async' is the inverse of `:bundle-sync'.
\(Note that the request to run el-get synchronously may not be respected in all
circumstances: see the definition of `el-get-bundle-el-get' for details.)
The FORM after the property list is treated as initialization code,
which is actually an `:after' property of the local recipe.

A copy of the initialization code is stored in a directory
specified by `el-get-bundle-init-directory' and its byte-compiled
version is used if `el-get-bundle-byte-compile' is non-nil.

\(fn PACKAGE &rest FORM)" nil t)

(function-put 'el-get-bundle 'lisp-indent-function 'defun)

(autoload 'el-get-bundle! "el-get/el-get-bundle" "\
Install PACKAGE and run initialization form.
It is the same as `el-get-bundle' except that PACKAGE is explicitly
required.

\(fn PACKAGE &rest ARGS)" nil t)

(function-put 'el-get-bundle! 'lisp-indent-function 'defun)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-bundle" '("el-get-bundle-")))

;;;***

;;;### (autoloads nil "el-get/el-get-byte-compile" "el-get/el-get-byte-compile.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-byte-compile.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-byte-compile" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-check" "el-get/el-get-check.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-check.el

(autoload 'el-get-check-recipe "el-get/el-get-check" "\
Check the format of the recipe.
Please run this command before sending a pull request.
Usage: M-x el-get-check-recipe RET

You can run this function from checker script like this:
    test/check-recipe.el PATH/TO/RECIPE.rcp

When used as a lisp function, FILE-OR-BUFFER must be a buffer
object or a file path.

\(fn FILE-OR-BUFFER)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-check" '("el-get-check-")))

;;;***

;;;### (autoloads nil "el-get/el-get-core" "el-get/el-get-core.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-core.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-core" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-custom" "el-get/el-get-custom.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-custom.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-custom" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-dependencies" "el-get/el-get-dependencies.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-dependencies.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-dependencies" '("el-get-" "topological-sort")))

;;;***

;;;### (autoloads nil "el-get/el-get-list-packages" "el-get/el-get-list-packages.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-list-packages" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-methods" "el-get/el-get-methods.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-methods.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-methods" '("el-get-insecure-check")))

;;;***

;;;### (autoloads nil "el-get/el-get-notify" "el-get/el-get-notify.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-notify.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-notify" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-recipes" "el-get/el-get-recipes.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-recipes.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-recipes" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-status" "el-get/el-get-status.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-status.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-status" '("el-get-")))

;;;***

;;;### (autoloads nil "emacs-async/async" "emacs-async/async.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from emacs-async/async.el

(autoload 'async-start-process "emacs-async/async" "\
Start the executable PROGRAM asynchronously.  See `async-start'.
PROGRAM is passed PROGRAM-ARGS, calling FINISH-FUNC with the
process object when done.  If FINISH-FUNC is nil, the future
object will return the process object when the program is
finished.  Set DEFAULT-DIRECTORY to change PROGRAM's current
working directory.

\(fn NAME PROGRAM FINISH-FUNC &rest PROGRAM-ARGS)" nil nil)

(autoload 'async-start "emacs-async/async" "\
Execute START-FUNC (often a lambda) in a subordinate Emacs process.
When done, the return value is passed to FINISH-FUNC.  Example:

    (async-start
       ;; What to do in the child process
       (lambda ()
         (message \"This is a test\")
         (sleep-for 3)
         222)

       ;; What to do when it finishes
       (lambda (result)
         (message \"Async process done, result should be 222: %s\"
                  result)))

If FINISH-FUNC is nil or missing, a future is returned that can
be inspected using `async-get', blocking until the value is
ready.  Example:

    (let ((proc (async-start
                   ;; What to do in the child process
                   (lambda ()
                     (message \"This is a test\")
                     (sleep-for 3)
                     222))))

        (message \"I'm going to do some work here\") ;; ....

        (message \"Waiting on async process, result should be 222: %s\"
                 (async-get proc)))

If you don't want to use a callback, and you don't care about any
return value from the child process, pass the `ignore' symbol as
the second argument (if you don't, and never call `async-get', it
will leave *emacs* process buffers hanging around):

    (async-start
     (lambda ()
       (delete-file \"a remote file on a slow link\" nil))
     'ignore)

Note: Even when FINISH-FUNC is present, a future is still
returned except that it yields no value (since the value is
passed to FINISH-FUNC).  Call `async-get' on such a future always
returns nil.  It can still be useful, however, as an argument to
`async-ready' or `async-wait'.

\(fn START-FUNC &optional FINISH-FUNC)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "emacs-async/async" '("async-")))

;;;***

;;;### (autoloads nil "emacs-async/async-bytecomp" "emacs-async/async-bytecomp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from emacs-async/async-bytecomp.el

(autoload 'async-byte-recompile-directory "emacs-async/async-bytecomp" "\
Compile all *.el files in DIRECTORY asynchronously.
All *.elc files are systematically deleted before proceeding.

\(fn DIRECTORY &optional QUIET)" nil nil)

(defvar async-bytecomp-package-mode nil "\
Non-nil if Async-Bytecomp-Package mode is enabled.
See the `async-bytecomp-package-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `async-bytecomp-package-mode'.")

(custom-autoload 'async-bytecomp-package-mode "emacs-async/async-bytecomp" nil)

(autoload 'async-bytecomp-package-mode "emacs-async/async-bytecomp" "\
Byte compile asynchronously packages installed with package.el.
Async compilation of packages can be controlled by
`async-bytecomp-allowed-packages'.

\(fn &optional ARG)" t nil)

(autoload 'async-byte-compile-file "emacs-async/async-bytecomp" "\
Byte compile Lisp code FILE asynchronously.

Same as `byte-compile-file' but asynchronous.

\(fn FILE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "emacs-async/async-bytecomp" '("async-byte")))

;;;***

;;;### (autoloads nil "emacs-async/async-test" "emacs-async/async-test.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from emacs-async/async-test.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "emacs-async/async-test" '("async-test-")))

;;;***

;;;### (autoloads nil "emacs-async/dired-async" "emacs-async/dired-async.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from emacs-async/dired-async.el

(defvar dired-async-mode nil "\
Non-nil if Dired-Async mode is enabled.
See the `dired-async-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dired-async-mode'.")

(custom-autoload 'dired-async-mode "emacs-async/dired-async" nil)

(autoload 'dired-async-mode "emacs-async/dired-async" "\
Do dired actions asynchronously.

\(fn &optional ARG)" t nil)

(autoload 'dired-async-do-copy "emacs-async/dired-async" "\
Run ‘dired-do-copy’ asynchronously.

\(fn &optional ARG)" t nil)

(autoload 'dired-async-do-symlink "emacs-async/dired-async" "\
Run ‘dired-do-symlink’ asynchronously.

\(fn &optional ARG)" t nil)

(autoload 'dired-async-do-hardlink "emacs-async/dired-async" "\
Run ‘dired-do-hardlink’ asynchronously.

\(fn &optional ARG)" t nil)

(autoload 'dired-async-do-rename "emacs-async/dired-async" "\
Run ‘dired-do-rename’ asynchronously.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "emacs-async/dired-async" '("dired-async-")))

;;;***

;;;### (autoloads nil "emacs-async/smtpmail-async" "emacs-async/smtpmail-async.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from emacs-async/smtpmail-async.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "emacs-async/smtpmail-async" '("async-smtpmail-")))

;;;***

;;;### (autoloads nil "epl/epl" "epl/epl.el" (0 0 0 0))
;;; Generated autoloads from epl/epl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "epl/epl" '("epl-")))

;;;***

;;;### (autoloads nil "flycheck/flycheck" "flycheck/flycheck.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from flycheck/flycheck.el

(autoload 'flycheck-manual "flycheck/flycheck" "\
Open the Flycheck manual.

\(fn)" t nil)

(autoload 'flycheck-mode "flycheck/flycheck" "\
Minor mode for on-the-fly syntax checking.

When called interactively, toggle `flycheck-mode'.  With prefix
ARG, enable `flycheck-mode' if ARG is positive, otherwise disable
it.

When called from Lisp, enable `flycheck-mode' if ARG is omitted,
nil or positive.  If ARG is `toggle', toggle `flycheck-mode'.
Otherwise behave as if called interactively.

In `flycheck-mode' the buffer is automatically syntax-checked
using the first suitable syntax checker from `flycheck-checkers'.
Use `flycheck-select-checker' to select a checker for the current
buffer manually.

\\{flycheck-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-flycheck-mode nil "\
Non-nil if Global Flycheck mode is enabled.
See the `global-flycheck-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-flycheck-mode'.")

(custom-autoload 'global-flycheck-mode "flycheck/flycheck" nil)

(autoload 'global-flycheck-mode "flycheck/flycheck" "\
Toggle Flycheck mode in all buffers.
With prefix ARG, enable Global Flycheck mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Flycheck mode is enabled in all buffers where
`flycheck-mode-on-safe' would do it.
See `flycheck-mode' for more information on Flycheck mode.

\(fn &optional ARG)" t nil)

(autoload 'flycheck-define-error-level "flycheck/flycheck" "\
Define a new error LEVEL with PROPERTIES.

The following PROPERTIES constitute an error level:

`:severity SEVERITY'
     A number denoting the severity of this level.  The higher
     the number, the more severe is this level compared to other
     levels.  Defaults to 0.

     The severity is used by `flycheck-error-level-<' to
     determine the ordering of errors according to their levels.

`:compilation-level LEVEL'

     A number indicating the broad class of messages that errors
     at this level belong to: one of 0 (info), 1 (warning), or
     2 or nil (error).  Defaults to nil.

     This is used by `flycheck-checker-pattern-to-error-regexp'
     to map error levels into `compilation-mode''s hierarchy and
     to get proper highlighting of errors in `compilation-mode'.

`:overlay-category CATEGORY'
     A symbol denoting the overlay category to use for error
     highlight overlays for this level.  See Info
     node `(elisp)Overlay Properties' for more information about
     overlay categories.

     A category for an error level overlay should at least define
     the `face' property, for error highlighting.  Another useful
     property for error level categories is `priority', to
     influence the stacking of multiple error level overlays.

`:fringe-bitmap BITMAP'
     A fringe bitmap symbol denoting the bitmap to use for fringe
     indicators for this level.  See Info node `(elisp)Fringe
     Bitmaps' for more information about fringe bitmaps,
     including a list of built-in fringe bitmaps.

`:fringe-face FACE'
     A face symbol denoting the face to use for fringe indicators
     for this level.

`:error-list-face FACE'
     A face symbol denoting the face to use for messages of this
     level in the error list.  See `flycheck-list-errors'.

\(fn LEVEL &rest PROPERTIES)" nil nil)

(function-put 'flycheck-define-error-level 'lisp-indent-function '1)

(autoload 'flycheck-define-command-checker "flycheck/flycheck" "\
Define SYMBOL as syntax checker to run a command.

Define SYMBOL as generic syntax checker via
`flycheck-define-generic-checker', which uses an external command
to check the buffer.  SYMBOL and DOCSTRING are the same as for
`flycheck-define-generic-checker'.

In addition to the properties understood by
`flycheck-define-generic-checker', the following PROPERTIES
constitute a command syntax checker.  Unless otherwise noted, all
properties are mandatory.  Note that the default `:error-filter'
of command checkers is `flycheck-sanitize-errors'.

`:command COMMAND'
     The command to run for syntax checking.

     COMMAND is a list of the form `(EXECUTABLE [ARG ...])'.

     EXECUTABLE is a string with the executable of this syntax
     checker.  It can be overridden with the variable
     `flycheck-SYMBOL-executable'.  Note that this variable is
     NOT implicitly defined by this function.  Use
     `flycheck-def-executable-var' to define this variable.

     Each ARG is an argument to the executable, either as string,
     or as special symbol or form for
     `flycheck-substitute-argument', which see.

`:error-patterns PATTERNS'
     A list of patterns to parse the output of the `:command'.

     Each ITEM in PATTERNS is a list `(LEVEL SEXP ...)', where
     LEVEL is a Flycheck error level (see
     `flycheck-define-error-level'), followed by one or more RX
     `SEXP's which parse an error of that level and extract line,
     column, file name and the message.

     See `rx' for general information about RX, and
     `flycheck-rx-to-string' for some special RX forms provided
     by Flycheck.

     All patterns are applied in the order of declaration to the
     whole output of the syntax checker.  Output already matched
     by a pattern will not be matched by subsequent patterns.  In
     other words, the first pattern wins.

     This property is optional.  If omitted, however, an
     `:error-parser' is mandatory.

`:error-parser FUNCTION'
     A function to parse errors with.

     The function shall accept three arguments OUTPUT CHECKER
     BUFFER.  OUTPUT is the syntax checker output as string,
     CHECKER the syntax checker that was used, and BUFFER a
     buffer object representing the checked buffer.  The function
     must return a list of `flycheck-error' objects parsed from
     OUTPUT.

     This property is optional.  If omitted, it defaults to
     `flycheck-parse-with-patterns'.  In this case,
     `:error-patterns' is mandatory.

`:standard-input t'
     Whether to send the buffer contents on standard input.

     If this property is given and has a non-nil value, send the
     contents of the buffer on standard input.

     Defaults to nil.

Note that you may not give `:start', `:interrupt', and
`:print-doc' for a command checker.  You can give a custom
`:verify' function, though, whose results will be appended to the
default `:verify' function of command checkers.

\(fn SYMBOL DOCSTRING &rest PROPERTIES)" nil nil)

(function-put 'flycheck-define-command-checker 'lisp-indent-function '1)

(function-put 'flycheck-define-command-checker 'doc-string-elt '2)

(autoload 'flycheck-def-config-file-var "flycheck/flycheck" "\
Define SYMBOL as config file variable for CHECKER, with default FILE-NAME.

SYMBOL is declared as customizable variable using `defcustom', to
provide a configuration file for the given syntax CHECKER.
CUSTOM-ARGS are forwarded to `defcustom'.

FILE-NAME is the initial value of the new variable.  If omitted,
the default value is nil.

Use this together with the `config-file' form in the `:command'
argument to `flycheck-define-checker'.

\(fn SYMBOL CHECKER &optional FILE-NAME &rest CUSTOM-ARGS)" nil t)

(function-put 'flycheck-def-config-file-var 'lisp-indent-function '3)

(autoload 'flycheck-def-option-var "flycheck/flycheck" "\
Define SYMBOL as option variable with INIT-VALUE for CHECKER.

SYMBOL is declared as customizable variable using `defcustom', to
provide an option for the given syntax CHECKERS (a checker or a
list of checkers).  INIT-VALUE is the initial value of the
variable, and DOCSTRING is its docstring.  CUSTOM-ARGS are
forwarded to `defcustom'.

Use this together with the `option', `option-list' and
`option-flag' forms in the `:command' argument to
`flycheck-define-checker'.

\(fn SYMBOL INIT-VALUE CHECKERS DOCSTRING &rest CUSTOM-ARGS)" nil t)

(function-put 'flycheck-def-option-var 'lisp-indent-function '3)

(function-put 'flycheck-def-option-var 'doc-string-elt '4)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "flycheck/flycheck" '("flycheck-" "list-flycheck-errors" "help-flycheck-checker-d")))

;;;***

;;;### (autoloads nil "flycheck/flycheck-buttercup" "flycheck/flycheck-buttercup.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from flycheck/flycheck-buttercup.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "flycheck/flycheck-buttercup" '("flycheck-buttercup-format-error-list")))

;;;***

;;;### (autoloads nil "flycheck/flycheck-ert" "flycheck/flycheck-ert.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from flycheck/flycheck-ert.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "flycheck/flycheck-ert" '("flycheck-er")))

;;;***

;;;### (autoloads nil "fuzzy/fuzzy" "fuzzy/fuzzy.el" (0 0 0 0))
;;; Generated autoloads from fuzzy/fuzzy.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "fuzzy/fuzzy" '("fuzzy-" "turn-o")))

;;;***

;;;### (autoloads nil "go-mode/go-guru" "go-mode/go-guru.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from go-mode/go-guru.el

(autoload 'go-guru-set-scope "go-mode/go-guru" "\
Set the scope for the Go guru, prompting the user to edit the previous scope.

The scope restricts analysis to the specified packages.
Its value is a comma-separated list of patterns of these forms:
	golang.org/x/tools/cmd/guru     # a single package
	golang.org/x/tools/...          # all packages beneath dir
	...                             # the entire workspace.

A pattern preceded by '-' is negative, so the scope
	encoding/...,-encoding/xml
matches all encoding packages except encoding/xml.

\(fn)" t nil)

(autoload 'go-guru-callees "go-mode/go-guru" "\
Show possible callees of the function call at the current point.

\(fn)" t nil)

(autoload 'go-guru-callers "go-mode/go-guru" "\
Show the set of callers of the function containing the current point.

\(fn)" t nil)

(autoload 'go-guru-callstack "go-mode/go-guru" "\
Show an arbitrary path from a root of the call graph to the
function containing the current point.

\(fn)" t nil)

(autoload 'go-guru-definition "go-mode/go-guru" "\
Jump to the definition of the selected identifier.

\(fn &optional OTHER-WINDOW)" t nil)

(autoload 'go-guru-definition-other-window "go-mode/go-guru" "\
Jump to the defintion of the selected identifier in another window

\(fn)" t nil)

(autoload 'go-guru-describe "go-mode/go-guru" "\
Describe the selected syntax, its kind, type and methods.

\(fn)" t nil)

(autoload 'go-guru-pointsto "go-mode/go-guru" "\
Show what the selected expression points to.

\(fn)" t nil)

(autoload 'go-guru-implements "go-mode/go-guru" "\
Describe the 'implements' relation for types in the package
containing the current point.

\(fn)" t nil)

(autoload 'go-guru-freevars "go-mode/go-guru" "\
Enumerate the free variables of the current selection.

\(fn)" t nil)

(autoload 'go-guru-peers "go-mode/go-guru" "\
Enumerate the set of possible corresponding sends/receives for
this channel receive/send operation.

\(fn)" t nil)

(autoload 'go-guru-referrers "go-mode/go-guru" "\
Enumerate all references to the object denoted by the selected
identifier.

\(fn)" t nil)

(autoload 'go-guru-whicherrs "go-mode/go-guru" "\
Show globals, constants and types to which the selected
expression (of type 'error') may refer.

\(fn)" t nil)

(autoload 'go-guru-unhighlight-identifiers "go-mode/go-guru" "\
Remove highlights from previously highlighted identifier.

\(fn)" nil nil)

(autoload 'go-guru-hl-identifier "go-mode/go-guru" "\
Highlight all instances of the identifier under point. Removes
highlights from previously highlighted identifier.

\(fn)" t nil)

(autoload 'go-guru-hl-identifier-mode "go-mode/go-guru" "\
Highlight instances of the identifier at point after a short
timeout.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "go-mode/go-guru" '("go-guru-")))

;;;***

;;;### (autoloads nil "go-mode/go-mode" "go-mode/go-mode.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from go-mode/go-mode.el

(autoload 'go-mode "go-mode/go-mode" "\
Major mode for editing Go source text.

This mode provides (not just) basic editing capabilities for
working with Go code. It offers almost complete syntax
highlighting, indentation that is almost identical to gofmt and
proper parsing of the buffer content to allow features such as
navigation by function, manipulation of comments or detection of
strings.

In addition to these core features, it offers various features to
help with writing Go code. You can directly run buffer content
through gofmt, read godoc documentation from within Emacs, modify
and clean up the list of package imports or interact with the
Playground (uploading and downloading pastes).

The following extra functions are defined:

- `gofmt'
- `godoc' and `godoc-at-point'
- `go-import-add'
- `go-remove-unused-imports'
- `go-goto-arguments'
- `go-goto-docstring'
- `go-goto-function'
- `go-goto-function-name'
- `go-goto-imports'
- `go-goto-return-values'
- `go-goto-method-receiver'
- `go-play-buffer' and `go-play-region'
- `go-download-play'
- `godef-describe' and `godef-jump'
- `go-coverage'
- `go-set-project'
- `go-reset-gopath'

If you want to automatically run `gofmt' before saving a file,
add the following hook to your emacs configuration:

\(add-hook 'before-save-hook #'gofmt-before-save)

If you want to use `godef-jump' instead of etags (or similar),
consider binding godef-jump to `M-.', which is the default key
for `find-tag':

\(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd \"M-.\") #'godef-jump)))

Please note that godef is an external dependency. You can install
it with

go get github.com/rogpeppe/godef


If you're looking for even more integration with Go, namely
on-the-fly syntax checking, auto-completion and snippets, it is
recommended that you look at flycheck
\(see URL `https://github.com/flycheck/flycheck') or flymake in combination
with goflymake (see URL `https://github.com/dougm/goflymake'), gocode
\(see URL `https://github.com/nsf/gocode'), go-eldoc
\(see URL `github.com/syohex/emacs-go-eldoc') and yasnippet-go
\(see URL `https://github.com/dominikh/yasnippet-go')

\(fn)" t nil)

(add-to-list 'auto-mode-alist (cons "\\.go\\'" 'go-mode))

(autoload 'gofmt-before-save "go-mode/go-mode" "\
Add this to .emacs to run gofmt on the current buffer when saving:
\(add-hook 'before-save-hook 'gofmt-before-save).

Note that this will cause ‘go-mode’ to get loaded the first time
you save any file, kind of defeating the point of autoloading.

\(fn)" t nil)

(autoload 'godoc "go-mode/go-mode" "\
Show Go documentation for QUERY, much like \\<go-mode-map>\\[man].

\(fn QUERY)" t nil)

(autoload 'go-download-play "go-mode/go-mode" "\
Download a paste from the playground and insert it in a Go buffer.
Tries to look for a URL at point.

\(fn URL)" t nil)

(autoload 'go-dot-mod-mode "go-mode/go-mode" "\
A major mode for editing go.mod files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("go\\.mod\\'" . go-dot-mod-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "go-mode/go-mode" '("gofmt" "god" "go-")))

;;;***

;;;### (autoloads nil "go-mode/go-rename" "go-mode/go-rename.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from go-mode/go-rename.el

(autoload 'go-rename "go-mode/go-rename" "\
Rename the entity denoted by the identifier at point, using
the `gorename' tool. With FORCE, call `gorename' with the
`-force' flag.

\(fn NEW-NAME &optional FORCE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "go-mode/go-rename" '("go-")))

;;;***

;;;### (autoloads nil "iflipb/iflipb" "iflipb/iflipb.el" (0 0 0 0))
;;; Generated autoloads from iflipb/iflipb.el

(autoload 'iflipb-next-buffer "iflipb/iflipb" "\
Flip to the next buffer in the buffer list.

Consecutive invocations switch to less recent buffers in the
buffer list. Buffers matching `iflipb-always-ignore-buffers' are
always ignored. Without a prefix argument, buffers matching
`iflipb-ignore-buffers' are also ignored.

\(fn ARG)" t nil)

(autoload 'iflipb-previous-buffer "iflipb/iflipb" "\
Flip to the previous buffer in the buffer list.

Consecutive invocations switch to more recent buffers in the
buffer list.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "iflipb/iflipb" '("iflipb-")))

;;;***

;;;### (autoloads nil "js-auto-format-mode/js-auto-format-mode" "js-auto-format-mode/js-auto-format-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from js-auto-format-mode/js-auto-format-mode.el

(autoload 'js-auto-format-enabled-p "js-auto-format-mode/js-auto-format-mode" "\
Test whether js-auto-format-mode is enabled.

\(fn)" nil nil)

(autoload 'js-auto-format-execute "js-auto-format-mode/js-auto-format-mode" "\
Format JavaScript source code.

\(fn)" t nil)

(autoload 'js-auto-format-mode "js-auto-format-mode/js-auto-format-mode" "\
Minor mode for auto-formatting JavaScript code

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "js-auto-format-mode/js-auto-format-mode" '("js-auto-format-")))

;;;***

;;;### (autoloads nil "js2-mode/js2-imenu-extras" "js2-mode/js2-imenu-extras.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from js2-mode/js2-imenu-extras.el

(autoload 'js2-imenu-extras-setup "js2-mode/js2-imenu-extras" "\


\(fn)" nil nil)

(autoload 'js2-imenu-extras-mode "js2-mode/js2-imenu-extras" "\
Toggle Imenu support for frameworks and structural patterns.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "js2-mode/js2-imenu-extras" '("js2-imenu-")))

;;;***

;;;### (autoloads nil "js2-mode/js2-mode" "js2-mode/js2-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from js2-mode/js2-mode.el

(autoload 'js2-highlight-unused-variables-mode "js2-mode/js2-mode" "\
Toggle highlight of unused variables.

\(fn &optional ARG)" t nil)

(autoload 'js2-minor-mode "js2-mode/js2-mode" "\
Minor mode for running js2 as a background linter.
This allows you to use a different major mode for JavaScript editing,
such as `js-mode', while retaining the asynchronous error/warning
highlighting features of `js2-mode'.

\(fn &optional ARG)" t nil)

(autoload 'js2-mode "js2-mode/js2-mode" "\
Major mode for editing JavaScript code.

\(fn)" t nil)

(autoload 'js2-jsx-mode "js2-mode/js2-mode" "\
Major mode for editing JSX code in Emacs 26 and earlier.

To edit JSX code in Emacs 27, use `js-mode' as your major mode
with `js2-minor-mode' enabled.

To customize the indentation for this mode, set the SGML offset
variables (`sgml-basic-offset' et al) locally, like so:

  (defun set-jsx-indentation ()
    (setq-local sgml-basic-offset js2-basic-offset))
  (add-hook \\='js2-jsx-mode-hook #\\='set-jsx-indentation)

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "js2-mode/js2-mode" '("js2-")))

;;;***

;;;### (autoloads nil "js2-mode/js2-old-indent" "js2-mode/js2-old-indent.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from js2-mode/js2-old-indent.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "js2-mode/js2-old-indent" '("js2-")))

;;;***

;;;### (autoloads nil "json-mode/json-mode" "json-mode/json-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from json-mode/json-mode.el

(defconst json-mode-standard-file-ext '(".json" ".jsonld") "\
List of JSON file extensions.")

(defsubst json-mode--update-auto-mode (filenames) "\
Update the `json-mode' entry of `auto-mode-alist'.

FILENAMES should be a list of file as string.
Return the new `auto-mode-alist' entry" (let* ((new-regexp (rx-to-string (\` (seq (eval (cons (quote or) (append json-mode-standard-file-ext (quote (\, filenames))))) eot)))) (new-entry (cons new-regexp (quote json-mode))) (old-entry (when (boundp (quote json-mode--auto-mode-entry)) json-mode--auto-mode-entry))) (setq auto-mode-alist (delete old-entry auto-mode-alist)) (add-to-list (quote auto-mode-alist) new-entry) new-entry))

(defvar json-mode-auto-mode-list '(".babelrc" ".bowerrc" "composer.lock") "\
List of filename as string to pass for the JSON entry of
`auto-mode-alist'.

Note however that custom `json-mode' entries in `auto-mode-alist'
won’t be affected.")

(custom-autoload 'json-mode-auto-mode-list "json-mode/json-mode" nil)

(defvar json-mode--auto-mode-entry (json-mode--update-auto-mode json-mode-auto-mode-list) "\
Regexp generated from the `json-mode-auto-mode-list'.")

(autoload 'json-mode "json-mode/json-mode" "\
Major mode for editing JSON files

\(fn)" t nil)

(add-to-list 'magic-fallback-mode-alist '("^[{[]$" . json-mode))

(autoload 'json-mode-show-path "json-mode/json-mode" "\
Print the path to the node at point to the minibuffer, and yank to the kill ring.

\(fn)" t nil)

(autoload 'json-mode-kill-path "json-mode/json-mode" "\


\(fn)" t nil)

(autoload 'json-mode-beautify "json-mode/json-mode" "\
Beautify / pretty-print the active region (or the entire buffer if no active region).

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "json-mode/json-mode" '("json-")))

;;;***

;;;### (autoloads nil "json-reformat/json-reformat" "json-reformat/json-reformat.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from json-reformat/json-reformat.el

(autoload 'json-reformat-region "json-reformat/json-reformat" "\
Reformat the JSON in the specified region.

If you want to customize the reformat style,
please see the documentation of `json-reformat:indent-width'
and `json-reformat:pretty-string?'.

\(fn BEGIN END)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "json-reformat/json-reformat" '("json-reformat")))

;;;***

;;;### (autoloads nil "json-snatcher/json-snatcher" "json-snatcher/json-snatcher.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from json-snatcher/json-snatcher.el

(autoload 'jsons-print-path "json-snatcher/json-snatcher" "\
Print the path to the JSON value under point, and save it in the kill ring.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "json-snatcher/json-snatcher" '("jsons-")))

;;;***

;;;### (autoloads nil "lua-mode/init-tryout" "lua-mode/init-tryout.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lua-mode/init-tryout.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lua-mode/init-tryout" '("add-trace-for")))

;;;***

;;;### (autoloads nil "lua-mode/lua-mode" "lua-mode/lua-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lua-mode/lua-mode.el

(autoload 'lua-mode "lua-mode/lua-mode" "\
Major mode for editing Lua code.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.lua\\'" . lua-mode))

(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(defalias 'run-lua #'lua-start-process)

(autoload 'lua-start-process "lua-mode/lua-mode" "\
Start a Lua process named NAME, running PROGRAM.
PROGRAM defaults to NAME, which defaults to `lua-default-application'.
When called interactively, switch to the process buffer.

\(fn &optional NAME PROGRAM STARTFILE &rest SWITCHES)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lua-mode/lua-mode" '("lua-")))

;;;***

;;;### (autoloads nil "magit/lisp/git-commit" "magit/lisp/git-commit.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/git-commit.el

(defvar global-git-commit-mode t "\
Non-nil if Global Git-Commit mode is enabled.
See the `global-git-commit-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-git-commit-mode'.")

(custom-autoload 'global-git-commit-mode "magit/lisp/git-commit" nil)

(autoload 'global-git-commit-mode "magit/lisp/git-commit" "\
Edit Git commit messages.
This global mode arranges for `git-commit-setup' to be called
when a Git commit message file is opened.  That usually happens
when Git uses the Emacsclient as $GIT_EDITOR to have the user
provide such a commit message.

\(fn &optional ARG)" t nil)

(defconst git-commit-filename-regexp "/\\(\\(\\(COMMIT\\|NOTES\\|PULLREQ\\|MERGEREQ\\|TAG\\)_EDIT\\|MERGE_\\|\\)MSG\\|\\(BRANCH\\|EDIT\\)_DESCRIPTION\\)\\'")

(autoload 'git-commit-setup-check-buffer "magit/lisp/git-commit" "\


\(fn)" nil nil)

(autoload 'git-commit-setup "magit/lisp/git-commit" "\


\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/git-commit" '("git-commit-")))

;;;***

;;;### (autoloads nil "magit/lisp/git-rebase" "magit/lisp/git-rebase.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/git-rebase.el

(autoload 'git-rebase-current-line "magit/lisp/git-rebase" "\
Parse current line into a `git-rebase-action' instance.
If the current line isn't recognized as a rebase line, an
instance with all nil values is returned.

\(fn)" nil nil)

(autoload 'git-rebase-mode "magit/lisp/git-rebase" "\
Major mode for editing of a Git rebase file.

Rebase files are generated when you run 'git rebase -i' or run
`magit-interactive-rebase'.  They describe how Git should perform
the rebase.  See the documentation for git-rebase (e.g., by
running 'man git-rebase' at the command line) for details.

\(fn)" t nil)

(defconst git-rebase-filename-regexp "/git-rebase-todo\\'")

(add-to-list 'auto-mode-alist (cons git-rebase-filename-regexp 'git-rebase-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/git-rebase" '("git-rebase-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit" "magit/lisp/magit.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from magit/lisp/magit.el
 (autoload 'magit-dispatch "magit" nil t)
 (autoload 'magit-run "magit" nil t)

(autoload 'magit-git-command "magit/lisp/magit" "\
Execute COMMAND asynchronously; display output.

Interactively, prompt for COMMAND in the minibuffer. \"git \" is
used as initial input, but can be deleted to run another command.

With a prefix argument COMMAND is run in the top-level directory
of the current working tree, otherwise in `default-directory'.

\(fn COMMAND)" t nil)

(autoload 'magit-git-command-topdir "magit/lisp/magit" "\
Execute COMMAND asynchronously; display output.

Interactively, prompt for COMMAND in the minibuffer. \"git \" is
used as initial input, but can be deleted to run another command.

COMMAND is run in the top-level directory of the current
working tree.

\(fn COMMAND)" t nil)

(autoload 'magit-shell-command "magit/lisp/magit" "\
Execute COMMAND asynchronously; display output.

Interactively, prompt for COMMAND in the minibuffer.  With a
prefix argument COMMAND is run in the top-level directory of
the current working tree, otherwise in `default-directory'.

\(fn COMMAND)" t nil)

(autoload 'magit-shell-command-topdir "magit/lisp/magit" "\
Execute COMMAND asynchronously; display output.

Interactively, prompt for COMMAND in the minibuffer.  COMMAND
is run in the top-level directory of the current working tree.

\(fn COMMAND)" t nil)

(autoload 'magit-version "magit/lisp/magit" "\
Return the version of Magit currently in use.
If optional argument PRINT-DEST is non-nil, output
stream (interactively, the echo area, or the current buffer with
a prefix argument), also print the used versions of Magit, Git,
and Emacs to it.

\(fn &optional PRINT-DEST)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-apply" "magit/lisp/magit-apply.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-apply.el

(autoload 'magit-stage-file "magit/lisp/magit-apply" "\
Stage all changes to FILE.
With a prefix argument or when there is no file at point ask for
the file to be staged.  Otherwise stage the file at point without
requiring confirmation.

\(fn FILE)" t nil)

(autoload 'magit-stage-modified "magit/lisp/magit-apply" "\
Stage all changes to files modified in the worktree.
Stage all new content of tracked files and remove tracked files
that no longer exist in the working tree from the index also.
With a prefix argument also stage previously untracked (but not
ignored) files.

\(fn &optional ALL)" t nil)

(autoload 'magit-unstage-file "magit/lisp/magit-apply" "\
Unstage all changes to FILE.
With a prefix argument or when there is no file at point ask for
the file to be unstaged.  Otherwise unstage the file at point
without requiring confirmation.

\(fn FILE)" t nil)

(autoload 'magit-unstage-all "magit/lisp/magit-apply" "\
Remove all changes from the staging area.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-apply" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-autorevert" "magit/lisp/magit-autorevert.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-autorevert.el

(defvar magit-auto-revert-mode (not (or global-auto-revert-mode noninteractive)) "\
Non-nil if Magit-Auto-Revert mode is enabled.
See the `magit-auto-revert-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `magit-auto-revert-mode'.")

(custom-autoload 'magit-auto-revert-mode "magit/lisp/magit-autorevert" nil)

(autoload 'magit-auto-revert-mode "magit/lisp/magit-autorevert" "\
Toggle Auto-Revert mode in all buffers.
With prefix ARG, enable Magit-Auto-Revert mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Revert mode is enabled in all buffers where
`magit-turn-on-auto-revert-mode-if-desired' would do it.
See `auto-revert-mode' for more information on Auto-Revert mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-autorevert" '("auto-revert-buffer" "magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-bisect" "magit/lisp/magit-bisect.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-bisect.el
 (autoload 'magit-bisect "magit-bisect" nil t)

(autoload 'magit-bisect-start "magit/lisp/magit-bisect" "\
Start a bisect session.

Bisecting a bug means to find the commit that introduced it.
This command starts such a bisect session by asking for a know
good and a bad commit.  To move the session forward use the
other actions from the bisect transient command (\\<magit-status-mode-map>\\[magit-bisect]).

\(fn BAD GOOD)" t nil)

(autoload 'magit-bisect-reset "magit/lisp/magit-bisect" "\
After bisecting, cleanup bisection state and return to original `HEAD'.

\(fn)" t nil)

(autoload 'magit-bisect-good "magit/lisp/magit-bisect" "\
While bisecting, mark the current commit as good.
Use this after you have asserted that the commit does not contain
the bug in question.

\(fn)" t nil)

(autoload 'magit-bisect-bad "magit/lisp/magit-bisect" "\
While bisecting, mark the current commit as bad.
Use this after you have asserted that the commit does contain the
bug in question.

\(fn)" t nil)

(autoload 'magit-bisect-skip "magit/lisp/magit-bisect" "\
While bisecting, skip the current commit.
Use this if for some reason the current commit is not a good one
to test.  This command lets Git choose a different one.

\(fn)" t nil)

(autoload 'magit-bisect-run "magit/lisp/magit-bisect" "\
Bisect automatically by running commands after each step.

Unlike `git bisect run' this can be used before bisecting has
begun.  In that case it behaves like `git bisect start; git
bisect run'.

\(fn CMDLINE &optional BAD GOOD)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-bisect" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-blame" "magit/lisp/magit-blame.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-blame.el
 (autoload 'magit-blame-echo "magit-blame" nil t)
 (autoload 'magit-blame-addition "magit-blame" nil t)
 (autoload 'magit-blame-removal "magit-blame" nil t)
 (autoload 'magit-blame-reverse "magit-blame" nil t)
 (autoload 'magit-blame "magit-blame" nil t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-blame" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-bookmark" "magit/lisp/magit-bookmark.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-bookmark.el

(autoload 'magit--handle-bookmark "magit/lisp/magit-bookmark" "\
Open a bookmark created by `magit--make-bookmark'.
Call the `magit-*-setup-buffer' function of the the major-mode
with the variables' values as arguments, which were recorded by
`magit--make-bookmark'.  Ignore `magit-display-buffer-function'.

\(fn BOOKMARK)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-bookmark" '("magit--make-bookmark")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-branch" "magit/lisp/magit-branch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-branch.el
 (autoload 'magit-branch "magit" nil t)

(autoload 'magit-checkout "magit/lisp/magit-branch" "\
Checkout REVISION, updating the index and the working tree.
If REVISION is a local branch, then that becomes the current
branch.  If it is something else, then `HEAD' becomes detached.
Checkout fails if the working tree or the staging area contain
changes.

\(git checkout REVISION).

\(fn REVISION)" t nil)

(autoload 'magit-branch-create "magit/lisp/magit-branch" "\
Create BRANCH at branch or revision START-POINT.

\(fn BRANCH START-POINT)" t nil)

(autoload 'magit-branch-and-checkout "magit/lisp/magit-branch" "\
Create and checkout BRANCH at branch or revision START-POINT.

\(fn BRANCH START-POINT)" t nil)

(autoload 'magit-branch-or-checkout "magit/lisp/magit-branch" "\
Hybrid between `magit-checkout' and `magit-branch-and-checkout'.

Ask the user for an existing branch or revision.  If the user
input actually can be resolved as a branch or revision, then
check that out, just like `magit-checkout' would.

Otherwise create and checkout a new branch using the input as
its name.  Before doing so read the starting-point for the new
branch.  This is similar to what `magit-branch-and-checkout'
does.

\(fn ARG &optional START-POINT)" t nil)

(autoload 'magit-branch-checkout "magit/lisp/magit-branch" "\
Checkout an existing or new local branch.

Read a branch name from the user offering all local branches and
a subset of remote branches as candidates.  Omit remote branches
for which a local branch by the same name exists from the list
of candidates.  The user can also enter a completely new branch
name.

- If the user selects an existing local branch, then check that
  out.

- If the user selects a remote branch, then create and checkout
  a new local branch with the same name.  Configure the selected
  remote branch as push target.

- If the user enters a new branch name, then create and check
  that out, after also reading the starting-point from the user.

In the latter two cases the upstream is also set.  Whether it is
set to the chosen START-POINT or something else depends on the
value of `magit-branch-adjust-remote-upstream-alist', just like
when using `magit-branch-and-checkout'.

\(fn BRANCH &optional START-POINT)" t nil)

(autoload 'magit-branch-orphan "magit/lisp/magit-branch" "\
Create and checkout an orphan BRANCH with contents from revision START-POINT.

\(fn BRANCH START-POINT)" t nil)

(autoload 'magit-branch-spinout "magit/lisp/magit-branch" "\
Create new branch from the unpushed commits.
Like `magit-branch-spinoff' but remain on the current branch.
If there are any uncommitted changes, then behave exactly like
`magit-branch-spinoff'.

\(fn BRANCH &optional FROM)" t nil)

(autoload 'magit-branch-spinoff "magit/lisp/magit-branch" "\
Create new branch from the unpushed commits.

Create and checkout a new branch starting at and tracking the
current branch.  That branch in turn is reset to the last commit
it shares with its upstream.  If the current branch has no
upstream or no unpushed commits, then the new branch is created
anyway and the previously current branch is not touched.

This is useful to create a feature branch after work has already
began on the old branch (likely but not necessarily \"master\").

If the current branch is a member of the value of option
`magit-branch-prefer-remote-upstream' (which see), then the
current branch will be used as the starting point as usual, but
the upstream of the starting-point may be used as the upstream
of the new branch, instead of the starting-point itself.

If optional FROM is non-nil, then the source branch is reset
to `FROM~', instead of to the last commit it shares with its
upstream.  Interactively, FROM is only ever non-nil, if the
region selects some commits, and among those commits, FROM is
the commit that is the fewest commits ahead of the source
branch.

The commit at the other end of the selection actually does not
matter, all commits between FROM and `HEAD' are moved to the new
branch.  If FROM is not reachable from `HEAD' or is reachable
from the source branch's upstream, then an error is raised.

\(fn BRANCH &optional FROM)" t nil)

(autoload 'magit-branch-reset "magit/lisp/magit-branch" "\
Reset a branch to the tip of another branch or any other commit.

When the branch being reset is the current branch, then do a
hard reset.  If there are any uncommitted changes, then the user
has to confirm the reset because those changes would be lost.

This is useful when you have started work on a feature branch but
realize it's all crap and want to start over.

When resetting to another branch and a prefix argument is used,
then also set the target branch as the upstream of the branch
that is being reset.

\(fn BRANCH TO &optional SET-UPSTREAM)" t nil)

(autoload 'magit-branch-delete "magit/lisp/magit-branch" "\
Delete one or multiple branches.
If the region marks multiple branches, then offer to delete
those, otherwise prompt for a single branch to be deleted,
defaulting to the branch at point.

\(fn BRANCHES &optional FORCE)" t nil)

(autoload 'magit-branch-rename "magit/lisp/magit-branch" "\
Rename the branch named OLD to NEW.

With a prefix argument FORCE, rename even if a branch named NEW
already exists.

If `branch.OLD.pushRemote' is set, then unset it.  Depending on
the value of `magit-branch-rename-push-target' (which see) maybe
set `branch.NEW.pushRemote' and maybe rename the push-target on
the remote.

\(fn OLD NEW &optional FORCE)" t nil)

(autoload 'magit-branch-shelve "magit/lisp/magit-branch" "\
Shelve a BRANCH.
Rename \"refs/heads/BRANCH\" to \"refs/shelved/BRANCH\",
and also rename the respective reflog file.

\(fn BRANCH)" t nil)

(autoload 'magit-branch-unshelve "magit/lisp/magit-branch" "\
Unshelve a BRANCH
Rename \"refs/shelved/BRANCH\" to \"refs/heads/BRANCH\",
and also rename the respective reflog file.

\(fn BRANCH)" t nil)
 (autoload 'magit-branch-configure "magit-branch" nil t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-branch" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-clone" "magit/lisp/magit-clone.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-clone.el
 (autoload 'magit-clone "magit-clone" nil t)

(autoload 'magit-clone-regular "magit/lisp/magit-clone" "\
Create a clone of REPOSITORY in DIRECTORY.
Then show the status buffer for the new repository.

\(fn REPOSITORY DIRECTORY ARGS)" t nil)

(autoload 'magit-clone-shallow "magit/lisp/magit-clone" "\
Create a shallow clone of REPOSITORY in DIRECTORY.
Then show the status buffer for the new repository.
With a prefix argument read the DEPTH of the clone;
otherwise use 1.

\(fn REPOSITORY DIRECTORY ARGS DEPTH)" t nil)

(autoload 'magit-clone-shallow-since "magit/lisp/magit-clone" "\
Create a shallow clone of REPOSITORY in DIRECTORY.
Then show the status buffer for the new repository.
Exclude commits before DATE, which is read from the
user.

\(fn REPOSITORY DIRECTORY ARGS DATE)" t nil)

(autoload 'magit-clone-shallow-exclude "magit/lisp/magit-clone" "\
Create a shallow clone of REPOSITORY in DIRECTORY.
Then show the status buffer for the new repository.
Exclude commits reachable from EXCLUDE, which is a
branch or tag read from the user.

\(fn REPOSITORY DIRECTORY ARGS EXCLUDE)" t nil)

(autoload 'magit-clone-bare "magit/lisp/magit-clone" "\
Create a bare clone of REPOSITORY in DIRECTORY.
Then show the status buffer for the new repository.

\(fn REPOSITORY DIRECTORY ARGS)" t nil)

(autoload 'magit-clone-mirror "magit/lisp/magit-clone" "\
Create a mirror of REPOSITORY in DIRECTORY.
Then show the status buffer for the new repository.

\(fn REPOSITORY DIRECTORY ARGS)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-clone" '("magit-clone")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-commit" "magit/lisp/magit-commit.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-commit.el
 (autoload 'magit-commit "magit-commit" nil t)

(autoload 'magit-commit-create "magit/lisp/magit-commit" "\
Create a new commit on `HEAD'.
With a prefix argument, amend to the commit at `HEAD' instead.

\(git commit [--amend] ARGS)

\(fn &optional ARGS)" t nil)

(autoload 'magit-commit-amend "magit/lisp/magit-commit" "\
Amend the last commit.

\(git commit --amend ARGS)

\(fn &optional ARGS)" t nil)

(autoload 'magit-commit-extend "magit/lisp/magit-commit" "\
Amend the last commit, without editing the message.

With a prefix argument keep the committer date, otherwise change
it.  The option `magit-commit-extend-override-date' can be used
to inverse the meaning of the prefix argument.  
\(git commit
--amend --no-edit)

\(fn &optional ARGS OVERRIDE-DATE)" t nil)

(autoload 'magit-commit-reword "magit/lisp/magit-commit" "\
Reword the last commit, ignoring staged changes.

With a prefix argument keep the committer date, otherwise change
it.  The option `magit-commit-reword-override-date' can be used
to inverse the meaning of the prefix argument.

Non-interactively respect the optional OVERRIDE-DATE argument
and ignore the option.

\(git commit --amend --only)

\(fn &optional ARGS OVERRIDE-DATE)" t nil)

(autoload 'magit-commit-fixup "magit/lisp/magit-commit" "\
Create a fixup commit.

With a prefix argument the target COMMIT has to be confirmed.
Otherwise the commit at point may be used without confirmation
depending on the value of option `magit-commit-squash-confirm'.

\(fn &optional COMMIT ARGS)" t nil)

(autoload 'magit-commit-squash "magit/lisp/magit-commit" "\
Create a squash commit, without editing the squash message.

With a prefix argument the target COMMIT has to be confirmed.
Otherwise the commit at point may be used without confirmation
depending on the value of option `magit-commit-squash-confirm'.

\(fn &optional COMMIT ARGS)" t nil)

(autoload 'magit-commit-augment "magit/lisp/magit-commit" "\
Create a squash commit, editing the squash message.

With a prefix argument the target COMMIT has to be confirmed.
Otherwise the commit at point may be used without confirmation
depending on the value of option `magit-commit-squash-confirm'.

\(fn &optional COMMIT ARGS)" t nil)

(autoload 'magit-commit-instant-fixup "magit/lisp/magit-commit" "\
Create a fixup commit targeting COMMIT and instantly rebase.

\(fn &optional COMMIT ARGS)" t nil)

(autoload 'magit-commit-instant-squash "magit/lisp/magit-commit" "\
Create a squash commit targeting COMMIT and instantly rebase.

\(fn &optional COMMIT ARGS)" t nil)

(autoload 'magit-commit-reshelve "magit/lisp/magit-commit" "\
Change the committer date and possibly the author date of `HEAD'.

If you are the author of `HEAD', then both dates are changed,
otherwise only the committer date.  The current time is used
as the initial minibuffer input and the original author (if
that is you) or committer date is available as the previous
history element.

\(fn DATE)" t nil)
 (autoload 'magit-commit-absorb "magit-commit" nil t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-commit" '("magit")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-diff" "magit/lisp/magit-diff.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-diff.el
 (autoload 'magit-diff "magit-diff" nil t)
 (autoload 'magit-diff-refresh "magit-diff" nil t)

(autoload 'magit-diff-dwim "magit/lisp/magit-diff" "\
Show changes for the thing at point.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-diff-range "magit/lisp/magit-diff" "\
Show differences between two commits.

REV-OR-RANGE should be a range or a single revision.  If it is a
revision, then show changes in the working tree relative to that
revision.  If it is a range, but one side is omitted, then show
changes relative to `HEAD'.

If the region is active, use the revisions on the first and last
line of the region as the two sides of the range.  With a prefix
argument, instead of diffing the revisions, choose a revision to
view changes along, starting at the common ancestor of both
revisions (i.e., use a \"...\" range).

\(fn REV-OR-RANGE &optional ARGS FILES)" t nil)

(autoload 'magit-diff-working-tree "magit/lisp/magit-diff" "\
Show changes between the current working tree and the `HEAD' commit.
With a prefix argument show changes between the working tree and
a commit read from the minibuffer.

\(fn &optional REV ARGS FILES)" t nil)

(autoload 'magit-diff-staged "magit/lisp/magit-diff" "\
Show changes between the index and the `HEAD' commit.
With a prefix argument show changes between the index and
a commit read from the minibuffer.

\(fn &optional REV ARGS FILES)" t nil)

(autoload 'magit-diff-unstaged "magit/lisp/magit-diff" "\
Show changes between the working tree and the index.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-diff-unmerged "magit/lisp/magit-diff" "\
Show changes that are being merged.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-diff-while-committing "magit/lisp/magit-diff" "\
While committing, show the changes that are about to be committed.
While amending, invoking the command again toggles between
showing just the new changes or all the changes that will
be committed.

\(fn &optional ARGS)" t nil)

(autoload 'magit-diff-buffer-file "magit/lisp/magit-diff" "\
Show diff for the blob or file visited in the current buffer.

When the buffer visits a blob, then show the respective commit.
When the buffer visits a file, then show the differenced between
`HEAD' and the working tree.  In both cases limit the diff to
the file or blob.

\(fn)" t nil)

(autoload 'magit-diff-paths "magit/lisp/magit-diff" "\
Show changes between any two files on disk.

\(fn A B)" t nil)

(autoload 'magit-show-commit "magit/lisp/magit-diff" "\
Visit the revision at point in another buffer.
If there is no revision at point or with a prefix argument prompt
for a revision.

\(fn REV &optional ARGS FILES MODULE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-diff" '("magit")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-ediff" "magit/lisp/magit-ediff.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-ediff.el
 (autoload 'magit-ediff "magit-ediff" nil)

(autoload 'magit-ediff-resolve "magit/lisp/magit-ediff" "\
Resolve outstanding conflicts in FILE using Ediff.
FILE has to be relative to the top directory of the repository.

In the rare event that you want to manually resolve all
conflicts, including those already resolved by Git, use
`ediff-merge-revisions-with-ancestor'.

\(fn FILE)" t nil)

(autoload 'magit-ediff-stage "magit/lisp/magit-ediff" "\
Stage and unstage changes to FILE using Ediff.
FILE has to be relative to the top directory of the repository.

\(fn FILE)" t nil)

(autoload 'magit-ediff-compare "magit/lisp/magit-ediff" "\
Compare REVA:FILEA with REVB:FILEB using Ediff.

FILEA and FILEB have to be relative to the top directory of the
repository.  If REVA or REVB is nil, then this stands for the
working tree state.

If the region is active, use the revisions on the first and last
line of the region.  With a prefix argument, instead of diffing
the revisions, choose a revision to view changes along, starting
at the common ancestor of both revisions (i.e., use a \"...\"
range).

\(fn REVA REVB FILEA FILEB)" t nil)

(autoload 'magit-ediff-dwim "magit/lisp/magit-ediff" "\
Compare, stage, or resolve using Ediff.
This command tries to guess what file, and what commit or range
the user wants to compare, stage, or resolve using Ediff.  It
might only be able to guess either the file, or range or commit,
in which case the user is asked about the other.  It might not
always guess right, in which case the appropriate `magit-ediff-*'
command has to be used explicitly.  If it cannot read the user's
mind at all, then it asks the user for a command to run.

\(fn)" t nil)

(autoload 'magit-ediff-show-staged "magit/lisp/magit-ediff" "\
Show staged changes using Ediff.

This only allows looking at the changes; to stage, unstage,
and discard changes using Ediff, use `magit-ediff-stage'.

FILE must be relative to the top directory of the repository.

\(fn FILE)" t nil)

(autoload 'magit-ediff-show-unstaged "magit/lisp/magit-ediff" "\
Show unstaged changes using Ediff.

This only allows looking at the changes; to stage, unstage,
and discard changes using Ediff, use `magit-ediff-stage'.

FILE must be relative to the top directory of the repository.

\(fn FILE)" t nil)

(autoload 'magit-ediff-show-working-tree "magit/lisp/magit-ediff" "\
Show changes between `HEAD' and working tree using Ediff.
FILE must be relative to the top directory of the repository.

\(fn FILE)" t nil)

(autoload 'magit-ediff-show-commit "magit/lisp/magit-ediff" "\
Show changes introduced by COMMIT using Ediff.

\(fn COMMIT)" t nil)

(autoload 'magit-ediff-show-stash "magit/lisp/magit-ediff" "\
Show changes introduced by STASH using Ediff.
`magit-ediff-show-stash-with-index' controls whether a
three-buffer Ediff is used in order to distinguish changes in the
stash that were staged.

\(fn STASH)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-ediff" '("magit-ediff")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-extras" "magit/lisp/magit-extras.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-extras.el

(autoload 'magit-run-git-gui "magit/lisp/magit-extras" "\
Run `git gui' for the current git repository.

\(fn)" t nil)

(autoload 'magit-run-git-gui-blame "magit/lisp/magit-extras" "\
Run `git gui blame' on the given FILENAME and COMMIT.
Interactively run it for the current file and the `HEAD', with a
prefix or when the current file cannot be determined let the user
choose.  When the current buffer is visiting FILENAME instruct
blame to center around the line point is on.

\(fn COMMIT FILENAME &optional LINENUM)" t nil)

(autoload 'magit-run-gitk "magit/lisp/magit-extras" "\
Run `gitk' in the current repository.

\(fn)" t nil)

(autoload 'magit-run-gitk-branches "magit/lisp/magit-extras" "\
Run `gitk --branches' in the current repository.

\(fn)" t nil)

(autoload 'magit-run-gitk-all "magit/lisp/magit-extras" "\
Run `gitk --all' in the current repository.

\(fn)" t nil)

(autoload 'ido-enter-magit-status "magit/lisp/magit-extras" "\
Drop into `magit-status' from file switching.

This command does not work in Emacs 26.1.
See https://github.com/magit/magit/issues/3634
and https://debbugs.gnu.org/cgi/bugreport.cgi?bug=31707.

To make this command available use something like:

  (add-hook \\='ido-setup-hook
            (lambda ()
              (define-key ido-completion-map
                (kbd \"C-x g\") \\='ido-enter-magit-status)))

Starting with Emacs 25.1 the Ido keymaps are defined just once
instead of every time Ido is invoked, so now you can modify it
like pretty much every other keymap:

  (define-key ido-common-completion-map
    (kbd \"C-x g\") \\='ido-enter-magit-status)

\(fn)" t nil)

(autoload 'magit-dired-jump "magit/lisp/magit-extras" "\
Visit file at point using Dired.
With a prefix argument, visit in another window.  If there
is no file at point, then instead visit `default-directory'.

\(fn &optional OTHER-WINDOW)" t nil)

(autoload 'magit-dired-log "magit/lisp/magit-extras" "\
Show log for all marked files, or the current file.

\(fn &optional FOLLOW)" t nil)

(autoload 'magit-do-async-shell-command "magit/lisp/magit-extras" "\
Open FILE with `dired-do-async-shell-command'.
Interactively, open the file at point.

\(fn FILE)" t nil)

(autoload 'magit-previous-line "magit/lisp/magit-extras" "\
Like `previous-line' but with Magit-specific shift-selection.

Magit's selection mechanism is based on the region but selects an
area that is larger than the region.  This causes `previous-line'
when invoked while holding the shift key to move up one line and
thereby select two lines.  When invoked inside a hunk body this
command does not move point on the first invocation and thereby
it only selects a single line.  Which inconsistency you prefer
is a matter of preference.

\(fn &optional ARG TRY-VSCROLL)" t nil)

(function-put 'magit-previous-line 'interactive-only '"use `forward-line' with negative argument instead.")

(autoload 'magit-next-line "magit/lisp/magit-extras" "\
Like `next-line' but with Magit-specific shift-selection.

Magit's selection mechanism is based on the region but selects
an area that is larger than the region.  This causes `next-line'
when invoked while holding the shift key to move down one line
and thereby select two lines.  When invoked inside a hunk body
this command does not move point on the first invocation and
thereby it only selects a single line.  Which inconsistency you
prefer is a matter of preference.

\(fn &optional ARG TRY-VSCROLL)" t nil)

(function-put 'magit-next-line 'interactive-only 'forward-line)

(autoload 'magit-clean "magit/lisp/magit-extras" "\
Remove untracked files from the working tree.
With a prefix argument also remove ignored files,
with two prefix arguments remove ignored files only.

\(git clean -f -d [-x|-X])

\(fn &optional ARG)" t nil)

(autoload 'magit-add-change-log-entry "magit/lisp/magit-extras" "\
Find change log file and add date entry and item for current change.
This differs from `add-change-log-entry' (which see) in that
it acts on the current hunk in a Magit buffer instead of on
a position in a file-visiting buffer.

\(fn &optional WHOAMI FILE-NAME OTHER-WINDOW)" t nil)

(autoload 'magit-add-change-log-entry-other-window "magit/lisp/magit-extras" "\
Find change log file in other window and add entry and item.
This differs from `add-change-log-entry-other-window' (which see)
in that it acts on the current hunk in a Magit buffer instead of
on a position in a file-visiting buffer.

\(fn &optional WHOAMI FILE-NAME)" t nil)

(autoload 'magit-edit-line-commit "magit/lisp/magit-extras" "\
Edit the commit that added the current line.

With a prefix argument edit the commit that removes the line,
if any.  The commit is determined using `git blame' and made
editable using `git rebase --interactive' if it is reachable
from `HEAD', or by checking out the commit (or a branch that
points at it) otherwise.

\(fn &optional TYPE)" t nil)

(autoload 'magit-diff-edit-hunk-commit "magit/lisp/magit-extras" "\
From a hunk, edit the respective commit and visit the file.

First visit the file being modified by the hunk at the correct
location using `magit-diff-visit-file'.  This actually visits a
blob.  When point is on a diff header, not within an individual
hunk, then this visits the blob the first hunk is about.

Then invoke `magit-edit-line-commit', which uses an interactive
rebase to make the commit editable, or if that is not possible
because the commit is not reachable from `HEAD' by checking out
that commit directly.  This also causes the actual worktree file
to be visited.

Neither the blob nor the file buffer are killed when finishing
the rebase.  If that is undesirable, then it might be better to
use `magit-rebase-edit-command' instead of this command.

\(fn FILE)" t nil)

(autoload 'magit-reshelve-since "magit/lisp/magit-extras" "\
Change the author and committer dates of the commits since REV.

Ask the user for the first reachable commit whose dates should
be changed.  Then read the new date for that commit.  The initial
minibuffer input and the previous history element offer good
values.  The next commit will be created one minute later and so
on.

This command is only intended for interactive use and should only
be used on highly rearranged and unpublished history.

\(fn REV)" t nil)

(autoload 'magit-pop-revision-stack "magit/lisp/magit-extras" "\
Insert a representation of a revision into the current buffer.

Pop a revision from the `magit-revision-stack' and insert it into
the current buffer according to `magit-pop-revision-stack-format'.
Revisions can be put on the stack using `magit-copy-section-value'
and `magit-copy-buffer-revision'.

If the stack is empty or with a prefix argument, instead read a
revision in the minibuffer.  By using the minibuffer history this
allows selecting an item which was popped earlier or to insert an
arbitrary reference or revision without first pushing it onto the
stack.

When reading the revision from the minibuffer, then it might not
be possible to guess the correct repository.  When this command
is called inside a repository (e.g. while composing a commit
message), then that repository is used.  Otherwise (e.g. while
composing an email) then the repository recorded for the top
element of the stack is used (even though we insert another
revision).  If not called inside a repository and with an empty
stack, or with two prefix arguments, then read the repository in
the minibuffer too.

\(fn REV TOPLEVEL)" t nil)

(autoload 'magit-copy-section-value "magit/lisp/magit-extras" "\
Save the value of the current section for later use.

Save the section value to the `kill-ring', and, provided that
the current section is a commit, branch, or tag section, push
the (referenced) revision to the `magit-revision-stack' for use
with `magit-pop-revision-stack'.

When the current section is a branch or a tag, and a prefix
argument is used, then save the revision at its tip to the
`kill-ring' instead of the reference name.

When the region is active, then save that to the `kill-ring',
like `kill-ring-save' would, instead of behaving as described
above.  If a prefix argument is used and the region is within a
hunk, strip the outer diff marker column.

\(fn)" t nil)

(autoload 'magit-copy-buffer-revision "magit/lisp/magit-extras" "\
Save the revision of the current buffer for later use.

Save the revision shown in the current buffer to the `kill-ring'
and push it to the `magit-revision-stack'.

This command is mainly intended for use in `magit-revision-mode'
buffers, the only buffers where it is always unambiguous exactly
which revision should be saved.

Most other Magit buffers usually show more than one revision, in
some way or another, so this command has to select one of them,
and that choice might not always be the one you think would have
been the best pick.

In such buffers it is often more useful to save the value of
the current section instead, using `magit-copy-section-value'.

When the region is active, then save that to the `kill-ring',
like `kill-ring-save' would, instead of behaving as described
above.

\(fn)" t nil)

(autoload 'magit-abort-dwim "magit/lisp/magit-extras" "\
Abort current operation.
Depending on the context, this will abort a merge, a rebase, a
patch application, a cherry-pick, a revert, or a bisect.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-extras" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-fetch" "magit/lisp/magit-fetch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-fetch.el
 (autoload 'magit-fetch "magit-fetch" nil t)
 (autoload 'magit-fetch-from-pushremote "magit-fetch" nil t)
 (autoload 'magit-fetch-from-upstream "magit-fetch" nil t)

(autoload 'magit-fetch-other "magit/lisp/magit-fetch" "\
Fetch from another repository.

\(fn REMOTE ARGS)" t nil)

(autoload 'magit-fetch-branch "magit/lisp/magit-fetch" "\
Fetch a BRANCH from a REMOTE.

\(fn REMOTE BRANCH ARGS)" t nil)

(autoload 'magit-fetch-refspec "magit/lisp/magit-fetch" "\
Fetch a REFSPEC from a REMOTE.

\(fn REMOTE REFSPEC ARGS)" t nil)

(autoload 'magit-fetch-all "magit/lisp/magit-fetch" "\
Fetch from all remotes.

\(fn ARGS)" t nil)

(autoload 'magit-fetch-all-prune "magit/lisp/magit-fetch" "\
Fetch from all remotes, and prune.
Prune remote tracking branches for branches that have been
removed on the respective remote.

\(fn)" t nil)

(autoload 'magit-fetch-all-no-prune "magit/lisp/magit-fetch" "\
Fetch from all remotes.

\(fn)" t nil)

(autoload 'magit-fetch-modules "magit/lisp/magit-fetch" "\
Fetch all submodules.

Option `magit-fetch-modules-jobs' controls how many submodules
are being fetched in parallel.  Also fetch the super-repository,
because `git-fetch' does not support not doing that.  With a
prefix argument fetch all remotes.

\(fn &optional ALL)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-fetch" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-files" "magit/lisp/magit-files.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-files.el

(autoload 'magit-find-file "magit/lisp/magit-files" "\
View FILE from REV.
Switch to a buffer visiting blob REV:FILE, creating one if none
already exists.  If prior to calling this command the current
buffer and/or cursor position is about the same file, then go
to the line and column corresponding to that location.

\(fn REV FILE)" t nil)

(autoload 'magit-find-file-other-window "magit/lisp/magit-files" "\
View FILE from REV, in another window.
Switch to a buffer visiting blob REV:FILE, creating one if none
already exists.  If prior to calling this command the current
buffer and/or cursor position is about the same file, then go to
the line and column corresponding to that location.

\(fn REV FILE)" t nil)

(autoload 'magit-find-file-other-frame "magit/lisp/magit-files" "\
View FILE from REV, in another frame.
Switch to a buffer visiting blob REV:FILE, creating one if none
already exists.  If prior to calling this command the current
buffer and/or cursor position is about the same file, then go to
the line and column corresponding to that location.

\(fn REV FILE)" t nil)
 (autoload 'magit-file-dispatch "magit" nil t)

(defvar global-magit-file-mode t "\
Non-nil if Global Magit-File mode is enabled.
See the `global-magit-file-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-magit-file-mode'.")

(custom-autoload 'global-magit-file-mode "magit/lisp/magit-files" nil)

(autoload 'global-magit-file-mode "magit/lisp/magit-files" "\
Toggle Magit-File mode in all buffers.
With prefix ARG, enable Global Magit-File mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Magit-File mode is enabled in all buffers where
`magit-file-mode-turn-on' would do it.
See `magit-file-mode' for more information on Magit-File mode.

\(fn &optional ARG)" t nil)

(autoload 'magit-blob-visit-file "magit/lisp/magit-files" "\
View the file from the worktree corresponding to the current blob.
When visiting a blob or the version from the index, then go to
the same location in the respective file in the working tree.

\(fn)" t nil)

(autoload 'magit-file-checkout "magit/lisp/magit-files" "\
Checkout FILE from REV.

\(fn REV FILE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-files" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-git" "magit/lisp/magit-git.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-git.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-git" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-gitignore" "magit/lisp/magit-gitignore.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-gitignore.el
 (autoload 'magit-gitignore "magit-gitignore" nil t)

(autoload 'magit-gitignore-in-topdir "magit/lisp/magit-gitignore" "\
Add the Git ignore RULE to the top-level \".gitignore\" file.
Since this file is tracked, it is shared with other clones of the
repository.  Also stage the file.

\(fn RULE)" t nil)

(autoload 'magit-gitignore-in-subdir "magit/lisp/magit-gitignore" "\
Add the Git ignore RULE to a \".gitignore\" file.
Prompted the user for a directory and add the rule to the
\".gitignore\" file in that directory.  Since such files are
tracked, they are shared with other clones of the repository.
Also stage the file.

\(fn RULE DIRECTORY)" t nil)

(autoload 'magit-gitignore-in-gitdir "magit/lisp/magit-gitignore" "\
Add the Git ignore RULE to \"$GIT_DIR/info/exclude\".
Rules in that file only affects this clone of the repository.

\(fn RULE)" t nil)

(autoload 'magit-gitignore-on-system "magit/lisp/magit-gitignore" "\
Add the Git ignore RULE to the file specified by `core.excludesFile'.
Rules that are defined in that file affect all local repositories.

\(fn RULE)" t nil)

(autoload 'magit-skip-worktree "magit/lisp/magit-gitignore" "\
Call \"git update-index --skip-worktree -- FILE\".

\(fn FILE)" t nil)

(autoload 'magit-no-skip-worktree "magit/lisp/magit-gitignore" "\
Call \"git update-index --no-skip-worktree -- FILE\".

\(fn FILE)" t nil)

(autoload 'magit-assume-unchanged "magit/lisp/magit-gitignore" "\
Call \"git update-index --assume-unchanged -- FILE\".

\(fn FILE)" t nil)

(autoload 'magit-no-assume-unchanged "magit/lisp/magit-gitignore" "\
Call \"git update-index --no-assume-unchanged -- FILE\".

\(fn FILE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-gitignore" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-imenu" "magit/lisp/magit-imenu.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-imenu.el

(autoload 'magit-imenu--log-prev-index-position-function "magit/lisp/magit-imenu" "\
Move point to previous line in current buffer.
This function is used as a value for
`imenu-prev-index-position-function'.

\(fn)" nil nil)

(autoload 'magit-imenu--log-extract-index-name-function "magit/lisp/magit-imenu" "\
Return imenu name for line at point.
This function is used as a value for
`imenu-extract-index-name-function'.  Point should be at the
beginning of the line.

\(fn)" nil nil)

(autoload 'magit-imenu--diff-prev-index-position-function "magit/lisp/magit-imenu" "\
Move point to previous file line in current buffer.
This function is used as a value for
`imenu-prev-index-position-function'.

\(fn)" nil nil)

(autoload 'magit-imenu--diff-extract-index-name-function "magit/lisp/magit-imenu" "\
Return imenu name for line at point.
This function is used as a value for
`imenu-extract-index-name-function'.  Point should be at the
beginning of the line.

\(fn)" nil nil)

(autoload 'magit-imenu--status-create-index-function "magit/lisp/magit-imenu" "\
Return an alist of all imenu entries in current buffer.
This function is used as a value for
`imenu-create-index-function'.

\(fn)" nil nil)

(autoload 'magit-imenu--refs-create-index-function "magit/lisp/magit-imenu" "\
Return an alist of all imenu entries in current buffer.
This function is used as a value for
`imenu-create-index-function'.

\(fn)" nil nil)

(autoload 'magit-imenu--cherry-create-index-function "magit/lisp/magit-imenu" "\
Return an alist of all imenu entries in current buffer.
This function is used as a value for
`imenu-create-index-function'.

\(fn)" nil nil)

(autoload 'magit-imenu--submodule-prev-index-position-function "magit/lisp/magit-imenu" "\
Move point to previous line in magit-submodule-list buffer.
This function is used as a value for
`imenu-prev-index-position-function'.

\(fn)" nil nil)

(autoload 'magit-imenu--submodule-extract-index-name-function "magit/lisp/magit-imenu" "\
Return imenu name for line at point.
This function is used as a value for
`imenu-extract-index-name-function'.  Point should be at the
beginning of the line.

\(fn)" nil nil)

(autoload 'magit-imenu--repolist-prev-index-position-function "magit/lisp/magit-imenu" "\
Move point to previous line in magit-repolist buffer.
This function is used as a value for
`imenu-prev-index-position-function'.

\(fn)" nil nil)

(autoload 'magit-imenu--repolist-extract-index-name-function "magit/lisp/magit-imenu" "\
Return imenu name for line at point.
This function is used as a value for
`imenu-extract-index-name-function'.  Point should be at the
beginning of the line.

\(fn)" nil nil)

(autoload 'magit-imenu--process-prev-index-position-function "magit/lisp/magit-imenu" "\
Move point to previous process in magit-process buffer.
This function is used as a value for
`imenu-prev-index-position-function'.

\(fn)" nil nil)

(autoload 'magit-imenu--process-extract-index-name-function "magit/lisp/magit-imenu" "\
Return imenu name for line at point.
This function is used as a value for
`imenu-extract-index-name-function'.  Point should be at the
beginning of the line.

\(fn)" nil nil)

(autoload 'magit-imenu--rebase-prev-index-position-function "magit/lisp/magit-imenu" "\
Move point to previous commit in git-rebase buffer.
This function is used as a value for
`imenu-prev-index-position-function'.

\(fn)" nil nil)

(autoload 'magit-imenu--rebase-extract-index-name-function "magit/lisp/magit-imenu" "\
Return imenu name for line at point.
This function is used as a value for
`imenu-extract-index-name-function'.  Point should be at the
beginning of the line.

\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-imenu" '("magit-imenu--index-function")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-libgit" "magit/lisp/magit-libgit.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-libgit.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-libgit" '("magit-libgit-repo")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-log" "magit/lisp/magit-log.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-log.el
 (autoload 'magit-log "magit-log" nil t)
 (autoload 'magit-log-refresh "magit-log" nil t)

(autoload 'magit-log-current "magit/lisp/magit-log" "\
Show log for the current branch.
When `HEAD' is detached or with a prefix argument show log for
one or more revs read from the minibuffer.

\(fn REVS &optional ARGS FILES)" t nil)

(autoload 'magit-log-other "magit/lisp/magit-log" "\
Show log for one or more revs read from the minibuffer.
The user can input any revision or revisions separated by a
space, or even ranges, but only branches and tags, and a
representation of the commit at point, are available as
completion candidates.

\(fn REVS &optional ARGS FILES)" t nil)

(autoload 'magit-log-head "magit/lisp/magit-log" "\
Show log for `HEAD'.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-log-branches "magit/lisp/magit-log" "\
Show log for all local branches and `HEAD'.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-log-matching-branches "magit/lisp/magit-log" "\
Show log for all branches matching PATTERN and `HEAD'.

\(fn PATTERN &optional ARGS FILES)" t nil)

(autoload 'magit-log-matching-tags "magit/lisp/magit-log" "\
Show log for all tags matching PATTERN and `HEAD'.

\(fn PATTERN &optional ARGS FILES)" t nil)

(autoload 'magit-log-all-branches "magit/lisp/magit-log" "\
Show log for all local and remote branches and `HEAD'.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-log-all "magit/lisp/magit-log" "\
Show log for all references and `HEAD'.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-log-buffer-file "magit/lisp/magit-log" "\
Show log for the blob or file visited in the current buffer.
With a prefix argument or when `--follow' is an active log
argument, then follow renames.  When the region is active,
restrict the log to the lines that the region touches.

\(fn &optional FOLLOW BEG END)" t nil)

(autoload 'magit-log-trace-definition "magit/lisp/magit-log" "\
Show log for the definition at point.

\(fn FILE FN REV)" t nil)

(autoload 'magit-log-merged "magit/lisp/magit-log" "\
Show log for the merge of COMMIT into BRANCH.

More precisely, find merge commit M that brought COMMIT into
BRANCH, and show the log of the range \"M^1..M\".  If COMMIT is
directly on BRANCH, then show approximately twenty surrounding
commits instead.

This command requires git-when-merged, which is available from
https://github.com/mhagger/git-when-merged.

\(fn COMMIT BRANCH &optional ARGS FILES)" t nil)

(autoload 'magit-log-move-to-parent "magit/lisp/magit-log" "\
Move to the Nth parent of the current commit.

\(fn &optional N)" t nil)

(autoload 'magit-cherry "magit/lisp/magit-log" "\
Show commits in a branch that are not merged in the upstream branch.

\(fn HEAD UPSTREAM)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-log" '("magit")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-margin" "magit/lisp/magit-margin.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-margin.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-margin" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-merge" "magit/lisp/magit-merge.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-merge.el
 (autoload 'magit-merge "magit" nil t)

(autoload 'magit-merge-plain "magit/lisp/magit-merge" "\
Merge commit REV into the current branch; using default message.

Unless there are conflicts or a prefix argument is used create a
merge commit using a generic commit message and without letting
the user inspect the result.  With a prefix argument pretend the
merge failed to give the user the opportunity to inspect the
merge.

\(git merge --no-edit|--no-commit [ARGS] REV)

\(fn REV &optional ARGS NOCOMMIT)" t nil)

(autoload 'magit-merge-editmsg "magit/lisp/magit-merge" "\
Merge commit REV into the current branch; and edit message.
Perform the merge and prepare a commit message but let the user
edit it.

\(git merge --edit --no-ff [ARGS] REV)

\(fn REV &optional ARGS)" t nil)

(autoload 'magit-merge-nocommit "magit/lisp/magit-merge" "\
Merge commit REV into the current branch; pretending it failed.
Pretend the merge failed to give the user the opportunity to
inspect the merge and change the commit message.

\(git merge --no-commit --no-ff [ARGS] REV)

\(fn REV &optional ARGS)" t nil)

(autoload 'magit-merge-into "magit/lisp/magit-merge" "\
Merge the current branch into BRANCH and remove the former.

Before merging, force push the source branch to its push-remote,
provided the respective remote branch already exists, ensuring
that the respective pull-request (if any) won't get stuck on some
obsolete version of the commits that are being merged.  Finally
if `forge-branch-pullreq' was used to create the merged branch,
branch, then also remove the respective remote branch.

\(fn BRANCH &optional ARGS)" t nil)

(autoload 'magit-merge-absorb "magit/lisp/magit-merge" "\
Merge BRANCH into the current branch and remove the former.

Before merging, force push the source branch to its push-remote,
provided the respective remote branch already exists, ensuring
that the respective pull-request (if any) won't get stuck on some
obsolete version of the commits that are being merged.  Finally
if `forge-branch-pullreq' was used to create the merged branch,
then also remove the respective remote branch.

\(fn BRANCH &optional ARGS)" t nil)

(autoload 'magit-merge-squash "magit/lisp/magit-merge" "\
Squash commit REV into the current branch; don't create a commit.

\(git merge --squash REV)

\(fn REV)" t nil)

(autoload 'magit-merge-preview "magit/lisp/magit-merge" "\
Preview result of merging REV into the current branch.

\(fn REV)" t nil)

(autoload 'magit-merge-abort "magit/lisp/magit-merge" "\
Abort the current merge operation.

\(git merge --abort)

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-merge" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-mode" "magit/lisp/magit-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-mode" '("magit-" "disable-magit-save-buffers" "inhibit-magit-refresh")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-notes" "magit/lisp/magit-notes.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-notes.el
 (autoload 'magit-notes "magit" nil t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-notes" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-obsolete" "magit/lisp/magit-obsolete.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-obsolete.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-obsolete" '("magit--magit-popup-warning")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-patch" "magit/lisp/magit-patch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-patch.el
 (autoload 'magit-patch "magit-patch" nil t)
 (autoload 'magit-patch-create "magit-patch" nil t)
 (autoload 'magit-patch-apply "magit-patch" nil t)

(autoload 'magit-patch-save "magit/lisp/magit-patch" "\
Write current diff into patch FILE.

What arguments are used to create the patch depends on the value
of `magit-patch-save-arguments' and whether a prefix argument is
used.

If the value is the symbol `buffer', then use the same arguments
as the buffer.  With a prefix argument use no arguments.

If the value is a list beginning with the symbol `exclude', then
use the same arguments as the buffer except for those matched by
entries in the cdr of the list.  The comparison is done using
`string-prefix-p'.  With a prefix argument use the same arguments
as the buffer.

If the value is a list of strings (including the empty list),
then use those arguments.  With a prefix argument use the same
arguments as the buffer.

Of course the arguments that are required to actually show the
same differences as those shown in the buffer are always used.

\(fn FILE &optional ARG)" t nil)

(autoload 'magit-request-pull "magit/lisp/magit-patch" "\
Request upstream to pull from you public repository.

URL is the url of your publically accessible repository.
START is a commit that already is in the upstream repository.
END is the last commit, usually a branch name, which upstream
is asked to pull.  START has to be reachable from that commit.

\(fn URL START END)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-patch" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-process" "magit/lisp/magit-process.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-process.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-process" '("magit-" "tramp-sh-handle-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-pull" "magit/lisp/magit-pull.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-pull.el
 (autoload 'magit-pull "magit-pull" nil t)
 (autoload 'magit-pull-from-pushremote "magit-pull" nil t)
 (autoload 'magit-pull-from-upstream "magit-pull" nil t)

(autoload 'magit-pull-branch "magit/lisp/magit-pull" "\
Pull from a branch read in the minibuffer.

\(fn SOURCE ARGS)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-pull" '("magit-pull")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-push" "magit/lisp/magit-push.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-push.el
 (autoload 'magit-push "magit-push" nil t)
 (autoload 'magit-push-current-to-pushremote "magit-push" nil t)
 (autoload 'magit-push-current-to-upstream "magit-push" nil t)

(autoload 'magit-push-current "magit/lisp/magit-push" "\
Push the current branch to a branch read in the minibuffer.

\(fn TARGET ARGS)" t nil)

(autoload 'magit-push-other "magit/lisp/magit-push" "\
Push an arbitrary branch or commit somewhere.
Both the source and the target are read in the minibuffer.

\(fn SOURCE TARGET ARGS)" t nil)

(autoload 'magit-push-refspecs "magit/lisp/magit-push" "\
Push one or multiple REFSPECS to a REMOTE.
Both the REMOTE and the REFSPECS are read in the minibuffer.  To
use multiple REFSPECS, separate them with commas.  Completion is
only available for the part before the colon, or when no colon
is used.

\(fn REMOTE REFSPECS ARGS)" t nil)

(autoload 'magit-push-matching "magit/lisp/magit-push" "\
Push all matching branches to another repository.
If multiple remotes exist, then read one from the user.
If just one exists, use that without requiring confirmation.

\(fn REMOTE &optional ARGS)" t nil)

(autoload 'magit-push-tags "magit/lisp/magit-push" "\
Push all tags to another repository.
If only one remote exists, then push to that.  Otherwise prompt
for a remote, offering the remote configured for the current
branch as default.

\(fn REMOTE &optional ARGS)" t nil)

(autoload 'magit-push-tag "magit/lisp/magit-push" "\
Push a tag to another repository.

\(fn TAG REMOTE &optional ARGS)" t nil)

(autoload 'magit-push-implicitly "magit/lisp/magit-push" "\
Push somewhere without using an explicit refspec.

This command simply runs \"git push -v [ARGS]\".  ARGS are the
arguments specified in the popup buffer.  No explicit refspec
arguments are used.  Instead the behavior depends on at least
these Git variables: `push.default', `remote.pushDefault',
`branch.<branch>.pushRemote', `branch.<branch>.remote',
`branch.<branch>.merge', and `remote.<remote>.push'.

The function `magit-push-implicitly--desc' attempts to predict
what this command will do.  The value it returns is displayed in
the popup buffer.

\(fn ARGS)" t nil)

(autoload 'magit-push-to-remote "magit/lisp/magit-push" "\
Push to REMOTE without using an explicit refspec.
The REMOTE is read in the minibuffer.

This command simply runs \"git push -v [ARGS] REMOTE\".  ARGS
are the arguments specified in the popup buffer.  No refspec
arguments are used.  Instead the behavior depends on at least
these Git variables: `push.default', `remote.pushDefault',
`branch.<branch>.pushRemote', `branch.<branch>.remote',
`branch.<branch>.merge', and `remote.<remote>.push'.

\(fn REMOTE ARGS)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-push" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-reflog" "magit/lisp/magit-reflog.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-reflog.el

(autoload 'magit-reflog-current "magit/lisp/magit-reflog" "\
Display the reflog of the current branch.
If `HEAD' is detached, then show the reflog for that instead.

\(fn)" t nil)

(autoload 'magit-reflog-other "magit/lisp/magit-reflog" "\
Display the reflog of a branch or another ref.

\(fn REF)" t nil)

(autoload 'magit-reflog-head "magit/lisp/magit-reflog" "\
Display the `HEAD' reflog.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-reflog" '("magit-reflog-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-refs" "magit/lisp/magit-refs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-refs.el
 (autoload 'magit-show-refs "magit-refs" nil t)

(autoload 'magit-show-refs-head "magit/lisp/magit-refs" "\
List and compare references in a dedicated buffer.
Compared with `HEAD'.

\(fn &optional ARGS)" t nil)

(autoload 'magit-show-refs-current "magit/lisp/magit-refs" "\
List and compare references in a dedicated buffer.
Compare with the current branch or `HEAD' if it is detached.

\(fn &optional ARGS)" t nil)

(autoload 'magit-show-refs-other "magit/lisp/magit-refs" "\
List and compare references in a dedicated buffer.
Compared with a branch read from the user.

\(fn &optional REF ARGS)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-refs" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-remote" "magit/lisp/magit-remote.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-remote.el
 (autoload 'magit-remote "magit-remote" nil t)

(autoload 'magit-remote-add "magit/lisp/magit-remote" "\
Add a remote named REMOTE and fetch it.

\(fn REMOTE URL &optional ARGS)" t nil)

(autoload 'magit-remote-rename "magit/lisp/magit-remote" "\
Rename the remote named OLD to NEW.

\(fn OLD NEW)" t nil)

(autoload 'magit-remote-remove "magit/lisp/magit-remote" "\
Delete the remote named REMOTE.

\(fn REMOTE)" t nil)

(autoload 'magit-remote-prune "magit/lisp/magit-remote" "\
Remove stale remote-tracking branches for REMOTE.

\(fn REMOTE)" t nil)

(autoload 'magit-remote-prune-refspecs "magit/lisp/magit-remote" "\
Remove stale refspecs for REMOTE.

A refspec is stale if there no longer exists at least one branch
on the remote that would be fetched due to that refspec.  A stale
refspec is problematic because its existence causes Git to refuse
to fetch according to the remaining non-stale refspecs.

If only stale refspecs remain, then offer to either delete the
remote or to replace the stale refspecs with the default refspec.

Also remove the remote-tracking branches that were created due to
the now stale refspecs.  Other stale branches are not removed.

\(fn REMOTE)" t nil)

(autoload 'magit-remote-set-head "magit/lisp/magit-remote" "\
Set the local representation of REMOTE's default branch.
Query REMOTE and set the symbolic-ref refs/remotes/<remote>/HEAD
accordingly.  With a prefix argument query for the branch to be
used, which allows you to select an incorrect value if you fancy
doing that.

\(fn REMOTE &optional BRANCH)" t nil)

(autoload 'magit-remote-unset-head "magit/lisp/magit-remote" "\
Unset the local representation of REMOTE's default branch.
Delete the symbolic-ref \"refs/remotes/<remote>/HEAD\".

\(fn REMOTE)" t nil)
 (autoload 'magit-remote-configure "magit-remote" nil t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-remote" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-repos" "magit/lisp/magit-repos.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-repos.el

(autoload 'magit-list-repositories "magit/lisp/magit-repos" "\
Display a list of repositories.

Use the options `magit-repository-directories' to control which
repositories are displayed.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-repos" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-reset" "magit/lisp/magit-reset.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-reset.el
 (autoload 'magit-reset "magit" nil t)

(autoload 'magit-reset-mixed "magit/lisp/magit-reset" "\
Reset the `HEAD' and index to COMMIT, but not the working tree.

\(git reset --mixed COMMIT)

\(fn COMMIT)" t nil)

(autoload 'magit-reset-soft "magit/lisp/magit-reset" "\
Reset the `HEAD' to COMMIT, but not the index and working tree.

\(git reset --soft REVISION)

\(fn COMMIT)" t nil)

(autoload 'magit-reset-hard "magit/lisp/magit-reset" "\
Reset the `HEAD', index, and working tree to COMMIT.

\(git reset --hard REVISION)

\(fn COMMIT)" t nil)

(autoload 'magit-reset-index "magit/lisp/magit-reset" "\
Reset the index to COMMIT.
Keep the `HEAD' and working tree as-is, so if COMMIT refers to the
head this effectively unstages all changes.

\(git reset COMMIT .)

\(fn COMMIT)" t nil)

(autoload 'magit-reset-worktree "magit/lisp/magit-reset" "\
Reset the worktree to COMMIT.
Keep the `HEAD' and index as-is.

\(fn COMMIT)" t nil)

(autoload 'magit-reset-quickly "magit/lisp/magit-reset" "\
Reset the `HEAD' and index to COMMIT, and possibly the working tree.
With a prefix argument reset the working tree otherwise don't.

\(git reset --mixed|--hard COMMIT)

\(fn COMMIT &optional HARD)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-reset" '("magit-reset")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-section" "magit/lisp/magit-section.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-section.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-section" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-sequence" "magit/lisp/magit-sequence.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-sequence.el

(autoload 'magit-sequencer-continue "magit/lisp/magit-sequence" "\
Resume the current cherry-pick or revert sequence.

\(fn)" t nil)

(autoload 'magit-sequencer-skip "magit/lisp/magit-sequence" "\
Skip the stopped at commit during a cherry-pick or revert sequence.

\(fn)" t nil)

(autoload 'magit-sequencer-abort "magit/lisp/magit-sequence" "\
Abort the current cherry-pick or revert sequence.
This discards all changes made since the sequence started.

\(fn)" t nil)
 (autoload 'magit-cherry-pick "magit-sequence" nil t)

(autoload 'magit-cherry-copy "magit/lisp/magit-sequence" "\
Copy COMMITS from another branch onto the current branch.
Prompt for a commit, defaulting to the commit at point.  If
the region selects multiple commits, then pick all of them,
without prompting.

\(fn COMMITS &optional ARGS)" t nil)

(autoload 'magit-cherry-apply "magit/lisp/magit-sequence" "\
Apply the changes in COMMITS but do not commit them.
Prompt for a commit, defaulting to the commit at point.  If
the region selects multiple commits, then apply all of them,
without prompting.

\(fn COMMITS &optional ARGS)" t nil)

(autoload 'magit-cherry-harvest "magit/lisp/magit-sequence" "\
Move COMMITS from another BRANCH onto the current branch.
Remove the COMMITS from BRANCH and stay on the current branch.
If a conflict occurs, then you have to fix that and finish the
process manually.

\(fn COMMITS BRANCH &optional ARGS)" t nil)

(autoload 'magit-cherry-donate "magit/lisp/magit-sequence" "\
Move COMMITS from the current branch onto another existing BRANCH.
Remove COMMITS from the current branch and stay on that branch.
If a conflict occurs, then you have to fix that and finish the
process manually.

\(fn COMMITS BRANCH &optional ARGS)" t nil)

(autoload 'magit-cherry-spinout "magit/lisp/magit-sequence" "\
Move COMMITS from the current branch onto a new BRANCH.
Remove COMMITS from the current branch and stay on that branch.
If a conflict occurs, then you have to fix that and finish the
process manually.

\(fn COMMITS BRANCH START-POINT &optional ARGS)" t nil)

(autoload 'magit-cherry-spinoff "magit/lisp/magit-sequence" "\
Move COMMITS from the current branch onto a new BRANCH.
Remove COMMITS from the current branch and checkout BRANCH.
If a conflict occurs, then you have to fix that and finish
the process manually.

\(fn COMMITS BRANCH START-POINT &optional ARGS)" t nil)
 (autoload 'magit-revert "magit-sequence" nil t)

(autoload 'magit-revert-and-commit "magit/lisp/magit-sequence" "\
Revert COMMIT by creating a new commit.
Prompt for a commit, defaulting to the commit at point.  If
the region selects multiple commits, then revert all of them,
without prompting.

\(fn COMMIT &optional ARGS)" t nil)

(autoload 'magit-revert-no-commit "magit/lisp/magit-sequence" "\
Revert COMMIT by applying it in reverse to the worktree.
Prompt for a commit, defaulting to the commit at point.  If
the region selects multiple commits, then revert all of them,
without prompting.

\(fn COMMIT &optional ARGS)" t nil)
 (autoload 'magit-am "magit-sequence" nil t)

(autoload 'magit-am-apply-patches "magit/lisp/magit-sequence" "\
Apply the patches FILES.

\(fn &optional FILES ARGS)" t nil)

(autoload 'magit-am-apply-maildir "magit/lisp/magit-sequence" "\
Apply the patches from MAILDIR.

\(fn &optional MAILDIR ARGS)" t nil)

(autoload 'magit-am-continue "magit/lisp/magit-sequence" "\
Resume the current patch applying sequence.

\(fn)" t nil)

(autoload 'magit-am-skip "magit/lisp/magit-sequence" "\
Skip the stopped at patch during a patch applying sequence.

\(fn)" t nil)

(autoload 'magit-am-abort "magit/lisp/magit-sequence" "\
Abort the current patch applying sequence.
This discards all changes made since the sequence started.

\(fn)" t nil)
 (autoload 'magit-rebase "magit-sequence" nil t)
 (autoload 'magit-rebase-onto-pushremote "magit-sequence" nil t)
 (autoload 'magit-rebase-onto-upstream "magit-sequence" nil t)

(autoload 'magit-rebase-branch "magit/lisp/magit-sequence" "\
Rebase the current branch onto a branch read in the minibuffer.
All commits that are reachable from `HEAD' but not from the
selected branch TARGET are being rebased.

\(fn TARGET ARGS)" t nil)

(autoload 'magit-rebase-subset "magit/lisp/magit-sequence" "\
Rebase a subset of the current branch's history onto a new base.
Rebase commits from START to `HEAD' onto NEWBASE.
START has to be selected from a list of recent commits.

\(fn NEWBASE START ARGS)" t nil)

(autoload 'magit-rebase-interactive "magit/lisp/magit-sequence" "\
Start an interactive rebase sequence.

\(fn COMMIT ARGS)" t nil)

(autoload 'magit-rebase-autosquash "magit/lisp/magit-sequence" "\
Combine squash and fixup commits with their intended targets.

\(fn ARGS)" t nil)

(autoload 'magit-rebase-edit-commit "magit/lisp/magit-sequence" "\
Edit a single older commit using rebase.

\(fn COMMIT ARGS)" t nil)

(autoload 'magit-rebase-reword-commit "magit/lisp/magit-sequence" "\
Reword a single older commit using rebase.

\(fn COMMIT ARGS)" t nil)

(autoload 'magit-rebase-remove-commit "magit/lisp/magit-sequence" "\
Remove a single older commit using rebase.

\(fn COMMIT ARGS)" t nil)

(autoload 'magit-rebase-continue "magit/lisp/magit-sequence" "\
Restart the current rebasing operation.
In some cases this pops up a commit message buffer for you do
edit.  With a prefix argument the old message is reused as-is.

\(fn &optional NOEDIT)" t nil)

(autoload 'magit-rebase-skip "magit/lisp/magit-sequence" "\
Skip the current commit and restart the current rebase operation.

\(fn)" t nil)

(autoload 'magit-rebase-edit "magit/lisp/magit-sequence" "\
Edit the todo list of the current rebase operation.

\(fn)" t nil)

(autoload 'magit-rebase-abort "magit/lisp/magit-sequence" "\
Abort the current rebase operation, restoring the original branch.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-sequence" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-stash" "magit/lisp/magit-stash.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-stash.el
 (autoload 'magit-stash "magit-stash" nil t)

(autoload 'magit-stash-both "magit/lisp/magit-stash" "\
Create a stash of the index and working tree.
Untracked files are included according to infix arguments.
One prefix argument is equivalent to `--include-untracked'
while two prefix arguments are equivalent to `--all'.

\(fn MESSAGE &optional INCLUDE-UNTRACKED)" t nil)

(autoload 'magit-stash-index "magit/lisp/magit-stash" "\
Create a stash of the index only.
Unstaged and untracked changes are not stashed.  The stashed
changes are applied in reverse to both the index and the
worktree.  This command can fail when the worktree is not clean.
Applying the resulting stash has the inverse effect.

\(fn MESSAGE)" t nil)

(autoload 'magit-stash-worktree "magit/lisp/magit-stash" "\
Create a stash of unstaged changes in the working tree.
Untracked files are included according to infix arguments.
One prefix argument is equivalent to `--include-untracked'
while two prefix arguments are equivalent to `--all'.

\(fn MESSAGE &optional INCLUDE-UNTRACKED)" t nil)

(autoload 'magit-stash-keep-index "magit/lisp/magit-stash" "\
Create a stash of the index and working tree, keeping index intact.
Untracked files are included according to infix arguments.
One prefix argument is equivalent to `--include-untracked'
while two prefix arguments are equivalent to `--all'.

\(fn MESSAGE &optional INCLUDE-UNTRACKED)" t nil)

(autoload 'magit-snapshot-both "magit/lisp/magit-stash" "\
Create a snapshot of the index and working tree.
Untracked files are included according to infix arguments.
One prefix argument is equivalent to `--include-untracked'
while two prefix arguments are equivalent to `--all'.

\(fn &optional INCLUDE-UNTRACKED)" t nil)

(autoload 'magit-snapshot-index "magit/lisp/magit-stash" "\
Create a snapshot of the index only.
Unstaged and untracked changes are not stashed.

\(fn)" t nil)

(autoload 'magit-snapshot-worktree "magit/lisp/magit-stash" "\
Create a snapshot of unstaged changes in the working tree.
Untracked files are included according to infix arguments.
One prefix argument is equivalent to `--include-untracked'
while two prefix arguments are equivalent to `--all'.

\(fn &optional INCLUDE-UNTRACKED)" t nil)

(autoload 'magit-stash-apply "magit/lisp/magit-stash" "\
Apply a stash to the working tree.
Try to preserve the stash index.  If that fails because there
are staged changes, apply without preserving the stash index.

\(fn STASH)" t nil)

(autoload 'magit-stash-drop "magit/lisp/magit-stash" "\
Remove a stash from the stash list.
When the region is active offer to drop all contained stashes.

\(fn STASH)" t nil)

(autoload 'magit-stash-clear "magit/lisp/magit-stash" "\
Remove all stashes saved in REF's reflog by deleting REF.

\(fn REF)" t nil)

(autoload 'magit-stash-branch "magit/lisp/magit-stash" "\
Create and checkout a new BRANCH from STASH.

\(fn STASH BRANCH)" t nil)

(autoload 'magit-stash-branch-here "magit/lisp/magit-stash" "\
Create and checkout a new BRANCH and apply STASH.
The branch is created using `magit-branch-and-checkout', using the
current branch or `HEAD' as the start-point.

\(fn STASH BRANCH)" t nil)

(autoload 'magit-stash-format-patch "magit/lisp/magit-stash" "\
Create a patch from STASH

\(fn STASH)" t nil)

(autoload 'magit-stash-list "magit/lisp/magit-stash" "\
List all stashes in a buffer.

\(fn)" t nil)

(autoload 'magit-stash-show "magit/lisp/magit-stash" "\
Show all diffs of a stash in a buffer.

\(fn STASH &optional ARGS FILES)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-stash" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-status" "magit/lisp/magit-status.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-status.el

(autoload 'magit-init "magit/lisp/magit-status" "\
Initialize a Git repository, then show its status.

If the directory is below an existing repository, then the user
has to confirm that a new one should be created inside.  If the
directory is the root of the existing repository, then the user
has to confirm that it should be reinitialized.

Non-interactively DIRECTORY is (re-)initialized unconditionally.

\(fn DIRECTORY)" t nil)

(autoload 'magit-status "magit/lisp/magit-status" "\
Show the status of the current Git repository in a buffer.

If the current directory isn't located within a Git repository,
then prompt for an existing repository or an arbitrary directory,
depending on option `magit-repository-directories', and show the
status of the selected repository instead.

* If that option specifies any existing repositories, then offer
  those for completion and show the status buffer for the
  selected one.

* Otherwise read an arbitrary directory using regular file-name
  completion.  If the selected directory is the top-level of an
  existing working tree, then show the status buffer for that.

* Otherwise offer to initialize the selected directory as a new
  repository.  After creating the repository show its status
  buffer.

These fallback behaviors can also be forced using one or more
prefix arguments:

* With two prefix arguments (or more precisely a numeric prefix
  value of 16 or greater) read an arbitrary directory and act on
  it as described above.  The same could be accomplished using
  the command `magit-init'.

* With a single prefix argument read an existing repository, or
  if none can be found based on `magit-repository-directories',
  then fall back to the same behavior as with two prefix
  arguments.

\(fn &optional DIRECTORY CACHE)" t nil)

(defalias 'magit 'magit-status "\
An alias for `magit-status' for better discoverability.

Instead of invoking this alias for `magit-status' using
\"M-x magit RET\", you should bind a key to `magit-status'
and read the info node `(magit)Getting Started', which
also contains other useful hints.")

(autoload 'magit-status-here "magit/lisp/magit-status" "\
Like `magit-status' but with non-nil `magit-status-goto-file-position'.

\(fn)" t nil)

(autoload 'magit-status-setup-buffer "magit/lisp/magit-status" "\


\(fn &optional DIRECTORY)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-status" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-submodule" "magit/lisp/magit-submodule.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-submodule.el
 (autoload 'magit-submodule "magit-submodule" nil t)
 (autoload 'magit-submodule-add "magit-submodule" nil t)

(autoload 'magit-submodule-read-name-for-path "magit/lisp/magit-submodule" "\


\(fn PATH &optional PREFER-SHORT)" nil nil)
 (autoload 'magit-submodule-register "magit-submodule" nil t)
 (autoload 'magit-submodule-populate "magit-submodule" nil t)
 (autoload 'magit-submodule-update "magit-submodule" nil t)
 (autoload 'magit-submodule-synchronize "magit-submodule" nil t)
 (autoload 'magit-submodule-unpopulate "magit-submodule" nil t)

(autoload 'magit-submodule-remove "magit/lisp/magit-submodule" "\
Unregister MODULES and remove their working directories.

For safety reasons, do not remove the gitdirs and if a module has
uncomitted changes, then do not remove it at all.  If a module's
gitdir is located inside the working directory, then move it into
the gitdir of the superproject first.

With the \"--force\" argument offer to remove dirty working
directories and with a prefix argument offer to delete gitdirs.
Both actions are very dangerous and have to be confirmed.  There
are additional safety precautions in place, so you might be able
to recover from making a mistake here, but don't count on it.

\(fn MODULES ARGS TRASH-GITDIRS)" t nil)

(autoload 'magit-insert-modules "magit/lisp/magit-submodule" "\
Insert submodule sections.
Hook `magit-module-sections-hook' controls which module sections
are inserted, and option `magit-module-sections-nested' controls
whether they are wrapped in an additional section.

\(fn)" nil nil)

(autoload 'magit-insert-modules-overview "magit/lisp/magit-submodule" "\
Insert sections for all modules.
For each section insert the path and the output of `git describe --tags',
or, failing that, the abbreviated HEAD commit hash.

\(fn)" nil nil)

(autoload 'magit-insert-modules-unpulled-from-upstream "magit/lisp/magit-submodule" "\
Insert sections for modules that haven't been pulled from the upstream.
These sections can be expanded to show the respective commits.

\(fn)" nil nil)

(autoload 'magit-insert-modules-unpulled-from-pushremote "magit/lisp/magit-submodule" "\
Insert sections for modules that haven't been pulled from the push-remote.
These sections can be expanded to show the respective commits.

\(fn)" nil nil)

(autoload 'magit-insert-modules-unpushed-to-upstream "magit/lisp/magit-submodule" "\
Insert sections for modules that haven't been pushed to the upstream.
These sections can be expanded to show the respective commits.

\(fn)" nil nil)

(autoload 'magit-insert-modules-unpushed-to-pushremote "magit/lisp/magit-submodule" "\
Insert sections for modules that haven't been pushed to the push-remote.
These sections can be expanded to show the respective commits.

\(fn)" nil nil)

(autoload 'magit-list-submodules "magit/lisp/magit-submodule" "\
Display a list of the current repository's submodules.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-submodule" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-subtree" "magit/lisp/magit-subtree.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-subtree.el
 (autoload 'magit-subtree "magit-subtree" nil t)
 (autoload 'magit-subtree-import "magit-subtree" nil t)
 (autoload 'magit-subtree-export "magit-subtree" nil t)

(autoload 'magit-subtree-add "magit/lisp/magit-subtree" "\
Add REF from REPOSITORY as a new subtree at PREFIX.

\(fn PREFIX REPOSITORY REF ARGS)" t nil)

(autoload 'magit-subtree-add-commit "magit/lisp/magit-subtree" "\
Add COMMIT as a new subtree at PREFIX.

\(fn PREFIX COMMIT ARGS)" t nil)

(autoload 'magit-subtree-merge "magit/lisp/magit-subtree" "\
Merge COMMIT into the PREFIX subtree.

\(fn PREFIX COMMIT ARGS)" t nil)

(autoload 'magit-subtree-pull "magit/lisp/magit-subtree" "\
Pull REF from REPOSITORY into the PREFIX subtree.

\(fn PREFIX REPOSITORY REF ARGS)" t nil)

(autoload 'magit-subtree-push "magit/lisp/magit-subtree" "\
Extract the history of the subtree PREFIX and push it to REF on REPOSITORY.

\(fn PREFIX REPOSITORY REF ARGS)" t nil)

(autoload 'magit-subtree-split "magit/lisp/magit-subtree" "\
Extract the history of the subtree PREFIX.

\(fn PREFIX COMMIT ARGS)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-subtree" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-tag" "magit/lisp/magit-tag.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-tag.el
 (autoload 'magit-tag "magit" nil t)

(autoload 'magit-tag-create "magit/lisp/magit-tag" "\
Create a new tag with the given NAME at REV.
With a prefix argument annotate the tag.

\(git tag [--annotate] NAME REV)

\(fn NAME REV &optional ARGS)" t nil)

(autoload 'magit-tag-delete "magit/lisp/magit-tag" "\
Delete one or more tags.
If the region marks multiple tags (and nothing else), then offer
to delete those, otherwise prompt for a single tag to be deleted,
defaulting to the tag at point.

\(git tag -d TAGS)

\(fn TAGS)" t nil)

(autoload 'magit-tag-prune "magit/lisp/magit-tag" "\
Offer to delete tags missing locally from REMOTE, and vice versa.

\(fn TAGS REMOTE-TAGS REMOTE)" t nil)

(autoload 'magit-tag-release "magit/lisp/magit-tag" "\
Create an annotated release tag.

Assume that release tags match `magit-release-tag-regexp'.

First prompt for the name of the new tag using the highest
existing tag as initial input and leaving it to the user to
increment the desired part of the version string.

Then prompt for the message of the new tag.  Base the proposed
tag message on the message of the highest tag, provided that
that contains the corresponding version string and substituting
the new version string for that.  Otherwise propose something
like \"Foo-Bar 1.2.3\", given, for example, a TAG \"v1.2.3\" and a
repository located at something like \"/path/to/foo-bar\".

Then call \"git tag --annotate --sign -m MSG TAG\" to create the,
tag, regardless of whether these arguments are enabled in the
popup.  Finally show the refs buffer to let the user quickly
review the result.

\(fn TAG MSG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-tag" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-transient" "magit/lisp/magit-transient.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-transient.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-transient" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-utils" "magit/lisp/magit-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-utils.el

(autoload 'magit-emacs-Q-command "magit/lisp/magit-utils" "\
Show a shell command that runs an uncustomized Emacs with only Magit loaded.
See info node `(magit)Debugging Tools' for more information.

\(fn)" t nil)

(autoload 'Info-follow-nearest-node--magit-gitman "magit/lisp/magit-utils" "\


\(fn FN &optional FORK)" nil nil)

(advice-add 'Info-follow-nearest-node :around 'Info-follow-nearest-node--magit-gitman)

(autoload 'org-man-export--magit-gitman "magit/lisp/magit-utils" "\


\(fn FN LINK DESCRIPTION FORMAT)" nil nil)

(advice-add 'org-man-export :around 'org-man-export--magit-gitman)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-utils" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-wip" "magit/lisp/magit-wip.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-wip.el

(defvar magit-wip-after-save-mode nil "\
Non-nil if Magit-Wip-After-Save mode is enabled.
See the `magit-wip-after-save-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `magit-wip-after-save-mode'.")

(custom-autoload 'magit-wip-after-save-mode "magit/lisp/magit-wip" nil)

(autoload 'magit-wip-after-save-mode "magit/lisp/magit-wip" "\
Toggle Magit-Wip-After-Save-Local mode in all buffers.
With prefix ARG, enable Magit-Wip-After-Save mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Magit-Wip-After-Save-Local mode is enabled in all buffers where
`magit-wip-after-save-local-mode-turn-on' would do it.
See `magit-wip-after-save-local-mode' for more information on Magit-Wip-After-Save-Local mode.

\(fn &optional ARG)" t nil)

(defvar magit-wip-after-apply-mode nil "\
Non-nil if Magit-Wip-After-Apply mode is enabled.
See the `magit-wip-after-apply-mode' command
for a description of this minor mode.")

(custom-autoload 'magit-wip-after-apply-mode "magit/lisp/magit-wip" nil)

(autoload 'magit-wip-after-apply-mode "magit/lisp/magit-wip" "\
Commit to work-in-progress refs.

After applying a change using any \"apply variant\"
command (apply, stage, unstage, discard, and reverse) commit the
affected files to the current wip refs.  For each branch there
may be two wip refs; one contains snapshots of the files as found
in the worktree and the other contains snapshots of the entries
in the index.

\(fn &optional ARG)" t nil)

(defvar magit-wip-before-change-mode nil "\
Non-nil if Magit-Wip-Before-Change mode is enabled.
See the `magit-wip-before-change-mode' command
for a description of this minor mode.")

(custom-autoload 'magit-wip-before-change-mode "magit/lisp/magit-wip" nil)

(autoload 'magit-wip-before-change-mode "magit/lisp/magit-wip" "\
Commit to work-in-progress refs before certain destructive changes.

Before invoking a revert command or an \"apply variant\"
command (apply, stage, unstage, discard, and reverse) commit the
affected tracked files to the current wip refs.  For each branch
there may be two wip refs; one contains snapshots of the files
as found in the worktree and the other contains snapshots of the
entries in the index.

Only changes to files which could potentially be affected by the
command which is about to be called are committed.

\(fn &optional ARG)" t nil)

(autoload 'magit-wip-commit-initial-backup "magit/lisp/magit-wip" "\
Before saving, commit current file to a worktree wip ref.

The user has to add this function to `before-save-hook'.

Commit the current state of the visited file before saving the
current buffer to that file.  This backs up the same version of
the file as `backup-buffer' would, but stores the backup in the
worktree wip ref, which is also used by the various Magit Wip
modes, instead of in a backup file as `backup-buffer' would.

This function ignores the variables that affect `backup-buffer'
and can be used along-side that function, which is recommended
because this function only backs up files that are tracked in
a Git repository.

\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-wip" '("magit-")))

;;;***

;;;### (autoloads nil "magit/lisp/magit-worktree" "magit/lisp/magit-worktree.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit/lisp/magit-worktree.el
 (autoload 'magit-worktree "magit-worktree" nil t)

(autoload 'magit-worktree-checkout "magit/lisp/magit-worktree" "\
Checkout BRANCH in a new worktree at PATH.

\(fn PATH BRANCH)" t nil)

(autoload 'magit-worktree-branch "magit/lisp/magit-worktree" "\
Create a new BRANCH and check it out in a new worktree at PATH.

\(fn PATH BRANCH START-POINT &optional FORCE)" t nil)

(autoload 'magit-worktree-move "magit/lisp/magit-worktree" "\
Move WORKTREE to PATH.

\(fn WORKTREE PATH)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit/lisp/magit-worktree" '("magit-")))

;;;***

;;;### (autoloads nil "markdown-mode/markdown-mode" "markdown-mode/markdown-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from markdown-mode/markdown-mode.el

(autoload 'markdown-mode "markdown-mode/markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode/markdown-mode" "\
Major mode for editing GitHub Flavored Markdown files.

\(fn)" t nil)

(autoload 'markdown-view-mode "markdown-mode/markdown-mode" "\
Major mode for viewing Markdown content.

\(fn)" t nil)

(autoload 'gfm-view-mode "markdown-mode/markdown-mode" "\
Major mode for viewing GitHub Flavored Markdown content.

\(fn)" t nil)

(autoload 'markdown-live-preview-mode "markdown-mode/markdown-mode" "\
Toggle native previewing on save for a specific markdown file.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "markdown-mode/markdown-mode" '("gfm-" "markdown" "defun-markdown-")))

;;;***

;;;### (autoloads nil "minitest/minitest" "minitest/minitest.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from minitest/minitest.el

(autoload 'minitest-mode "minitest/minitest" "\
Minor mode for *_test (minitest) files

\(fn &optional ARG)" t nil)

(autoload 'minitest-enable-appropriate-mode "minitest/minitest" "\


\(fn)" nil nil)

(dolist (hook '(ruby-mode-hook enh-ruby-mode-hook)) (add-hook hook 'minitest-enable-appropriate-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "minitest/minitest" '("minitest-" "colorize-compilation-buffer")))

;;;***

;;;### (autoloads nil "php-mode/php" "php-mode/php.el" (0 0 0 0))
;;; Generated autoloads from php-mode/php.el

(let ((loads (get 'php 'custom-loads))) (if (member '"php-mode/php" loads) nil (put 'php 'custom-loads (cons '"php-mode/php" loads))))

(autoload 'php-mode-maybe "php-mode/php" "\
Select PHP mode or other major mode.

\(fn)" t nil)

(autoload 'php-current-class "php-mode/php" "\
Insert current class name if cursor in class context.

\(fn)" t nil)

(autoload 'php-current-namespace "php-mode/php" "\
Insert current namespace if cursor in namespace context.

\(fn)" t nil)

(autoload 'php-copyit-fqsen "php-mode/php" "\
Copy/kill class/method FQSEN.

\(fn)" t nil)

(autoload 'php-run-builtin-web-server "php-mode/php" "\
Run PHP Built-in web server.

`ROUTER-OR-DIR': Path to router PHP script or Document root.
`HOSTNAME': Hostname or IP address of Built-in web server.
`PORT': Port number of Built-in web server.
`DOCUMENT-ROOT': Path to Document root.

When `DOCUMENT-ROOT' is NIL, the document root is obtained from `ROUTER-OR-DIR'.

\(fn ROUTER-OR-DIR HOSTNAME PORT &optional DOCUMENT-ROOT)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-mode/php" '("php-")))

;;;***

;;;### (autoloads nil "php-mode/php-face" "php-mode/php-face.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from php-mode/php-face.el

(let ((loads (get 'php-faces 'custom-loads))) (if (member '"php-mode/php-face" loads) nil (put 'php-faces 'custom-loads (cons '"php-mode/php-face" loads))))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-mode/php-face" '("php-annotations-annotation-face")))

;;;***

;;;### (autoloads nil "php-mode/php-mode" "php-mode/php-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from php-mode/php-mode.el

(let ((loads (get 'php-mode 'custom-loads))) (if (member '"php-mode/php-mode" loads) nil (put 'php-mode 'custom-loads (cons '"php-mode/php-mode" loads))))

(if (version< emacs-version "24.4") (dolist (i '("php" "php5" "php7")) (add-to-list 'interpreter-mode-alist (cons i 'php-mode))) (add-to-list 'interpreter-mode-alist (cons "php\\(?:-?[3457]\\(?:\\.[0-9]+\\)*\\)?" 'php-mode)))

(define-obsolete-variable-alias 'php-available-project-root-files 'php-project-available-root-files "1.19.0")

(autoload 'php-mode "php-mode/php-mode" "\
Major mode for editing PHP code.

\\{php-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("/\\.php_cs\\(?:\\.dist\\)?\\'" . php-mode))

(add-to-list 'auto-mode-alist '("\\.\\(?:php[s345]?\\|phtml\\)\\'" . php-mode-maybe))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-mode/php-mode" '("php-")))

;;;***

;;;### (autoloads nil "php-mode/php-mode-debug" "php-mode/php-mode-debug.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from php-mode/php-mode-debug.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-mode/php-mode-debug" '("php-mode-debug")))

;;;***

;;;### (autoloads nil "php-mode/php-project" "php-mode/php-project.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from php-mode/php-project.el

(defvar-local php-project-root 'auto "\
Method of searching for the top level directory.

`auto' (default)
      Try to search file in order of `php-project-available-root-files'.

SYMBOL
      Key of `php-project-available-root-files'.

STRING
      A file/directory name of top level marker.
      If the string is an actual directory path, it is set as the absolute path
      of the root directory, not the marker.")

(put 'php-project-root 'safe-local-variable #'(lambda (v) (or (stringp v) (assq v php-project-available-root-files))))

(defvar-local php-project-bootstrap-scripts nil "\
List of path to bootstrap php script file.

The ideal bootstrap file is silent, it only includes dependent files,
defines constants, and sets the class loaders.")

(put 'php-project-bootstrap-scripts 'safe-local-variable #'php-project--eval-bootstrap-scripts)

(defvar-local php-project-php-executable nil "\
Path to php executable file.")

(put 'php-project-php-executable 'safe-local-variable #'(lambda (v) (and (stringp v) (file-executable-p v))))

(defvar-local php-project-phan-executable nil "\
Path to phan executable file.")

(put 'php-project-phan-executable 'safe-local-variable #'php-project--eval-bootstrap-scripts)

(defvar-local php-project-coding-style nil "\
Symbol value of the coding style of the project that PHP major mode refers to.

Typically it is `pear', `drupal', `wordpress', `symfony2' and `psr2'.")

(put 'php-project-coding-style 'safe-local-variable #'symbolp)

(defvar-local php-project-php-file-as-template 'auto "\

`auto' (default)
      Automatically switch to mode for template when HTML tag detected in file.

`t'
      Switch all PHP files in that directory to mode for HTML template.

`nil'
      Any .php  in that directory is just a PHP script.

\((PATTERN . SYMBOL))
      Alist of file name pattern regular expressions and the above symbol pairs.
      PATTERN is regexp pattern.
")

(put 'php-project-php-file-as-template 'safe-local-variable #'php-project--validate-php-file-as-template)

(defvar-local php-project-repl nil "\
Function name or path to REPL (interactive shell) script.")

(put 'php-project-repl 'safe-local-variable #'(lambda (v) (or (functionp v) (php-project--eval-bootstrap-scripts v))))

(defvar-local php-project-unit-test nil "\
Function name or path to unit test script.")

(put 'php-project-unit-test 'safe-local-variable #'(lambda (v) (or (functionp v) (php-project--eval-bootstrap-scripts v))))

(defvar-local php-project-deploy nil "\
Function name or path to deploy script.")

(put 'php-project-deploy 'safe-local-variable #'(lambda (v) (or (functionp v) (php-project--eval-bootstrap-scripts v))))

(defvar-local php-project-build nil "\
Function name or path to build script.")

(put 'php-project-build 'safe-local-variable #'(lambda (v) (or (functionp v) (php-project--eval-bootstrap-scripts v))))

(defvar-local php-project-server-start nil "\
Function name or path to server-start script.")

(put 'php-project-server-start 'safe-local-variable #'(lambda (v) (or (functionp v) (php-project--eval-bootstrap-scripts v))))

(autoload 'php-project-get-bootstrap-scripts "php-mode/php-project" "\
Return list of bootstrap script.

\(fn)" nil nil)

(autoload 'php-project-get-root-dir "php-mode/php-project" "\
Return path to current PHP project.

\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-mode/php-project" '("php-project-")))

;;;***

;;;### (autoloads nil "php-mode/php-util-buffer" "php-mode/php-util-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from php-mode/php-util-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-mode/php-util-buffer" '("php-util-buffer-")))

;;;***

;;;### (autoloads nil "pipenv/pipenv" "pipenv/pipenv.el" (0 0 0 0))
;;; Generated autoloads from pipenv/pipenv.el

(autoload 'pipenv-mode "pipenv/pipenv" "\
Minor mode for Pipenv.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pipenv/pipenv" '("pipenv-")))

;;;***

;;;### (autoloads nil "pkg-info/pkg-info" "pkg-info/pkg-info.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pkg-info/pkg-info.el

(autoload 'pkg-info-library-original-version "pkg-info/pkg-info" "\
Get the original version in the header of LIBRARY.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no X-Original-Version
header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-library-version "pkg-info/pkg-info" "\
Get the version in the header of LIBRARY.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no proper header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-original-version "pkg-info/pkg-info" "\
Get the original version of the library defining FUNCTION.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-version "pkg-info/pkg-info" "\
Get the version of the library defining FUNCTION.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-package-version "pkg-info/pkg-info" "\
Get the version of an installed PACKAGE.

If SHOW is non-nil, show the version in the minibuffer.

Return the version as list, or nil if PACKAGE is not installed.

\(fn PACKAGE &optional SHOW)" t nil)

(autoload 'pkg-info-version-info "pkg-info/pkg-info" "\
Obtain complete version info for LIBRARY and PACKAGE.

LIBRARY is a symbol denoting a named feature, or a library name
as string.  PACKAGE is a symbol denoting an ELPA package.  If
omitted or nil, default to LIBRARY.

If SHOW is non-nil, show the version in the minibuffer.

When called interactively, prompt for LIBRARY.  When called
interactively with prefix argument, prompt for PACKAGE as well.

Return a string with complete version information for LIBRARY.
This version information contains the version from the headers of
LIBRARY, and the version of the installed PACKAGE, the LIBRARY is
part of.  If PACKAGE is not installed, or if the PACKAGE version
is the same as the LIBRARY version, do not include a package
version.

\(fn LIBRARY &optional PACKAGE SHOW)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pkg-info/pkg-info" '("pkg-info-")))

;;;***

;;;### (autoloads nil "popup/popup" "popup/popup.el" (0 0 0 0))
;;; Generated autoloads from popup/popup.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "popup/popup" '("popup-")))

;;;***

;;;### (autoloads nil "prettier-js/prettier-js" "prettier-js/prettier-js.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from prettier-js/prettier-js.el

(autoload 'prettier-js-mode "prettier-js/prettier-js" "\
Runs prettier on file save when this mode is turned on

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "prettier-js/prettier-js" '("prettier-js")))

;;;***

;;;### (autoloads nil "py-autopep8/py-autopep8" "py-autopep8/py-autopep8.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from py-autopep8/py-autopep8.el

(autoload 'py-autopep8 "py-autopep8/py-autopep8" "\
Deprecated! Use py-autopep8-buffer instead.

\(fn)" t nil)

(autoload 'py-autopep8-buffer "py-autopep8/py-autopep8" "\
Uses the \"autopep8\" tool to reformat the current buffer.

\(fn)" t nil)

(autoload 'py-autopep8-enable-on-save "py-autopep8/py-autopep8" "\
Pre-save hook to be used before running autopep8.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "py-autopep8/py-autopep8" '("py-autopep8-")))

;;;***

;;;### (autoloads nil "python-docstring/python-docstring" "python-docstring/python-docstring.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from python-docstring/python-docstring.el

(autoload 'python-docstring-fill "python-docstring/python-docstring" "\
Wrap Python docstrings as epytext or ReStructured Text.

\(fn)" t nil)

(autoload 'python-docstring-mode "python-docstring/python-docstring" "\
Toggle python-docstring-mode.
With no argument, this command toggles the mode.
Non-null prefix argument turns on the mode.
Null prefix argument turns off the mode.

\(fn &optional ARG)" t nil)

(autoload 'python-docstring-install "python-docstring/python-docstring" "\
Add python-docstring-mode as a hook to python.mode.

\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "python-docstring/python-docstring" '("python-docstring-")))

;;;***

;;;### (autoloads nil "rhtml-mode/rhtml-erb" "rhtml-mode/rhtml-erb.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from rhtml-mode/rhtml-erb.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rhtml-mode/rhtml-erb" '("skip-whitespace-forward" "rhtml-")))

;;;***

;;;### (autoloads nil "rhtml-mode/rhtml-fonts" "rhtml-mode/rhtml-fonts.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from rhtml-mode/rhtml-fonts.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rhtml-mode/rhtml-fonts" '("erb-type-to-" "rhtml-")))

;;;***

;;;### (autoloads nil "rhtml-mode/rhtml-mode" "rhtml-mode/rhtml-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from rhtml-mode/rhtml-mode.el

(autoload 'rhtml-mode "rhtml-mode/rhtml-mode" "\
Embedded Ruby Mode (RHTML)

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.html\\.erb$" . rhtml-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rhtml-mode/rhtml-mode" '("rhtml-dashize" "extract-partial")))

;;;***

;;;### (autoloads nil "rhtml-mode/rhtml-navigation" "rhtml-mode/rhtml-navigation.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from rhtml-mode/rhtml-navigation.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rhtml-mode/rhtml-navigation" '("match-strings" "current-line" "rails-root" "rinari-find-by-context" "rhtml-")))

;;;***

;;;### (autoloads nil "rhtml-mode/rhtml-ruby-hook" "rhtml-mode/rhtml-ruby-hook.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from rhtml-mode/rhtml-ruby-hook.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rhtml-mode/rhtml-ruby-hook" '("rhtml-" "rthml-insert-from-ruby-temp")))

;;;***

;;;### (autoloads nil "rhtml-mode/rhtml-sgml-hacks" "rhtml-mode/rhtml-sgml-hacks.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from rhtml-mode/rhtml-sgml-hacks.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rhtml-mode/rhtml-sgml-hacks" '("sgml-" "rhtml-")))

;;;***

;;;### (autoloads nil "rjsx-mode/js2-tests" "rjsx-mode/js2-tests.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from rjsx-mode/js2-tests.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rjsx-mode/js2-tests" '("js2-" "rjsx--debug-")))

;;;***

;;;### (autoloads nil "rjsx-mode/rjsx-mode" "rjsx-mode/rjsx-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from rjsx-mode/rjsx-mode.el

(autoload 'rjsx-mode "rjsx-mode/rjsx-mode" "\
Major mode for editing JSX files.

\(fn)" t nil)

(autoload 'rjsx-minor-mode "rjsx-mode/rjsx-mode" "\
Minor mode for parsing JSX syntax into an AST.

\(fn &optional ARG)" t nil)

(add-to-list 'auto-mode-alist '("\\.jsx\\'" . rjsx-mode))

(autoload 'rjsx-comment-dwim "rjsx-mode/rjsx-mode" "\
RJSX implementation of `comment-dwim'. If called on a region,
this function delegates to `comment-or-uncomment-region'. If the
point is not in a JSX context, it delegates to the
`comment-dwim', otherwise it will comment the JSX AST node at
point using the apppriate comment delimiters.

For example: If point is on a JSX attribute or JSX expression, it
will comment the entire attribute using \"/* */\". , otherwise if
it's on a descendent JSX Element, it will use \"{/* */}\"
instead.

\(fn ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rjsx-mode/rjsx-mode" '("rjsx-")))

;;;***

;;;### (autoloads nil "rjsx-mode/rjsx-tests" "rjsx-mode/rjsx-tests.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from rjsx-mode/rjsx-tests.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rjsx-mode/rjsx-tests" '("rjsx-" "js2-mode--and-parse" "jsx-test--forms")))

;;;***

;;;### (autoloads nil "rspec-mode/rspec-mode" "rspec-mode/rspec-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from rspec-mode/rspec-mode.el

(autoload 'rspec-mode "rspec-mode/rspec-mode" "\
Minor mode for RSpec files

\\{rspec-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'rspec-verifiable-mode "rspec-mode/rspec-mode" "\
Minor mode for Ruby files that have specs

\\{rspec-verifiable-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'rspec-dired-mode "rspec-mode/rspec-mode" "\
Minor mode for Dired buffers with spec files

\\{rspec-dired-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'rspec-buffer-is-spec-p "rspec-mode/rspec-mode" "\
Return true if the current buffer is a spec.

\(fn)" nil nil)

(autoload 'rspec-enable-appropriate-mode "rspec-mode/rspec-mode" "\


\(fn)" nil nil)

(dolist (hook '(ruby-mode-hook enh-ruby-mode-hook)) (add-hook hook 'rspec-enable-appropriate-mode))

(add-hook 'rails-minor-mode-hook 'rspec-verifiable-mode)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rspec-mode/rspec-mode" '("rspec")))

;;;***

;;;### (autoloads nil "rubocop/rubocop" "rubocop/rubocop.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from rubocop/rubocop.el

(autoload 'rubocop-check-project "rubocop/rubocop" "\
Run check on current project.

\(fn)" t nil)

(autoload 'rubocop-autocorrect-project "rubocop/rubocop" "\
Run autocorrect on current project.

\(fn)" t nil)

(autoload 'rubocop-check-directory "rubocop/rubocop" "\
Run check on DIRECTORY if present.
Alternatively prompt user for directory.

\(fn &optional DIRECTORY)" t nil)

(autoload 'rubocop-autocorrect-directory "rubocop/rubocop" "\
Run autocorrect on DIRECTORY if present.
Alternatively prompt user for directory.

\(fn &optional DIRECTORY)" t nil)

(autoload 'rubocop-check-current-file "rubocop/rubocop" "\
Run check on current file.

\(fn)" t nil)

(autoload 'rubocop-autocorrect-current-file "rubocop/rubocop" "\
Run autocorrect on current file.

\(fn)" t nil)

(autoload 'rubocop-mode "rubocop/rubocop" "\
Minor mode to interface with RuboCop.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rubocop/rubocop" '("rubocop-")))

;;;***

;;;### (autoloads nil "s/s" "s/s.el" (0 0 0 0))
;;; Generated autoloads from s/s.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "s/s" '("s-")))

;;;***

;;;### (autoloads nil "scss-mode/scss-mode" "scss-mode/scss-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from scss-mode/scss-mode.el

(autoload 'scss-mode "scss-mode/scss-mode" "\
Major mode for editing SCSS files, http://sass-lang.com/
Special commands:
\\{scss-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "scss-mode/scss-mode" '("flymake-scss-init" "scss-")))

;;;***

;;;### (autoloads nil "simplenote/simplenote" "simplenote/simplenote.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from simplenote/simplenote.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "simplenote/simplenote" '("simplenote-")))

;;;***

;;;### (autoloads nil "tablist/tablist" "tablist/tablist.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from tablist/tablist.el

(autoload 'tablist-minor-mode "tablist/tablist" "\
Toggle Tablist minor mode on or off.
With a prefix argument ARG, enable Tablist minor mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.
\\{tablist-minor-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'tablist-mode "tablist/tablist" "\


\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tablist/tablist" '("tablist-")))

;;;***

;;;### (autoloads nil "tablist/tablist-filter" "tablist/tablist-filter.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from tablist/tablist-filter.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tablist/tablist-filter" '("tablist-filter-")))

;;;***

;;;### (autoloads nil "transient/lisp/transient" "transient/lisp/transient.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from transient/lisp/transient.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "transient/lisp/transient" '("transient-" "post-transient-hook" "current-transient-" "define-")))

;;;***

;;;### (autoloads nil "use-package/bind-chord" "use-package/bind-chord.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from use-package/bind-chord.el

(autoload 'bind-chord "use-package/bind-chord" "\
Bind CHORD to COMMAND in KEYMAP (`global-map' if not passed).

\(fn CHORD COMMAND &optional KEYMAP)" nil t)

(autoload 'bind-chords "use-package/bind-chord" "\
Bind multiple chords at once.

Accepts keyword argument:
:map - a keymap into which the keybindings should be added

The rest of the arguments are conses of keybinding string and a
function symbol (unquoted).

\(fn &rest ARGS)" nil t)

;;;***

;;;### (autoloads nil "use-package/bind-key" "use-package/bind-key.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from use-package/bind-key.el

(autoload 'bind-key "use-package/bind-key" "\
Bind KEY-NAME to COMMAND in KEYMAP (`global-map' if not passed).

KEY-NAME may be a vector, in which case it is passed straight to
`define-key'. Or it may be a string to be interpreted as
spelled-out keystrokes, e.g., \"C-c C-z\". See documentation of
`edmacro-mode' for details.

COMMAND must be an interactive function or lambda form.

KEYMAP, if present, should be a keymap and not a quoted symbol.
For example:

  (bind-key \"M-h\" #'some-interactive-function my-mode-map)

If PREDICATE is non-nil, it is a form evaluated to determine when
a key should be bound. It must return non-nil in such cases.
Emacs can evaluate this form at any time that it does redisplay
or operates on menu data structures, so you should write it so it
can safely be called at any time.

\(fn KEY-NAME COMMAND &optional KEYMAP PREDICATE)" nil t)

(autoload 'unbind-key "use-package/bind-key" "\
Unbind the given KEY-NAME, within the KEYMAP (if specified).
See `bind-key' for more details.

\(fn KEY-NAME &optional KEYMAP)" nil t)

(autoload 'bind-key* "use-package/bind-key" "\
Similar to `bind-key', but overrides any mode-specific bindings.

\(fn KEY-NAME COMMAND &optional PREDICATE)" nil t)

(autoload 'bind-keys "use-package/bind-key" "\
Bind multiple keys at once.

Accepts keyword arguments:
:map MAP               - a keymap into which the keybindings should be
                         added
:prefix KEY            - prefix key for these bindings
:prefix-map MAP        - name of the prefix map that should be created
                         for these bindings
:prefix-docstring STR  - docstring for the prefix-map variable
:menu-name NAME        - optional menu string for prefix map
:filter FORM           - optional form to determine when bindings apply

The rest of the arguments are conses of keybinding string and a
function symbol (unquoted).

\(fn &rest ARGS)" nil t)

(autoload 'bind-keys* "use-package/bind-key" "\


\(fn &rest ARGS)" nil t)

(autoload 'describe-personal-keybindings "use-package/bind-key" "\
Display all the personal keybindings defined by `bind-key'.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package/bind-key" '("compare-keybindings" "get-binding-description" "bind-key" "personal-keybindings" "override-global-m")))

;;;***

;;;### (autoloads nil "use-package/use-package-bind-key" "use-package/use-package-bind-key.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from use-package/use-package-bind-key.el

(autoload 'use-package-autoload-keymap "use-package/use-package-bind-key" "\
Loads PACKAGE and then binds the key sequence used to invoke
this function to KEYMAP-SYMBOL. It then simulates pressing the
same key sequence a again, so that the next key pressed is routed
to the newly loaded keymap.

This function supports use-package's :bind-keymap keyword. It
works by binding the given key sequence to an invocation of this
function for a particular keymap. The keymap is expected to be
defined by the package. In this way, loading the package is
deferred until the prefix key sequence is pressed.

\(fn KEYMAP-SYMBOL PACKAGE OVERRIDE)" nil nil)

(autoload 'use-package-normalize-binder "use-package/use-package-bind-key" "\


\(fn NAME KEYWORD ARGS)" nil nil)

(defalias 'use-package-normalize/:bind 'use-package-normalize-binder)

(defalias 'use-package-normalize/:bind* 'use-package-normalize-binder)

(defalias 'use-package-autoloads/:bind 'use-package-autoloads-mode)

(defalias 'use-package-autoloads/:bind* 'use-package-autoloads-mode)

(autoload 'use-package-handler/:bind "use-package/use-package-bind-key" "\


\(fn NAME KEYWORD ARGS REST STATE &optional BIND-MACRO)" nil nil)

(defalias 'use-package-normalize/:bind-keymap 'use-package-normalize-binder)

(defalias 'use-package-normalize/:bind-keymap* 'use-package-normalize-binder)

(autoload 'use-package-handler/:bind-keymap "use-package/use-package-bind-key" "\


\(fn NAME KEYWORD ARGS REST STATE &optional OVERRIDE)" nil nil)

(autoload 'use-package-handler/:bind-keymap* "use-package/use-package-bind-key" "\


\(fn NAME KEYWORD ARG REST STATE)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package/use-package-bind-key" '("use-package-handler/:bind*")))

;;;***

;;;### (autoloads nil "use-package/use-package-chords" "use-package/use-package-chords.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from use-package/use-package-chords.el

(defalias 'use-package-autoloads/:chords 'use-package-autoloads-mode)

(defalias 'use-package-normalize/:chords 'use-package-normalize-binder)

(autoload 'use-package-handler/:chords "use-package/use-package-chords" "\
Handler for `:chords' keyword in `use-package'.

\(fn NAME KEYWORD ARG REST STATE)" nil nil)

;;;***

;;;### (autoloads nil "use-package/use-package-core" "use-package/use-package-core.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from use-package/use-package-core.el

(autoload 'use-package "use-package/use-package-core" "\
Declare an Emacs package by specifying a group of configuration options.

For full documentation, please see the README file that came with
this file.  Usage:

  (use-package package-name
     [:keyword [option]]...)

:init            Code to run before PACKAGE-NAME has been loaded.
:config          Code to run after PACKAGE-NAME has been loaded.  Note that
                 if loading is deferred for any reason, this code does not
                 execute until the lazy load has occurred.
:preface         Code to be run before everything except `:disabled'; this
                 can be used to define functions for use in `:if', or that
                 should be seen by the byte-compiler.

:mode            Form to be added to `auto-mode-alist'.
:magic           Form to be added to `magic-mode-alist'.
:magic-fallback  Form to be added to `magic-fallback-mode-alist'.
:interpreter     Form to be added to `interpreter-mode-alist'.

:commands        Define autoloads for commands that will be defined by the
                 package.  This is useful if the package is being lazily
                 loaded, and you wish to conditionally call functions in your
                 `:init' block that are defined in the package.
:hook            Specify hook(s) to attach this package to.

:bind            Bind keys, and define autoloads for the bound commands.
:bind*           Bind keys, and define autoloads for the bound commands,
                 *overriding all minor mode bindings*.
:bind-keymap     Bind a key prefix to an auto-loaded keymap defined in the
                 package.  This is like `:bind', but for keymaps.
:bind-keymap*    Like `:bind-keymap', but overrides all minor mode bindings

:defer           Defer loading of a package -- this is implied when using
                 `:commands', `:bind', `:bind*', `:mode', `:magic', `:hook',
                 `:magic-fallback', or `:interpreter'.  This can be an integer,
                 to force loading after N seconds of idle time, if the package
                 has not already been loaded.
:after           Defer loading of a package until after any of the named
                 features are loaded.
:demand          Prevent deferred loading in all cases.

:if EXPR         Initialize and load only if EXPR evaluates to a non-nil value.
:disabled        The package is ignored completely if this keyword is present.
:defines         Declare certain variables to silence the byte-compiler.
:functions       Declare certain functions to silence the byte-compiler.
:load-path       Add to the `load-path' before attempting to load the package.
:diminish        Support for diminish.el (if installed).
:delight         Support for delight.el (if installed).
:custom          Call `customize-set-variable' with each variable definition.
:custom-face     Call `customize-set-faces' with each face definition.
:ensure          Loads the package using package.el if necessary.
:pin             Pin the package to an archive.

\(fn NAME &rest ARGS)" nil t)

(function-put 'use-package 'lisp-indent-function '1)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package/use-package-core" '("use-package-")))

;;;***

;;;### (autoloads nil "use-package/use-package-delight" "use-package/use-package-delight.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from use-package/use-package-delight.el

(autoload 'use-package-normalize/:delight "use-package/use-package-delight" "\
Normalize arguments to delight.

\(fn NAME KEYWORD ARGS)" nil nil)

(autoload 'use-package-handler/:delight "use-package/use-package-delight" "\


\(fn NAME KEYWORD ARGS REST STATE)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package/use-package-delight" '("use-package-normalize-delight")))

;;;***

;;;### (autoloads nil "use-package/use-package-diminish" "use-package/use-package-diminish.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from use-package/use-package-diminish.el

(autoload 'use-package-normalize/:diminish "use-package/use-package-diminish" "\


\(fn NAME KEYWORD ARGS)" nil nil)

(autoload 'use-package-handler/:diminish "use-package/use-package-diminish" "\


\(fn NAME KEYWORD ARG REST STATE)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package/use-package-diminish" '("use-package-normalize-diminish")))

;;;***

;;;### (autoloads nil "use-package/use-package-ensure" "use-package/use-package-ensure.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from use-package/use-package-ensure.el

(autoload 'use-package-normalize/:ensure "use-package/use-package-ensure" "\


\(fn NAME KEYWORD ARGS)" nil nil)

(autoload 'use-package-handler/:ensure "use-package/use-package-ensure" "\


\(fn NAME KEYWORD ENSURE REST STATE)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package/use-package-ensure" '("use-package-")))

;;;***

;;;### (autoloads nil "use-package/use-package-ensure-system-package"
;;;;;;  "use-package/use-package-ensure-system-package.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from use-package/use-package-ensure-system-package.el

(autoload 'use-package-normalize/:ensure-system-package "use-package/use-package-ensure-system-package" "\
Turn `arg' into a list of cons-es of (`package-name' . `install-command').

\(fn NAME-SYMBOL KEYWORD ARGS)" nil nil)

(autoload 'use-package-handler/:ensure-system-package "use-package/use-package-ensure-system-package" "\
Execute the handler for `:ensure-system-package' keyword in `use-package'.

\(fn NAME KEYWORD ARG REST STATE)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package/use-package-ensure-system-package" '("use-package-ensure-system-package-")))

;;;***

;;;### (autoloads nil "use-package/use-package-jump" "use-package/use-package-jump.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from use-package/use-package-jump.el

(autoload 'use-package-jump-to-package-form "use-package/use-package-jump" "\
Attempt to find and jump to the `use-package' form that loaded
PACKAGE. This will only find the form if that form actually
required PACKAGE. If PACKAGE was previously required then this
function will jump to the file that originally required PACKAGE
instead.

\(fn PACKAGE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package/use-package-jump" '("use-package-find-require")))

;;;***

;;;### (autoloads nil "use-package/use-package-lint" "use-package/use-package-lint.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from use-package/use-package-lint.el

(autoload 'use-package-lint "use-package/use-package-lint" "\
Check for errors in use-package declarations.
For example, if the module's `:if' condition is met, but even
with the specified `:load-path' the module cannot be found.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package/use-package-lint" '("use-package-lint-declaration")))

;;;***

;;;### (autoloads nil "web-mode/web-mode" "web-mode/web-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from web-mode/web-mode.el

(autoload 'web-mode "web-mode/web-mode" "\
Major mode for editing web templates.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "web-mode/web-mode" '("web-mode-")))

;;;***

;;;### (autoloads nil "with-editor/with-editor" "with-editor/with-editor.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from with-editor/with-editor.el

(autoload 'with-editor-export-editor "with-editor/with-editor" "\
Teach subsequent commands to use current Emacs instance as editor.

Set and export the environment variable ENVVAR, by default
\"EDITOR\".  The value is automatically generated to teach
commands to use the current Emacs instance as \"the editor\".

This works in `shell-mode', `term-mode' and `eshell-mode'.

\(fn &optional (ENVVAR \"EDITOR\"))" t nil)

(autoload 'with-editor-export-git-editor "with-editor/with-editor" "\
Like `with-editor-export-editor' but always set `$GIT_EDITOR'.

\(fn)" t nil)

(autoload 'with-editor-export-hg-editor "with-editor/with-editor" "\
Like `with-editor-export-editor' but always set `$HG_EDITOR'.

\(fn)" t nil)

(defvar shell-command-with-editor-mode nil "\
Non-nil if Shell-Command-With-Editor mode is enabled.
See the `shell-command-with-editor-mode' command
for a description of this minor mode.")

(custom-autoload 'shell-command-with-editor-mode "with-editor/with-editor" nil)

(autoload 'shell-command-with-editor-mode "with-editor/with-editor" "\
Teach `shell-command' to use current Emacs instance as editor.

Teach `shell-command', and all commands that ultimately call that
command, to use the current Emacs instance as editor by executing
\"EDITOR=CLIENT COMMAND&\" instead of just \"COMMAND&\".

CLIENT is automatically generated; EDITOR=CLIENT instructs
COMMAND to use to the current Emacs instance as \"the editor\",
assuming no other variable overrides the effect of \"$EDITOR\".
CLIENT may be the path to an appropriate emacsclient executable
with arguments, or a script which also works over Tramp.

Alternatively you can use the `with-editor-async-shell-command',
which also allows the use of another variable instead of
\"EDITOR\".

\(fn &optional ARG)" t nil)

(autoload 'with-editor-async-shell-command "with-editor/with-editor" "\
Like `async-shell-command' but with `$EDITOR' set.

Execute string \"ENVVAR=CLIENT COMMAND\" in an inferior shell;
display output, if any.  With a prefix argument prompt for an
environment variable, otherwise the default \"EDITOR\" variable
is used.  With a negative prefix argument additionally insert
the COMMAND's output at point.

CLIENT is automatically generated; ENVVAR=CLIENT instructs
COMMAND to use to the current Emacs instance as \"the editor\",
assuming it respects ENVVAR as an \"EDITOR\"-like variable.
CLIENT may be the path to an appropriate emacsclient executable
with arguments, or a script which also works over Tramp.

Also see `async-shell-command' and `shell-command'.

\(fn COMMAND &optional OUTPUT-BUFFER ERROR-BUFFER ENVVAR)" t nil)

(autoload 'with-editor-shell-command "with-editor/with-editor" "\
Like `shell-command' or `with-editor-async-shell-command'.
If COMMAND ends with \"&\" behave like the latter,
else like the former.

\(fn COMMAND &optional OUTPUT-BUFFER ERROR-BUFFER ENVVAR)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "with-editor/with-editor" '("with-editor" "start-file-process--with-editor-process-filter" "server-" "shell-command--shell-command-with-editor-mode")))

;;;***

;;;### (autoloads nil "yaml-mode/yaml-mode" "yaml-mode/yaml-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from yaml-mode/yaml-mode.el

(let ((loads (get 'yaml 'custom-loads))) (if (member '"yaml-mode/yaml-mode" loads) nil (put 'yaml 'custom-loads (cons '"yaml-mode/yaml-mode" loads))))

(autoload 'yaml-mode "yaml-mode/yaml-mode" "\
Simple mode to edit YAML.

\\{yaml-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(e?ya?\\|ra\\)ml\\'" . yaml-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "yaml-mode/yaml-mode" '("yaml-")))

;;;***

;;;### (autoloads nil "yasnippet/yasnippet" "yasnippet/yasnippet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from yasnippet/yasnippet.el

(autoload 'yas-minor-mode "yasnippet/yasnippet" "\
Toggle YASnippet mode.

When YASnippet mode is enabled, `yas-expand', normally bound to
the TAB key, expands snippets of code depending on the major
mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

Key bindings:
\\{yas-minor-mode-map}

\(fn &optional ARG)" t nil)

(defvar yas-global-mode nil "\
Non-nil if Yas-Global mode is enabled.
See the `yas-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yas-global-mode'.")

(custom-autoload 'yas-global-mode "yasnippet/yasnippet" nil)

(autoload 'yas-global-mode "yasnippet/yasnippet" "\
Toggle Yas minor mode in all buffers.
With prefix ARG, enable Yas-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yas minor mode is enabled in all buffers where
`yas-minor-mode-on' would do it.
See `yas-minor-mode' for more information on Yas minor mode.

\(fn &optional ARG)" t nil)
(autoload 'snippet-mode "yasnippet" "A mode for editing yasnippets" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "yasnippet/yasnippet" '("yas" "help-snippet-def" "snippet-mode-map")))

;;;***

;;;### (autoloads nil "yasnippet/yasnippet-debug" "yasnippet/yasnippet-debug.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from yasnippet/yasnippet-debug.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "yasnippet/yasnippet-debug" '("yas-")))

;;;***

;;;### (autoloads nil "yasnippet/yasnippet-tests" "yasnippet/yasnippet-tests.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from yasnippet/yasnippet-tests.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "yasnippet/yasnippet-tests" '("do-yas-org-native-tab-in-source-block" "yas-")))

;;;***

;;;### (autoloads nil nil ("add-node-modules-path/add-node-modules-path-autoloads.el"
;;;;;;  "add-node-modules-path/add-node-modules-path-pkg.el" "auto-complete/auto-complete-pkg.el"
;;;;;;  "auto-save-buffers-enhanced/auto-save-buffers-enhanced-autoloads.el"
;;;;;;  "auto-save-buffers-enhanced/auto-save-buffers-enhanced-pkg.el"
;;;;;;  "company/company-autoloads.el" "company/company-pkg.el" "docker-compose-mode/docker-compose-mode-autoloads.el"
;;;;;;  "docker-compose-mode/docker-compose-mode-pkg.el" "docker-tramp/docker-tramp-compat.el"
;;;;;;  "docker/docker-group.el" "el-get/el-get-install.el" "emacs-async/async-pkg.el"
;;;;;;  "iflipb/iflipb-autoloads.el" "iflipb/iflipb-pkg.el" "js-auto-format-mode/js-auto-format-mode-autoloads.el"
;;;;;;  "js-auto-format-mode/js-auto-format-mode-pkg.el" "magit/lisp/magit-autoloads.el"
;;;;;;  "magit/lisp/magit-core.el" "magit/lisp/magit-pkg.el" "minitest/minitest-autoloads.el"
;;;;;;  "minitest/minitest-pkg.el" "pipenv/pipenv-autoloads.el" "pipenv/pipenv-pkg.el"
;;;;;;  "python-docstring/python-docstring-autoloads.el" "python-docstring/python-docstring-pkg.el"
;;;;;;  "use-package/use-package-tests.el" "use-package/use-package.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
