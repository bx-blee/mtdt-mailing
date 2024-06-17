;;; b:mtdt:menu:mailing.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary:
" orgCmntEnd)

;;;#+BEGIN: b:prog:file/proclamations :outLevel 1
(orgCmntBegin "
* *[[elisp:(org-cycle)][| Proclamations |]]* :: Libre-Halaal Software --- Part Of Blee ---  Poly-COMEEGA Format.
** This is Libre-Halaal Software. © Libre-Halaal Foundation. Subject to AGPL.
** It is not part of Emacs. It is part of Blee.
** Best read and edited  with Poly-COMEEGA (Polymode Colaborative Org-Mode Enhance Emacs Generalized Authorship)
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:prog:file/particulars :authors ("./inserts/authors-mb.org")
(orgCmntBegin "
* *[[elisp:(org-cycle)][| Particulars |]]* :: Authors, version
** This File: /bisos/git/bxRepos/blee/mtdt-mailing/b:mtdt:menu:mailing.el
** Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* /[[elisp:(org-cycle)][| Description |]]/ :: [[file:/bisos/git/auth/bxRepos/blee-binders/bisos-core/COMEEGA/_nodeBase_/fullUsagePanel-en.org][BISOS COMEEGA Panel]]
Module description comes here.
** Relevant Pointers and Panels:
** Status: In use with blee3
** /[[elisp:(org-cycle)][| Planned Improvements |]]/ :
*** TODO improvement comes here.
" orgCmntEnd)

;;;#+BEGIN: b:prog:file/orgTopControls :outLevel 1
(orgCmntBegin "
* [[elisp:(org-cycle)][| Controls |]] :: [[elisp:(delete-other-windows)][(1)]] | [[elisp:(show-all)][Show-All]]  [[elisp:(org-shifttab)][Overview]]  [[elisp:(progn (org-shifttab) (org-content))][Content]] | [[file:Panel.org][Panel]] | [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] | [[elisp:(bx:org:run-me)][Run]] | [[elisp:(bx:org:run-me-eml)][RunEml]] | [[elisp:(progn (save-buffer) (kill-buffer))][S&Q]]  [[elisp:(save-buffer)][Save]]  [[elisp:(kill-buffer)][Quit]] [[elisp:(org-cycle)][| ]]
** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]

" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/workbench :outLevel 1
(orgCmntBegin "
* [[elisp:(org-cycle)][| Workbench |]] :: [[elisp:(setq debug t)][debug-on-err]]  [[elisp:(setq  debug nil)][dont debug-on-err]] [[elisp:(org-cycle)][| ]]
** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "REQUIRES" :extraInfo "Imports"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _REQUIRES_: |]]  Imports  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

(require 'easymenu)
;;(require 'mtdt-if)


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


(defgroup b:mtdt:menu:mailing nil
  "Blee mtdt menu Library. Used by b:mtdt:distr."
  :group 'blee
  :prefix "b:mtdt:menu:mailing:"
  :link '(file-link "/bisos/panels/blee-core/mail/_nodeBase_/fullUsagePanel-en.org")
  )

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:mailing:plugin|install" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:mailing:plugin|install>>  --  -- Adds this as a submenu to menu labeled =<menuLabel= at specified delimited =<menuDelimiter=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:mailing:plugin|install (
;;;#+END:
                                   <menuLabel
                                   <menuDelimiter
                                   )
  " #+begin_org
** DocStr: Adds this as a submenu to menu labeled =<menuLabel= at specified delimited =<menuDelimiter=.
#+end_org "

  ;; Determine starting value of b:mtdt:compose+framework
  ;;(setq  b:mtdt:compose+framework b:mtdt:compose+framework::basic)
  ;; (setq  b:mtdt:compose+framework b:mtdt:compose+framework::orgMsg)

  ;; (when org-msg-mode
  ;;   (message "In org-msg-mode setting b:mtdt:compose+framework")
  ;;   (setq  b:mtdt:compose+framework b:mtdt:compose+framework::orgMsg))

  ;; (message (s-lex-format "In b:mtdt:menu:mailing:plugin|install --  b:mtdt:compose+framework=${b:mtdt:compose+framework}"))

  ;; (b:mtdt:compose+framework|actuate b:mtdt:compose+framework)

  (easy-menu-add-item
   <menuLabel
   nil
   (b:mtdt:menu:mailing:main|define :active t)
   <menuDelimiter
   )
  )

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:menu:mailing:plugin|install modes:menu:global (s-- 4))
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:mailingItem:define|withCurBuf-derive" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:mailingItem:define|withCurBuf-derive>>  --  -- Return a menuItem vector. Requires dynamic update.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:mailingItem:define|withCurBuf-derive (
;;;#+END:
                                                   )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (nth 0
   `(
     [,(format "With Current Buffer, Derive")
      (b:mtdt:mfp/derive (buffer-file-name))
      :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
      ])))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:mailing:main|define)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(b:mtdt:menu:mailingItem:define|setup-withCurBuffer)
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:mailingItem:define|withCurBuf-deriveAndSelect" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:mailingItem:define|withCurBuf-deriveAndSelect>>  --  -- Return a menuItem vector. Requires dynamic update.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:mailingItem:define|withCurBuf-deriveAndSelect (
;;;#+END:
                                                   )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (nth 0
   `(
     [,(format "With Current Buffer, Derive And Select")
      (b:mtdt:mfp/deriveAndSelect (buffer-file-name))
      :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
      ])))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:mailing:main|define)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(b:mtdt:menu:mailingItem:define|setup-withCurBuffer)
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:mailingItem:define|withCurBuf-compose" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:mailingItem:define|withCurBuf-compose>>  --  -- Return a menuItem vector. Requires dynamic update.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:mailingItem:define|withCurBuf-compose (
;;;#+END:
                                                   )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (nth 0
   `(
     [,(format "With Current Buffer, Native Compose")
      (b:mtdt:mfp/compose (buffer-file-name))
      :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
      ])))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:mailing:main|define)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(b:mtdt:menu:mailingItem:define|setup-withCurBuffer)
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:mailingItem:define|withCurBuf-extCompose" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:mailingItem:define|withCurBuf-extCompose>>  --  -- Return a menuItem vector. Requires dynamic update.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:mailingItem:define|withCurBuf-extCompose (
;;;#+END:
                                                   )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (nth 0
   `(
     [,(format "With Current Buffer, External Compose")
      (b:mtdt:mfp/extCompose (buffer-file-name))
      :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
      ])))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:mailing:main|define)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(b:mtdt:menu:mailingItem:define|setup-withCurBuffer)
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:withCurBuf:main|define" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:withCurBuf:main|define>>  --  -- Return b:mtdt:menu:withCurBuf:main  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:withCurBuf:main|define (
;;;#+END:
                                &rest <namedArgs
                                      )
  " #+begin_org
