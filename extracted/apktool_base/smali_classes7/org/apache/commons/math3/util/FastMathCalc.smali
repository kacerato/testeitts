.class Lorg/apache/commons/math3/util/FastMathCalc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FACT:[D

.field private static final HEX_40000000:J = 0x40000000L

.field private static final LN_SPLIT_COEF:[[D

.field private static final TABLE_END_DECL:Ljava/lang/String; = "    };"

.field private static final TABLE_START_DECL:Ljava/lang/String; = "    {"


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0x14

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    const/4 v0, 0x2

    new-array v1, v0, [D

    fill-array-data v1, :array_1

    new-array v2, v0, [D

    fill-array-data v2, :array_2

    new-array v3, v0, [D

    fill-array-data v3, :array_3

    new-array v4, v0, [D

    fill-array-data v4, :array_4

    new-array v5, v0, [D

    fill-array-data v5, :array_5

    new-array v6, v0, [D

    fill-array-data v6, :array_6

    new-array v7, v0, [D

    fill-array-data v7, :array_7

    new-array v8, v0, [D

    fill-array-data v8, :array_8

    new-array v9, v0, [D

    fill-array-data v9, :array_9

    new-array v10, v0, [D

    fill-array-data v10, :array_a

    new-array v11, v0, [D

    fill-array-data v11, :array_b

    new-array v12, v0, [D

    fill-array-data v12, :array_c

    new-array v13, v0, [D

    fill-array-data v13, :array_d

    new-array v14, v0, [D

    fill-array-data v14, :array_e

    new-array v15, v0, [D

    fill-array-data v15, :array_f

    new-array v0, v0, [D

    fill-array-data v0, :array_10

    move-object/from16 v16, v0

    filled-new-array/range {v1 .. v16}, [[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/util/FastMathCalc;->LN_SPLIT_COEF:[[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x4018000000000000L    # 6.0
        0x4038000000000000L    # 24.0
        0x405e000000000000L    # 120.0
        0x4086800000000000L    # 720.0
        0x40b3b00000000000L    # 5040.0
        0x40e3b00000000000L    # 40320.0
        0x4116260000000000L    # 362880.0
        0x414baf8000000000L    # 3628800.0
        0x418308a800000000L    # 3.99168E7
        0x41bc8cfc00000000L    # 4.790016E8
        0x41f7328cc0000000L    # 6.2270208E9
        0x42344c3b28000000L    # 8.71782912E10
        0x4273077775800000L    # 1.307674368E12
        0x42b3077775800000L    # 2.0922789888E13
        0x42f437eeecd80000L    # 3.55687428096E14
        0x4336beecca730000L    # 6.402373705728E15
        0x437b02b930689000L    # 1.21645100408832E17
    .end array-data

    :array_1
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x3fe5555540000000L    # 0.6666666269302368
        0x3e65555555555575L    # 3.9736429850260626E-8
    .end array-data

    :array_3
    .array-data 8
        0x3fd9999980000000L    # 0.3999999761581421
        0x3e5999999998f89bL    # 2.3841857910019882E-8
    .end array-data

    :array_4
    .array-data 8
        0x3fd2492480000000L    # 0.2857142686843872
        0x3e52492492f04decL    # 1.7029898543501842E-8
    .end array-data

    :array_5
    .array-data 8
        0x3fcc71c700000000L    # 0.2222222089767456
        0x3e4c71c65d4f9f93L    # 1.3245471311735498E-8
    .end array-data

    :array_6
    .array-data 8
        0x3fc745d140000000L    # 0.1818181574344635
        0x3e5a2eadbefa2565L    # 2.4384203044354907E-8
    .end array-data

    :array_7
    .array-data 8
        0x3fc3b13b00000000L    # 0.1538461446762085
        0x3e43a0e93f3d8b15L    # 9.140260083262505E-9
    .end array-data

    :array_8
    .array-data 8
        0x3fc1111100000000L
        0x3e43cd12b7438617L    # 9.220590270857665E-9
    .end array-data

    :array_9
    .array-data 8
        0x3fbe1e1d40000000L    # 0.11764700710773468
        0x3e4a9d505e323f26L    # 1.2393345855018391E-8
    .end array-data

    :array_a
    .array-data 8
        0x3fbaf29580000000L    # 0.10526403784751892
        0x3e41b855b8f7ea77L    # 8.251545029714408E-9
    .end array-data

    :array_b
    .array-data 8
        0x3fb8608e40000000L    # 0.0952233225107193
        0x3e4b38ab3aca7380L    # 1.2675934823758863E-8
    .end array-data

    :array_c
    .array-data 8
        0x3fb64e8f40000000L    # 0.08713622391223907
        0x3e488bd8ad726e7fL    # 1.1430250008909141E-8
    .end array-data

    :array_d
    .array-data 8
        0x3fb41380c0000000L    # 0.07842259109020233
        0x3e24a721115060edL    # 2.404307984052299E-9
    .end array-data

    :array_e
    .array-data 8
        0x3fb56e9340000000L    # 0.08371849358081818
        0x3e494302f4f7069bL    # 1.176342548272881E-8
    .end array-data

    :array_f
    .array-data 8
        0x3f9f52e000000000L    # 0.030589580535888672
        0x3e164345ef031be1L    # 1.2958646899018938E-9
    .end array-data

    :array_10
    .array-data 8
        0x3fc32d66c0000000L    # 0.14982303977012634
        0x3e4a5298001e0c82L    # 1.225743062930824E-8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildSinCosTables([D[D[D[DI[D[D)V
    .locals 15

    move/from16 v0, p4

    const/4 v1, 0x1

    const/4 v2, 0x2

    new-array v3, v2, [D

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x7

    if-ge v5, v6, :cond_0

    int-to-double v6, v5

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    div-double/2addr v6, v8

    invoke-static {v6, v7, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->slowSin(D[D)D

    aget-wide v8, v3, v4

    aput-wide v8, p0, v5

    aget-wide v8, v3, v1

    aput-wide v8, p1, v5

    invoke-static {v6, v7, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->slowCos(D[D)D

    aget-wide v6, v3, v4

    aput-wide v6, p2, v5

    aget-wide v6, v3, v1

    aput-wide v6, p3, v5

    add-int/2addr v5, v1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v6, v0, :cond_2

    new-array v5, v2, [D

    new-array v7, v2, [D

    new-array v8, v2, [D

    new-array v9, v2, [D

    and-int/lit8 v10, v6, 0x1

    if-nez v10, :cond_1

    div-int/lit8 v10, v6, 0x2

    aget-wide v11, p0, v10

    aput-wide v11, v5, v4

    aget-wide v11, p1, v10

    aput-wide v11, v5, v1

    aget-wide v11, p2, v10

    aput-wide v11, v7, v4

    aget-wide v10, p3, v10

    aput-wide v10, v7, v1

    invoke-static {v5, v7, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    aget-wide v10, v3, v4

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    aput-wide v10, p0, v6

    aget-wide v10, v3, v1

    mul-double/2addr v10, v12

    aput-wide v10, p1, v6

    invoke-static {v7, v7, v8}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    invoke-static {v5, v5, v9}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    aget-wide v10, v9, v4

    neg-double v10, v10

    aput-wide v10, v9, v4

    aget-wide v10, v9, v1

    neg-double v10, v10

    aput-wide v10, v9, v1

    invoke-static {v8, v9, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    aget-wide v7, v3, v4

    aput-wide v7, p2, v6

    aget-wide v7, v3, v1

    aput-wide v7, p3, v6

    goto :goto_2

    :cond_1
    div-int/lit8 v10, v6, 0x2

    aget-wide v11, p0, v10

    aput-wide v11, v5, v4

    aget-wide v11, p1, v10

    aput-wide v11, v5, v1

    aget-wide v11, p2, v10

    aput-wide v11, v7, v4

    aget-wide v11, p3, v10

    aput-wide v11, v7, v1

    add-int/2addr v10, v1

    aget-wide v11, p0, v10

    aput-wide v11, v8, v4

    aget-wide v11, p1, v10

    aput-wide v11, v8, v1

    aget-wide v11, p2, v10

    aget-wide v13, p3, v10

    new-array v10, v2, [D

    aput-wide v11, v10, v4

    aput-wide v13, v10, v1

    invoke-static {v5, v10, v9}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    invoke-static {v7, v8, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    invoke-static {v3, v9, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    aget-wide v11, v3, v4

    aput-wide v11, p0, v6

    aget-wide v11, v3, v1

    aput-wide v11, p1, v6

    invoke-static {v7, v10, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    invoke-static {v5, v8, v9}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    aget-wide v7, v9, v4

    neg-double v7, v7

    aput-wide v7, v9, v4

    aget-wide v7, v9, v1

    neg-double v7, v7

    aput-wide v7, v9, v1

    invoke-static {v3, v9, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    aget-wide v7, v3, v4

    aput-wide v7, p2, v6

    aget-wide v7, v3, v1

    aput-wide v7, p3, v6

    :goto_2
    add-int/2addr v6, v1

    goto/16 :goto_1

    :cond_2
    move v3, v4

    :goto_3
    if-ge v3, v0, :cond_3

    new-array v5, v2, [D

    aget-wide v6, p2, v3

    aget-wide v8, p3, v3

    new-array v10, v2, [D

    aput-wide v6, v10, v4

    aput-wide v8, v10, v1

    invoke-static {v10, v5}, Lorg/apache/commons/math3/util/FastMathCalc;->splitReciprocal([D[D)V

    aget-wide v6, p0, v3

    aget-wide v8, p1, v3

    new-array v11, v2, [D

    aput-wide v6, v11, v4

    aput-wide v8, v11, v1

    invoke-static {v11, v5, v10}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    aget-wide v5, v10, v4

    aput-wide v5, p5, v3

    aget-wide v5, v10, v1

    aput-wide v5, p6, v3

    add-int/2addr v3, v1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private static checkLen(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public static expint(I[D)D
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [D

    new-array v2, v0, [D

    new-array v0, v0, [D

    const-wide v3, 0x4005bf0a8b145769L    # Math.E

    const/4 v5, 0x0

    aput-wide v3, v1, v5

    const-wide v3, 0x3ca4d57ee2b1013aL

    const/4 v6, 0x1

    aput-wide v3, v1, v6

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    :goto_0
    if-lez p0, :cond_1

    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_0

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->quadMult([D[D[D)V

    aget-wide v3, v2, v5

    aput-wide v3, v0, v5

    aget-wide v3, v2, v6

    aput-wide v3, v0, v6

    :cond_0
    invoke-static {v1, v1, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->quadMult([D[D[D)V

    aget-wide v3, v2, v5

    aput-wide v3, v1, v5

    aget-wide v3, v2, v6

    aput-wide v3, v1, v6

    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    aget-wide v1, v0, v5

    aput-wide v1, p1, v5

    aget-wide v1, v0, v6

    aput-wide v1, p1, v6

    invoke-static {p1}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    :cond_2
    aget-wide p0, v0, v5

    aget-wide v1, v0, v6

    add-double/2addr p0, v1

    return-wide p0
.end method

.method public static format(D)Ljava/lang/String;
    .locals 3

    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    const-string p0, "Double.NaN,"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x0

    cmpl-double v1, p0, v1

    if-ltz v1, :cond_1

    const-string v1, "+"

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "d,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    array-length p1, p3

    invoke-static {p2, p1}, Lorg/apache/commons/math3/util/FastMathCalc;->checkLen(II)V

    .line 12
    const-string p1, "    {"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-wide v0, p3, p2

    .line 14
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->format(D)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "        %s%n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 15
    :cond_0
    const-string p1, "    };"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static printarray(Ljava/io/PrintStream;Ljava/lang/String;I[[D)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2
    array-length p1, p3

    invoke-static {p2, p1}, Lorg/apache/commons/math3/util/FastMathCalc;->checkLen(II)V

    .line 3
    const-string p1, "    { "

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4
    array-length p1, p3

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v2, p3, v0

    .line 5
    const-string v3, "        {"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 6
    array-length v3, v2

    move v4, p2

    :goto_1
    if-ge v4, v3, :cond_0

    aget-wide v5, v2, v4

    .line 7
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMathCalc;->format(D)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%-25.25s"

    invoke-virtual {p0, v6, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 8
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "}, // "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    .line 9
    :cond_1
    const-string p1, "    };"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static quadMult([D[D[D)V
    .locals 13

    const/4 v0, 0x2

    new-array v1, v0, [D

    new-array v2, v0, [D

    new-array v0, v0, [D

    const/4 v3, 0x0

    aget-wide v4, p0, v3

    invoke-static {v4, v5, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    aget-wide v4, p1, v3

    invoke-static {v4, v5, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    invoke-static {v1, v2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    aget-wide v4, v0, v3

    aput-wide v4, p2, v3

    const/4 v4, 0x1

    aget-wide v5, v0, v4

    aput-wide v5, p2, v4

    aget-wide v5, p1, v4

    invoke-static {v5, v6, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    invoke-static {v1, v2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    aget-wide v5, p2, v3

    aget-wide v7, v0, v3

    add-double v9, v5, v7

    aget-wide v11, p2, v4

    sub-double v5, v9, v5

    sub-double/2addr v5, v7

    sub-double/2addr v11, v5

    aput-wide v11, p2, v4

    aput-wide v9, p2, v3

    aget-wide v5, v0, v4

    add-double v7, v9, v5

    sub-double v9, v7, v9

    sub-double/2addr v9, v5

    sub-double/2addr v11, v9

    aput-wide v11, p2, v4

    aput-wide v7, p2, v3

    aget-wide v5, p0, v4

    invoke-static {v5, v6, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    aget-wide v5, p1, v3

    invoke-static {v5, v6, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    invoke-static {v1, v2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    aget-wide v5, p2, v3

    aget-wide v7, v0, v3

    add-double v9, v5, v7

    aget-wide v11, p2, v4

    sub-double v5, v9, v5

    sub-double/2addr v5, v7

    sub-double/2addr v11, v5

    aput-wide v11, p2, v4

    aput-wide v9, p2, v3

    aget-wide v5, v0, v4

    add-double v7, v9, v5

    sub-double v9, v7, v9

    sub-double/2addr v9, v5

    sub-double/2addr v11, v9

    aput-wide v11, p2, v4

    aput-wide v7, p2, v3

    aget-wide v5, p0, v4

    invoke-static {v5, v6, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    aget-wide p0, p1, v4

    invoke-static {p0, p1, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    invoke-static {v1, v2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    aget-wide p0, p2, v3

    aget-wide v1, v0, v3

    add-double v5, p0, v1

    aget-wide v7, p2, v4

    sub-double p0, v5, p0

    sub-double/2addr p0, v1

    sub-double/2addr v7, p0

    aput-wide v7, p2, v4

    aput-wide v5, p2, v3

    aget-wide p0, v0, v4

    add-double v0, v5, p0

    sub-double v5, v0, v5

    sub-double/2addr v5, p0

    sub-double/2addr v7, v5

    aput-wide v7, p2, v4

    aput-wide v0, p2, v3

    return-void
.end method

.method private static resplit([D)V
    .locals 10

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    add-double v6, v1, v4

    sub-double v1, v6, v1

    sub-double/2addr v1, v4

    neg-double v1, v1

    const-wide v4, 0x7dfe94c85c298c4cL    # 8.0E298

    cmpg-double v4, v6, v4

    const-wide/high16 v8, 0x41d0000000000000L    # 1.073741824E9

    if-gez v4, :cond_0

    const-wide v4, -0x2016b37a3d673b4L    # -8.0E298

    cmpl-double v4, v6, v4

    if-lez v4, :cond_0

    mul-double/2addr v8, v6

    add-double v4, v6, v8

    sub-double/2addr v4, v8

    aput-wide v4, p0, v0

    sub-double/2addr v6, v4

    add-double/2addr v6, v1

    aput-wide v6, p0, v3

    goto :goto_0

    :cond_0
    const-wide/high16 v4, 0x3e10000000000000L    # 9.313225746154785E-10

    mul-double/2addr v4, v6

    add-double/2addr v4, v6

    sub-double/2addr v4, v6

    mul-double/2addr v4, v8

    aput-wide v4, p0, v0

    sub-double/2addr v6, v4

    add-double/2addr v6, v1

    aput-wide v6, p0, v3

    :goto_0
    return-void
.end method

.method public static slowCos(D[D)D
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [D

    new-array v2, v0, [D

    new-array v3, v0, [D

    new-array v0, v0, [D

    invoke-static {p0, p1, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    const/4 p0, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, p0

    const/4 p1, 0x0

    aput-wide v4, v2, p1

    sget-object v4, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    array-length v4, v4

    sub-int/2addr v4, p0

    :goto_0
    if-ltz v4, :cond_2

    invoke-static {v1, v2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    aget-wide v5, v0, p1

    aput-wide v5, v2, p1

    aget-wide v5, v0, p0

    aput-wide v5, v2, p0

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    sget-object v5, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    aget-wide v6, v5, v4

    invoke-static {v6, v7, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    invoke-static {v0, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->splitReciprocal([D[D)V

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_1

    aget-wide v5, v3, p1

    neg-double v5, v5

    aput-wide v5, v3, p1

    aget-wide v5, v3, p0

    neg-double v5, v5

    aput-wide v5, v3, p0

    :cond_1
    invoke-static {v2, v3, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    aget-wide v5, v0, p1

    aput-wide v5, v2, p1

    aget-wide v5, v0, p0

    aput-wide v5, v2, p0

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    aget-wide v0, v2, p1

    aput-wide v0, p2, p1

    aget-wide v0, v2, p0

    aput-wide v0, p2, p0

    :cond_3
    aget-wide p1, v2, p1

    aget-wide v0, v2, p0

    add-double/2addr p1, v0

    return-wide p1
.end method

.method public static slowLog(D)[D
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [D

    new-array v2, v0, [D

    new-array v3, v0, [D

    new-array v4, v0, [D

    invoke-static {p0, p1, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    const/4 p0, 0x0

    aget-wide v5, v1, p0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    aput-wide v5, v1, p0

    invoke-static {v1}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    invoke-static {v1, v4}, Lorg/apache/commons/math3/util/FastMathCalc;->splitReciprocal([D[D)V

    aget-wide v5, v1, p0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    sub-double/2addr v5, v7

    aput-wide v5, v1, p0

    invoke-static {v1}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    invoke-static {v1, v4, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    aget-wide v5, v3, p0

    aput-wide v5, v1, p0

    const/4 p1, 0x1

    aget-wide v5, v3, p1

    aput-wide v5, v1, p1

    invoke-static {v1, v1, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    sget-object v5, Lorg/apache/commons/math3/util/FastMathCalc;->LN_SPLIT_COEF:[[D

    array-length v6, v5

    sub-int/2addr v6, p1

    aget-object v6, v5, v6

    aget-wide v7, v6, p0

    aput-wide v7, v3, p0

    array-length v6, v5

    sub-int/2addr v6, p1

    aget-object v6, v5, v6

    aget-wide v7, v6, p1

    aput-wide v7, v3, p1

    array-length v5, v5

    sub-int/2addr v5, v0

    :goto_0
    if-ltz v5, :cond_0

    invoke-static {v3, v2, v4}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    aget-wide v6, v4, p0

    aput-wide v6, v3, p0

    aget-wide v6, v4, p1

    aput-wide v6, v3, p1

    sget-object v0, Lorg/apache/commons/math3/util/FastMathCalc;->LN_SPLIT_COEF:[[D

    aget-object v0, v0, v5

    invoke-static {v3, v0, v4}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    aget-wide v6, v4, p0

    aput-wide v6, v3, p0

    aget-wide v6, v4, p1

    aput-wide v6, v3, p1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v3, v1, v4}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    aget-wide v0, v4, p0

    aput-wide v0, v3, p0

    aget-wide v0, v4, p1

    aput-wide v0, v3, p1

    return-object v3
.end method

.method public static slowSin(D[D)D
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [D

    new-array v2, v0, [D

    new-array v3, v0, [D

    new-array v0, v0, [D

    invoke-static {p0, p1, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    const/4 p0, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, p0

    const/4 p1, 0x0

    aput-wide v4, v2, p1

    sget-object v4, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    array-length v4, v4

    sub-int/2addr v4, p0

    :goto_0
    if-ltz v4, :cond_2

    invoke-static {v1, v2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    aget-wide v5, v0, p1

    aput-wide v5, v2, p1

    aget-wide v5, v0, p0

    aput-wide v5, v2, p0

    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    sget-object v5, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    aget-wide v6, v5, v4

    invoke-static {v6, v7, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    invoke-static {v0, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->splitReciprocal([D[D)V

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_1

    aget-wide v5, v3, p1

    neg-double v5, v5

    aput-wide v5, v3, p1

    aget-wide v5, v3, p0

    neg-double v5, v5

    aput-wide v5, v3, p0

    :cond_1
    invoke-static {v2, v3, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    aget-wide v5, v0, p1

    aput-wide v5, v2, p1

    aget-wide v5, v0, p0

    aput-wide v5, v2, p0

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    aget-wide v0, v2, p1

    aput-wide v0, p2, p1

    aget-wide v0, v2, p0

    aput-wide v0, p2, p0

    :cond_3
    aget-wide p1, v2, p1

    aget-wide v0, v2, p0

    add-double/2addr p1, v0

    return-wide p1
.end method

.method public static slowexp(D[D)D
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [D

    new-array v2, v0, [D

    new-array v3, v0, [D

    new-array v0, v0, [D

    invoke-static {p0, p1, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    const/4 p0, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, p0

    const/4 p1, 0x0

    aput-wide v4, v2, p1

    sget-object v4, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    array-length v4, v4

    sub-int/2addr v4, p0

    :goto_0
    if-ltz v4, :cond_0

    invoke-static {v1, v2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    aget-wide v5, v0, p1

    aput-wide v5, v2, p1

    aget-wide v5, v0, p0

    aput-wide v5, v2, p0

    sget-object v5, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    aget-wide v6, v5, v4

    invoke-static {v6, v7, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    invoke-static {v0, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->splitReciprocal([D[D)V

    invoke-static {v2, v3, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    aget-wide v5, v0, p1

    aput-wide v5, v2, p1

    aget-wide v5, v0, p0

    aput-wide v5, v2, p0

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    aget-wide v0, v2, p1

    aput-wide v0, p2, p1

    aget-wide v0, v2, p0

    aput-wide v0, p2, p0

    :cond_1
    aget-wide p1, v2, p1

    aget-wide v0, v2, p0

    add-double/2addr p1, v0

    return-wide p1
.end method

.method private static split(D[D)V
    .locals 7

    const-wide v0, 0x7dfe94c85c298c4cL    # 8.0E298

    cmpg-double v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/high16 v3, 0x41d0000000000000L    # 1.073741824E9

    if-gez v0, :cond_0

    const-wide v5, -0x2016b37a3d673b4L    # -8.0E298

    cmpl-double v0, p0, v5

    if-lez v0, :cond_0

    mul-double/2addr v3, p0

    add-double v5, p0, v3

    sub-double/2addr v5, v3

    aput-wide v5, p2, v2

    sub-double/2addr p0, v5

    aput-wide p0, p2, v1

    goto :goto_0

    :cond_0
    const-wide/high16 v5, 0x3e10000000000000L    # 9.313225746154785E-10

    mul-double/2addr v5, p0

    add-double/2addr v5, p0

    sub-double/2addr v5, p0

    mul-double/2addr v5, v3

    aput-wide v5, p2, v2

    sub-double/2addr p0, v5

    aput-wide p0, p2, v1

    :goto_0
    return-void
.end method

.method private static splitAdd([D[D[D)V
    .locals 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    add-double/2addr v1, p0

    aput-wide v1, p2, v0

    invoke-static {p2}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    return-void
.end method

.method private static splitMult([D[D[D)V
    .locals 8

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    mul-double/2addr v1, v3

    aput-wide v1, p2, v0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    mul-double/2addr v1, v4

    aget-wide v6, p0, v3

    aget-wide p0, p1, v0

    mul-double/2addr p0, v6

    add-double/2addr v1, p0

    mul-double/2addr v6, v4

    add-double/2addr v1, v6

    aput-wide v1, p2, v3

    invoke-static {p2}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    return-void
.end method

.method public static splitReciprocal([D[D)V
    .locals 13

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_0

    aget-wide v5, p0, v2

    aput-wide v5, p0, v0

    aput-wide v3, p0, v2

    :cond_0
    aget-wide v5, p0, v0

    const-wide v7, 0x3fefffff80000000L    # 0.9999997615814209

    div-double v5, v7, v5

    aput-wide v5, p1, v0

    aget-wide v5, p0, v0

    const-wide/high16 v9, 0x3e90000000000000L    # 2.384185791015625E-7

    mul-double/2addr v9, v5

    aget-wide v11, p0, v2

    mul-double/2addr v7, v11

    sub-double/2addr v9, v7

    mul-double v7, v5, v5

    mul-double/2addr v5, v11

    add-double/2addr v7, v5

    div-double/2addr v9, v7

    aput-wide v9, p1, v2

    cmpl-double v1, v9, v9

    if-eqz v1, :cond_1

    aput-wide v3, p1, v2

    :cond_1
    invoke-static {p1}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    move v1, v0

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_2

    aget-wide v3, p1, v0

    aget-wide v5, p0, v0

    mul-double v7, v3, v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v7

    aget-wide v7, p0, v2

    mul-double v11, v3, v7

    sub-double/2addr v9, v11

    aget-wide v11, p1, v2

    mul-double/2addr v5, v11

    sub-double/2addr v9, v5

    mul-double/2addr v7, v11

    sub-double/2addr v9, v7

    add-double/2addr v3, v11

    mul-double/2addr v9, v3

    add-double/2addr v11, v9

    aput-wide v11, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
