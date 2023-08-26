#import "@local/ghp:1.0.0": *
#show: project.with(title: "Introduction")
#set text(font: "Droid Serif")

#let data = json("data.json")
= Welcome new user!

In this docs you will find how the website works.
On the left side, you will see all the topics you need to know to use this webside

= Contribution

This document is generate from #link("https://github.com/thumuslive/docs.thumus.eu")[docs.thumus.eu] github. 

If you have an issue, don't hesitate to send it to #link("https://github.com/thumuslive/docs.thumus.eu/issues")[my github]

This is my first real project so be indulgent with me please #emoji.hands.folded

= Thanks

First, a big thank you to #link("https://github.com/Myriad-Dreamin")[Myriad-Dreamin], for creating #link("https://github.com/Myriad-Dreamin/typst-book")[typst-book] with his contributors, the tool that I use to make these docs. And a big thanks to all contributors of #link("https://github.com/typst/typst")[typst], the language that I use here

#if data.firstTime [
    = First time usage
    If you see this text, it means it's the first time you use my project.
    To make this text diseapear, you need to rebuild the docs with firstTime on false.

    It's a copy past from the part of README.md in the docs repository

    \ 
    #align(center)[#line(length: 80%)]
    \ 

    TODO
]