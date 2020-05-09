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
