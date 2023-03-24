


Breakpoint on syscall:
```bash
-exec catch syscall mmap
# -exec catch syscall write
# -exec catch syscall bpf
-exec catch syscall 321
```

```bash
-exec catch syscall
Catchpoint 3 (any syscall)
-exec condition 3 !$_any_caller_matches("get_kernel_version|kernel_supports|bpf_object__probe_loading|btf_parse_raw", 20)
```

```bash
-exec delete 3
```