```bash
make clean && reset && make SHELL="/bin/bash -x" --debug=bvi 2>&1 | tee -a make.log
```

```bash
sudo apt install binutils-bpf
```


```bash
clang -g -O0 -target bpf -D__TARGET_ARCH_x86 -I.output -I../../libbpf/include/uapi -I../../vmlinux/x86/ -idirafter /usr/lib/llvm-14/lib/clang/14.0.0/include -idirafter /usr/local/include -idirafter /usr/include/x86_64-linux-gnu -idirafter /usr/include -c minimal.bpf.c -o /home/labile/opensource/libbpf-bootstrap/examples/c/docs/minimal.bpf.o0.o

bpf-objdump  -S --disassemble /home/labile/opensource/libbpf-bootstrap/examples/c/docs/minimal.bpf.o0.o

clang -g -O2 -target bpf -D__TARGET_ARCH_x86 -I.output -I../../libbpf/include/uapi -I../../vmlinux/x86/ -idirafter /usr/lib/llvm-14/lib/clang/14.0.0/include -idirafter /usr/local/include -idirafter /usr/include/x86_64-linux-gnu -idirafter /usr/include minimal.bpf.c -E > /home/labile/opensource/libbpf-bootstrap/examples/c/docs/minimal.bpf.after_preprocessor.c

clang -g -fverbose-asm -O0 -target bpf -D__TARGET_ARCH_x86 -I.output -I../../libbpf/include/uapi -I../../vmlinux/x86/ -idirafter /usr/lib/llvm-14/lib/clang/14.0.0/include -idirafter /usr/local/include -idirafter /usr/include/x86_64-linux-gnu -idirafter /usr/include -S -o /home/labile/opensource/libbpf-bootstrap/examples/c/docs/minimal.bpf.after_preprocessor.asm  minimal.bpf.c

 > /home/labile/opensource/libbpf-bootstrap/examples/c/docs/minimal.bpf.after_preprocessor.asm

gcc -E file.c
```