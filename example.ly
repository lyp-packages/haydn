% Example code by Abraham Lee:
%   https://sites.google.com/site/tisimst/Home/custom-font-how-to

\version "2.18.2"

\pinclude "./package.ly"
\useHaydnStyleSheet

\paper {
  indent = 0\mm
  line-width = 110\mm
  oddHeaderMarkup = ""
  evenHeaderMarkup = ""
  oddFooterMarkup = ""
  evenFooterMarkup = ""
}

\language "english"

sffz = #(make-dynamic-script "sffz")
pf = #(make-dynamic-script "pf")

sampleMusic = \relative c'' {
  \autoBeamOff
  a4\sffz \startTrillSpan bf8-3 \pp ( \stopTrillSpan
  cs16\prallprall <c! e,>32\accent \arpeggio )
  \bar "||"
  \key ef \major
  \clef bass
  g,-^
  \acciaccatura f8 ef2_\espressivo
  \time 6/8
  <<
    {
      \arpeggioArrowDown <f, c' ef g>2.-\downbow \arpeggio \mp
    }\\{
      s2 fs8^\upbow g^\upmordent\pf
    }
  >>
}

\score {
  {
    \sampleMusic
  }
  \layout {}
}
