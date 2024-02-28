# zig-linux-kernel-module

This project demonstrates writing a "hello world" Linux kernel module entirely in Zig.
The code serves solely as a proof of concept and the result is likely not ready for production.

## Notes on building

Use `make` to build the kernel module. The build.zig file is just for integration with zls.  
You may need to `touch src/.hellokernelfromzig.o.cmd` for whatever reason in order to build this successfully.

## License

This project is licensed under the GPL-2.0-only SPDX identifier.
