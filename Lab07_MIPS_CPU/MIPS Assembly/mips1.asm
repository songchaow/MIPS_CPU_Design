 .data
result: .word 0 : 20

      .text
      la $t0, result
      xor $t1, $t1, $t1
      xor $t2, $t2, $t2
      xor $t3, $t3, $t3
      xor $t4, $t4, $t4
      addi $t1, $t1, 1
      addi $t2, $t2, 2
      addi $t3, $t3, -1

      #test lw              0
      lw    $t4, 0($t0)
      addi  $t0, $t0, 4

      #test add addi        0
      add   $t5, $t1, $t3
      sw    $t5, 0($t0)
      addi  $t0, $t0, 4

      #test addu            3
      add   $t5, $t1, $t2
      sw    $t5, 0($t0)
      addi  $t0, $t0, 4

      #test sub             2
      sub   $t5, $t1, $t3
      sw    $t5, 0($t0)
      addi  $t0, $t0, 4

      #test subu            1
      subu  $t5, $t2, $t1
      sw    $t5, 0($t0)
      addi  $t0, $t0, 4

      #test and             1
      and   $t5, $t1, $t3
      sw    $t5, 0($t0)
      addi  $t0, $t0, 4

      #test andi            16
      andi  $t5, $t3, 16
      sw    $t5, 0($t0)
      addi  $t0, $t0, 4

      #test or              3
      or    $t5, $t1, $t2
      sw    $t5, 0($t0)
      addi  $t0, $t0, 4

      #test nor             0
      nor   $t5, $t3, $t1
      sw    $t5, 0($t0)
      addi  $t0, $t0, 4

      #test xor             -2
      xor   $t5, $t3, $t1
      sw    $t5, 0($t0)
      addi  $t0, $t0, 4


      #test bgtz j          1
LABLE:
      addi  $t5, $t5, 1
      bgtz  $t5, FINISH
      j     LABLE
FINISH:
      sw    $t5, 0($t0)
      addi  $t0, $t0, 4

      #test bnz              0
      bne   $t5, $t1, NE     #[t5] = 1
      xor   $t5, $t5, $t5
NE:
      sw    $t5, 0($t0)
      addi  $t0, $t0, 4



      #test jr                8
      la    $t6, TJR
      xor   $t5, $t5, $t5
      jr    $t6
      addi  $t5, $t5, 16
TJR:
      addi  $t5, $t5, 8
      sw    $t5, 0($t0)
      addi  $t0, $t0, 4


      #test forword * 2       2
      la    $t6, result
      lw    $t1, 0($t6)       # $t1 = [$t0] = 0
      add   $t1, $t2, $t3
      add   $t3, $t1, $t1
      sw    $t3, 0($t0)
