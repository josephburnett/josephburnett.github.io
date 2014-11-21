---
layout: post
title: "Clarity"
icon: C1
---


>"Anything that can be thought can be thought clearly.  Anything that can be
> written can be written clearly."

The term "Turing complete" means that a programming language can express anything which can be calculated.  Anything that can be coded can be coded in a Turing complete language.  But can it be coded clearly?  I think yes.

Who are we trying to be clear to?  In computer programming there are two audiences, the machine and the programmer.  Programming is different from writing in this way; writing has only one audience, the human reader.  The computer must understand its instructions--there is no room for ambiguity.  What is written must *work*.  It doesn't have to be correct, but it must be legible to the computer.  The second audience is what this essay is concerned with, the human reader.  The fellow programmer.  

Any program worth making must also be maintained.  And it won't be computers that maintain it.  The source code of a program must contain sufficient information to tell other programmers what the intent of the code is.  And hopefully to do it clearly.  Believe me, it's *very* painful to maintain a program that is not written clearly.  

In addition to making programs maintainable, clarity in code serves to create clarity in thought.  Forethought and good design are essential to building large systems.  

> the biggest problems in software are problems of misconception, and that all the guardrails we use (type systems, test-driven development, etc) can't help us find those kinds of problems
> -- probably Rich Hickey in Hammock Driven Development




In most large organizations the code is written by another developer, in which case it's like editing someone else's work.  If it's garbage, you have to clean it up.  So clarity really matters here.  But how?

The power of a declarative programming language is it's ability to hide the first audience, the computer.  When the language is closely matched with the problem domain expressing a program is more about "telling" a human what the intent is.  (example here)

What makes for clear, readable code?  Many of the same things that make for clear, readable writing.  Short




> "Have something to say.  Say it as clearly as possible."

This is an excellent principle for good communication.  And code is communication.  



This is true about programming as well as writing in natural language.  

Writing and coding share the same creative process of draft and
revision.  The writer and the programmer are responsible for providing
clarity for their readers and for their own thoughts.

Writing

When writing computer code, the idea is first and foremost.  There is some need
and you have an idea about how to meet it.  There is a thing that you want to do
which you must express to the computer correctly.  But you must also be clear in
your mind about what the meaning -- the semantics -- of your solution is.  And you must
be clear in communicating your idea to your fellow programmer and your future
self in the source code of your writing.  It is not sufficient to have something
that works.  It must also be expressed clearly.

What does it mean to express something clearly in source code?  First, you must
know your reader.  The context in which your code will be
read by a human is important.  Many of the strategies for clarity in writing apply
also to programming, such as preferring shorter words to longer words.  In
programming there are some paradigms of style that help the reader to understand
the meaning of the code.  Such as a declarative style in which the programmer
makes a series of statements about what things are and what is true.

Programming in a functional style prefers building small ideas which will always
be true because side-effects are not allowed.  And then building the bigger idea
from smaller ones.  This is a style more like a mathematical proof.  Sometimes
good for you audience, somes not.

But expressing your idea to a human reader is only part of the need for clarity.
Most importantly clarity of writing brings clarity of thought.

>"..."

Can it be done?

I say anything that can be coded can be coded clearly.  Call it the Turing
completeness of clarity.
