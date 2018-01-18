; See https://emacs.stackexchange.com/questions/33318/export-org-mode-subtrees-at-chapter-level-for-latex
(with-eval-after-load 'org
  (add-to-list 'org-latex-classes
               '("book_noparts" "\\documentclass{book}"
                 ("\\chapter{%s}" . "\\chapter*{%s}")
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))
