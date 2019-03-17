# vi/vim - A brief introduction

# Getting Started

Vi is a terminal application, so you’ll have to start it from a terminal window. 
Use the vi /path/to/file command to open an existing file with Vi. The vi /path/to/file 
command also works if the file doesn’t exist yet; Vi will create a new file and write it
to the specified location when you save.

Remember to use sudo if you want to edit a system file. So, for example, you’d type sudo
vi /etc/fstab if you wanted to edit your fstab file. Use the su command instead if you’re
using a non-Ubuntu version of Linux that doesn’t use sudo.

# Command Mode

This is what you’ll see when you open a file in vi. It looks like you can just start 
typing, but you can’t. Vi is a modal text editor, and it opens in command mode. Trying to 
type at this screen will result in unexpected behavior.
While in command mode, you can move the cursor around with the arrow keys. Press the x key
to delete the character under the cursor. There are a variety of other delete commands — 
for example, typing dd (press the d key twice) deletes an entire line of text.

You can select, copy, cut and paste text in command mode. Position the cursor at the left or
right side of the text you want to copy and press the v key. Move your cursor to select text, 
and then press y to copy the selected text or x to cut it. Position your cursor at the 
desired location and press the p key to paste the text you copied or cut.

# Insert Mode

Aside from command mode, the other mode you need to know about is insert mode, which allows you
to insert text in Vi. Entering insert mode is easy once you know it exists — just press the i key 
once after you’ve positioned the cursor in command mode. Start typing and Vi will insert the 
characters you type into the file rather than trying to interpret them as commands.
Once you’re done in insert mode, press the escape key to return to command mode.

# Saving and Quitting

You can save and quit vi from command mode. First, ensure you’re in command mode by pressing the 
escape key (pressing the escape key again does nothing if you’re already in command mode.)
Type :wq and press enter to write the file to disk and quit vi. You can also split this command up 
— for example, type :w and press enter to write the file to disk without quitting or type :q to 
quit vi without saving the file. Vi won’t let you quit if you’ve modified the file since you last saved, 
but you can type :q! and press enter to ignore this warning.

# Mode Switching

As a short recap, vi is a modal editor – there’s an insert mode and a standard command mode. 
In insert mode, vi functions similar to a normal text editor. 
In command mode, you take advantage of these key bindings.

    `i`       – Enter insert mode.
    `Escape`  – Leave insert mode. If you’re already in command mode, Escape does nothing, so you can 
                press Escape to ensure you’re in command mode.


# Moving the Cursor

Vi uses the hjkl keys to move the cursor in command mode. Early computer systems didn’t always have arrow keys, so these keys were used instead. One advantage of these keyboard shortcuts is that you don’t have to move your fingers from the home row to use them.

    h – Move cursor left.
    j – Move cursor down.
    k – Move cursor up.
    l – Move cursor right.

You can also use search commands to quickly move the cursor.

    / – Type a / followed by some text you want to find and press Enter to quickly move your cursor to the location of the text in the file. For example, if you have the word iguana in your file, type /iguana and press Enter to quickly move the cursor there.
    ? – Like /, but searches backwards.
    f – Type an f followed by any character to quickly move the cursor to the next occurrence of the character on the current line. For example, if you have the line “Hello world” on a line and your cursor is at the beginning of the line, type fo to move to the o in Hello. Type fo again to move to the o in world.
    F – Like f, but searches backwards.
    % – Jump between the nearest (), [], or {} characters on the line.

Use these commands to quickly move to locations in the file:

    H – Move cursor to highest (top) line in file.
    M – Move cursor to middle line in file.
    L – Move cursor to lowest (bottom) line in file.
    #G – Type a number and then type G to go to that line in the file. For example, type 4G and press Enter to move to the fourth line in the file.

Moving between words:

    w – Move forward a word.
    #w – Move forward a number of words. For example, 2w moves forward two words.
    b – Move back a word.
    #b – Move back a number of words. For example, 3b moves back three words.
    e – Move to end of the current word.

# Copying & Pasting

Vi refers to the act of copying as “yanking.”

    v – Press v and move the cursor to select a section of text.
    y – Copy (yank) the selected text.
    p – Paste at cursor.
    x – Cuts the selected text. Cuts the character under the cursor if no text is selected
    r – Type r and then type another character to replace the character under the cursor.

# Combining Commands

Some commands – including the y and v commands above and the d (delete) command accept cursor motion commands.

For example, when you press d to delete some text, nothing will happen until you enter a cursor motion command. For example:

    dw – Deletes the next word.
    db – Deletes the previous word
    de – Deletes to the end of the current word.
    dL – Deletes all text below the cursor in the file.
    d/unicorn – After pressing Enter, deletes all text between the cursor and the word “unicorn” in the current file.
    dd – Deletes an entire line.

As you can see, the combination of combining a command with a cursor movement command is very powerful.

# Repeat & Undo

Vi’s repeat command is very powerful, as it can repeat complex, combined commands.

    u – Undo.
    . – The . repeats the last full command.  The insert command also functions as a command here. For example, type iunicorn and press Escape. You can then use the . key to insert the word unicorn at the cursor.

# Using Vi Key Bindings in Bash

Once you’ve mastered the vi key bindings, you may want to use them elsewhere on your system. 
No problem – you can set the Bash shell to use vi-style key bindings.
By default, bash uses emacs-style keys. If you’re more used to the vi text editor, 
you can switch to vi-style keyboard shortcuts.

The following command will put bash into vi mode:

`set -o vi`

Bash will start in insert mode – press Escape to enter command mode and use these key bindings.
If you like this, you can add the command to your ~/.bashrc file and it will be automatically 
run each time you log in. Use the vi .bashrc command to open and edit the file in vi.

The following command will put bash back into the default emacs mode:

`set -o emacs`

