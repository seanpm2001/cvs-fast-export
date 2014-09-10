#!/usr/bin/env python
## First example from the Hacking Guide

import testlifter

repo = testlifter.CVSRepository("hack1.repo")
repo.init()
repo.module("hack1")
co = repo.checkout("hack1", "hack1.checkout")

co.write("foo.c", "The quick brown fox jumped over the lazy dog.\n")
co.add("foo.c")
co.write("bar.c", "Not an obfuscated C contest entry.\n")
co.add("bar.c")
co.commit("First commit")

co.write("bar.c", "The world will little note, nor long remember...\n")
co.commit("Second commit")

co.write("foo.c", "And now for something completely different.\n")
co.write("bar.c", "One is dead, one is mad, and I have forgotten.\n")
co.commit("Third commit")

repo.cleanup()

# end