** DocStr: Return b:mtdt:menu:withCurBuf:main
:active and :visible can be specified as <namedArgs.
#+end_org "
  (let (
	(<visible (get-arg <namedArgs :visible t))
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      b:mtdt:menu:withCurBuf:main
      nil
      "DocStr of this menu --"
      `(,(format (s-lex-format "With Current Buffer: Derive, Select, Compose"))
	:help "MTDT (Mail Templating Distribution and Tracking) -- Mailing"
	:visible ,<visible
	:active ,<active
	,(s-- 2)
	,(s-- 3)
	,(s-- 4)
        ,(s-- 5)
        ,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	,(s-- 9)
	,(s-- 10)
	,(s-- 11)
	))

    (easy-menu-add-item b:mtdt:menu:withCurBuf:main nil
                        (b:mtdt:menu:mailingItem:define|withCurBuf-derive)
                        (s-- 2))

    (easy-menu-add-item b:mtdt:menu:withCurBuf:main nil
                       (b:mtdt:menu:mailingItem:define|withCurBuf-deriveAndSelect)
                       (s-- 3))

   (easy-menu-add-item b:mtdt:menu:withCurBuf:main nil
                       (b:mtdt:menu:mailingItem:define|withCurBuf-compose)
                       (s-- 4))

    (easy-menu-add-item b:mtdt:menu:withCurBuf:main nil
                       (b:mtdt:menu:mailingItem:define|withCurBuf-extCompose)
                       (s-- 5))

    (easy-menu-add-item
     b:mtdt:menu:withCurBuf:main
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 11))

    'b:mtdt:menu:withCurBuf:main
    ))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:mailing:main|define)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:mtdt:menu:mailing:main|define)))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:startMailing:main|define" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:startMailing:main|define>>  --  -- Return b:mtdt:menu:startMailing:main  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:startMailing:main|define (
;;;#+END:
                                &rest <namedArgs
                                      )
  " #+begin_org
** DocStr: Return b:mtdt:menu:startMailing:main
:active and :visible can be specified as <namedArgs.
#+end_org "
  (let (
	(<visible (get-arg <namedArgs :visible t))
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      b:mtdt:menu:startMailing:main
      nil
      "DocStr of this menu --"
      `(,(format (s-lex-format "Start Mailing -- Runs startMailing.sh is shell buffer"))
	:help "Runs startMailing.sh"
	:visible ,<visible
	:active ,<active
	,(s-- 2)
	,(s-- 3)
	,(s-- 4)
        ,(s-- 5)
        ,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	,(s-- 9)
	,(s-- 10)
	,(s-- 11)
	))

    (defun b:mtdt:menu:mailingItem:define|startMailing ()
      (nth 0
           `(
             [,(format "Run startMailing.sh")
              (lsip-local-run-command "startMailing.sh")
              :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
              ])))

    (easy-menu-add-item b:mtdt:menu:startMailing:main nil
                        (b:mtdt:menu:mailingItem:define|startMailing)
                        (s-- 2))

    (easy-menu-add-item
     b:mtdt:menu:startMailing:main
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 11))

    'b:mtdt:menu:startMailing:main
    ))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:mailing:main|define)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:mtdt:menu:startMailing:main|define)))
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:customize:main|define" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:customize:main|define>>  --  -- Return b:mtdt:menu:customize:main  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:customize:main|define (
;;;#+END:
                                &rest <namedArgs
                                      )
  " #+begin_org
** DocStr: Return b:mtdt:menu:customize:main
:active and :visible can be specified as <namedArgs.
#+end_org "
  (let (
	(<visible (get-arg <namedArgs :visible t))
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      b:mtdt:menu:customize:main
      nil
      "DocStr of this menu --"
      `(,(format (s-lex-format "Customize the current mailing"))
	:help "Runs customize.sh"
	:visible ,<visible
	:active ,<active
	,(s-- 2)
	,(s-- 3)
	,(s-- 4)
        ,(s-- 5)
        ,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	,(s-- 9)
	,(s-- 10)
	,(s-- 11)
	))

    (defun b:mtdt:menu:mailingItem:define|customize ()
      (nth 0
           `(
             [,(format "Customize current buffer")
              (b:mtdt:customize/buf (buffer-name (current-buffer)))
              :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
              ])))

    (easy-menu-add-item b:mtdt:menu:customize:main nil
                        (b:mtdt:menu:mailingItem:define|customize)
                        (s-- 2))

    (easy-menu-add-item
     b:mtdt:menu:customize:main
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 11))

    'b:mtdt:menu:customize:main
    ))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:mailing:main|define)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:mtdt:menu:customize:main|define)))
#+END_SRC
" orgCmntEnd)





;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:mailing:define|selMailingSelect" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:mailing:define|selMailingSelect>>  --  -- Return b:mtdt:menu:mailing:curMailingSelect  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:mailing:define|selMailingSelect (
;;;#+END:
                                            )
  " #+begin_org
** DocStr: Return b:mtdt:menu:mailing:curMailingSelect
#+end_org "
  (let (
	($thisFuncName (compile-time-function-name))
	)

    (defun describeMenuItem ()
      (nth 0
       `(
         [,(s-lex-format "Describe b:mtdt:mailings:selected -- ${b:mtdt:mailings:selected}")
          (describe-variable 'b:mtdt:mailings:selected)
          :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
          ])))

    (defun selections ()
      "Dynamic Selections"
      (apropos-internal "b:mtdt:m/" 'commandp))

    (easy-menu-define
      b:mtdt:menu:mailing:curMailingSelect
      nil
      ""
      (append
       `(,(s-lex-format "Select Mailings == ${b:mtdt:mailings:selected}"))
       (list :help "Selected Mailing can be set in a variety of ways.")
       (list (s-- 3))
       (list (s-- 4))
       (mapcar (lambda (<each)
		 (vector (s-lex-format "Set b:mtdt:mailings:selected to ${<each}")
			 `(b:mtdt:mailings|select '(,<each))
			   :help (s-lex-format "Set b:mtdt:mailings:selected to ${<each}")
			 ))
	       (selections))
       (list (s-- 5))
       (list (s-- 6))
       ))

    (easy-menu-add-item b:mtdt:menu:mailing:curMailingSelect nil (describeMenuItem) (s-- 3))

    (easy-menu-add-item
     b:mtdt:menu:mailing:curMailingSelect
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 5))

    'b:mtdt:menu:mailing:curMailingSelect
    ))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:mailing:define|selMailingSelect)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:mtdt:menu:mailing:define|selMailingSelect)))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:mailing:define|selTemplateSelect" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:mailing:define|selTemplateSelect>>  --  -- Return b:mtdt:menu:mailing:curGnusMailingSelect  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:mailing:define|selTemplateSelect (
