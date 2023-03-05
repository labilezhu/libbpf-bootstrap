	.text
	.file	"minimal.bpf.c"
	.file	0 "/home/labile/opensource/libbpf-bootstrap/examples/c" "minimal.bpf.c" md5 0xbf8e5ddfc94a1ba59b686bea6f00a5c0
	.file	1 "/usr/include/asm-generic" "int-ll64.h" md5 0xb810f270733e106319b67ef512c6246e
	.file	2 ".output/bpf" "bpf_helper_defs.h" md5 0xfaa7d073e0e210903ed82bfa908a772e
	.section	"tp/syscalls/sys_enter_write","ax",@progbits
	.globl	handle_tp                       # -- Begin function handle_tp
	.p2align	3
	.type	handle_tp,@function
handle_tp:                              # @handle_tp
.Lfunc_begin0:
	.loc	0 12 0                          # minimal.bpf.c:12:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	*(u64 *)(r10 - 16) = r1
.Ltmp0:
	.loc	0 13 12 prologue_end            # minimal.bpf.c:13:12
.Ltmp1:
.Ltmp2:
	r1 = bpf_get_current_pid_tgid ll
	r1 = *(u64 *)(r1 + 0)
	callx r1
	.loc	0 13 39 is_stmt 0               # minimal.bpf.c:13:39
.Ltmp3:
	r0 >>= 32
	.loc	0 13 6                          # minimal.bpf.c:13:6
.Ltmp4:
	*(u32 *)(r10 - 20) = r0
.Ltmp5:
	.loc	0 15 6 is_stmt 1                # minimal.bpf.c:15:6
.Ltmp6:
.Ltmp7:
	r1 = *(u32 *)(r10 - 20)
	.loc	0 15 13 is_stmt 0               # minimal.bpf.c:15:13
.Ltmp8:
	r2 = my_pid ll
	r2 = *(u32 *)(r2 + 0)
.Ltmp9:
.Ltmp10:
	.loc	0 15 6                          # minimal.bpf.c:15:6
.Ltmp11:
	if r1 == r2 goto LBB0_2
	goto LBB0_1
LBB0_1:
	.loc	0 0 6                           # minimal.bpf.c:0:6
	r1 = 0
.Ltmp12:
	.loc	0 16 3 is_stmt 1                # minimal.bpf.c:16:3
.Ltmp13:
.Ltmp14:
	*(u32 *)(r10 - 4) = r1
	goto LBB0_3
.Ltmp15:
.Ltmp16:
LBB0_2:
	.loc	0 18 2                          # minimal.bpf.c:18:2
.Ltmp17:
	r1 = bpf_trace_printk ll
	r4 = *(u64 *)(r1 + 0)
	r3 = *(u32 *)(r10 - 20)
	r1 = handle_tp.____fmt ll
	r2 = 28
	callx r4
	*(u64 *)(r10 - 32) = r0
	r1 = 0
.Ltmp18:
.Ltmp19:
	.loc	0 20 2                          # minimal.bpf.c:20:2
.Ltmp20:
	*(u32 *)(r10 - 4) = r1
	goto LBB0_3
LBB0_3:
	.loc	0 21 1                          # minimal.bpf.c:21:1
.Ltmp21:
	r0 = *(u32 *)(r10 - 4)
	exit
.Ltmp22:
.Ltmp23:
.Lfunc_end0:
	.size	handle_tp, .Lfunc_end0-handle_tp
	.cfi_endproc
                                        # -- End function
	.type	LICENSE,@object                 # @LICENSE
	.section	license,"aw",@progbits
	.globl	LICENSE
LICENSE:
	.asciz	"Dual BSD/GPL"
	.size	LICENSE, 13

	.type	my_pid,@object                  # @my_pid
	.section	.bss,"aw",@nobits
	.globl	my_pid
	.p2align	2
my_pid:
	.long	0                               # 0x0
	.size	my_pid, 4

	.type	bpf_get_current_pid_tgid,@object # @bpf_get_current_pid_tgid
	.data
	.p2align	3
bpf_get_current_pid_tgid:
	.quad	14
	.size	bpf_get_current_pid_tgid, 8

	.type	handle_tp.____fmt,@object       # @handle_tp.____fmt
	.section	.rodata,"a",@progbits
handle_tp.____fmt:
	.asciz	"BPF triggered from PID %d.\n"
	.size	handle_tp.____fmt, 28

	.type	bpf_trace_printk,@object        # @bpf_trace_printk
	.data
	.p2align	3
