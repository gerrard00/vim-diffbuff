# Vim DiffBuff

Vim is great at diffing things, but they have to be in *ahem* different buffers. This plugin helps you to diff two halves of the same buffer.

1. Place your cursor on the line that starts the second half of the buffer.

```
SELECT *
FROM people
WHERE first_name = 'Malcolm';
SELECT * <put your cursor on this line>
FROM people
WHERE first_name = 'Zoe';
```

2. Run `:DiffBuff`

A new tab will open with two scratch buffers set to diff mode.

Here are some fancy screenshots:

![Before](https://gerrard00.github.io/vim-diffbuff/screenshot-buffer-to-diff-small.png)

![After](https://gerrard00.github.io/vim-diffbuff/screenshot-diffed-small.png)

Yes, this is super specific to my workflow.
