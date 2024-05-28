;;; b:mtdt:derive.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary: NOTYET, Incomplete and dirty. This module should be redeveloped in conjunction with  b:mtdt:mailings.el.
Scope of this module is just the derivation of a command which absorbs the mailingFile.
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
** This File: /bisos/git/bxRepos/blee/mtdt/b:mtdt:derive.el
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

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defmacro :defName "b:mtdt:derive$mailingNameFromPath"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defmacro   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive$mailingNameFromPath>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defmacro b:mtdt:derive$mailingNameFromPath (
;;;#+END:
                                            <mailingFilePath
                                            )
   " #+begin_org
** DocStr: NOTYET, A Placeholder. The macro defines a command that provides access to the content of mailingFile.
=<mailingFilePath= is expected to be a static path.
interactive p is needed so that there are some params.
The name of the command is b:mtdt:d/{mailingName}. mailingName is a field in =<mailingFilePath=.
It returns the =<mailingFilePath=.

Based on the name of the derived commands, mailings can be accessed as commands.
Interactive mailing commands b:mtdt:d:{someAction}/{mailingName}  that process the mailingFile accept b:mtdt:d/mailngName as an argument
and provide various variations on processing of the mailingFile.
#+end_org "
  `(fset (intern (concat "b:mtdt:d/" (b:mtdt:mailing:getName|with-file ,<mailingFilePath)))
	 (lambda (args)
	   (interactive "p")
	   (b:mtdt:compose|with-file ,<mailingFilePath args)
	   )
	 ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:compose$mailing-defun)
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive/fromFile" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive/fromFile>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:derive/fromFile (
;;;#+END:
                               <mailingFilePath
                               )
   " #+begin_org
** DocStr:  NOTYET. Place Holder -- Given a mailing file, derive it if needed.
#+end_org "
  (interactive)
  (let* (
        ($inHere (b:log|entry (b:func$entry)))
	($mailingName nil)
	($mailingBuf nil)
	($funcSymbol nil)
	)

    (save-excursion
      ;;(find-file-read-only <mailingFilePath)
      ;;(setq $mailingBuf (current-buffer))
      (setq $mailingBuf (find-file-read-only <mailingFilePath))
      (setq $mailingName (b:mtdt:mailing:getName/with-buffer $mailingBuf))
      (setq $funcSymbol (intern (b:mtdt:mailing:compose|get-function-name $mailingName)))
      (unless (commandp $funcSymbol)
        (b:mtdt:setup$with-filePath <mailingFilePath))
      ;;(kill-buffer (current-buffer))
      (kill-buffer $mailingBuf)
      )

      (message (s-lex-format "Derived  ${$funcSymbol} from ${<mailingFilePath}"))
      $funcSymbol
      ))

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive/fromFilesList" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive/fromFilesList>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:derive/fromFilesList (
;;;#+END:
                                    <mailingFilesList
                                    )
   " #+begin_org
** DocStr:  Returns mailingNamesList. Typically used in user's initial setup to derive persistant mailings.
#+end_org "
   (interactive)
   (let* (
          ($mailingName)
          ($mailingNamesList (list))
         )
     (dolist ($eachMailingFile <mailingFilesList)
       (setq $mailingNamesList
             (append
              $mailingNamesList
              (list (b:mtdt:derive/fromFile $eachMailingFile)))))
     $mailingNamesList))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive/fromFilesStr" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive/fromFilesStr>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:derive/fromFilesStr (
;;;#+END:
                                   <mailingFilesStr
                                   )
   " #+begin_org
** DocStr:  Returns mailingNamesList
#+end_org "
  (interactive)
  (let* (
         ($filesPathList (s-split " " <mailingFilesStr))
         )
    (b:mtdt:derive/fromFilesList $filesPathList)))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive/fromFilesStrAndSelect" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive/fromFileAndSelect>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:derive/fromFilesAndSelect (
;;;#+END:
                                        <mailingFilesStr
                                        )
   " #+begin_org
** DocStr:  NOTYET. Place Holder -- Used by dblocks.
#+end_org "
  (interactive)
  (b:mtdt:mailings|select (b:mtdt:derive/fromFilesStr (f-full <mailingFilesStr))))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b:mtdt:derive)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
