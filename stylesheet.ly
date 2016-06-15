\paper {
  #(define fonts
    (set-global-fonts
      #:music "haydn"
      #:brace "haydn"
      #:factor (/ staff-height pt 20)
  ))
}

\layout {
  \context {
    \Staff
    \override Beam #'beam-thickness = #0.7
    \override Beam #'length-fraction = #1.2
    \override Tie #'thickness = #3
    \override Slur #'thickness = #3
    \override PhrasingSlur #'thickness = #3
  }
}
