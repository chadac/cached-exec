# cached-exec

Basic bash script to run commands with a cache.

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
