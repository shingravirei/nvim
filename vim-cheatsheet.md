# My vim Cheatsheet

### Basic Navigation

- `w` - jump start words
- `e` - jump end words
- `b` - jump back words
- `$` - go EOL
- `H` - jump to TOP
- `M` - jump to MID
- `L` - jump to BOT
- `zz` - cursor line to MID
- `zt` - cursor line to TOP
- `zb` - cursor line to BOT
- `gd` - go to definition
- `<c-o>` - go back

### Buffer manipulation

- `:Delete` - delete buffer and file
- `:Unlink` - same as above, but keeps an empty buffer
- `:Wall` - write all windows

### Selection

- `v` - visual mode LINES
- `<c-v>` - visual mode BLOCKS
- `c` - cut selection and insert
- `y` - yank selection
- `yy` - yank entire line

### Word and General Manipulation

- `ciw` - change inner word
- `cib` - change inner block
- `ci)` - change inner paren
- `*cw {new word} <esc> n .` | `*cgn` - change word occurrences
- `cs"'` - change surroundings
- `ds"` - remove pairs
- `yss"` - surround whole line
- `S"` - {in visual mode} surround whole selection
- `<leader>c<leader>` - toggle comment
- `<leader>ca<leader>` - toggle comment alternative
