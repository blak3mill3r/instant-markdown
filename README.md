# instant-markdown.el

### instant (github-flavored) markdown previewing for Emacs

-------

This package integrates emacs with [instant-markdown-d]( https://github.com/suan/instant-markdown-d ), because saving the markdown file all the time is for suckers.

It's the emacs analogue of [vim-instant-markdown]( https://github.com/suan/vim-instant-markdown ) that you were hoping to find. I know I was.

That means you get to watch your github-flavored-markdown in a browser live-update as you type.

-----------



# Install

This is brand new and it's not on ELPA yet. I personally use Cask. You're on your own until I write more here. You'll probably want to `(require 'instant-markdown)`


# Usage

With a markdown file open in a buffer, just call the interactive function `instant-md-start`. That will start instant-markdown-d and open a browser. That's all you need.

If you want it to happen automatically when you open a markdown file:

```lisp
TODO
```

#### License

MIT

#### Author

Blake Miller

*this is my first published emacs plugin*

*comments are welcome*