.class public abstract Lcom/android/tools/r8/internal/E70;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 200

    const-string v198, "IFNULL"

    const-string v199, "IFNONNULL"

    const-string v0, "NOP"

    const-string v1, "ACONST_NULL"

    const-string v2, "ICONST_M1"

    const-string v3, "ICONST_0"

    const-string v4, "ICONST_1"

    const-string v5, "ICONST_2"

    const-string v6, "ICONST_3"

    const-string v7, "ICONST_4"

    const-string v8, "ICONST_5"

    const-string v9, "LCONST_0"

    const-string v10, "LCONST_1"

    const-string v11, "FCONST_0"

    const-string v12, "FCONST_1"

    const-string v13, "FCONST_2"

    const-string v14, "DCONST_0"

    const-string v15, "DCONST_1"

    const-string v16, "BIPUSH"

    const-string v17, "SIPUSH"

    const-string v18, "LDC"

    const-string v19, "LDC_W"

    const-string v20, "LDC2_W"

    const-string v21, "ILOAD"

    const-string v22, "LLOAD"

    const-string v23, "FLOAD"

    const-string v24, "DLOAD"

    const-string v25, "ALOAD"

    const-string v26, "ILOAD_0"

    const-string v27, "ILOAD_1"

    const-string v28, "ILOAD_2"

    const-string v29, "ILOAD_3"

    const-string v30, "LLOAD_0"

    const-string v31, "LLOAD_1"

    const-string v32, "LLOAD_2"

    const-string v33, "LLOAD_3"

    const-string v34, "FLOAD_0"

    const-string v35, "FLOAD_1"

    const-string v36, "FLOAD_2"

    const-string v37, "FLOAD_3"

    const-string v38, "DLOAD_0"

    const-string v39, "DLOAD_1"

    const-string v40, "DLOAD_2"

    const-string v41, "DLOAD_3"

    const-string v42, "ALOAD_0"

    const-string v43, "ALOAD_1"

    const-string v44, "ALOAD_2"

    const-string v45, "ALOAD_3"

    const-string v46, "IALOAD"

    const-string v47, "LALOAD"

    const-string v48, "FALOAD"

    const-string v49, "DALOAD"

    const-string v50, "AALOAD"

    const-string v51, "BALOAD"

    const-string v52, "CALOAD"

    const-string v53, "SALOAD"

    const-string v54, "ISTORE"

    const-string v55, "LSTORE"

    const-string v56, "FSTORE"

    const-string v57, "DSTORE"

    const-string v58, "ASTORE"

    const-string v59, "ISTORE_0"

    const-string v60, "ISTORE_1"

    const-string v61, "ISTORE_2"

    const-string v62, "ISTORE_3"

    const-string v63, "LSTORE_0"

    const-string v64, "LSTORE_1"

    const-string v65, "LSTORE_2"

    const-string v66, "LSTORE_3"

    const-string v67, "FSTORE_0"

    const-string v68, "FSTORE_1"

    const-string v69, "FSTORE_2"

    const-string v70, "FSTORE_3"

    const-string v71, "DSTORE_0"

    const-string v72, "DSTORE_1"

    const-string v73, "DSTORE_2"

    const-string v74, "DSTORE_3"

    const-string v75, "ASTORE_0"

    const-string v76, "ASTORE_1"

    const-string v77, "ASTORE_2"

    const-string v78, "ASTORE_3"

    const-string v79, "IASTORE"

    const-string v80, "LASTORE"

    const-string v81, "FASTORE"

    const-string v82, "DASTORE"

    const-string v83, "AASTORE"

    const-string v84, "BASTORE"

    const-string v85, "CASTORE"

    const-string v86, "SASTORE"

    const-string v87, "POP"

    const-string v88, "POP2"

    const-string v89, "DUP"

    const-string v90, "DUP_X1"

    const-string v91, "DUP_X2"

    const-string v92, "DUP2"

    const-string v93, "DUP2_X1"

    const-string v94, "DUP2_X2"

    const-string v95, "SWAP"

    const-string v96, "IADD"

    const-string v97, "LADD"

    const-string v98, "FADD"

    const-string v99, "DADD"

    const-string v100, "ISUB"

    const-string v101, "LSUB"

    const-string v102, "FSUB"

    const-string v103, "DSUB"

    const-string v104, "IMUL"

    const-string v105, "LMUL"

    const-string v106, "FMUL"

    const-string v107, "DMUL"

    const-string v108, "IDIV"

    const-string v109, "LDIV"

    const-string v110, "FDIV"

    const-string v111, "DDIV"

    const-string v112, "IREM"

    const-string v113, "LREM"

    const-string v114, "FREM"

    const-string v115, "DREM"

    const-string v116, "INEG"

    const-string v117, "LNEG"

    const-string v118, "FNEG"

    const-string v119, "DNEG"

    const-string v120, "ISHL"

    const-string v121, "LSHL"

    const-string v122, "ISHR"

    const-string v123, "LSHR"

    const-string v124, "IUSHR"

    const-string v125, "LUSHR"

    const-string v126, "IAND"

    const-string v127, "LAND"

    const-string v128, "IOR"

    const-string v129, "LOR"

    const-string v130, "IXOR"

    const-string v131, "LXOR"

    const-string v132, "IINC"

    const-string v133, "I2L"

    const-string v134, "I2F"

    const-string v135, "I2D"

    const-string v136, "L2I"

    const-string v137, "L2F"

    const-string v138, "L2D"

    const-string v139, "F2I"

    const-string v140, "F2L"

    const-string v141, "F2D"

    const-string v142, "D2I"

    const-string v143, "D2L"

    const-string v144, "D2F"

    const-string v145, "I2B"

    const-string v146, "I2C"

    const-string v147, "I2S"

    const-string v148, "LCMP"

    const-string v149, "FCMPL"

    const-string v150, "FCMPG"

    const-string v151, "DCMPL"

    const-string v152, "DCMPG"

    const-string v153, "IFEQ"

    const-string v154, "IFNE"

    const-string v155, "IFLT"

    const-string v156, "IFGE"

    const-string v157, "IFGT"

    const-string v158, "IFLE"

    const-string v159, "IF_ICMPEQ"

    const-string v160, "IF_ICMPNE"

    const-string v161, "IF_ICMPLT"

    const-string v162, "IF_ICMPGE"

    const-string v163, "IF_ICMPGT"

    const-string v164, "IF_ICMPLE"

    const-string v165, "IF_ACMPEQ"

    const-string v166, "IF_ACMPNE"

    const-string v167, "GOTO"

    const-string v168, "JSR"

    const-string v169, "RET"

    const-string v170, "TABLESWITCH"

    const-string v171, "LOOKUPSWITCH"

    const-string v172, "IRETURN"

    const-string v173, "LRETURN"

    const-string v174, "FRETURN"

    const-string v175, "DRETURN"

    const-string v176, "ARETURN"

    const-string v177, "RETURN"

    const-string v178, "GETSTATIC"

    const-string v179, "PUTSTATIC"

    const-string v180, "GETFIELD"

    const-string v181, "PUTFIELD"

    const-string v182, "INVOKEVIRTUAL"

    const-string v183, "INVOKESPECIAL"

    const-string v184, "INVOKESTATIC"

    const-string v185, "INVOKEINTERFACE"

    const-string v186, "INVOKEDYNAMIC"

    const-string v187, "NEW"

    const-string v188, "NEWARRAY"

    const-string v189, "ANEWARRAY"

    const-string v190, "ARRAYLENGTH"

    const-string v191, "ATHROW"

    const-string v192, "CHECKCAST"

    const-string v193, "INSTANCEOF"

    const-string v194, "MONITORENTER"

    const-string v195, "MONITOREXIT"

    const-string v196, "WIDE"

    const-string v197, "MULTIANEWARRAY"

    filled-new-array/range {v0 .. v199}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/E70;->c:[Ljava/lang/String;

    const-string v11, "T_INT"

    const-string v12, "T_LONG"

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, "T_BOOLEAN"

    const-string v6, "T_CHAR"

    const-string v7, "T_FLOAT"

    const-string v8, "T_DOUBLE"

    const-string v9, "T_BYTE"

    const-string v10, "T_SHORT"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/E70;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const-string v2, "\\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    const-string v2, "\\r"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2

    const-string v2, "\\\\"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    if-ne v2, v0, :cond_3

    const-string v2, "\\\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const/16 v3, 0x20

    if-lt v2, v3, :cond_5

    const/16 v3, 0x7f

    if-le v2, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    :goto_1
    const-string v3, "\\u"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    if-ge v2, v3, :cond_6

    const-string v4, "000"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const/16 v4, 0x100

    if-ge v2, v4, :cond_7

    const-string v4, "00"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const/16 v4, 0x1000

    if-ge v2, v4, :cond_8

    const/16 v4, 0x30

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method
