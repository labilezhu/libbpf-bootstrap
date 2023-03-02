

```bash
#disable ASLR
echo 0 | sudo tee /proc/sys/kernel/randomize_va_space
# or 
setarch `uname -m` -R ./yourProgram

#enable ASLR
echo 2 | sudo tee /proc/sys/kernel/randomize_va_space
```



```log
readelf -a -W /home/labile/opensource/libbpf-bootstrap/examples/c/minimal | less

Section Headers:
Section Headers:
  [Nr] Name              Type            Address          Off    Size   ES Flg Lk Inf Al
  [ 0]                   NULL            0000000000000000 000000 000000 00      0   0  0
  [ 1] .interp           PROGBITS        0000000000000318 000318 00001c 00   A  0   0  1
  [ 6] .dynsym           DYNSYM          00000000000003d8 0003d8 000a08 18   A  7   1  8
  [ 7] .dynstr           STRTAB          0000000000000de0 000de0 00050c 00   A  0   0  1
  [10] .rela.dyn         RELA            0000000000001508 001508 002958 18   A  6   0  8
  [11] .rela.plt         RELA            0000000000003e60 003e60 000960 18  AI  6  25  8
  [12] .init             PROGBITS        0000000000005000 005000 00001b 00  AX  0   0  4
  [13] .plt              PROGBITS        0000000000005020 005020 000650 10  AX  0   0 16
  [16] .text             PROGBITS        0000000000005cc0 005cc0 02a9e9 00  AX  0   0 16
  [17] .fini             PROGBITS        00000000000306ac 0306ac 00000d 00  AX  0   0  4
  [18] .rodata           PROGBITS        0000000000031000 031000<-- 00ac49 00   A  0   0 32
  [19] .eh_frame_hdr     PROGBITS        000000000003bc4c 03bc4c 00109c 00   A  0   0  4
  [20] .eh_frame         PROGBITS        000000000003cce8 03cce8 0069cc 00   A  0   0  8
  [21] .init_array       INIT_ARRAY      0000000000045190 044190 000008 08  WA  0   0  8
  [22] .fini_array       FINI_ARRAY      0000000000045198 044198 000008 08  WA  0   0  8
  [23] .data.rel.ro      PROGBITS        00000000000451a0 0441a0 0018d8 00  WA  0   0 32
  [24] .dynamic          DYNAMIC         0000000000046a78 045a78 000210 10  WA  7   0  8
  [25] .got              PROGBITS        0000000000046c88 045c88 000360 08  WA  0   0  8
  [26] .data             PROGBITS        0000000000047000 046000 0001f8 00  WA  0   0 32
  [27] .bss              NOBITS          0000000000047200 0461f8 0000a0 00  WA  0   0 32


Program Headers:
  Type           Offset   VirtAddr           PhysAddr           FileSiz  MemSiz   Flg Align
  PHDR           0x000040 0x0000000000000040 0x0000000000000040 0x0002d8 0x0002d8 R   0x8
  INTERP         0x000318 0x0000000000000318 0x0000000000000318 0x00001c 0x00001c R   0x1
      [Requesting program interpreter: /lib64/ld-linux-x86-64.so.2]
  LOAD           0x000000 0x0000000000000000 0x0000000000000000 0x0047c0 0x0047c0 R   0x1000
  LOAD           0x005000 0x0000000000005000 0x0000000000005000 0x02b6b9 0x02b6b9 R E 0x1000
  LOAD           0x 031000<-- 0x0000000000031000 0x0000000000031000 0x0126b4 0x0126b4 R   0x1000


 Section to Segment mapping:
  Segment Sections...
   00     
   01     .interp 
   02     .interp .note.gnu.property .note.gnu.build-id .note.ABI-tag .gnu.hash .dynsym .dynstr .gnu.version .gnu.version_r .rela.dyn .rela.plt 
   03     .init .plt .plt.got .plt.sec .text .fini 
   04     .rodata<-- .eh_frame_hdr .eh_frame 


```


```log
sudo pmap -XX  `pgrep minimal`

8258:   /home/labile/opensource/libbpf-bootstrap/examples/c/minimal
   Address Perm   Offset Device    Inode Size KernelPageSize MMUPageSize  Rss Pss Shared_Clean Shared_Dirty Private_Clean Private_Dirty Referenced Anonymous LazyFree AnonHugePages ShmemPmdMapped FilePmdMapped Shared_Hugetlb Private_Hugetlb Swap SwapPss Locked THPeligible   VmFlags Mapping
    555555554000 r--p 00000000  08:12 11696645   20   44   20  20 0 0 20  0   20   0  0  0   0  0   0    0    0 000 rd mr mw me sd minimal
    555555559000 r-xp 00005000  08:12 11696645  176   44  148 148 0 0116 32  148  32  0  0   0  0   0    0    0 000    rd ex mr mw me sd minimal
    555555585000 r--p 00031000<--  08:12 11696645   76   44    0   0 0 0  0  0    0   0  0  0   0  0   0    0    0 000 rd mr mw me sd minimal<--



```