bpf_trace_printk:
	.quad	6
	.size	bpf_trace_printk, 8

	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	37                              # DW_FORM_strx1
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	114                             # DW_AT_str_offsets_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	37                              # DW_FORM_strx1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	115                             # DW_AT_addr_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0xe1 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.byte	2                               # Abbrev [2] 0x23:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	46                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x2e:0xc DW_TAG_array_type
	.long	58                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x33:0x6 DW_TAG_subrange_type
	.long	62                              # DW_AT_type
	.byte	13                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x3a:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x3e:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	2                               # Abbrev [2] 0x42:0xb DW_TAG_variable
	.byte	6                               # DW_AT_name
	.long	77                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	5                               # Abbrev [5] 0x4d:0x4 DW_TAG_base_type
	.byte	7                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x51:0x31 DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	90
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	77                              # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x60:0xb DW_TAG_variable
	.byte	8                               # DW_AT_name
	.long	130                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	9                               # Abbrev [9] 0x6b:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.byte	17                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.long	235                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x76:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	12
	.byte	18                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.long	77                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x82:0xc DW_TAG_array_type
	.long	142                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x87:0x6 DW_TAG_subrange_type
	.long	62                              # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x8e:0x5 DW_TAG_const_type
	.long	58                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x93:0xc DW_TAG_variable
	.byte	9                               # DW_AT_name
	.long	159                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	368                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	13                              # Abbrev [13] 0x9f:0x5 DW_TAG_pointer_type
	.long	164                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0xa4:0x5 DW_TAG_subroutine_type
	.long	169                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0xa9:0x8 DW_TAG_typedef
	.long	177                             # DW_AT_type
	.byte	11                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xb1:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xb5:0xb DW_TAG_variable
	.byte	12                              # DW_AT_name
	.long	192                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	13                              # Abbrev [13] 0xc0:0x5 DW_TAG_pointer_type
	.long	197                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0xc5:0x11 DW_TAG_subroutine_type
	.long	214                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0xca:0x5 DW_TAG_formal_parameter
	.long	218                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0xcf:0x5 DW_TAG_formal_parameter
	.long	223                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xd4:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xd6:0x4 DW_TAG_base_type
	.byte	13                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0xda:0x5 DW_TAG_pointer_type
	.long	142                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0xdf:0x8 DW_TAG_typedef
	.long	231                             # DW_AT_type
	.byte	15                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xe7:0x4 DW_TAG_base_type
	.byte	14                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	19                              # Abbrev [19] 0xeb:0x1 DW_TAG_pointer_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	80                              # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 14.0.0-1ubuntu1" # string offset=0
.Linfo_string1:
	.asciz	"minimal.bpf.c"                 # string offset=37
.Linfo_string2:
	.asciz	"/home/labile/opensource/libbpf-bootstrap/examples/c" # string offset=51
.Linfo_string3:
	.asciz	"LICENSE"                       # string offset=103
.Linfo_string4:
	.asciz	"char"                          # string offset=111
.Linfo_string5:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=116
.Linfo_string6:
	.asciz	"my_pid"                        # string offset=136
.Linfo_string7:
	.asciz	"int"                           # string offset=143
.Linfo_string8:
	.asciz	"____fmt"                       # string offset=147
.Linfo_string9:
	.asciz	"bpf_get_current_pid_tgid"      # string offset=155
.Linfo_string10:
	.asciz	"unsigned long long"            # string offset=180
.Linfo_string11:
	.asciz	"__u64"                         # string offset=199
.Linfo_string12:
	.asciz	"bpf_trace_printk"              # string offset=205
.Linfo_string13:
	.asciz	"long"                          # string offset=222
.Linfo_string14:
	.asciz	"unsigned int"                  # string offset=227
.Linfo_string15:
	.asciz	"__u32"                         # string offset=240
.Linfo_string16:
	.asciz	"handle_tp"                     # string offset=246
.Linfo_string17:
	.asciz	"ctx"                           # string offset=256
.Linfo_string18:
	.asciz	"pid"                           # string offset=260
	.section	.debug_str_offsets,"",@progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.long	.Linfo_string12
	.long	.Linfo_string13
	.long	.Linfo_string14
	.long	.Linfo_string15
	.long	.Linfo_string16
	.long	.Linfo_string17
	.long	.Linfo_string18
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	LICENSE
	.quad	my_pid
	.quad	handle_tp.____fmt
	.quad	bpf_get_current_pid_tgid
	.quad	bpf_trace_printk
	.quad	.Lfunc_begin0
