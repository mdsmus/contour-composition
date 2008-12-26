\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff \with {
    \remove "Time_signature_engraver"
    \remove "Bar_number_engraver"
  }{
      \override Stem #'transparent = ##t
      \relative c'''' {
        \time 11/4
        \bracketUp
        g4\startGroup^\markup{Octatonic scale} fis e dis cis c bes a g4 fis e\stopGroup \bar "||"
        \time 6/4
        \break
        g'\startGroup^\markup{Choosen notes} e cis bes g e\stopGroup \bar "||"
        g'\startGroup^\markup{Contour} cis, e g, bes e,\stopGroup \bar "||"
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}
\paper {
  paper-width = 13.6\cm
  paper-height = 5.3\cm
  line-width = 13.5\cm
  top-margin = -.2\cm
  left-margin = .1\cm
  bottom-margin = -2\cm
  tagline = 0
  indent = #0
  print-page-number = #'nil
}