;;;#+END:
                                            )
  " #+begin_org
** DocStr: Return b:mtdt:menu:template:mailing:curTemplateSelect
#+end_org "
  (let (
	($thisFuncName (compile-time-function-name))
	)

    (defun describeMenuItem ()
      (nth 0
       `(
         [,(s-lex-format "Describe b:mtdt:mailings:selected -- ${b:mtdt:mailings:selected}")
          (describe-variable 'b:mtdt:mailings:selected)
          :help "NOTYET"
          ])))

    (defun selections ()
      "Dynamic Selections"
      (apropos-internal "b:mtdt:t/" 'commandp))

    (easy-menu-define
      b:mtdt:menu:template:mailing:curTemplateSelect
      nil
      ""
      (append
       `(,(s-lex-format "Select Template == ${b:mtdt:mailings:selected}"))
       (list :help "Selected Template Mailing can be set in a variety of ways.")
       (list (s-- 3))
       (list (s-- 4))
       (mapcar (lambda (<each)
		 (vector (s-lex-format "Set b:mtdt:mailings:selected to ${<each}")
			 `(b:mtdt:gnus:mailing|select ',<each)
			   :help (s-lex-format "Set b:mtdt:mailings:selected to ${<each}")
			 ))
	       (selections))
       (list (s-- 5))
       (list (s-- 6))
       ))

    (easy-menu-add-item b:mtdt:menu:template:mailing:curTemplateSelect nil (describeMenuItem) (s-- 3))

    (easy-menu-add-item
     b:mtdt:menu:template:mailing:curTemplateSelect
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 5))

    'b:mtdt:menu:template:mailing:curTemplateSelect
    ))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:mailing:define|selGnusMailingSelect)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu w(b:mtdt:menu:mailing:define|selGnusMailingSelect)))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:mailing:define|selGnusMailingSelect" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:mailing:define|selGnusMailingSelect>>  --  -- Return b:mtdt:menu:mailing:curGnusMailingSelect  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:mailing:define|selGnusMailingSelect (
;;;#+END:
                                            )
  " #+begin_org
** DocStr: Return b:mtdt:menu:mailing:curGnusMailingSelect
#+end_org "
  (let (
	($thisFuncName (compile-time-function-name))
	)

    (defun describeMenuItem ()
      (nth 0
       `(
         [,(s-lex-format "Describe b:mtdt:gnus:mailing:selected -- ${b:mtdt:gnus:mailing:selected}")
          (describe-variable 'b:mtdt:gnus:mailing:selected)
          :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
          ])))

    (defun selections ()
      "Dynamic Selections"
      (apropos-internal "b:mtdt:g/" 'commandp))

    (easy-menu-define
      b:mtdt:menu:gnus:mailing:curMailingSelect
      nil
      ""
      (append
       `(,(s-lex-format "Select MUA/Gnus Mailing Stencil == ${b:mtdt:gnus:mailing:selected}"))
       (list :help "Selected Gnus Mailing can be set in a variety of ways.")
       (list (s-- 3))
       (list (s-- 4))
       (mapcar (lambda (<each)
		 (vector (s-lex-format "Set b:mtdt:gnus:mailing:selected to ${<each}")
			 `(b:mtdt:gnus:mailing|select ',<each)
			   :help (s-lex-format "Set b:mtdt:gnus:mailing:selected to ${<each}")
			 ))
	       (selections))
       (list (s-- 5))
       (list (s-- 6))
       ))

    (easy-menu-add-item b:mtdt:menu:gnus:mailing:curMailingSelect nil (describeMenuItem) (s-- 3))

    (easy-menu-add-item
     b:mtdt:menu:gnus:mailing:curMailingSelect
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 5))

    'b:mtdt:menu:gnus:mailing:curMailingSelect
    ))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:mailing:define|selGnusMailingSelect)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu w(b:mtdt:menu:mailing:define|selGnusMailingSelect)))
