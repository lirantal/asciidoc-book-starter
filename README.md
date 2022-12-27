# AsciiDoc Book Starter

This is a template repository for authoring books using AsciiDoc.

I've briefly explored other formats such as Markdown, Latex, and Pandoc but I've found AsciiDoc to be the most flexible and powerful format for authoring books. It is easily readable and writable to a human, has a lax syntax and good set of defaults for authoring books, and it can be easily converted to other formats such as PDF, EPUB and HTML.

AsciiDoc is also a very powerful format for authoring technical documentation, and is widely used in the media and content publishing industry, such as in O'Reilly's books.

## Basics of AsciiDoc and Writing

An important observation to get started when authoring a book with AsciiDoc is the notion of the language vs the implementations. AsciiDoc is a language that's intended to be a lightweight semantic markup. To generate output from AsciiDoc we use text processor tools such as [Asciidoctor](https://asciidoctor.org/), which is free and open source.

Get up to date with the latest AsciiDoc syntax and features by reading the [AsciiDoc User Guide](https://asciidoctor.org/docs/asciidoc-writers-guide/).

## Features

Book authoring experience provides the following features with this repository:
- Table of Contents (TOC) generation.
- Template prelude chapters: A `Preface`, and a `Forward`.
- Template chapters with commonly used formatting in books.
- Chapters are structured into their own chapter directories so they can be co-located with their images and other assets, such as code snippets.
- A PDF output that uses a theme, and can be customized.
- A PDF output that uses custom fonts (Google's open fonts family). Specifically, an `Open Sans` font for the body text, and a `Source Code Pro` font for source code snippets and inline code.

Book generation:
- No need for a local installation of Asciidoctor, as the book generation is done via Docker.
- No need for special CI setup, as the book generation is done via Docker.
- Docker-based scripts to generate the book in various formats, including PDF, HTML and EPUB.

## Getting Started

TBD

## Building the book

TBD

## Assets

TBD

## Author

Liran Tal <liran@lirantal.com>