# How To Build and Deploy a Zig application with Docker

**Zig makes Docker.** You probably do not need a Docker image to build your Zig application, and you definitely do not need this one.

## Usage


```bash
docker build -t ziglang .
```

```bash
docker run -it --rm ziglang
```

Go to the application directory and use zig in docker to build and run your application. For example. Create a [hello-world](https://ziglang.org/documentation/master/#Hello-World) program and run it with docker.
```bash
echo '
const std = @import("std");

pub fn main() void {
    std.debug.print("Hello, world!\n", .{});
}
' > hello.zig
```
Now, run your `hello-world` program.
```bash
docker run -it --rm -v $PWD:/opt/app ziglang zig run hello.zig
```