#+END_SRC
" orgCmntEnd)




;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:mailing:define|derivedMailingInvoke" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:mailing:define|derivedMailingInvoke>>  --  -- Return b:mtdt:menu:mailing:curMailingSelect  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:mailing:define|derivedMailingInvoke (
;;;#+END:
                                                )
  " #+begin_org
** DocStr: Return b:mtdt:menu:mailing:curMailingSelect
#+end_org "
  (let (
	($thisFuncName (compile-time-function-name))
	)

    (defun describeMenuItem ()
      (nth 0
       `(
         [,(s-lex-format "Describe b:mtdt:mailings:selected -- ${b:mtdt:mailings:selected}")
          (describe-variable 'b:mtdt:mailings:selected)
          :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
          :active t
          :visible t
          ]
         )))

    (defun selections ()
      "Dynamic Selections"
      (apropos-internal "b:mtdt:m/" 'commandp))

    (easy-menu-define
      b:mtdt:menu:mailing:curMailingSelect
      nil
      ""
      (append
       `(,(s-lex-format "Invoke (Native Compose) Derived Mailing"))
       (list :help "Applies to derived mailings.")
       (list (s-- 3))
       (list (s-- 4))
       (mapcar (lambda (<each)
		 (vector (s-lex-format "Invoke Mailing: ${<each}")
			 `(funcall #'b:mtdt:mailings|framedComposeWithFn ',<each)
			   :help (s-lex-format "Invoke Derived Mailing: ${<each}")
			 ))
	       (selections))
       (list (s-- 5))
       (list (s-- 6))
       ))

    (easy-menu-add-item b:mtdt:menu:mailing:curMailingSelect nil (describeMenuItem) (s-- 3))

    (easy-menu-add-item
     b:mtdt:menu:mailing:curMailingSelect
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 5))

    'b:mtdt:menu:mailing:curMailingSelect
    ))


(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:mailing:define|selMailingSelect)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:mtdt:menu:mailing:define|derivedMailingInvoke)))
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menuItem:define|selMailing-natCompose" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menuItem:define|selMailing-natCompose>>  --  -- Return a menuItem vector. Requires dynamic update.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menuItem:define|selMailing-natCompose (
;;;#+END:
                                                 )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (nth 0
   `(
     [,(s-lex-format "Native Compose ${b:mtdt:mailings:selected}")
      (b:mtdt:mailings|framedComposeWithFns b:mtdt:mailings:selected)
      :help "Compose with selected mailing"
      ])))

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menuItem:define|selMailing-extCompose" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menuItem:define|selMailing-extCompose>>  --  -- Return a menuItem vector. Requires dynamic update.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menuItem:define|selMailing-extCompose (
;;;#+END:
                                        )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (nth 0
   `(
     [,(s-lex-format "Externally Compose ${b:mtdt:mailings:selected}")
      (b:mtdt:mailings|framedExtComposeWithFns b:mtdt:mailings:selected)
      :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
      ])))

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menuItem:define|radio-composeFramework" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menuItem:define|radio-composeFramework>>  --  -- Return a menuItem vector. Requires dynamic update.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menuItem:define|radio-composeFramework (
;;;#+END:
                                                      <nth
                                                      )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (nth <nth
       `(
         [
          ,(format (s-lex-format "Describe Compose Framework:: ${b:mtdt:compose+framework}"))
	  (describe-variable 'b:mtdt:compose+framework)
	  :help "Describe current value of b:mtdt:compose+framework"
	  :active t
	  :visible t
	  ]
	 [
	  "Basic"
	  (b:mtdt:compose+framework|actuate b:mtdt:compose+framework::basic)
	  :help "Select basic composition framework."
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq  b:mtdt:compose+framework 'b:mtdt:compose+framework::basic)
	  ]
	 [
	  "OrgMsg"
	  (b:mtdt:compose+framework|actuate 'b:mtdt:compose+framework::orgMsg)
	  :help "Select orgMsg composition framework."
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq b:mtdt:compose+framework 'b:mtdt:compose+framework::orgMsg)
	  ]
	 [
	  "LaTeX"
	  (b:mtdt:compose+framework|actuate  'b:mtdt:compose+framework::latex)
	  :help "Select latex composition framework."
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq b:mtdt:compose+framework 'b:mtdt:compose+framework::latex)
	  ]
         [
	  "HTML"
	  (b:mtdt:compose+framework|actuate  'b:mtdt:compose+framework::html)
	  :help "Select latex composition framework."
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq b:mtdt:compose+framework 'b:mtdt:compose+framework::html)
	  ]
         [
	  "OfSelMailing"
	  (b:mtdt:compose+framework|actuate  'b:mtdt:compose+framework::ofSelMailing)
	  :help "Select latex composition framework."
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq b:mtdt:compose+framework 'b:mtdt:compose+framework::ofSelMailing)
	  ]
         )))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:mailing:main|define)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(b:mtdt:menuItem:define|radio-composeFramework 2)
#+END_SRC

#+RESULTS:

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menuItem:define|radio-compositionModel" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menuItem:define|radio-compositionModel>>  --  -- Return a menuItem vector. Requires dynamic update.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menuItem:define|radio-compositionModel (
;;;#+END:
                                                      <nth
                                                      )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (nth <nth
       `(
         [
	  ,(s-lex-format "Describe Selected Composition Model:: ${b:mtdt:compositionModel}")
	  (describe-variable 'b:mtdt:compositionModel)
	  :help "Describe current value of b:mtdt:compositionModel"
	  :active t
	  :visible t
	  ]
	 [
	  ,(s-lex-format "${b:mtdt:compositionModel::ExtComposition} Model")
	  (b:mtdt:compositionModel|select b:mtdt:compositionModel::ExtComposition)
	  :help "Select Composition Model"
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq  b:mtdt:compositionModel b:mtdt:compositionModel::ExtComposition)
	  ]
	 [
	  ,(s-lex-format "${b:mtdt:compositionModel::NativeComposition} Model")
	  (b:mtdt:compositionModel|select b:mtdt:compositionModel::NativeComposition)
	  :help "Select Composition Model"
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq  b:mtdt:compositionModel b:mtdt:compositionModel::NativeComposition)
	  ]
         )))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:mailing:main|define)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(b:mtdt:menuItem:define|radio-compositionModel 1)
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:mailing:main|define" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:mailing:main|define>>  --  -- Return b:mtdt:menu:mailing:main  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:mailing:main|define (
;;;#+END:
                                &rest <namedArgs
                                      )
  " #+begin_org
** DocStr: Return b:mtdt:menu:mailing:main
:active and :visible can be specified as <namedArgs.
#+end_org "
  (let (
	(<visible (get-arg <namedArgs :visible t))
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      b:mtdt:menu:mailing:main
      nil
      "DocStr of this menu --"
      `(,(format (s-lex-format "MTDT Mailings -- Selected Mailings  ${b:mtdt:mailings:selected}"))
	:help "MTDT (Mail Templating Distribution and Tracking) -- Mailing"
	:visible ,<visible
	:active ,<active
	,(s-- 2)
	,(s-- 3)
	,(s-- 4)
        ,(s-- 5)
        ,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	,(s-- 9)
	,(s-- 10)
	,(s-- 11)
	))


   (b:mtdt:assemble:menu:plugin|install
    b:mtdt:menu:mailing:main (s-- 2))



    (easy-menu-add-item b:mtdt:menu:mailing:main nil
                        (b:mtdt:menu:mailing:define|derivedMailingInvoke)
                        (s-- 2))

    (easy-menu-add-item b:mtdt:menu:mailing:main nil
                       (b:mtdt:menu:mailing:define|selMailingSelect)
                       (s-- 3))

   (easy-menu-add-item b:mtdt:menu:mailing:main nil
                       (b:mtdt:menu:mailing:define|selTemplateSelect)
                       (s-- 3))

    (easy-menu-add-item b:mtdt:menu:mailing:main nil
                       (b:mtdt:menu:mailing:define|selGnusMailingSelect)
                       (s-- 3))


    ;; (b:var:custom:choices:menu:plugin|install
    ;;  b:mtdt:menu:mailing:main (s-- 4) 'b:mtdt:compose+framework)

    (b:var:custom:choices:menu:add|items
     b:mtdt:menu:mailing:main (s-- 4) 'b:mtdt:compose+framework)

  ;; (easy-menu-add-item b:mtdt:menu:mailing:main
  ;;                     nil
  ;;                     (nth 2 (b:var:custom:menu|choicesList  'b:mtdt:compose+framework))
  ;;                     (s-- 4)
  ;;                     )

  ;;   (easy-menu-add-item b:mtdt:menu:mailing:main nil
  ;;                         (b:mtdt:menuItem:define|radio-composeFramework 3)
  ;;                         (s-- 5))


    (b:var:custom:choices:menu:plugin|install
     b:mtdt:menu:mailing:main (s-- 6) 'b:mtdt+compositionModel)


    ;; (loop-for-each $i (number-sequence 0 5 1)
    ;;   (easy-menu-add-item b:mtdt:menu:mailing:main nil
    ;;                       (b:mtdt:menuItem:define|radio-composeFramework $i)
    ;;                       (s-- 5)))

    ;; (loop-for-each $i (number-sequence 0 2 1)
    ;;   (easy-menu-add-item b:mtdt:menu:mailing:main nil
    ;;                       (b:mtdt:menuItem:define|radio-compositionModel $i)
    ;;                       (s-- 6)))

    (easy-menu-add-item b:mtdt:menu:mailing:main nil
                        (b:mtdt:menu:startMailing:main|define)
                        (s-- 6))

    (easy-menu-add-item b:mtdt:menu:mailing:main nil
                        (b:mtdt:menu:customize:main|define)
                        (s-- 7))

    (easy-menu-add-item b:mtdt:menu:mailing:main nil
                        (b:mtdt:menu:withCurBuf:main|define)
                        (s-- 8))

    (easy-menu-add-item b:mtdt:menu:mailing:main nil
                        (b:mtdt:menuItem:define|selMailing-natCompose)
                        (s-- 9))

    (easy-menu-add-item b:mtdt:menu:mailing:main nil
                        (b:mtdt:menuItem:define|selMailing-extCompose)
                        (s-- 10))

    (easy-menu-add-item
     b:mtdt:menu:mailing:main
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 11))

    'b:mtdt:menu:mailing:main
    ))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:mailing:main|define)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:mtdt:menu:mailing:main|define)))
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b:mtdt:menu:mailing)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
