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
	#DEBUG_VALUE: handle_tp:ctx <- undef
	.loc	0 13 12 prologue_end            # minimal.bpf.c:13:12
.Ltmp0:
	call 14
.Ltmp1:
	.loc	0 13 39 is_stmt 0               # minimal.bpf.c:13:39
.Ltmp2:
	r0 >>= 32
.Ltmp3:
.Ltmp4:
	#DEBUG_VALUE: handle_tp:pid <- $r0
	.loc	0 15 13 is_stmt 1               # minimal.bpf.c:15:13
.Ltmp5:
	r1 = my_pid ll
	r1 = *(u32 *)(r1 + 0)
.Ltmp6:
.Ltmp7:
	.loc	0 15 6 is_stmt 0                # minimal.bpf.c:15:6
.Ltmp8:
	if r1 != r0 goto LBB0_2
.Ltmp9:
.Ltmp10:
# %bb.1:
	#DEBUG_VALUE: handle_tp:pid <- $r0
	.loc	0 18 2 is_stmt 1                # minimal.bpf.c:18:2
.Ltmp11:
	r1 = handle_tp.____fmt ll
	r2 = 28
	r3 = r0
	call 6
.Ltmp12:
.Ltmp13:
LBB0_2:
	.loc	0 21 1                          # minimal.bpf.c:21:1
.Ltmp14:
	r0 = 0
	exit
.Ltmp15:
.Ltmp16:
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

	.type	handle_tp.____fmt,@object       # @handle_tp.____fmt
	.section	.rodata,"a",@progbits
handle_tp.____fmt:
	.asciz	"BPF triggered from PID %d.\n"
	.size	handle_tp.____fmt, 28

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	1                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_list_header_end0:
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
	.ascii	"\214\001"                      # DW_AT_loclists_base
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
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
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
	.byte	34                              # DW_FORM_loclistx
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0xda DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	50                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x32:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x37:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	13                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x3e:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x42:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	2                               # Abbrev [2] 0x46:0xb DW_TAG_variable
	.byte	6                               # DW_AT_name
	.long	81                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	5                               # Abbrev [5] 0x51:0x4 DW_TAG_base_type
	.byte	7                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x55:0x2c DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	90
                                        # DW_AT_call_all_calls
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	81                              # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x64:0xb DW_TAG_variable
	.byte	8                               # DW_AT_name
	.long	129                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	9                               # Abbrev [9] 0x6f:0x8 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.long	228                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x77:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_location
	.byte	17                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.long	81                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x81:0xc DW_TAG_array_type
	.long	141                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x86:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x8d:0x5 DW_TAG_const_type
	.long	62                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x92:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_name
	.long	155                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	368                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x9b:0x5 DW_TAG_pointer_type
	.long	160                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0xa0:0x5 DW_TAG_subroutine_type
	.long	165                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0xa5:0x8 DW_TAG_typedef
	.long	173                             # DW_AT_type
	.byte	11                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xad:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	16                              # Abbrev [16] 0xb1:0x8 DW_TAG_variable
	.byte	12                              # DW_AT_name
	.long	185                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xb9:0x5 DW_TAG_pointer_type
	.long	190                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0xbe:0x11 DW_TAG_subroutine_type
	.long	207                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	18                              # Abbrev [18] 0xc3:0x5 DW_TAG_formal_parameter
	.long	211                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xc8:0x5 DW_TAG_formal_parameter
	.long	216                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0xcd:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xcf:0x4 DW_TAG_base_type
	.byte	13                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0xd3:0x5 DW_TAG_pointer_type
	.long	141                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0xd8:0x8 DW_TAG_typedef
	.long	224                             # DW_AT_type
	.byte	15                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xe0:0x4 DW_TAG_base_type
	.byte	14                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	20                              # Abbrev [20] 0xe4:0x1 DW_TAG_pointer_type
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
	.asciz	"pid"                           # string offset=256
.Linfo_string18:
	.asciz	"ctx"                           # string offset=260
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
	.quad	.Lfunc_begin0
