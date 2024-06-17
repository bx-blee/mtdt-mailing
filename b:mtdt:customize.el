;;; b:mtdt:customize.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

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
** This File: /bisos/git/bxRepos/blee/mtdt-mailing/b:mtdt:customize.el
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

(require 'f)
(require 'loop)
(require 'message)
(require 'mailing-from-base)
(require 'msend-lib)
(require 'org-msg)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/defgroup :defName "b:b:mtdt:customize" :defValue "nil"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defgroup   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:b:mtdt:customize>> ~nil~ --  -- Blee Mailings Library. Used by b:b:mtdt:distr.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defgroup b:b:mtdt:customize nil
;;;#+END:
" #+begin_org
** DocStr: Blee Mailings Library. Used by b:b:mtdt:distr.
#+end_org "
  :group 'blee
  :prefix "b:b:mtdt:mailings:"
  :link '(file-link "/bisos/panels/blee-core/mail/_nodeBase_/fullUsagePanel-en.org")
  )


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Composition Model" :extraInfo "ExtComposition, NativeComposition"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Composition Model_: |]]  ExtComposition, NativeComposition  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defcustom :defName "b:mtdt+customize" :defValue "'b:mtdt+customize::enable" :comment "/MENU/"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defcustom  [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt+customize>> ~'b:mtdt+customize::enable~ -- /MENU/ -- Selected Composition Model.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defcustom b:mtdt+customize 'b:mtdt+customize::enable
;;;#+END:
    " #+begin_org
** DocStr: Selected Composition Model.
#+end_org "
	:group 'b:b:mtdt:mailings
	:type '(choice
	        (const :tag "enable" b:mtdt+customize::enable "Enable Customization." )
		(const :tag "disable" b:mtdt+customize::disable "Disable Customization.")
                ))

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt+customize|actuate" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt+customize|actuate>>  --  -- Based on <framework, set things up for composition in that framework.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt+customize|actuate (
;;;#+END:
                                       <customize
                                       )
  " #+begin_org
** DocStr: Based on <framework, set things up for composition in that framework.
#+end_org "
  (let* (
         ($inHere (b:trace|entry (b:func$entry)))
	 )
    (b:var:custom:choices|set 'b:mtdt+customize <customize)
    b:mtdt+customize))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:compose+framework|actuate 'b:mtdt:compose+framework::basic)
#+END_SRC

#+RESULTS:
: b:mtdt:compose+framework::basic

" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt+customize|enabled?"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt+customize|enabled?>>  --  -- return =<inHere=, unchanged. Logs =<inHere=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt+customize|enabled? (
;;;#+END:
                                    )
   " #+begin_org
** DocStr:
#+end_org "
  (let* (
         ($result t)
	 )
   (when  (eq b:mtdt+customize 'b:mtdt+customize::disable)
     (setq $result nil))
   $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt+customize|enabled?)
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Mailing File Customization" :extraInfo ""
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Mailing File Customization_: |]]    [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:customize/controlledBuf" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:customize/controlledBuf>>  --  -- Obtain X-MTDTD-Customize, Load it. Run b:curMsg/customize  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:customize/controlledBuf (
;;;#+END:
                             <mailingBuf
                             )
  " #+begin_org
** DocStr: Obtain X-MTDTD-Customize, Load it. Run b:curMsg/customize
#+end_org "
    (let* (
           ($inHere (b:log|entry (b:func$entry)))
           ($customizeFile (b:mtdt:header:buf:get|mtdt-customize <mailingBuf))
	   )

      (when $customizeFile
        (if-unless (b:mtdt+customize|enabled?)
          (b|warning (b|fmt$ "Customization Header Exists (${$customizeFile}) but customization is disabled.") :here $inHere))
        (else-when (b:mtdt+customize|enabled?)
          (b:mtdt:customize/buf <mailingBuf)
          ))
      ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:customize/buf (save-current-buffer (find-file (symbol-name './examples/mailings/t:test-customized.orgMsg))))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:customize/buf" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:customize/buf>>  --  -- Obtain X-MTDTD-Customize, Load it. Run b:curMsg/customize  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:customize/buf (
;;;#+END:
                             <mailingBuf
                             )
  " #+begin_org
** DocStr: Obtain X-MTDTD-Customize, Load it. Run b:curMsg/customize
#+end_org "
    (let* (
           ($inHere (b:log|entry (b:func$entry)))
           ($customizeFile (b:mtdt:header:buf:get|mtdt-customize <mailingBuf))
           ($customizeForms)
           ($customizeFilePath)
	   )

      (if-unless $customizeFile
          (b|warning (b|fmt$ "Missing X-MTDT-Customize") :here $inHere))
      (else-when $customizeFile
        (setq $customizeFilePath (f-expand $customizeFile))
        (if-unless (f-readable? $customizeFilePath)
          (b|warning (b|fmt$ "Unreadable File: ${$customizeFilePath}") :here $inHere))
        (else-when (f-readable? $customizeFilePath)
          (setq $customizeForms (b:eval-file $customizeFilePath))
          (if-unless $customizeForms
            (b|warning (b|fmt$ "Missing Customization Forms: ${$customizeForms}") :here $inHere)
            )
          (else-when $customizeForms
            (setq b:customize:default:buffer <mailingBuf)
            (dolist ($eachForm  $customizeForms)
              (eval $eachForm))
            )))
      (b:trace$msg <mailingBuf $customizeFile $customizeFilePath $customizeForms)
      ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:customize/buf (save-current-buffer (find-file (symbol-name './examples/mailings/t:test-customized.orgMsg))))
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:plist|replaceInBuffer" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:plist|replaceInBuffer>>  --  -- Set =b:mtdt:recipients:selected= as specified.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:plist|replaceInBuffer (
;;;#+END:
                         &key
                         (attrs nil)
                         (buffer nil)
                        )
   " #+begin_org
** DocStr: Convert buffer to string and use b:plist|replaceInString
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($bufStr)
          ($result)
	  )
     (unless buffer
       (if b:customize:default:buffer
           (setq buffer b:customize:default:buffer)
         (setq buffer (current-buffer))
         ))
     (setq $bufStr (with-current-buffer buffer (buffer-string)))
     (setq $result (b:plist|replaceInString attrs $bufStr))
     (with-current-buffer buffer
       (erase-buffer)
       (goto-char (point-min))
       (insert $result)
       (goto-char (point-min))
       )
     (b:trace$msg buffer  $result)
     ))

;;;#+BEGIN:  b:elisp:defs/defun :defName "$b:test:plist|replaceInBuffer"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<$b:test:plist|replaceInBuffer>>  --  -- Test/Example of using [[b:plist|replaceInString]].  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun $b:test:plist|replaceInBuffer (
;;;#+END:
                                      )
   " #+begin_org
** DocStr: Test/Example of using [[b:plist|replaceInString]].
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($subjectBuf)
          ($result)
          )
     (setq b:customize:default:buffer (save-current-buffer (find-file (symbol-name './examples/mailings/t:test-customized.orgMsg))))
     (b:plist|replaceInBuffer
      :attrs (list
              :version emacs-version
              :date (time-stamp-string)
              :someConstant "My First Name"
              )
      )
     ))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
($b:test:plist|replaceInBuffer)
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b:mtdt:customize)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
