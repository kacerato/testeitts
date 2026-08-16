.class public Lorg/eclipse/jdt/internal/compiler/util/FloatUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DOUBLE_EXPONENT_BIAS:I = 0x3ff

.field private static final DOUBLE_EXPONENT_SHIFT:I = 0x34

.field private static final DOUBLE_FRACTION_WIDTH:I = 0x34

.field private static final DOUBLE_PRECISION:I = 0x35

.field private static final MAX_DOUBLE_EXPONENT:I = 0x3ff

.field private static final MAX_SINGLE_EXPONENT:I = 0x7f

.field private static final MIN_NORMALIZED_DOUBLE_EXPONENT:I = -0x3fe

.field private static final MIN_NORMALIZED_SINGLE_EXPONENT:I = -0x7e

.field private static final MIN_UNNORMALIZED_DOUBLE_EXPONENT:I = -0x433

.field private static final MIN_UNNORMALIZED_SINGLE_EXPONENT:I = -0x96

.field private static final SINGLE_EXPONENT_BIAS:I = 0x7f

.field private static final SINGLE_EXPONENT_SHIFT:I = 0x17

.field private static final SINGLE_FRACTION_WIDTH:I = 0x17

.field private static final SINGLE_PRECISION:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertHexFloatingPointLiteralToBits([C)J
    .locals 19

    move-object/from16 v0, p0

    array-length v1, v0

    const/4 v2, 0x0

    aget-char v3, v0, v2

    const/16 v4, 0x30

    if-ne v3, v4, :cond_23

    const/4 v3, 0x1

    aget-char v5, v0, v3

    const/16 v6, 0x58

    if-eq v5, v6, :cond_1

    const/16 v6, 0x78

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v5, 0x2

    move v7, v5

    const/4 v8, -0x1

    :goto_1
    aget-char v9, v0, v7

    const/16 v10, 0x2e

    if-eq v9, v10, :cond_22

    if-eq v9, v4, :cond_21

    const-wide/16 v11, 0x0

    move v4, v2

    move-wide v13, v11

    const/4 v9, -0x1

    :goto_2
    aget-char v15, v0, v7

    if-eq v15, v10, :cond_20

    const/16 v16, 0x4

    packed-switch v15, :pswitch_data_0

    packed-switch v15, :pswitch_data_1

    packed-switch v15, :pswitch_data_2

    if-gez v8, :cond_2

    move v8, v7

    :cond_2
    const/16 v10, 0x50

    if-eq v15, v10, :cond_4

    const/16 v10, 0x70

    if-ne v15, v10, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    :cond_4
    :goto_3
    add-int/2addr v7, v3

    move v10, v2

    move v15, v3

    :goto_4
    if-lt v7, v1, :cond_5

    goto :goto_5

    :cond_5
    aget-char v2, v0, v7

    const/16 v6, 0x2b

    if-eq v2, v6, :cond_1d

    const/16 v6, 0x2d

    if-eq v2, v6, :cond_1c

    packed-switch v2, :pswitch_data_3

    :goto_5
    if-ge v7, v1, :cond_8

    aget-char v0, v0, v7

    const/16 v1, 0x44

    if-eq v0, v1, :cond_8

    const/16 v1, 0x46

    if-eq v0, v1, :cond_7

    const/16 v1, 0x64

    if-eq v0, v1, :cond_8

    const/16 v1, 0x66

    if-ne v0, v1, :cond_6

    goto :goto_6

    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    :cond_7
    :goto_6
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    move v0, v3

    :goto_7
    cmp-long v1, v13, v11

    if-nez v1, :cond_9

    return-wide v11

    :cond_9
    add-int/lit8 v1, v4, -0x4

    ushr-long v1, v13, v1

    const-wide/16 v6, 0x8

    and-long/2addr v6, v1

    cmp-long v6, v6, v11

    if-nez v6, :cond_c

    add-int/lit8 v6, v4, -0x1

    const-wide/16 v17, 0x4

    and-long v17, v1, v17

    cmp-long v7, v17, v11

    if-nez v7, :cond_b

    add-int/lit8 v6, v4, -0x2

    const-wide/16 v17, 0x2

    and-long v1, v1, v17

    cmp-long v1, v1, v11

    if-nez v1, :cond_a

    add-int/lit8 v4, v4, -0x3

    const/4 v1, 0x3

    goto :goto_9

    :cond_a
    move v1, v5

    :goto_8
    move v4, v6

    goto :goto_9

    :cond_b
    move v1, v3

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    :goto_9
    const-wide/16 v6, 0x1

    if-eqz v0, :cond_14

    const/16 v0, 0x35

    if-le v4, v0, :cond_d

    add-int/lit8 v0, v4, -0x36

    ushr-long/2addr v13, v0

    and-long/2addr v6, v13

    add-long/2addr v13, v6

    ushr-long v6, v13, v3

    const-wide/high16 v17, 0x20000000000000L

    and-long v17, v6, v17

    cmp-long v0, v17, v11

    if-eqz v0, :cond_e

    ushr-long v6, v13, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_d
    rsub-int/lit8 v0, v4, 0x35

    shl-long v6, v13, v0

    :cond_e
    :goto_a
    if-lez v4, :cond_10

    if-ge v9, v8, :cond_f

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x4

    sub-int v2, v8, v1

    goto :goto_b

    :cond_f
    sub-int/2addr v9, v8

    sub-int/2addr v9, v3

    mul-int/lit8 v9, v9, -0x4

    sub-int v2, v9, v1

    goto :goto_b

    :cond_10
    const/4 v2, 0x0

    :goto_b
    mul-int/2addr v15, v10

    add-int/2addr v15, v2

    add-int/lit8 v0, v15, -0x1

    const/16 v1, 0x3ff

    if-le v0, v1, :cond_11

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    goto :goto_c

    :cond_11
    const/16 v1, -0x3fe

    if-lt v0, v1, :cond_12

    sub-int/2addr v15, v1

    int-to-long v0, v15

    const-wide v2, -0x10000000000001L

    and-long/2addr v2, v6

    const/16 v4, 0x34

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    goto :goto_c

    :cond_12
    const/16 v1, -0x433

    if-le v0, v1, :cond_13

    rsub-int v0, v15, -0x3fd

    ushr-long v0, v6, v0

    goto :goto_c

    :cond_13
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_14
    const/16 v0, 0x18

    if-le v4, v0, :cond_15

    add-int/lit8 v0, v4, -0x19

    ushr-long/2addr v13, v0

    and-long/2addr v6, v13

    add-long/2addr v13, v6

    ushr-long v6, v13, v3

    const-wide/32 v17, 0x1000000

    and-long v17, v6, v17

    cmp-long v0, v17, v11

    if-eqz v0, :cond_16

    ushr-long v6, v13, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_15
    rsub-int/lit8 v0, v4, 0x18

    shl-long v6, v13, v0

    :cond_16
    :goto_d
    if-lez v4, :cond_18

    if-ge v9, v8, :cond_17

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x4

    sub-int v2, v8, v1

    goto :goto_e

    :cond_17
    sub-int/2addr v9, v8

    sub-int/2addr v9, v3

    mul-int/lit8 v9, v9, -0x4

    sub-int v2, v9, v1

    goto :goto_e

    :cond_18
    const/4 v2, 0x0

    :goto_e
    mul-int/2addr v15, v10

    add-int/2addr v15, v2

    add-int/lit8 v0, v15, -0x1

    const/16 v1, 0x7f

    if-le v0, v1, :cond_19

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :goto_f
    int-to-long v0, v0

    goto :goto_10

    :cond_19
    const/16 v1, -0x7e

    if-lt v0, v1, :cond_1a

    sub-int/2addr v15, v1

    int-to-long v0, v15

    const-wide/32 v2, -0x800001

    and-long/2addr v2, v6

    const/16 v4, 0x17

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    goto :goto_10

    :cond_1a
    const/16 v1, -0x96

    if-le v0, v1, :cond_1b

    rsub-int/lit8 v0, v15, -0x7d

    ushr-long v0, v6, v0

    goto :goto_10

    :cond_1b
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_f

    :goto_10
    return-wide v0

    :pswitch_0
    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v2

    add-int/lit8 v7, v7, 0x1

    :goto_11
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    const/4 v15, -0x1

    goto/16 :goto_4

    :cond_1d
    add-int/lit8 v7, v7, 0x1

    move v15, v3

    goto :goto_11

    :pswitch_1
    add-int/lit8 v15, v15, -0x57

    goto :goto_12

    :pswitch_2
    add-int/lit8 v15, v15, -0x37

    goto :goto_12

    :pswitch_3
    add-int/lit8 v15, v15, -0x30

    :goto_12
    if-nez v4, :cond_1e

    int-to-long v13, v15

    move v9, v7

    move/from16 v4, v16

    goto :goto_13

    :cond_1e
    const/16 v2, 0x3c

    if-ge v4, v2, :cond_1f

    shl-long v13, v13, v16

    int-to-long v5, v15

    or-long/2addr v5, v13

    add-int/lit8 v4, v4, 0x4

    move-wide v13, v5

    :cond_1f
    :goto_13
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    :goto_14
    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_20
    add-int/lit8 v5, v7, 0x1

    move v8, v7

    const/4 v2, 0x0

    move v7, v5

    goto :goto_14

    :cond_21
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    :goto_15
    const/4 v5, 0x2

    goto/16 :goto_1

    :cond_22
    add-int/lit8 v5, v7, 0x1

    move v8, v7

    const/4 v2, 0x0

    move v7, v5

    goto :goto_15

    :cond_23
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOfHexDoubleLiteral([C)D
    .locals 2

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/util/FloatUtil;->convertHexFloatingPointLiteralToBits([C)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static valueOfHexFloatLiteral([C)F
    .locals 2

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/util/FloatUtil;->convertHexFloatingPointLiteralToBits([C)J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method
