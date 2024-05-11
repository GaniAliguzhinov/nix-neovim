local k = vim.keymap

--[[
Modes:
1. n: Normal mode: When typing commands
2. v: Visual mode: When typing commands while the Visual area is highlighted
3. s: Select mode: Like visual mode, but typing text replaces the selection
4. o: Operator-pending mode: When an operator is pending (after "d", "y", "c", etc.)
5. i: Insert mode. These are also used in Replace mode
6. c: Command-line mode: When entering a ":" or "/" command
7. t: Terminal mode: When typing a :terminal buffer
]]

k.set({'n'}, ';', ':')
