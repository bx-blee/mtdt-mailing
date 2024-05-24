;;; dblock-mtdt.el --- DBlocks for Elisp File-Elements  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary: Dblocks for MTDT.
" orgCmntEnd)

;;;#+BEGIN: b:prog:file/proclamations :copyLeft "libreHalaal"
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
** This File: /bisos/git/auth/bxRepos/blee/env3/dblocks/dblock-comeega-latex.el
** Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* /[[elisp:(org-cycle)][| Description |]]/ :: [[file:/bisos/git/auth/bxRepos/blee-binders/bisos-core/COMEEGA/_nodeBase_/fullUsagePanel-en.org][BISOS COMEEGA Panel]]
A library of dblock for b:elisp:file/xxx comeega-file-elements.
** Relevant Panels:
** Status: In use with blee3
** /[[elisp:(org-cycle)][| Planned Improvements |]]/ :
*** TODO  workbench is incomplete and minimal.
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

(require 'bx-lcnt-lib)
(require 'dblock-governor)
(load "time-stamp")
(require 'loop)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Dblocks for Derivation and use of Mailings" :extraInfo "org-dblock-write:b:mtdt:mailing"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Dblocks for Derivation and use of Mailings_: |]]  org-dblock-write:b:mtdt:mailing  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:mtdt:mailing/compose" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:mtdt:mailing/compose>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:mtdt:mailing/compose :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:mtdt:mailing/compose (<params)
;;;#+END:
   " #+begin_org
** DocStr:
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openTerseNoNl" "closeContinue"))
         (<mailingFile (or (plist-get <params :mailingFile) "auto"))
         (<foldDesc (or (plist-get <params :foldDesc) nil))
         (<extraInfo (or (plist-get <params :extraInfo) nil))
         )

    (bxPanel:params$effective)

    (defun helpLine ()
      ":bxoId \"auto or bxoId\""
      )

    (defun bodyContentPlus ()
      ;;(bxPanel:lineDeliminator|top <realm)
      )

    (defun bodyContent ()
      "If there is user data, insert it."
      (let* (
             ($extensionFileName)
             ($mailingName)
             ($mailingBuf (find-file <mailingFile))
	     ($mailingParams (b:mtdt:mailing:params|from-buf $mailingBuf))
             ($type (or (plist-get $mailingParams :type) nil))
             )
        (setq $mailingName (b:mtdt:mailing:getName|with-file <mailingFile))
        (when <foldDesc
          (insert (s-lex-format "  [[elisp:(org-cycle)][| /${<foldDesc}/ |]] ")))
        (insert (s-lex-format "  [[elisp:(b:mtdt:setup-and-compose/with-file \"${<mailingFile}\")][${$mailingName}]] "  ))
        (when (equalp $type 'originate )
          (insert
           (s-lex-format
            "|| [[elisp:(b:mtdt:setup-and-originate/with-file \"${<mailingFile}\")][Originate]] ")))
        (message (format "%s" $type))
        (insert (s-lex-format "|| [[file:${<mailingFile}][Visit]]  "))
        (insert (s-lex-format "|| [[elisp:(b:mtdt:derive/fromFile \"${<mailingFile}\")][Derive]] "))
        (insert (s-lex-format "|| [[elisp:(message  \"NOTYET De-Drive\")][De-Derive]] "))
        (insert (s-lex-format "|| [[elisp:(message  \"NOTYET Send with CurRecips\")][Send with SelRecips]] "))
        (insert (s-lex-format "|| [[elisp:(b:mtdt:derive/fromFilesAndSelect \"${<mailingFile}\")][Select Mailing]]   "))
        (when (and <extraInfo (s-present? <extraInfo))
          (insert (s-lex-format
                    "_${<extraInfo}_")))
        )
      )

    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    (blee:ppmm:org-mode-toggle)
    (blee:ppmm:org-mode-toggle)
    (read-only-mode -1)
    ))

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Dblocks for Inclusion in orgMsg Content" :extraInfo "org-dblock-write:b:mtdt:content"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Dblocks for Inclusion in orgMsg Content_: |]]  org-dblock-write:b:mtdt:content  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:mtdt:content/actions" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:mtdt:content/actions>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:mtdt:content/actions :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:mtdt:content/actions (<params)
;;;#+END:
   " #+begin_org
** DocStr: In a content.{mail,msgOrg} file insert orgActionLinks for what applies to that mailing.
Behaviour should be different based on what type of buffer we are in.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openTerseNoNl" "closeContinue"))
         )

    (bxPanel:params$effective)

    (defun helpLine ()
      ":bxoId \"auto or bxoId\""
      )

    (defun bodyContentPlus ()
      ;;(bxPanel:lineDeliminator|top <realm)
      )

    (defun bodyContent ()
      "If there is user data, insert it."
      (let* (
             ($extensionFileName)
             ($mailingName)
             ($mailingBuf (current-buffer))
             ($mailingFile (buffer-file-name (current-buffer)))
	     ($mailingParams (mtdt:mailing:params|from-buf $mailingBuf))
             ($type (or (plist-get $mailingParams :type) nil))
             ($headersList)
             )
        ;;(setq $mailingName (mtdt:mailing:getName|with-file $mailingFile))
        ;;

        (defun selectLaTeX-ltr (<basePath)
          (insert (s-lex-format
                   "  [[elisp:(mtdt:mailing:baseDir|set \"${<basePath}\")][Select LTR Base]]")))

        (defun selectLaTeX-rtl (<basePath)
          (insert (s-lex-format
                   "  [[elisp:(mtdt:mailing:baseDir|set \"${<basePath}\")][Select RTL Base]]")))

        (save-excursion
          (beginning-of-buffer)
          (setq $headersList (mail-header-extract)))

        ;;(insert (format "%s\n" $headersList))

        (insert "#+BEGIN_COMMENT\n")

        (loop-for-each each $headersList
          ;; (insert (format "%s\n" each))
          ;; (insert (format "%s\n" (car each)))
          (when (equal 'x-tmp-mailingpath-rtl (car each))
            (selectLaTeX-rtl (cdr each)))
          (when (equal 'x-tmp-mailingpath-ltr (car each))
            (selectLaTeX-ltr (cdr each)))
          )

        (insert (s-lex-format
                "  [[elisp:(find-file \"./mailing.ttytex\")][Visit ./mailing.ttytex]]"))
        (insert (s-lex-format
                " | [[elisp:(call-interactively 'org-msg-preview)][Browser Preview]]"))
        (insert (s-lex-format
                " | [[elisp:(message-mode)][message-mode]]"))
        (insert (s-lex-format
                " | [[elisp:(mtdt:setup-and-compose/with-curBuffer)][Compose]]"))
        (insert (s-lex-format
                 " | [[elisp:(mtdt:setup-and-originate/with-curBuffer)][Originate]]"))
        (insert "\n#+END_COMMENT")
        )
      )

    (bodyContent)
    ;;(bx:invoke:withStdArgs$bx:dblock:governor:process)
    ))


;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'dblock-mtdt)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