.Ldebug_addr_end0:
	.section	.BTF,"",@progbits
	.short	60319                           # 0xeb9f
	.byte	1
	.byte	0
	.long	24
	.long	0
	.long	272
	.long	272
	.long	309
	.long	0                               # BTF_KIND_PTR(id = 1)
	.long	33554432                        # 0x2000000
	.long	0
	.long	0                               # BTF_KIND_FUNC_PROTO(id = 2)
	.long	218103809                       # 0xd000001
	.long	3
	.long	1
	.long	1
	.long	5                               # BTF_KIND_INT(id = 3)
	.long	16777216                        # 0x1000000
	.long	4
	.long	16777248                        # 0x1000020
	.long	9                               # BTF_KIND_FUNC(id = 4)
	.long	201326593                       # 0xc000001
	.long	2
	.long	230                             # BTF_KIND_INT(id = 5)
	.long	16777216                        # 0x1000000
	.long	1
	.long	16777224                        # 0x1000008
	.long	0                               # BTF_KIND_ARRAY(id = 6)
	.long	50331648                        # 0x3000000
	.long	0
	.long	5
	.long	7
	.long	13
	.long	235                             # BTF_KIND_INT(id = 7)
	.long	16777216                        # 0x1000000
	.long	4
	.long	32                              # 0x20
	.long	255                             # BTF_KIND_VAR(id = 8)
	.long	234881024                       # 0xe000000
	.long	6
	.long	1
	.long	263                             # BTF_KIND_VAR(id = 9)
	.long	234881024                       # 0xe000000
	.long	3
	.long	1
	.long	0                               # BTF_KIND_CONST(id = 10)
	.long	167772160                       # 0xa000000
	.long	5
	.long	0                               # BTF_KIND_ARRAY(id = 11)
	.long	50331648                        # 0x3000000
	.long	0
	.long	10
	.long	7
	.long	28
	.long	270                             # BTF_KIND_VAR(id = 12)
	.long	234881024                       # 0xe000000
	.long	11
	.long	0
	.long	288                             # BTF_KIND_DATASEC(id = 13)
	.long	251658241                       # 0xf000001
	.long	0
	.long	9
	.long	my_pid
	.long	4
	.long	293                             # BTF_KIND_DATASEC(id = 14)
	.long	251658241                       # 0xf000001
	.long	0
	.long	12
	.long	handle_tp.____fmt
	.long	28
	.long	301                             # BTF_KIND_DATASEC(id = 15)
	.long	251658241                       # 0xf000001
	.long	0
	.long	8
	.long	LICENSE
	.long	13
	.byte	0                               # string offset=0
	.ascii	"ctx"                           # string offset=1
	.byte	0
	.ascii	"int"                           # string offset=5
	.byte	0
	.ascii	"handle_tp"                     # string offset=9
	.byte	0
	.ascii	"tp/syscalls/sys_enter_write"   # string offset=19
	.byte	0
	.ascii	"/home/labile/opensource/libbpf-bootstrap/examples/c/minimal.bpf.c" # string offset=47
	.byte	0
	.ascii	"\tint pid = bpf_get_current_pid_tgid() >> 32;" # string offset=113
	.byte	0
	.ascii	"\tif (pid != my_pid)"          # string offset=158
	.byte	0
	.ascii	"\tbpf_printk(\"BPF triggered from PID %d.\\n\", pid);" # string offset=178
	.byte	0
	.byte	125                             # string offset=228
	.byte	0
	.ascii	"char"                          # string offset=230
	.byte	0
	.ascii	"__ARRAY_SIZE_TYPE__"           # string offset=235
	.byte	0
	.ascii	"LICENSE"                       # string offset=255
	.byte	0
	.ascii	"my_pid"                        # string offset=263
	.byte	0
	.ascii	"handle_tp.____fmt"             # string offset=270
	.byte	0
	.ascii	".bss"                          # string offset=288
	.byte	0
	.ascii	".rodata"                       # string offset=293
	.byte	0
	.ascii	"license"                       # string offset=301
	.byte	0
	.section	.BTF.ext,"",@progbits
	.short	60319                           # 0xeb9f
	.byte	1
	.byte	0
	.long	32
	.long	0
	.long	20
	.long	20
	.long	108
	.long	128
	.long	0
	.long	8                               # FuncInfo
	.long	19                              # FuncInfo section string offset=19
	.long	1
	.long	.Lfunc_begin0
	.long	4
	.long	16                              # LineInfo
	.long	19                              # LineInfo section string offset=19
	.long	6
	.long	.Ltmp0
	.long	47
	.long	113
	.long	13324                           # Line 13 Col 12
	.long	.Ltmp2
	.long	47
	.long	113
	.long	13351                           # Line 13 Col 39
	.long	.Ltmp5
	.long	47
	.long	158
	.long	15373                           # Line 15 Col 13
	.long	.Ltmp8
	.long	47
	.long	158
	.long	15366                           # Line 15 Col 6
	.long	.Ltmp11
	.long	47
	.long	178
	.long	18434                           # Line 18 Col 2
	.long	.Ltmp14
	.long	47
	.long	228
	.long	21505                           # Line 21 Col 1
	.addrsig
	.addrsig_sym handle_tp
	.addrsig_sym LICENSE
	.addrsig_sym handle_tp.____fmt
	.section	.debug_line,"",@progbits
.Lline_table_start0:
