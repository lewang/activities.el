;;; activities-transient.el --- Transient menu for activities  -*- lexical-binding: t; -*-

;; Copyright (C) 2025  Free Software Foundation, Inc.

;; Author: Le Wang <lewang.dev.26@gmail.com>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; This library provides a transient menu for activities commands.

;;; Code:

;;;; Requirements

(require 'transient)

;;;###autoload (autoload 'activities-transient "activities-transient" nil t)
(transient-define-prefix activities-transient ()
  "Activities menu.
C-u modifies some commands:
  define: redefine existing activity's default state
  resume: reset to default state instead of last"
  ["Create & Define"
   ("n" "New (empty)" activities-new)
   ("d" "Define (C-u: redefine default)" activities-define)]
  ["Switch & Resume"
   ("a" "Resume (C-u: reset to default)" activities-resume)
   ("RET" "Switch (active)" activities-switch)
   ("b" "Switch buffer" activities-switch-buffer)]
  ["Modify"
   ("g" "Revert to default" activities-revert)
   ("R" "Rename" activities-rename)]
  ["Close"
   ("s" "Suspend (save & close)" activities-suspend)
   ("k" "Kill (discard last & close)" activities-kill)
   ("X" "Discard (permanent)" activities-discard)]
  ["Other"
   ("S" "Save all" activities-save-all)
   ("l" "List" activities-list)])

(provide 'activities-transient)

;;; activities-transient.el ends here
