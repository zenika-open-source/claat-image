summary: Write a codelab with Google codelab tool suite
id: docs
categories: Meta
tags: beginner
status: Published 
authors: Benjamin Petetot
Feedback Link: https://petetot.netlify.com

# Write a codelab with Google codelab tool suite
<!-- ------------------------ -->
## Overview 
Duration: 1

### What You’ll Learn 
- How to write the codelab with markdown.
- How to generate the HTML static files.
- How to deploy it.

### Prerequisites
- Docker

<!-- ------------------------ -->
## Write with markdown
Duration: 5

Create a file named `my-codelab.md`. Open this file with your favorite editor (most of them have Markdown syntax hightlighting)

On the top of the file, add some metadata about the codelab (id, summary, category, authors, etc.)

Then use Markdown `heading` levels to defined the codelab structure and the different steps.

You can find the [complete Codelab Formatting Guide](https://github.com/googlecodelabs/tools/blob/master/FORMAT-GUIDE.md) explaining a codelab structure in markdown.

Lot of features are available, you can:
- add code snippets
- use hyperlinks
- embed images

<!-- ------------------------ -->
## Generate HTML
Duration: 5

We will use claat (Codelabs as a Thing) to generate HTML files from our Markdown file.
To avoid installing `Go`, I made a light docker image to use claat.

First install the image:
```docker
docker pull bpetetot/claat
```

Execute claat:
```docker
docker container run -it -v $(pwd):/app bpetetot/claat export my-codelab.md
```

**You now have generate the codelab as HTML.**

<!-- ------------------------ -->
## Deploy it
Duration: 1

Now you have a full HTML static codelab, you can deploy it with your hosting provider:
- GitHub pages
- Netlify
- Now.sh
- Firebase hosting