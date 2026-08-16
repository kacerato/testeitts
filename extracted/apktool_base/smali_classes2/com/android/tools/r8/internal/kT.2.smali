.class public final Lcom/android/tools/r8/internal/kT;
.super Lcom/android/tools/r8/internal/iT;
.source "SourceFile"


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/WS;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/iT;-><init>(Lcom/android/tools/r8/internal/WS;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/internal/kT;->c:I

    return-void
.end method

.method public static e(I)Z
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/hT;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/16 v0, 0xf

    if-le p0, v0, :cond_3

    const/16 v0, 0xb1

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd1

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd3

    if-eq p0, v0, :cond_3

    const/16 v0, 0xdc

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public static f(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x12

    if-eq p0, v0, :cond_2

    const/16 v0, 0xaa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe6

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected LIR opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "RESOURCENUMBER"

    return-object p0

    :pswitch_1
    const-string p0, "STRINGSWITCH"

    return-object p0

    :pswitch_2
    const-string p0, "CONSTCLASS_IGNORE_COMPAT"

    return-object p0

    :pswitch_3
    const-string p0, "CHECKCAST_IGNORE_COMPAT"

    return-object p0

    :pswitch_4
    const-string p0, "CHECKCAST_SAFE"

    return-object p0

    :pswitch_5
    const-string p0, "RECORDFIELDVALUES"

    return-object p0

    :pswitch_6
    const-string p0, "INVOKEPOLYMORPHIC"

    return-object p0

    :pswitch_7
    const-string p0, "INITCLASS"

    return-object p0

    :pswitch_8
    const-string p0, "DEBUGLOCALREAD"

    return-object p0

    :pswitch_9
    const-string p0, "LNOT"

    return-object p0

    :pswitch_a
    const-string p0, "INOT"

    return-object p0

    :pswitch_b
    const-string p0, "NEWUNBOXEDENUMINSTANCE"

    return-object p0

    :pswitch_c
    const-string p0, "ITEMBASEDCONSTSTRING"

    return-object p0

    :pswitch_d
    const-string p0, "NEWARRAYFILLEDDATA"

    return-object p0

    :pswitch_e
    const-string p0, "NEWARRAYFILLED"

    return-object p0

    :pswitch_f
    const-string p0, "DEBUGLOCALWRITE"

    return-object p0

    :pswitch_10
    const-string p0, "MOVEEXCEPTION"

    return-object p0

    :pswitch_11
    const-string p0, "FALLTHROUGH"

    return-object p0

    :pswitch_12
    const-string p0, "PHI"

    return-object p0

    :pswitch_13
    const-string p0, "DEBUGPOS"

    return-object p0

    :pswitch_14
    const-string p0, "INVOKESUPER_ITF"

    return-object p0

    :pswitch_15
    const-string p0, "INVOKESUPER"

    return-object p0

    :pswitch_16
    const-string p0, "INVOKEDIRECT_ITF"

    return-object p0

    :pswitch_17
    const-string p0, "INVOKEDIRECT"

    return-object p0

    :pswitch_18
    const-string p0, "INVOKESTATIC_ITF"

    return-object p0

    :pswitch_19
    const-string p0, "DCONST"

    return-object p0

    :pswitch_1a
    const-string p0, "FCONST"

    return-object p0

    :pswitch_1b
    const-string p0, "LCONST"

    return-object p0

    :pswitch_1c
    const-string p0, "ICONST"

    return-object p0

    :pswitch_1d
    const-string p0, "IFNONNULL"

    return-object p0

    :pswitch_1e
    const-string p0, "IFNULL"

    return-object p0

    :pswitch_1f
    const-string p0, "MULTIANEWARRAY"

    return-object p0

    :pswitch_20
    const-string p0, "MONITOREXIT"

    return-object p0

    :pswitch_21
    const-string p0, "MONITORENTER"

    return-object p0

    :pswitch_22
    const-string p0, "INSTANCEOF"

    return-object p0

    :pswitch_23
    const-string p0, "CHECKCAST"

    return-object p0

    :pswitch_24
    const-string p0, "ATHROW"

    return-object p0

    :pswitch_25
    const-string p0, "ARRAYLENGTH"

    return-object p0

    :pswitch_26
    const-string p0, "NEWARRAY"

    return-object p0

    :pswitch_27
    const-string p0, "NEW"

    return-object p0

    :pswitch_28
    const-string p0, "INVOKEDYNAMIC"

    return-object p0

    :pswitch_29
    const-string p0, "INVOKEINTERFACE"

    return-object p0

    :pswitch_2a
    const-string p0, "INVOKESTATIC"

    return-object p0

    :pswitch_2b
    const-string p0, "INVOKESPECIAL"

    return-object p0

    :pswitch_2c
    const-string p0, "INVOKEVIRTUAL"

    return-object p0

    :pswitch_2d
    const-string p0, "PUTFIELD"

    return-object p0

    :pswitch_2e
    const-string p0, "GETFIELD"

    return-object p0

    :pswitch_2f
    const-string p0, "PUTSTATIC"

    return-object p0

    :pswitch_30
    const-string p0, "GETSTATIC"

    return-object p0

    :pswitch_31
    const-string p0, "RETURN"

    return-object p0

    :pswitch_32
    const-string p0, "ARETURN"

    return-object p0

    :pswitch_33
    const-string p0, "GOTO"

    return-object p0

    :pswitch_34
    const-string p0, "IF_ACMPNE"

    return-object p0

    :pswitch_35
    const-string p0, "IF_ACMPEQ"

    return-object p0

    :pswitch_36
    const-string p0, "IF_ICMPLE"

    return-object p0

    :pswitch_37
    const-string p0, "IF_ICMPGT"

    return-object p0

    :pswitch_38
    const-string p0, "IF_ICMPGE"

    return-object p0

    :pswitch_39
    const-string p0, "IF_ICMPLT"

    return-object p0

    :pswitch_3a
    const-string p0, "IF_ICMPNE"

    return-object p0

    :pswitch_3b
    const-string p0, "IF_ICMPEQ"

    return-object p0

    :pswitch_3c
    const-string p0, "IFLE"

    return-object p0

    :pswitch_3d
    const-string p0, "IFGT"

    return-object p0

    :pswitch_3e
    const-string p0, "IFGE"

    return-object p0

    :pswitch_3f
    const-string p0, "IFLT"

    return-object p0

    :pswitch_40
    const-string p0, "IFNE"

    return-object p0

    :pswitch_41
    const-string p0, "IFEQ"

    return-object p0

    :pswitch_42
    const-string p0, "DCMPG"

    return-object p0

    :pswitch_43
    const-string p0, "DCMPL"

    return-object p0

    :pswitch_44
    const-string p0, "FCMPG"

    return-object p0

    :pswitch_45
    const-string p0, "FCMPL"

    return-object p0

    :pswitch_46
    const-string p0, "LCMP"

    return-object p0

    :pswitch_47
    const-string p0, "I2S"

    return-object p0

    :pswitch_48
    const-string p0, "I2C"

    return-object p0

    :pswitch_49
    const-string p0, "I2B"

    return-object p0

    :pswitch_4a
    const-string p0, "D2F"

    return-object p0

    :pswitch_4b
    const-string p0, "D2L"

    return-object p0

    :pswitch_4c
    const-string p0, "D2I"

    return-object p0

    :pswitch_4d
    const-string p0, "F2D"

    return-object p0

    :pswitch_4e
    const-string p0, "F2L"

    return-object p0

    :pswitch_4f
    const-string p0, "F2I"

    return-object p0

    :pswitch_50
    const-string p0, "L2D"

    return-object p0

    :pswitch_51
    const-string p0, "L2F"

    return-object p0

    :pswitch_52
    const-string p0, "L2I"

    return-object p0

    :pswitch_53
    const-string p0, "I2D"

    return-object p0

    :pswitch_54
    const-string p0, "I2F"

    return-object p0

    :pswitch_55
    const-string p0, "I2L"

    return-object p0

    :pswitch_56
    const-string p0, "LXOR"

    return-object p0

    :pswitch_57
    const-string p0, "IXOR"

    return-object p0

    :pswitch_58
    const-string p0, "LOR"

    return-object p0

    :pswitch_59
    const-string p0, "IOR"

    return-object p0

    :pswitch_5a
    const-string p0, "LAND"

    return-object p0

    :pswitch_5b
    const-string p0, "IAND"

    return-object p0

    :pswitch_5c
    const-string p0, "LUSHR"

    return-object p0

    :pswitch_5d
    const-string p0, "IUSHR"

    return-object p0

    :pswitch_5e
    const-string p0, "LSHR"

    return-object p0

    :pswitch_5f
    const-string p0, "ISHR"

    return-object p0

    :pswitch_60
    const-string p0, "LSHL"

    return-object p0

    :pswitch_61
    const-string p0, "ISHL"

    return-object p0

    :pswitch_62
    const-string p0, "DNEG"

    return-object p0

    :pswitch_63
    const-string p0, "FNEG"

    return-object p0

    :pswitch_64
    const-string p0, "LNEG"

    return-object p0

    :pswitch_65
    const-string p0, "INEG"

    return-object p0

    :pswitch_66
    const-string p0, "DREM"

    return-object p0

    :pswitch_67
    const-string p0, "FREM"

    return-object p0

    :pswitch_68
    const-string p0, "LREM"

    return-object p0

    :pswitch_69
    const-string p0, "IREM"

    return-object p0

    :pswitch_6a
    const-string p0, "DDIV"

    return-object p0

    :pswitch_6b
    const-string p0, "FDIV"

    return-object p0

    :pswitch_6c
    const-string p0, "LDIV"

    return-object p0

    :pswitch_6d
    const-string p0, "IDIV"

    return-object p0

    :pswitch_6e
    const-string p0, "DMUL"

    return-object p0

    :pswitch_6f
    const-string p0, "FMUL"

    return-object p0

    :pswitch_70
    const-string p0, "LMUL"

    return-object p0

    :pswitch_71
    const-string p0, "IMUL"

    return-object p0

    :pswitch_72
    const-string p0, "DSUB"

    return-object p0

    :pswitch_73
    const-string p0, "FSUB"

    return-object p0

    :pswitch_74
    const-string p0, "LSUB"

    return-object p0

    :pswitch_75
    const-string p0, "ISUB"

    return-object p0

    :pswitch_76
    const-string p0, "DADD"

    return-object p0

    :pswitch_77
    const-string p0, "FADD"

    return-object p0

    :pswitch_78
    const-string p0, "LADD"

    return-object p0

    :pswitch_79
    const-string p0, "IADD"

    return-object p0

    :pswitch_7a
    const-string p0, "SASTORE"

    return-object p0

    :pswitch_7b
    const-string p0, "CASTORE"

    return-object p0

    :pswitch_7c
    const-string p0, "BASTORE"

    return-object p0

    :pswitch_7d
    const-string p0, "AASTORE"

    return-object p0

    :pswitch_7e
    const-string p0, "DASTORE"

    return-object p0

    :pswitch_7f
    const-string p0, "FASTORE"

    return-object p0

    :pswitch_80
    const-string p0, "LASTORE"

    return-object p0

    :pswitch_81
    const-string p0, "IASTORE"

    return-object p0

    :pswitch_82
    const-string p0, "SALOAD"

    return-object p0

    :pswitch_83
    const-string p0, "CALOAD"

    return-object p0

    :pswitch_84
    const-string p0, "BALOAD"

    return-object p0

    :pswitch_85
    const-string p0, "AALOAD"

    return-object p0

    :pswitch_86
    const-string p0, "DALOAD"

    return-object p0

    :pswitch_87
    const-string p0, "FALOAD"

    return-object p0

    :pswitch_88
    const-string p0, "LALOAD"

    return-object p0

    :pswitch_89
    const-string p0, "IALOAD"

    return-object p0

    :pswitch_8a
    const-string p0, "DCONST_1"

    return-object p0

    :pswitch_8b
    const-string p0, "DCONST_0"

    return-object p0

    :pswitch_8c
    const-string p0, "FCONST_2"

    return-object p0

    :pswitch_8d
    const-string p0, "FCONST_1"

    return-object p0

    :pswitch_8e
    const-string p0, "FCONST_0"

    return-object p0

    :pswitch_8f
    const-string p0, "LCONST_1"

    return-object p0

    :pswitch_90
    const-string p0, "LCONST_0"

    return-object p0

    :pswitch_91
    const-string p0, "ICONST_5"

    return-object p0

    :pswitch_92
    const-string p0, "ICONST_4"

    return-object p0

    :pswitch_93
    const-string p0, "ICONST_3"

    return-object p0

    :pswitch_94
    const-string p0, "ICONST_2"

    return-object p0

    :pswitch_95
    const-string p0, "ICONST_1"

    return-object p0

    :pswitch_96
    const-string p0, "ICONST_0"

    return-object p0

    :pswitch_97
    const-string p0, "ICONST_M1"

    return-object p0

    :pswitch_98
    const-string p0, "ACONST_NULL"

    return-object p0

    :cond_0
    const-string p0, "STORESTOREFENCE"

    return-object p0

    :cond_1
    const-string p0, "TABLESWITCH"

    return-object p0

    :cond_2
    const-string p0, "LDC"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4f
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x60
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x85
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xb0
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xbe
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xc5
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final a(IJ[SLjava/lang/Object;)V
    .locals 0

    .line 7
    iget p1, p0, Lcom/android/tools/r8/internal/kT;->c:I

    array-length p2, p4

    add-int/lit8 p2, p2, 0x8

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/tools/r8/internal/kT;->c:I

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/dT;)V
    .locals 2

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/kT;->c:I

    invoke-interface {p1}, Lcom/android/tools/r8/internal/dT;->a()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/kT;->b(ILcom/android/tools/r8/internal/dT;)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/internal/kT;->c:I

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/LS;)V
    .locals 0

    .line 3
    iget p1, p0, Lcom/android/tools/r8/internal/kT;->c:I

    iget-object p2, p2, Lcom/android/tools/r8/internal/LS;->b:[I

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x4

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/tools/r8/internal/kT;->c:I

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/OS;)V
    .locals 1

    .line 4
    iget p1, p0, Lcom/android/tools/r8/internal/kT;->c:I

    iget-object p2, p2, Lcom/android/tools/r8/internal/OS;->b:[I

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x7

    add-int/2addr v0, p1

    .line 5
    array-length p1, p2

    mul-int/lit8 p1, p1, 0x9

    add-int/2addr p1, v0

    .line 6
    array-length p2, p2

    mul-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x4

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/tools/r8/internal/kT;->c:I

    return-void
.end method

.method public final b(ILcom/android/tools/r8/internal/dT;)I
    .locals 4

    const/16 v0, 0x12

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xaa

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe6

    const/4 v3, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    packed-switch p1, :pswitch_data_7

    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected LIR opcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    return v0

    :pswitch_1
    return v1

    :pswitch_2
    return v3

    :pswitch_3
    return v1

    :pswitch_4
    return v2

    :pswitch_5
    return v0

    :pswitch_6
    return v1

    :pswitch_7
    return v3

    :pswitch_8
    return v0

    :pswitch_9
    return v2

    :pswitch_a
    return v0

    :pswitch_b
    return v2

    :pswitch_c
    return v3

    :pswitch_d
    return v1

    :pswitch_e
    return v0

    :pswitch_f
    return v3

    :pswitch_10
    return v0

    :pswitch_11
    return v1

    :pswitch_12
    return v0

    :pswitch_13
    return v1

    :pswitch_14
    return v3

    :pswitch_15
    return v1

    :pswitch_16
    return v0

    :pswitch_17
    return v1

    :pswitch_18
    return v0

    :pswitch_19
    return v1

    :pswitch_1a
    return v0

    :pswitch_1b
    return v1

    :pswitch_1c
    return v0

    :cond_0
    :pswitch_1d
    return v3

    :cond_1
    :pswitch_1e
    invoke-super {p0, p2}, Lcom/android/tools/r8/internal/iT;->a(Lcom/android/tools/r8/internal/dT;)V

    return v2

    :cond_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4f
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x60
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x85
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xb0
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_14
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xbe
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xc5
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_1e
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1e
        :pswitch_0
    .end packed-switch
.end method
