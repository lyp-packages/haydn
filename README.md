# Haydn: A font package for lilypond

<p align="center">
  <a href="./example.ly">
  <img
    src="https://raw.githubusercontent.com/lyp-packages/haydn/master/example.png">
  </a>
</p>

This package provides the Haydn font for lilypond, created by [Abraham Lee](https://github.com/tisimst), found in  [OpenLilypondFonts](https://github.com/OpenLilypondFonts) and repackaged for usage as a lyp package@.

## Installation

Install using [lyp](https://github.com/noteflakes/lyp):

```bash
$ lyp install haydn
```

## Usage

```lilypond
\require "haydn"

% Use Haydn font and apply associated stylesheet
\useHaydnStyleSheet

% To use font only:
#(set-global-staff-size 16)  % this MUST go PRIOR to defining the fonts!!!
\paper {
  #(define fonts
    (set-global-fonts
      #:music "haydn"
      #:brace "haydn"
      #:factor (/ staff-height pt 20)
  ))
}
```

Also see the included [example](./example.ly).

## Compatibility with Lilypond versions

This font is known to work in Lilypond version 2.18.2 or later.

FONTLOG for the Haydn font
--------------------------

This file provides detailed information on the Haydn Font Software. This information should be
distributed along with the Haydn fonts and any derivative works.

Basic font information
----------------------

Haydn is a typeface designed by Abraham Lee to resemble a style of music publishing by famous
publishers such as Edition Peters. The glyph set comes from various original scores. This font
software is not designed for use in a word-processing application, although all the glyphs may
be accessed at their respective Unicode points. It was originally designed for use with
LilyPond, the automatic music engraver.

More information about LilyPond can be found at:

http://www.lilypond.org/

Changelog
---------

30 July 2014 (Abraham Lee) Haydn version 1.0
- Initial design to be compatible with LilyPond 2.18.2.

25 October 2014 (Abraham Lee) Haydn version 1.0
- Added WOFF font file support and added piano brace font in OTF, SVG, and WOFF formats

28 April 2015 (Abraham Lee) Haydn version 1.1
- Fixed right-side-bearing of tie.lyric.short and tie.lyric.default to zero-width to improve spacing
