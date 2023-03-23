

```log
readelf -aW /home/labile/opensource/libbpf-bootstrap/examples/c/.output/bootstrap.bpf.o

Section Headers:
  [Nr] Name              Type            Address          Off    Size   ES Flg Lk Inf Al
  [ 0]                   NULL            0000000000000000 000000 000000 00      0   0  0
  [ 1] .strtab           STRTAB          0000000000000000 008936 0000f2 00      0   0  1
  [ 2] .text             PROGBITS        0000000000000000 000040 000000 00  AX  0   0  4
  [ 3] tp/sched/sched_process_exec PROGBITS        0000000000000000 000040 0001f8 00  AX  0   0  8
  [ 4] .reltp/sched/sched_process_exec REL             0000000000000000 008370 000030 10   I 15   3  8
  [ 5] tp/sched/sched_process_exit PROGBITS        0000000000000000 000238 0002a8 00  AX  0   0  8
  [ 6] .reltp/sched/sched_process_exit REL             0000000000000000 0083a0 000050 10   I 15   5  8
  [ 7] license           PROGBITS        0000000000000000 0004e0 00000d 00  WA  0   0  1
  [ 8] .rodata           PROGBITS        0000000000000000 0004f0 000008 00   A  0   0  8
  [ 9] .maps             PROGBITS        0000000000000000 0004f8 000030 00  WA  0   0  8
  [10] .BTF              PROGBITS        0000000000000000 000528 0077a9 00      0   0  4
  [11] .rel.BTF          REL             0000000000000000 0083f0 000040 10   I 15  10  8
  [12] .BTF.ext          PROGBITS        0000000000000000 007cd4 00054c 00      0   0  4
  [13] .rel.BTF.ext      REL             0000000000000000 008430 000500 10   I 15  12  8
  [14] .llvm_addrsig     LOOS+0xfff4c03  0000000000000000 008930 000006 00   E  0   0  1
  [15] .symtab           SYMTAB          0000000000000000 008220 000150 18      1   8  8


Relocation section '.reltp/sched/sched_process_exec' at offset 0x8370 contains 3 entries:
    Offset             Info             Type               Symbol's Value  Symbol's Name
0000000000000050  0000000900000001 R_BPF_INSN_64          0000000000000000 exec_start
0000000000000070  0000000a00000001 R_BPF_INSN_64          0000000000000000 min_duration_ns
0000000000000098  0000000b00000001 R_BPF_INSN_64          0000000000000020 rb

Relocation section '.reltp/sched/sched_process_exit' at offset 0x83a0 contains 5 entries:
    Offset             Info             Type               Symbol's Value  Symbol's Name
0000000000000048  0000000900000001 R_BPF_INSN_64          0000000000000000 exec_start
00000000000000a0  0000000a00000001 R_BPF_INSN_64          0000000000000000 min_duration_ns
00000000000000d0  0000000900000001 R_BPF_INSN_64          0000000000000000 exec_start
00000000000000e8  0000000a00000001 R_BPF_INSN_64          0000000000000000 min_duration_ns
0000000000000118  0000000b00000001 R_BPF_INSN_64          0000000000000020 rb

Relocation section '.rel.BTF' at offset 0x83f0 contains 4 entries:
    Offset             Info             Type               Symbol's Value  Symbol's Name
0000000000004254  0000000900000004 R_BPF_INSN_DISP16      0000000000000000 exec_start
0000000000004260  0000000b00000004 R_BPF_INSN_DISP16      0000000000000020 rb
0000000000004278  0000000a00000003 R_BPF_INSN_16          0000000000000000 min_duration_ns
0000000000004290  0000000d00000004 R_BPF_INSN_DISP16      0000000000000000 LICENSE

Relocation section '.rel.BTF.ext' at offset 0x8430 contains 80 entries:
    Offset             Info             Type               Symbol's Value  Symbol's Name
000000000000002c  0000000100000004 R_BPF_INSN_DISP16      0000000000000000 tp/sched/sched_process_exec
000000000000003c  0000000300000004 R_BPF_INSN_DISP16      0000000000000000 tp/sched/sched_process_exit
0000000000000050  0000000100000004 R_BPF_INSN_DISP16      0000000000000000 tp/sched/sched_process_exec
0000000000000060  0000000100000004 R_BPF_INSN_DISP16      0000000000000000 tp/sched/sched_process_exec
...
0000000000000428  0000000300000004 R_BPF_INSN_DISP16      0000000000000000 tp/sched/sched_process_exit
0000000000000438  0000000300000004 R_BPF_INSN_DISP16      0000000000000000 tp/sched/sched_process_exit
0000000000000448  0000000300000004 R_BPF_INSN_DISP16      0000000000000000 tp/sched/sched_process_exit
0000000000000458  0000000300000004 R_BPF_INSN_DISP16      0000000000000000 tp/sched/sched_process_exit
...
```
