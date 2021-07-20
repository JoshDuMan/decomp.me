.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_00400090
/* 000090 00400090 03E00008 */  jr    $ra
/* 000094 00400094 24820001 */   addiu $v0, $a0, 1

glabel test
/* 000098 00400098 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 00009C 0040009C AFB00018 */  sw    $s0, 0x18($sp)
/* 0000A0 004000A0 00858021 */  addu  $s0, $a0, $a1
/* 0000A4 004000A4 00A67821 */  addu  $t7, $a1, $a2
/* 0000A8 004000A8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0000AC 004000AC AFA40030 */  sw    $a0, 0x30($sp)
/* 0000B0 004000B0 AFA7003C */  sw    $a3, 0x3c($sp)
/* 0000B4 004000B4 AFAF0020 */  sw    $t7, 0x20($sp)
/* 0000B8 004000B8 1600000D */  bnez  $s0, .L004000F0
/* 0000BC 004000BC 01E04025 */   move  $t0, $t7
/* 0000C0 004000C0 15E0000B */  bnez  $t7, .L004000F0
/* 0000C4 004000C4 01E02025 */   move  $a0, $t7
/* 0000C8 004000C8 0C100024 */  jal   func_00400090
/* 0000CC 004000CC AFA60038 */   sw    $a2, 0x38($sp)
/* 0000D0 004000D0 8FA60038 */  lw    $a2, 0x38($sp)
/* 0000D4 004000D4 14400006 */  bnez  $v0, .L004000F0
/* 0000D8 004000D8 00404025 */   move  $t0, $v0
/* 0000DC 004000DC 8FB9003C */  lw    $t9, 0x3c($sp)
/* 0000E0 004000E0 24100002 */  addiu $s0, $zero, 2
/* 0000E4 004000E4 8FA90030 */  lw    $t1, 0x30($sp)
/* 0000E8 004000E8 13200003 */  beqz  $t9, .L004000F8
/* 0000EC 004000EC 00000000 */   nop
.L004000F0:
/* 0000F0 004000F0 10000005 */  b     .L00400108
/* 0000F4 004000F4 24030001 */   addiu $v1, $zero, 1
.L004000F8:
/* 0000F8 004000F8 11200003 */  beqz  $t1, .L00400108
/* 0000FC 004000FC 2403FFFE */   addiu $v1, $zero, -2
/* 000100 00400100 10000001 */  b     .L00400108
/* 000104 00400104 2403FFFF */   addiu $v1, $zero, -1
.L00400108:
/* 000108 00400108 12000016 */  beqz  $s0, .L00400164
/* 00010C 0040010C 00661821 */   addu  $v1, $v1, $a2
/* 000110 00400110 11000014 */  beqz  $t0, .L00400164
/* 000114 00400114 00000000 */   nop
/* 000118 00400118 02088021 */  addu  $s0, $s0, $t0
/* 00011C 0040011C 02002025 */  move  $a0, $s0
/* 000120 00400120 0C100024 */  jal   func_00400090
/* 000124 00400124 AFA30024 */   sw    $v1, 0x24($sp)
/* 000128 00400128 8FA30024 */  lw    $v1, 0x24($sp)
/* 00012C 0040012C 1040000D */  beqz  $v0, .L00400164
/* 000130 00400130 00404025 */   move  $t0, $v0
/* 000134 00400134 8FAA003C */  lw    $t2, 0x3c($sp)
/* 000138 00400138 28610005 */  slti  $at, $v1, 5
/* 00013C 0040013C 11400009 */  beqz  $t2, .L00400164
/* 000140 00400140 00000000 */   nop
/* 000144 00400144 50200007 */  beql  $at, $zero, .L00400164
/* 000148 00400148 24630005 */   addiu $v1, $v1, 5
.L0040014C:
/* 00014C 0040014C 24630001 */  addiu $v1, $v1, 1
/* 000150 00400150 00035840 */  sll   $t3, $v1, 1
/* 000154 00400154 29610005 */  slti  $at, $t3, 5
/* 000158 00400158 1420FFFC */  bnez  $at, .L0040014C
/* 00015C 0040015C 01601825 */   move  $v1, $t3
/* 000160 00400160 24630005 */  addiu $v1, $v1, 5
.L00400164:
/* 000164 00400164 52000015 */  beql  $s0, $zero, .L004001BC
/* 000168 00400168 24630006 */   addiu $v1, $v1, 6
/* 00016C 0040016C 11000012 */  beqz  $t0, .L004001B8
/* 000170 00400170 02082021 */   addu  $a0, $s0, $t0
/* 000174 00400174 0C100024 */  jal   func_00400090
/* 000178 00400178 AFA30024 */   sw    $v1, 0x24($sp)
/* 00017C 0040017C 1040000E */  beqz  $v0, .L004001B8
/* 000180 00400180 8FA30024 */   lw    $v1, 0x24($sp)
/* 000184 00400184 8FAC003C */  lw    $t4, 0x3c($sp)
/* 000188 00400188 28610005 */  slti  $at, $v1, 5
/* 00018C 0040018C 5180000B */  beql  $t4, $zero, .L004001BC
/* 000190 00400190 24630006 */   addiu $v1, $v1, 6
/* 000194 00400194 10200006 */  beqz  $at, .L004001B0
/* 000198 00400198 00000000 */   nop
.L0040019C:
/* 00019C 0040019C 24630001 */  addiu $v1, $v1, 1
/* 0001A0 004001A0 00036840 */  sll   $t5, $v1, 1
/* 0001A4 004001A4 29A10005 */  slti  $at, $t5, 5
/* 0001A8 004001A8 1420FFFC */  bnez  $at, .L0040019C
/* 0001AC 004001AC 01A01825 */   move  $v1, $t5
.L004001B0:
/* 0001B0 004001B0 10000002 */  b     .L004001BC
/* 0001B4 004001B4 24630005 */   addiu $v1, $v1, 5
.L004001B8:
/* 0001B8 004001B8 24630006 */  addiu $v1, $v1, 6
.L004001BC:
/* 0001BC 004001BC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0001C0 004001C0 8FB00018 */  lw    $s0, 0x18($sp)
/* 0001C4 004001C4 27BD0030 */  addiu $sp, $sp, 0x30
/* 0001C8 004001C8 03E00008 */  jr    $ra
/* 0001CC 004001CC 00601025 */   move  $v0, $v1