```log
bpf_object_skeleton->data 
0x555555585040
```

## bpf ELF

```log
readelf -aW /home/labile/opensource/libbpf-bootstrap/examples/c/.output/minimal.bpf.o

Section Headers:
  [Nr] Name              Type            Address          Off    Size   ES Flg Lk Inf Al
  [ 0]                   NULL            0000000000000000 000000 000000 00      0   0  0
  [ 1] .strtab           STRTAB          0000000000000000 00055b 0000a2 00      0   0  1
  [ 2] .text             PROGBITS        0000000000000000 000040 000000 00  AX  0   0  4
  [ 3] tp/syscalls/sys_enter_write PROGBITS        0000000000000000 000040 000068 00  AX  0   0  8
  [ 4] .reltp/syscalls/sys_enter_write REL             0000000000000000 000498 000020 10   I 13   3  8
  [ 5] license           PROGBITS        0000000000000000 0000a8 00000d 00  WA  0   0  1
  [ 6] .bss              NOBITS          0000000000000000 0000b8 000004 00  WA  0   0  4
  [ 7] .rodata           PROGBITS        0000000000000000 0000b8 00001c 00   A  0   0  1
  [ 8] .BTF              PROGBITS        0000000000000000 0000d4 00025d 00      0   0  4
  [ 9] .rel.BTF          REL             0000000000000000 0004b8 000030 10   I 13   8  8
  [10] .BTF.ext          PROGBITS        0000000000000000 000334 0000a0 00      0   0  4
  [11] .rel.BTF.ext      REL             0000000000000000 0004e8 000070 10   I 13  10  8
  [12] .llvm_addrsig     LOOS+0xfff4c03  0000000000000000 000558 000003 00   E  0   0  1
  [13] .symtab           SYMTAB          0000000000000000 0003d8 0000c0 18      1   5  8
Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings), I (info),
  L (link order), O (extra OS processing required), G (group), T (TLS),
  C (compressed), x (unknown), o (OS specific), E (exclude),
  D (mbind), p (processor specific)

There are no section groups in this file.

There are no program headers in this file.

There is no dynamic section in this file.

Relocation section '.reltp/syscalls/sys_enter_write' at offset 0x498 contains 2 entries:
    Offset             Info             Type               Symbol's Value  Symbol's Name
0000000000000010  0000000600000001 R_BPF_INSN_64          0000000000000000 my_pid
0000000000000030  0000000400000001 R_BPF_INSN_64          0000000000000000 .rodata

Relocation section '.rel.BTF' at offset 0x4b8 contains 3 entries:
    Offset             Info             Type               Symbol's Value  Symbol's Name
00000000000000f0  0000000600000004 R_BPF_INSN_DISP16      0000000000000000 my_pid
0000000000000108  0000000400000003 R_BPF_INSN_16          0000000000000000 .rodata
0000000000000120  0000000700000004 R_BPF_INSN_DISP16      0000000000000000 LICENSE

Relocation section '.rel.BTF.ext' at offset 0x4e8 contains 7 entries:
    Offset             Info             Type               Symbol's Value  Symbol's Name
000000000000002c  0000000100000004 R_BPF_INSN_DISP16      0000000000000000 tp/syscalls/sys_enter_write
0000000000000040  0000000100000004 R_BPF_INSN_DISP16      0000000000000000 tp/syscalls/sys_enter_write
0000000000000050  0000000100000004 R_BPF_INSN_DISP16      0000000000000000 tp/syscalls/sys_enter_write
0000000000000060  0000000100000004 R_BPF_INSN_DISP16      0000000000000000 tp/syscalls/sys_enter_write
0000000000000070  0000000100000004 R_BPF_INSN_DISP16      0000000000000000 tp/syscalls/sys_enter_write
0000000000000080  0000000100000004 R_BPF_INSN_DISP16      0000000000000000 tp/syscalls/sys_enter_write
0000000000000090  0000000100000004 R_BPF_INSN_DISP16      0000000000000000 tp/syscalls/sys_enter_write

The decoding of unwind sections for machine type Linux BPF is not currently supported.

Symbol table '.symtab' contains 8 entries:
   Num:    Value          Size Type    Bind   Vis      Ndx Name
     0: 0000000000000000     0 NOTYPE  LOCAL  DEFAULT  UND 
     1: 0000000000000000     0 SECTION LOCAL  DEFAULT    3 tp/syscalls/sys_enter_write
     2: 0000000000000058     0 NOTYPE  LOCAL  DEFAULT    3 LBB0_2
     3: 0000000000000000    28 OBJECT  LOCAL  DEFAULT    7 handle_tp.____fmt
     4: 0000000000000000     0 SECTION LOCAL  DEFAULT    7 .rodata
     5: 0000000000000000   104 FUNC    GLOBAL DEFAULT    3 handle_tp
     6: 0000000000000000     4 OBJECT  GLOBAL DEFAULT    6 my_pid
     7: 0000000000000000    13 OBJECT  GLOBAL DEFAULT    5 LICENSE
```