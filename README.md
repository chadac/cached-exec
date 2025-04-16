# cached-exec

Basic bash script to run commands only when a reference set of files has changed.

`cached-exec` simply runs the command; `cached-eval` stores the result and will
print it from the cache if nothing has changed.

tl;dr

```bash
> touch myfile.txt

# first invocation will execute the command
> cached-exec myfile.txt -- echo hello
hello

# next invocation will skip executing the command
> cached-exec myfile.txt -- echo hello

# same wil cached-eval
> cached-eval myfile.txt -- echo hello
hello

# next invocation pulls the output of the command from the cache
> cached-eval myfile.txt -- echo hello
hello
```

## Usage

```bash
> cached-exec --help
usage: cached-exec [-f | --force] <files>... -- <command>

Runs a command if a set of source files has changed.

OPTIONS
       <files>...
            Set of files to use for controlling the cache.
       <command>
            Command to execute.
        -f, --force
            If specified, forces rerunning the command and updates the cache.
```

```bash
> cached-eval --help
usage: cached-eval [-f | --force] <files>... -- <command>

Runs a command if a set of source files has changed, and stores
the output of the command in the cache.

If you need to preserve output, use this command.

OPTIONS
       <files>...
            Set of files to use for controlling the cache.
       <command>
            Command to execute.
        -f, --force
            If specified, forces rerunning the command and updates the cache.
```