.Ldebug_addr_end0:
	.section	.BTF,"",@progbits
	.short	60319                           # 0xeb9f
	.byte	1
	.byte	0
	.long	24
	.long	0
	.long	496
	.long	496
	.long	450
	.long	0                               # BTF_KIND_FUNC_PROTO(id = 1)
	.long	218103809                       # 0xd000001
	.long	2
	.long	0
	.long	3
	.long	1                               # BTF_KIND_INT(id = 2)
	.long	16777216                        # 0x1000000
	.long	4
	.long	16777248                        # 0x1000020
	.long	0                               # BTF_KIND_PTR(id = 3)
	.long	33554432                        # 0x2000000
	.long	0
	.long	5                               # BTF_KIND_FUNC(id = 4)
	.long	201326593                       # 0xc000001
	.long	1
	.long	274                             # BTF_KIND_INT(id = 5)
	.long	16777216                        # 0x1000000
	.long	1
	.long	16777224                        # 0x1000008
	.long	0                               # BTF_KIND_ARRAY(id = 6)
	.long	50331648                        # 0x3000000
	.long	0
	.long	5
	.long	7
	.long	13
	.long	279                             # BTF_KIND_INT(id = 7)
	.long	16777216                        # 0x1000000
	.long	4
	.long	32                              # 0x20
	.long	299                             # BTF_KIND_VAR(id = 8)
	.long	234881024                       # 0xe000000
	.long	6
	.long	1
	.long	307                             # BTF_KIND_VAR(id = 9)
	.long	234881024                       # 0xe000000
	.long	2
	.long	1
	.long	0                               # BTF_KIND_PTR(id = 10)
	.long	33554432                        # 0x2000000
	.long	11
	.long	0                               # BTF_KIND_FUNC_PROTO(id = 11)
	.long	218103808                       # 0xd000000
	.long	12
	.long	314                             # BTF_KIND_TYPEDEF(id = 12)
	.long	134217728                       # 0x8000000
	.long	13
	.long	320                             # BTF_KIND_INT(id = 13)
	.long	16777216                        # 0x1000000
	.long	8
	.long	64                              # 0x40
	.long	339                             # BTF_KIND_VAR(id = 14)
	.long	234881024                       # 0xe000000
	.long	10
	.long	0
	.long	0                               # BTF_KIND_CONST(id = 15)
	.long	167772160                       # 0xa000000
	.long	5
	.long	0                               # BTF_KIND_ARRAY(id = 16)
	.long	50331648                        # 0x3000000
	.long	0
	.long	15
	.long	7
	.long	28
	.long	364                             # BTF_KIND_VAR(id = 17)
	.long	234881024                       # 0xe000000
	.long	16
	.long	0
	.long	0                               # BTF_KIND_PTR(id = 18)
	.long	33554432                        # 0x2000000
	.long	19
	.long	0                               # BTF_KIND_FUNC_PROTO(id = 19)
	.long	218103811                       # 0xd000003
	.long	20
	.long	0
	.long	21
	.long	0
	.long	22
	.long	0
	.long	0
	.long	382                             # BTF_KIND_INT(id = 20)
	.long	16777216                        # 0x1000000
	.long	8
	.long	16777280                        # 0x1000040
	.long	0                               # BTF_KIND_PTR(id = 21)
	.long	33554432                        # 0x2000000
	.long	15
	.long	387                             # BTF_KIND_TYPEDEF(id = 22)
	.long	134217728                       # 0x8000000
	.long	23
	.long	393                             # BTF_KIND_INT(id = 23)
	.long	16777216                        # 0x1000000
	.long	4
	.long	32                              # 0x20
	.long	406                             # BTF_KIND_VAR(id = 24)
	.long	234881024                       # 0xe000000
	.long	18
	.long	0
	.long	423                             # BTF_KIND_DATASEC(id = 25)
	.long	251658241                       # 0xf000001
	.long	0
	.long	9
	.long	my_pid
	.long	4
	.long	428                             # BTF_KIND_DATASEC(id = 26)
	.long	251658242                       # 0xf000002
	.long	0
	.long	14
	.long	bpf_get_current_pid_tgid
	.long	8
	.long	24
	.long	bpf_trace_printk
	.long	8
	.long	434                             # BTF_KIND_DATASEC(id = 27)
	.long	251658241                       # 0xf000001
	.long	0
	.long	17
	.long	handle_tp.____fmt
	.long	28
	.long	442                             # BTF_KIND_DATASEC(id = 28)
	.long	251658241                       # 0xf000001
	.long	0
	.long	8
	.long	LICENSE
	.long	13
	.byte	0                               # string offset=0
	.ascii	"int"                           # string offset=1
	.byte	0
	.ascii	"handle_tp"                     # string offset=5
	.byte	0
	.ascii	"tp/syscalls/sys_enter_write"   # string offset=15
	.byte	0
	.ascii	"/home/labile/opensource/libbpf-bootstrap/examples/c/minimal.bpf.c" # string offset=43
	.byte	0
	.ascii	"int handle_tp(void *ctx)"      # string offset=109
	.byte	0
	.ascii	"\tint pid = bpf_get_current_pid_tgid() >> 32;" # string offset=134
	.byte	0
	.ascii	"\tif (pid != my_pid)"          # string offset=179
	.byte	0
	.ascii	"\t\treturn 0;"                 # string offset=199
	.byte	0
	.ascii	"\tbpf_printk(\"BPF triggered from PID %d.\\n\", pid);" # string offset=211
	.byte	0
	.ascii	"\treturn 0;"                   # string offset=261
	.byte	0
	.byte	125                             # string offset=272
	.byte	0
	.ascii	"char"                          # string offset=274
	.byte	0
	.ascii	"__ARRAY_SIZE_TYPE__"           # string offset=279
	.byte	0
	.ascii	"LICENSE"                       # string offset=299
	.byte	0
	.ascii	"my_pid"                        # string offset=307
	.byte	0
	.ascii	"__u64"                         # string offset=314
	.byte	0
	.ascii	"unsigned long long"            # string offset=320
	.byte	0
	.ascii	"bpf_get_current_pid_tgid"      # string offset=339
	.byte	0
	.ascii	"handle_tp.____fmt"             # string offset=364
	.byte	0
	.ascii	"long"                          # string offset=382
	.byte	0
	.ascii	"__u32"                         # string offset=387
	.byte	0
	.ascii	"unsigned int"                  # string offset=393
	.byte	0
	.ascii	"bpf_trace_printk"              # string offset=406
	.byte	0
	.ascii	".bss"                          # string offset=423
	.byte	0
	.ascii	".data"                         # string offset=428
	.byte	0
	.ascii	".rodata"                       # string offset=434
	.byte	0
	.ascii	"license"                       # string offset=442
	.byte	0
	.section	.BTF.ext,"",@progbits
	.short	60319                           # 0xeb9f
	.byte	1
	.byte	0
	.long	32
	.long	0
	.long	20
	.long	20
	.long	188
	.long	208
	.long	0
	.long	8                               # FuncInfo
	.long	15                              # FuncInfo section string offset=15
	.long	1
	.long	.Lfunc_begin0
	.long	4
	.long	16                              # LineInfo
	.long	15                              # LineInfo section string offset=15
	.long	11
	.long	.Lfunc_begin0
	.long	43
	.long	109
	.long	11264                           # Line 11 Col 0
	.long	.Ltmp2
	.long	43
	.long	134
	.long	13324                           # Line 13 Col 12
	.long	.Ltmp3
	.long	43
	.long	134
	.long	13351                           # Line 13 Col 39
	.long	.Ltmp4
	.long	43
	.long	134
	.long	13318                           # Line 13 Col 6
	.long	.Ltmp7
	.long	43
	.long	179
	.long	15366                           # Line 15 Col 6
	.long	.Ltmp8
	.long	43
	.long	179
	.long	15373                           # Line 15 Col 13
	.long	.Ltmp11
	.long	43
	.long	179
	.long	15366                           # Line 15 Col 6
	.long	.Ltmp14
	.long	43
	.long	199
	.long	16387                           # Line 16 Col 3
	.long	.Ltmp17
	.long	43
	.long	211
	.long	18434                           # Line 18 Col 2
	.long	.Ltmp20
	.long	43
	.long	261
	.long	20482                           # Line 20 Col 2
	.long	.Ltmp21
	.long	43
	.long	272
	.long	21505                           # Line 21 Col 1
	.addrsig
	.addrsig_sym handle_tp
	.addrsig_sym LICENSE
	.addrsig_sym my_pid
	.addrsig_sym bpf_get_current_pid_tgid
	.addrsig_sym handle_tp.____fmt
	.addrsig_sym bpf_trace_printk
	.section	.debug_line,"",@progbits
.Lline_table_start0:
