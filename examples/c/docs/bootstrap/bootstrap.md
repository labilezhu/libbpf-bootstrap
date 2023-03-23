

```bash
clang -g -O2 -target bpf -D__TARGET_ARCH_x86 -I.output -I../../libbpf/include/uapi -I../../vmlinux/x86/ -idirafter /usr/lib/llvm-14/lib/clang/14.0.0/include -idirafter /usr/local/include -idirafter /usr/include/x86_64-linux-gnu -idirafter /usr/include bootstrap.bpf.c -E > /home/labile/opensource/libbpf-bootstrap/examples/c/docs/bootstrap/bootstrap.bpf.after_preprocessor.c
```