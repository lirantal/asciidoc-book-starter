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

We start off by getting familiar with the repository structure and the various files that are part of it.

The top-level directory structure looks like this:

```
.
├── README.md
├── book
│   ├── chapter-01.adoc
│   ├── preface.adoc
│   ├── foreword.adoc
│   ├── index.adoc
│   ├── fonts/
│   ├── images/
│   └── themes/
├── create-book-epub.sh
├── create-book-pdf.sh
└── interactive-asciidoctor-shell.sh
```

The `book` directory is where the book content is stored:
- The `index.adoc` file is the main entry point for the book, and it's where we include all the other chapters and prelude chapters.
- The `images/` directory is where you can store images that are used in the book.
- The `chapter-01.adoc` is an example chapter that you can use as a template for your own chapters.
- In the same directory, you'll find the theme-able PDF `themes` directory, and the `fonts` directory which contains the fonts used in the book.

## Building the book

### Building the book locally

To build the book locally, you'll need to have Docker installed on your machine. Once you have Docker installed, you can run the following command to build the book in PDF format:

```bash
./create-book-pdf.sh
```

Then you can find the generated PDF file in the `book` directory. If you're on a macOS, you can open it with your default PDF reader as follows:

```bash
open book/index.pdf
```

## Assets

TBD

## Author

Liran Tal <liran@lirantal.com>