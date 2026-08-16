.class public abstract Lorg/eclipse/jdt/internal/compiler/impl/Constant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/TypeIds;
.implements Lorg/eclipse/jdt/internal/compiler/ast/OperatorIds;


# static fields
.field public static final NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

.field public static final NotAConstantList:[Lorg/eclipse/jdt/internal/compiler/impl/Constant;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstantList:[Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final computeConstantOperation(Lorg/eclipse/jdt/internal/compiler/impl/Constant;II)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0xa

    packed-switch p2, :pswitch_data_0

    .line 1
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    .line 2
    :pswitch_0
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p2

    invoke-static {p2, v1, p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationPLUS(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/16 p2, 0x8

    if-eq p1, p2, :cond_2

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p2

    const/4 v2, 0x0

    cmpl-float v3, p2, v2

    if-nez v3, :cond_4

    .line 4
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    if-nez p0, :cond_1

    const/high16 p0, -0x80000000

    .line 5
    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double p2, v2, v4

    if-nez p2, :cond_4

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_3

    const-wide/high16 p0, -0x8000000000000000L

    .line 9
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    :goto_0
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p2

    invoke-static {p2, v1, p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationMINUS(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/4 p2, 0x2

    if-eq p1, p2, :cond_9

    const/4 p2, 0x3

    if-eq p1, p2, :cond_8

    const/4 p2, 0x4

    if-eq p1, p2, :cond_7

    const/4 p2, 0x7

    if-eq p1, p2, :cond_6

    if-eq p1, v1, :cond_5

    .line 12
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    .line 13
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    not-int p0, p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 14
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    not-long p0, p0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 15
    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    not-int p0, p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 16
    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    not-int p0, p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 17
    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    not-int p0, p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 18
    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final computeConstantOperation(Lorg/eclipse/jdt/internal/compiler/impl/Constant;IILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 0

    packed-switch p2, :pswitch_data_0

    .line 19
    :pswitch_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    .line 20
    :pswitch_1
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationUNSIGNED_RIGHT_SHIFT(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 21
    :pswitch_2
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationRIGHT_SHIFT(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 22
    :pswitch_3
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationREMAINDER(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 23
    :pswitch_4
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationMULTIPLY(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 24
    :pswitch_5
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationPLUS(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 25
    :pswitch_6
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationMINUS(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 26
    :pswitch_7
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationLEFT_SHIFT(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 27
    :pswitch_8
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationDIVIDE(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 28
    :pswitch_9
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationXOR(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 29
    :pswitch_a
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationGREATER_EQUAL(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 30
    :pswitch_b
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationGREATER(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 31
    :pswitch_c
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationLESS_EQUAL(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 32
    :pswitch_d
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationLESS(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 33
    :pswitch_e
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationOR(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 34
    :pswitch_f
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationAND(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 35
    :pswitch_10
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationOR_OR(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    .line 36
    :pswitch_11
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperationAND_AND(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final computeConstantOperationAND(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 6

    const/16 v0, 0xa

    const/4 v1, 0x7

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_19

    if-eq p1, v3, :cond_13

    if-eq p1, v2, :cond_d

    const/4 v5, 0x5

    if-eq p1, v5, :cond_c

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq p3, v4, :cond_5

    if-eq p3, v3, :cond_4

    if-eq p3, v2, :cond_3

    if-eq p3, v1, :cond_2

    if-eq p3, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    and-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_6
    if-eq p3, v4, :cond_b

    if-eq p3, v3, :cond_a

    if-eq p3, v2, :cond_9

    if-eq p3, v1, :cond_8

    if-eq p3, v0, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-long p2, p2

    and-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    and-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-long p2, p2

    and-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-long p2, p2

    and-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-long p2, p2

    and-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_d
    if-eq p3, v4, :cond_12

    if-eq p3, v3, :cond_11

    if-eq p3, v2, :cond_10

    if-eq p3, v1, :cond_f

    if-eq p3, v0, :cond_e

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    and-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_13
    if-eq p3, v4, :cond_18

    if-eq p3, v3, :cond_17

    if-eq p3, v2, :cond_16

    if-eq p3, v1, :cond_15

    if-eq p3, v0, :cond_14

    goto :goto_0

    :cond_14
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    and-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_19
    if-eq p3, v4, :cond_1e

    if-eq p3, v3, :cond_1d

    if-eq p3, v2, :cond_1c

    if-eq p3, v1, :cond_1b

    if-eq p3, v0, :cond_1a

    :goto_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    :cond_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    and-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    and-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0
.end method

.method public static final computeConstantOperationAND_AND(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0
.end method

.method public static final computeConstantOperationDIVIDE(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    packed-switch p3, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    div-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    div-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    div-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    div-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    div-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    div-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_a
    packed-switch p3, :pswitch_data_2

    :pswitch_b
    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    div-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    float-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-float p1, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_13
    packed-switch p3, :pswitch_data_3

    :pswitch_14
    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-double p2, p2

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p2

    float-to-double p2, p2

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-double p2, p2

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-double p2, p2

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-double p2, p2

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1c
    packed-switch p3, :pswitch_data_4

    :pswitch_1d
    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-long p2, p2

    div-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    div-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_20
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_21
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    div-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_22
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-long p2, p2

    div-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_23
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-long p2, p2

    div-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_24
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-long p2, p2

    div-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_25
    packed-switch p3, :pswitch_data_5

    :pswitch_26
    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    div-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_28
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    div-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_29
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    div-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    div-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    div-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    div-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2e
    packed-switch p3, :pswitch_data_6

    :pswitch_2f
    goto :goto_0

    :pswitch_30
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    div-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_31
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    div-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_32
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_33
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    div-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_34
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    div-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_35
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    div-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_36
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    div-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_37
    packed-switch p3, :pswitch_data_7

    :goto_0
    :pswitch_38
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    :pswitch_39
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    div-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    div-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    div-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    div-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    div-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    div-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_37
        :pswitch_2e
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_13
        :pswitch_a
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_14
        :pswitch_14
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_26
        :pswitch_26
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_2f
        :pswitch_2f
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_38
        :pswitch_38
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch
.end method

.method public static final computeConstantOperationEQUAL_EQUAL(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 3

    const/16 v0, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2b

    :pswitch_1
    if-ne p3, v0, :cond_0

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0xc

    if-ne p3, p0, :cond_2c

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2
    if-ne p3, v0, :cond_2c

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->hasSameValue(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)Z

    move-result p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3
    packed-switch p3, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_2b

    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-ne p0, p1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-ne p0, p1, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-ne p0, p1, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_c
    packed-switch p3, :pswitch_data_2

    :pswitch_d
    goto/16 :goto_2b

    :pswitch_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_8

    goto :goto_7

    :cond_8
    move v1, v2

    :goto_7
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_9

    goto :goto_8

    :cond_9
    move v1, v2

    :goto_8
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    float-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-nez p0, :cond_a

    goto :goto_9

    :cond_a
    move v1, v2

    :goto_9
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-float p1, p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_b

    goto :goto_a

    :cond_b
    move v1, v2

    :goto_a
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_c

    goto :goto_b

    :cond_c
    move v1, v2

    :goto_b
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_d

    goto :goto_c

    :cond_d
    move v1, v2

    :goto_c
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_e

    goto :goto_d

    :cond_e
    move v1, v2

    :goto_d
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_15
    packed-switch p3, :pswitch_data_3

    :pswitch_16
    goto/16 :goto_2b

    :pswitch_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-double p2, p2

    cmpl-double p0, p0, p2

    if-nez p0, :cond_f

    goto :goto_e

    :cond_f
    move v1, v2

    :goto_e
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p2

    float-to-double p2, p2

    cmpl-double p0, p0, p2

    if-nez p0, :cond_10

    goto :goto_f

    :cond_10
    move v1, v2

    :goto_f
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-nez p0, :cond_11

    goto :goto_10

    :cond_11
    move v1, v2

    :goto_10
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    long-to-double p2, p2

    cmpl-double p0, p0, p2

    if-nez p0, :cond_12

    goto :goto_11

    :cond_12
    move v1, v2

    :goto_11
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-double p2, p2

    cmpl-double p0, p0, p2

    if-nez p0, :cond_13

    goto :goto_12

    :cond_13
    move v1, v2

    :goto_12
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-double p2, p2

    cmpl-double p0, p0, p2

    if-nez p0, :cond_14

    goto :goto_13

    :cond_14
    move v1, v2

    :goto_13
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-double p2, p2

    cmpl-double p0, p0, p2

    if-nez p0, :cond_15

    goto :goto_14

    :cond_15
    move v1, v2

    :goto_14
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1e
    packed-switch p3, :pswitch_data_4

    :pswitch_1f
    goto/16 :goto_2b

    :pswitch_20
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_16

    goto :goto_15

    :cond_16
    move v1, v2

    :goto_15
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_21
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_17

    goto :goto_16

    :cond_17
    move v1, v2

    :goto_16
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_22
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-nez p0, :cond_18

    goto :goto_17

    :cond_18
    move v1, v2

    :goto_17
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_23
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_19

    goto :goto_18

    :cond_19
    move v1, v2

    :goto_18
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_24
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_1a

    goto :goto_19

    :cond_1a
    move v1, v2

    :goto_19
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_25
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_1b

    goto :goto_1a

    :cond_1b
    move v1, v2

    :goto_1a
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_26
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_1c

    goto :goto_1b

    :cond_1c
    move v1, v2

    :goto_1b
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_27
    const/4 p1, 0x5

    if-ne p3, p1, :cond_2c

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p1

    if-ne p0, p1, :cond_1d

    goto :goto_1c

    :cond_1d
    move v1, v2

    :goto_1c
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_28
    packed-switch p3, :pswitch_data_5

    :pswitch_29
    goto/16 :goto_2b

    :pswitch_2a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_1e

    goto :goto_1d

    :cond_1e
    move v1, v2

    :goto_1d
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1f

    goto :goto_1e

    :cond_1f
    move v1, v2

    :goto_1e
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-nez p0, :cond_20

    goto :goto_1f

    :cond_20
    move v1, v2

    :goto_1f
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_21

    goto :goto_20

    :cond_21
    move v1, v2

    :goto_20
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-ne p0, p1, :cond_22

    goto :goto_21

    :cond_22
    move v1, v2

    :goto_21
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-ne p0, p1, :cond_23

    goto :goto_22

    :cond_23
    move v1, v2

    :goto_22
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_30
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-ne p0, p1, :cond_24

    goto :goto_23

    :cond_24
    move v1, v2

    :goto_23
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_31
    packed-switch p3, :pswitch_data_6

    :pswitch_32
    goto/16 :goto_2b

    :pswitch_33
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_25

    goto :goto_24

    :cond_25
    move v1, v2

    :goto_24
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_34
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_26

    goto :goto_25

    :cond_26
    move v1, v2

    :goto_25
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_35
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-nez p0, :cond_27

    goto :goto_26

    :cond_27
    move v1, v2

    :goto_26
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_36
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_28

    goto :goto_27

    :cond_28
    move v1, v2

    :goto_27
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_37
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-ne p0, p1, :cond_29

    goto :goto_28

    :cond_29
    move v1, v2

    :goto_28
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_38
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-ne p0, p1, :cond_2a

    goto :goto_29

    :cond_2a
    move v1, v2

    :goto_29
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_39
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-ne p0, p1, :cond_2b

    goto :goto_2a

    :cond_2b
    move v1, v2

    :goto_2a
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3a
    packed-switch p3, :pswitch_data_7

    :cond_2c
    :goto_2b
    :pswitch_3b
    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_2d

    goto :goto_2c

    :cond_2d
    move v1, v2

    :goto_2c
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2e

    goto :goto_2d

    :cond_2e
    move v1, v2

    :goto_2d
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-nez p0, :cond_2f

    goto :goto_2e

    :cond_2f
    move v1, v2

    :goto_2e
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_30

    goto :goto_2f

    :cond_30
    move v1, v2

    :goto_2f
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_40
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-ne p0, p1, :cond_31

    goto :goto_30

    :cond_31
    move v1, v2

    :goto_30
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_41
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-ne p0, p1, :cond_32

    goto :goto_31

    :cond_32
    move v1, v2

    :goto_31
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_42
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-ne p0, p1, :cond_33

    goto :goto_32

    :cond_33
    move v1, v2

    :goto_32
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3a
        :pswitch_31
        :pswitch_28
        :pswitch_27
        :pswitch_0
        :pswitch_1e
        :pswitch_15
        :pswitch_c
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_d
        :pswitch_d
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_16
        :pswitch_16
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_1f
        :pswitch_1f
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_29
        :pswitch_29
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_32
        :pswitch_32
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3b
        :pswitch_3b
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
    .end packed-switch
.end method

.method public static final computeConstantOperationGREATER(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    packed-switch p3, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-le p0, p1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-lez p0, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-lez p0, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-le p0, p1, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-le p0, p1, :cond_5

    move v0, v1

    :cond_5
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-le p0, p1, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_a
    packed-switch p3, :pswitch_data_2

    :pswitch_b
    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_7

    move v0, v1

    :cond_7
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    float-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-lez p0, :cond_9

    move v0, v1

    :cond_9
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-float p1, p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_a

    move v0, v1

    :cond_a
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_b

    move v0, v1

    :cond_b
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_c

    move v0, v1

    :cond_c
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_d

    move v0, v1

    :cond_d
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_13
    packed-switch p3, :pswitch_data_3

    :pswitch_14
    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-double p2, p2

    cmpl-double p0, p0, p2

    if-lez p0, :cond_e

    move v0, v1

    :cond_e
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p2

    float-to-double p2, p2

    cmpl-double p0, p0, p2

    if-lez p0, :cond_f

    move v0, v1

    :cond_f
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-lez p0, :cond_10

    move v0, v1

    :cond_10
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    long-to-double p2, p2

    cmpl-double p0, p0, p2

    if-lez p0, :cond_11

    move v0, v1

    :cond_11
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-double p2, p2

    cmpl-double p0, p0, p2

    if-lez p0, :cond_12

    move v0, v1

    :cond_12
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-double p2, p2

    cmpl-double p0, p0, p2

    if-lez p0, :cond_13

    move v0, v1

    :cond_13
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-double p2, p2

    cmpl-double p0, p0, p2

    if-lez p0, :cond_14

    move v0, v1

    :cond_14
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1c
    packed-switch p3, :pswitch_data_4

    :pswitch_1d
    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-lez p0, :cond_15

    move v0, v1

    :cond_15
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_16

    move v0, v1

    :cond_16
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_20
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-lez p0, :cond_17

    move v0, v1

    :cond_17
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_21
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-lez p0, :cond_18

    move v0, v1

    :cond_18
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_22
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-lez p0, :cond_19

    move v0, v1

    :cond_19
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_23
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-lez p0, :cond_1a

    move v0, v1

    :cond_1a
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_24
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-lez p0, :cond_1b

    move v0, v1

    :cond_1b
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_25
    packed-switch p3, :pswitch_data_5

    :pswitch_26
    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-le p0, p1, :cond_1c

    move v0, v1

    :cond_1c
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_28
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1d

    move v0, v1

    :cond_1d
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_29
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-lez p0, :cond_1e

    move v0, v1

    :cond_1e
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-lez p0, :cond_1f

    move v0, v1

    :cond_1f
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-le p0, p1, :cond_20

    move v0, v1

    :cond_20
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-le p0, p1, :cond_21

    move v0, v1

    :cond_21
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-le p0, p1, :cond_22

    move v0, v1

    :cond_22
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2e
    packed-switch p3, :pswitch_data_6

    :pswitch_2f
    goto/16 :goto_0

    :pswitch_30
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-le p0, p1, :cond_23

    move v0, v1

    :cond_23
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_31
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_24

    move v0, v1

    :cond_24
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_32
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-lez p0, :cond_25

    move v0, v1

    :cond_25
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_33
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-lez p0, :cond_26

    move v0, v1

    :cond_26
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_34
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-le p0, p1, :cond_27

    move v0, v1

    :cond_27
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_35
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-le p0, p1, :cond_28

    move v0, v1

    :cond_28
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_36
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-le p0, p1, :cond_29

    move v0, v1

    :cond_29
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_37
    packed-switch p3, :pswitch_data_7

    :goto_0
    :pswitch_38
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    :pswitch_39
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-le p0, p1, :cond_2a

    move v0, v1

    :cond_2a
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2b

    move v0, v1

    :cond_2b
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-lez p0, :cond_2c

    move v0, v1

    :cond_2c
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-lez p0, :cond_2d

    move v0, v1

    :cond_2d
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-le p0, p1, :cond_2e

    move v0, v1

    :cond_2e
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-le p0, p1, :cond_2f

    move v0, v1

    :cond_2f
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-le p0, p1, :cond_30

    move v0, v1

    :cond_30
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_37
        :pswitch_2e
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_13
        :pswitch_a
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_14
        :pswitch_14
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_26
        :pswitch_26
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_2f
        :pswitch_2f
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_38
        :pswitch_38
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch
.end method

.method public static final computeConstantOperationGREATER_EQUAL(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    packed-switch p3, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-lt p0, p1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-ltz p0, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-lt p0, p1, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-lt p0, p1, :cond_5

    move v0, v1

    :cond_5
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-lt p0, p1, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_a
    packed-switch p3, :pswitch_data_2

    :pswitch_b
    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_7

    move v0, v1

    :cond_7
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    float-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_9

    move v0, v1

    :cond_9
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-float p1, p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_a

    move v0, v1

    :cond_a
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_b

    move v0, v1

    :cond_b
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_c

    move v0, v1

    :cond_c
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_d

    move v0, v1

    :cond_d
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_13
    packed-switch p3, :pswitch_data_3

    :pswitch_14
    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-double p2, p2

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_e

    move v0, v1

    :cond_e
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p2

    float-to-double p2, p2

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_f

    move v0, v1

    :cond_f
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_10

    move v0, v1

    :cond_10
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    long-to-double p2, p2

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_11

    move v0, v1

    :cond_11
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-double p2, p2

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_12

    move v0, v1

    :cond_12
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-double p2, p2

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_13

    move v0, v1

    :cond_13
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-double p2, p2

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_14

    move v0, v1

    :cond_14
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1c
    packed-switch p3, :pswitch_data_4

    :pswitch_1d
    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-ltz p0, :cond_15

    move v0, v1

    :cond_15
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_16

    move v0, v1

    :cond_16
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_20
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_17

    move v0, v1

    :cond_17
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_21
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-ltz p0, :cond_18

    move v0, v1

    :cond_18
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_22
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-ltz p0, :cond_19

    move v0, v1

    :cond_19
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_23
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-ltz p0, :cond_1a

    move v0, v1

    :cond_1a
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_24
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-ltz p0, :cond_1b

    move v0, v1

    :cond_1b
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_25
    packed-switch p3, :pswitch_data_5

    :pswitch_26
    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-lt p0, p1, :cond_1c

    move v0, v1

    :cond_1c
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_28
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1d

    move v0, v1

    :cond_1d
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_29
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_1e

    move v0, v1

    :cond_1e
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-ltz p0, :cond_1f

    move v0, v1

    :cond_1f
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-lt p0, p1, :cond_20

    move v0, v1

    :cond_20
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-lt p0, p1, :cond_21

    move v0, v1

    :cond_21
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-lt p0, p1, :cond_22

    move v0, v1

    :cond_22
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2e
    packed-switch p3, :pswitch_data_6

    :pswitch_2f
    goto/16 :goto_0

    :pswitch_30
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-lt p0, p1, :cond_23

    move v0, v1

    :cond_23
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_31
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_24

    move v0, v1

    :cond_24
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_32
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_25

    move v0, v1

    :cond_25
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_33
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-ltz p0, :cond_26

    move v0, v1

    :cond_26
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_34
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-lt p0, p1, :cond_27

    move v0, v1

    :cond_27
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_35
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-lt p0, p1, :cond_28

    move v0, v1

    :cond_28
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_36
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-lt p0, p1, :cond_29

    move v0, v1

    :cond_29
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_37
    packed-switch p3, :pswitch_data_7

    :goto_0
    :pswitch_38
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    :pswitch_39
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-lt p0, p1, :cond_2a

    move v0, v1

    :cond_2a
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_2b

    move v0, v1

    :cond_2b
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_2c

    move v0, v1

    :cond_2c
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-ltz p0, :cond_2d

    move v0, v1

    :cond_2d
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-lt p0, p1, :cond_2e

    move v0, v1

    :cond_2e
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-lt p0, p1, :cond_2f

    move v0, v1

    :cond_2f
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-lt p0, p1, :cond_30

    move v0, v1

    :cond_30
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_37
        :pswitch_2e
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_13
        :pswitch_a
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_14
        :pswitch_14
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_26
        :pswitch_26
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_2f
        :pswitch_2f
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_38
        :pswitch_38
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch
.end method

.method public static final computeConstantOperationLEFT_SHIFT(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 5

    const/16 v0, 0xa

    const/4 v1, 0x7

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_18

    if-eq p1, v3, :cond_12

    if-eq p1, v2, :cond_c

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq p3, v4, :cond_5

    if-eq p3, v3, :cond_4

    if-eq p3, v2, :cond_3

    if-eq p3, v1, :cond_2

    if-eq p3, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-int p1, p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_6
    if-eq p3, v4, :cond_b

    if-eq p3, v3, :cond_a

    if-eq p3, v2, :cond_9

    if-eq p3, v1, :cond_8

    if-eq p3, v0, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    shl-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    long-to-int p2, p2

    shl-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    shl-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    shl-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    shl-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_c
    if-eq p3, v4, :cond_11

    if-eq p3, v3, :cond_10

    if-eq p3, v2, :cond_f

    if-eq p3, v1, :cond_e

    if-eq p3, v0, :cond_d

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-int p1, p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_12
    if-eq p3, v4, :cond_17

    if-eq p3, v3, :cond_16

    if-eq p3, v2, :cond_15

    if-eq p3, v1, :cond_14

    if-eq p3, v0, :cond_13

    goto :goto_0

    :cond_13
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_14
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-int p1, p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_18
    if-eq p3, v4, :cond_1d

    if-eq p3, v3, :cond_1c

    if-eq p3, v2, :cond_1b

    if-eq p3, v1, :cond_1a

    if-eq p3, v0, :cond_19

    :goto_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    :cond_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-int p1, p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0
.end method

.method public static final computeConstantOperationLESS(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    packed-switch p3, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p0, p2

    if-gez p0, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-gez p0, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-ge p0, p1, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-ge p0, p1, :cond_5

    move v0, v1

    :cond_5
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-ge p0, p1, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_a
    packed-switch p3, :pswitch_data_2

    :pswitch_b
    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_7

    move v0, v1

    :cond_7
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    float-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p0, p2

    if-gez p0, :cond_9

    move v0, v1

    :cond_9
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_a

    move v0, v1

    :cond_a
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_b

    move v0, v1

    :cond_b
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_c

    move v0, v1

    :cond_c
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_d

    move v0, v1

    :cond_d
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_13
    packed-switch p3, :pswitch_data_3

    :pswitch_14
    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-double p2, p2

    cmpg-double p0, p0, p2

    if-gez p0, :cond_e

    move v0, v1

    :cond_e
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p2

    float-to-double p2, p2

    cmpg-double p0, p0, p2

    if-gez p0, :cond_f

    move v0, v1

    :cond_f
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p0, p2

    if-gez p0, :cond_10

    move v0, v1

    :cond_10
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    long-to-double p2, p2

    cmpg-double p0, p0, p2

    if-gez p0, :cond_11

    move v0, v1

    :cond_11
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-double p2, p2

    cmpg-double p0, p0, p2

    if-gez p0, :cond_12

    move v0, v1

    :cond_12
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-double p2, p2

    cmpg-double p0, p0, p2

    if-gez p0, :cond_13

    move v0, v1

    :cond_13
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-double p2, p2

    cmpg-double p0, p0, p2

    if-gez p0, :cond_14

    move v0, v1

    :cond_14
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1c
    packed-switch p3, :pswitch_data_4

    :pswitch_1d
    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-gez p0, :cond_15

    move v0, v1

    :cond_15
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_16

    move v0, v1

    :cond_16
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_20
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p0, p2

    if-gez p0, :cond_17

    move v0, v1

    :cond_17
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_21
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-gez p0, :cond_18

    move v0, v1

    :cond_18
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_22
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-gez p0, :cond_19

    move v0, v1

    :cond_19
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_23
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-gez p0, :cond_1a

    move v0, v1

    :cond_1a
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_24
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-gez p0, :cond_1b

    move v0, v1

    :cond_1b
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_25
    packed-switch p3, :pswitch_data_5

    :pswitch_26
    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_1c

    move v0, v1

    :cond_1c
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_28
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1d

    move v0, v1

    :cond_1d
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_29
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p0, p2

    if-gez p0, :cond_1e

    move v0, v1

    :cond_1e
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-gez p0, :cond_1f

    move v0, v1

    :cond_1f
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-ge p0, p1, :cond_20

    move v0, v1

    :cond_20
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-ge p0, p1, :cond_21

    move v0, v1

    :cond_21
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-ge p0, p1, :cond_22

    move v0, v1

    :cond_22
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2e
    packed-switch p3, :pswitch_data_6

    :pswitch_2f
    goto/16 :goto_0

    :pswitch_30
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_23

    move v0, v1

    :cond_23
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_31
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_24

    move v0, v1

    :cond_24
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_32
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p0, p2

    if-gez p0, :cond_25

    move v0, v1

    :cond_25
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_33
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-gez p0, :cond_26

    move v0, v1

    :cond_26
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_34
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-ge p0, p1, :cond_27

    move v0, v1

    :cond_27
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_35
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-ge p0, p1, :cond_28

    move v0, v1

    :cond_28
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_36
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-ge p0, p1, :cond_29

    move v0, v1

    :cond_29
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_37
    packed-switch p3, :pswitch_data_7

    :goto_0
    :pswitch_38
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    :pswitch_39
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_2a

    move v0, v1

    :cond_2a
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_2b

    move v0, v1

    :cond_2b
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p0, p2

    if-gez p0, :cond_2c

    move v0, v1

    :cond_2c
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-gez p0, :cond_2d

    move v0, v1

    :cond_2d
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-ge p0, p1, :cond_2e

    move v0, v1

    :cond_2e
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-ge p0, p1, :cond_2f

    move v0, v1

    :cond_2f
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-ge p0, p1, :cond_30

    move v0, v1

    :cond_30
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_37
        :pswitch_2e
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_13
        :pswitch_a
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_14
        :pswitch_14
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_26
        :pswitch_26
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_2f
        :pswitch_2f
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_38
        :pswitch_38
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch
.end method

.method public static final computeConstantOperationLESS_EQUAL(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    packed-switch p3, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-gt p0, p1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-gtz p0, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-gt p0, p1, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-gt p0, p1, :cond_5

    move v0, v1

    :cond_5
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-gt p0, p1, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_a
    packed-switch p3, :pswitch_data_2

    :pswitch_b
    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_7

    move v0, v1

    :cond_7
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    float-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_9

    move v0, v1

    :cond_9
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_a

    move v0, v1

    :cond_a
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_b

    move v0, v1

    :cond_b
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_c

    move v0, v1

    :cond_c
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_d

    move v0, v1

    :cond_d
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_13
    packed-switch p3, :pswitch_data_3

    :pswitch_14
    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-double p2, p2

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_e

    move v0, v1

    :cond_e
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p2

    float-to-double p2, p2

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_f

    move v0, v1

    :cond_f
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_10

    move v0, v1

    :cond_10
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    long-to-double p2, p2

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_11

    move v0, v1

    :cond_11
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-double p2, p2

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_12

    move v0, v1

    :cond_12
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-double p2, p2

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_13

    move v0, v1

    :cond_13
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-double p2, p2

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_14

    move v0, v1

    :cond_14
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1c
    packed-switch p3, :pswitch_data_4

    :pswitch_1d
    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-gtz p0, :cond_15

    move v0, v1

    :cond_15
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_16

    move v0, v1

    :cond_16
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_20
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_17

    move v0, v1

    :cond_17
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_21
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-gtz p0, :cond_18

    move v0, v1

    :cond_18
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_22
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-gtz p0, :cond_19

    move v0, v1

    :cond_19
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_23
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-gtz p0, :cond_1a

    move v0, v1

    :cond_1a
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_24
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-gtz p0, :cond_1b

    move v0, v1

    :cond_1b
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_25
    packed-switch p3, :pswitch_data_5

    :pswitch_26
    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-gt p0, p1, :cond_1c

    move v0, v1

    :cond_1c
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_28
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_1d

    move v0, v1

    :cond_1d
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_29
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_1e

    move v0, v1

    :cond_1e
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-gtz p0, :cond_1f

    move v0, v1

    :cond_1f
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-gt p0, p1, :cond_20

    move v0, v1

    :cond_20
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-gt p0, p1, :cond_21

    move v0, v1

    :cond_21
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-gt p0, p1, :cond_22

    move v0, v1

    :cond_22
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2e
    packed-switch p3, :pswitch_data_6

    :pswitch_2f
    goto/16 :goto_0

    :pswitch_30
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-gt p0, p1, :cond_23

    move v0, v1

    :cond_23
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_31
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_24

    move v0, v1

    :cond_24
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_32
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_25

    move v0, v1

    :cond_25
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_33
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-gtz p0, :cond_26

    move v0, v1

    :cond_26
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_34
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-gt p0, p1, :cond_27

    move v0, v1

    :cond_27
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_35
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-gt p0, p1, :cond_28

    move v0, v1

    :cond_28
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_36
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-gt p0, p1, :cond_29

    move v0, v1

    :cond_29
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_37
    packed-switch p3, :pswitch_data_7

    :goto_0
    :pswitch_38
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    :pswitch_39
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-gt p0, p1, :cond_2a

    move v0, v1

    :cond_2a
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_2b

    move v0, v1

    :cond_2b
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_2c

    move v0, v1

    :cond_2c
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-gtz p0, :cond_2d

    move v0, v1

    :cond_2d
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-gt p0, p1, :cond_2e

    move v0, v1

    :cond_2e
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-gt p0, p1, :cond_2f

    move v0, v1

    :cond_2f
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-gt p0, p1, :cond_30

    move v0, v1

    :cond_30
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_37
        :pswitch_2e
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_13
        :pswitch_a
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_14
        :pswitch_14
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_26
        :pswitch_26
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_2f
        :pswitch_2f
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_38
        :pswitch_38
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch
.end method

.method public static final computeConstantOperationMINUS(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    packed-switch p3, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_a
    packed-switch p3, :pswitch_data_2

    :pswitch_b
    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    float-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_13
    packed-switch p3, :pswitch_data_3

    :pswitch_14
    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-double p2, p2

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p2

    float-to-double p2, p2

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    long-to-double p2, p2

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-double p2, p2

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-double p2, p2

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-double p2, p2

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1c
    packed-switch p3, :pswitch_data_4

    :pswitch_1d
    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-long p2, p2

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_20
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_21
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_22
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-long p2, p2

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_23
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-long p2, p2

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_24
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-long p2, p2

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_25
    packed-switch p3, :pswitch_data_5

    :pswitch_26
    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_28
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_29
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2e
    packed-switch p3, :pswitch_data_6

    :pswitch_2f
    goto :goto_0

    :pswitch_30
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_31
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_32
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_33
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_34
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_35
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_36
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_37
    packed-switch p3, :pswitch_data_7

    :goto_0
    :pswitch_38
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    :pswitch_39
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_37
        :pswitch_2e
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_13
        :pswitch_a
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_14
        :pswitch_14
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_26
        :pswitch_26
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_2f
        :pswitch_2f
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_38
        :pswitch_38
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch
.end method

.method public static final computeConstantOperationMULTIPLY(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    packed-switch p3, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    mul-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    mul-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_a
    packed-switch p3, :pswitch_data_2

    :pswitch_b
    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    float-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    mul-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_13
    packed-switch p3, :pswitch_data_3

    :pswitch_14
    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-double p2, p2

    mul-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p2

    float-to-double p2, p2

    mul-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    mul-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    long-to-double p2, p2

    mul-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-double p2, p2

    mul-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-double p2, p2

    mul-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-double p2, p2

    mul-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1c
    packed-switch p3, :pswitch_data_4

    :pswitch_1d
    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-long p2, p2

    mul-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_20
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    mul-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_21
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    mul-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_22
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-long p2, p2

    mul-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_23
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-long p2, p2

    mul-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_24
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-long p2, p2

    mul-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_25
    packed-switch p3, :pswitch_data_5

    :pswitch_26
    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_28
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_29
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    mul-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    mul-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2e
    packed-switch p3, :pswitch_data_6

    :pswitch_2f
    goto :goto_0

    :pswitch_30
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_31
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_32
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    mul-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_33
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    mul-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_34
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_35
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_36
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_37
    packed-switch p3, :pswitch_data_7

    :goto_0
    :pswitch_38
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    :pswitch_39
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    mul-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    mul-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_37
        :pswitch_2e
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_13
        :pswitch_a
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_14
        :pswitch_14
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_26
        :pswitch_26
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_2f
        :pswitch_2f
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_38
        :pswitch_38
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch
.end method

.method public static final computeConstantOperationOR(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 6

    const/16 v0, 0xa

    const/4 v1, 0x7

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_19

    if-eq p1, v3, :cond_13

    if-eq p1, v2, :cond_d

    const/4 v5, 0x5

    if-eq p1, v5, :cond_c

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq p3, v4, :cond_5

    if-eq p3, v3, :cond_4

    if-eq p3, v2, :cond_3

    if-eq p3, v1, :cond_2

    if-eq p3, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_6
    if-eq p3, v4, :cond_b

    if-eq p3, v3, :cond_a

    if-eq p3, v2, :cond_9

    if-eq p3, v1, :cond_8

    if-eq p3, v0, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-long p2, p2

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-long p2, p2

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-long p2, p2

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-long p2, p2

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_d
    if-eq p3, v4, :cond_12

    if-eq p3, v3, :cond_11

    if-eq p3, v2, :cond_10

    if-eq p3, v1, :cond_f

    if-eq p3, v0, :cond_e

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_13
    if-eq p3, v4, :cond_18

    if-eq p3, v3, :cond_17

    if-eq p3, v2, :cond_16

    if-eq p3, v1, :cond_15

    if-eq p3, v0, :cond_14

    goto :goto_0

    :cond_14
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_19
    if-eq p3, v4, :cond_1e

    if-eq p3, v3, :cond_1d

    if-eq p3, v2, :cond_1c

    if-eq p3, v1, :cond_1b

    if-eq p3, v0, :cond_1a

    :goto_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    :cond_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0
.end method

.method public static final computeConstantOperationOR_OR(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0
.end method

.method public static final computeConstantOperationPLUS(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 1

    const/16 v0, 0xb

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    packed-switch p3, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_c
    packed-switch p3, :pswitch_data_2

    :pswitch_d
    goto/16 :goto_0

    :pswitch_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    add-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_16
    packed-switch p3, :pswitch_data_3

    :pswitch_17
    goto/16 :goto_0

    :pswitch_18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    add-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    float-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-float p1, p1

    add-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_20
    packed-switch p3, :pswitch_data_4

    :pswitch_21
    goto/16 :goto_0

    :pswitch_22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_23
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-double p2, p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_24
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p2

    float-to-double p2, p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_25
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_26
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    long-to-double p2, p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_27
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-double p2, p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_28
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-double p2, p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_29
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-double p2, p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2a
    packed-switch p3, :pswitch_data_5

    :pswitch_2b
    goto/16 :goto_0

    :pswitch_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-long p2, p2

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    add-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_30
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_31
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-long p2, p2

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_32
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-long p2, p2

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_33
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-long p2, p2

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_34
    if-ne p3, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_35
    packed-switch p3, :pswitch_data_6

    :pswitch_36
    goto/16 :goto_0

    :pswitch_37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_38
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_39
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    add-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3f
    packed-switch p3, :pswitch_data_7

    :pswitch_40
    goto/16 :goto_0

    :pswitch_41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_42
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_43
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    add-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_44
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_45
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_46
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_47
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_48
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_49
    packed-switch p3, :pswitch_data_8

    :pswitch_4a
    goto/16 :goto_0

    :pswitch_4b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_4c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_4d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    add-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_4e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_4f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_50
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_51
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_52
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_53
    if-ne p3, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_0
    :goto_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_53
        :pswitch_49
        :pswitch_3f
        :pswitch_35
        :pswitch_34
        :pswitch_0
        :pswitch_2a
        :pswitch_20
        :pswitch_16
        :pswitch_c
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_d
        :pswitch_d
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_17
        :pswitch_17
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_21
        :pswitch_21
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_2b
        :pswitch_2b
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_36
        :pswitch_36
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_40
        :pswitch_40
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4a
        :pswitch_4a
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
    .end packed-switch
.end method

.method public static final computeConstantOperationREMAINDER(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    packed-switch p3, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    rem-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    rem-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_a
    packed-switch p3, :pswitch_data_2

    :pswitch_b
    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-float p1, p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    float-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    rem-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-float p1, p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-float p1, p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    int-to-float p1, p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-float p1, p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_13
    packed-switch p3, :pswitch_data_3

    :pswitch_14
    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-double p2, p2

    rem-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p2

    float-to-double p2, p2

    rem-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    rem-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    long-to-double p2, p2

    rem-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-double p2, p2

    rem-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-double p2, p2

    rem-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-double p2, p2

    rem-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1c
    packed-switch p3, :pswitch_data_4

    :pswitch_1d
    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-long p2, p2

    rem-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_1f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_20
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    rem-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_21
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    rem-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_22
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-long p2, p2

    rem-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_23
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-long p2, p2

    rem-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_24
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-long p2, p2

    rem-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_25
    packed-switch p3, :pswitch_data_5

    :pswitch_26
    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_28
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_29
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    rem-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    rem-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_2e
    packed-switch p3, :pswitch_data_6

    :pswitch_2f
    goto :goto_0

    :pswitch_30
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_31
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_32
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    rem-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_33
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    rem-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_34
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_35
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_36
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_37
    packed-switch p3, :pswitch_data_7

    :goto_0
    :pswitch_38
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    :pswitch_39
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    rem-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    rem-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_3f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_37
        :pswitch_2e
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_13
        :pswitch_a
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_14
        :pswitch_14
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_26
        :pswitch_26
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_2f
        :pswitch_2f
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_38
        :pswitch_38
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch
.end method

.method public static final computeConstantOperationRIGHT_SHIFT(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 5

    const/16 v0, 0xa

    const/4 v1, 0x7

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_18

    if-eq p1, v3, :cond_12

    if-eq p1, v2, :cond_c

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq p3, v4, :cond_5

    if-eq p3, v3, :cond_4

    if-eq p3, v2, :cond_3

    if-eq p3, v1, :cond_2

    if-eq p3, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-int p1, p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_6
    if-eq p3, v4, :cond_b

    if-eq p3, v3, :cond_a

    if-eq p3, v2, :cond_9

    if-eq p3, v1, :cond_8

    if-eq p3, v0, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    shr-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    long-to-int p2, p2

    shr-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    shr-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    shr-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    shr-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_c
    if-eq p3, v4, :cond_11

    if-eq p3, v3, :cond_10

    if-eq p3, v2, :cond_f

    if-eq p3, v1, :cond_e

    if-eq p3, v0, :cond_d

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-int p1, p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_12
    if-eq p3, v4, :cond_17

    if-eq p3, v3, :cond_16

    if-eq p3, v2, :cond_15

    if-eq p3, v1, :cond_14

    if-eq p3, v0, :cond_13

    goto :goto_0

    :cond_13
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_14
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-int p1, p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_18
    if-eq p3, v4, :cond_1d

    if-eq p3, v3, :cond_1c

    if-eq p3, v2, :cond_1b

    if-eq p3, v1, :cond_1a

    if-eq p3, v0, :cond_19

    :goto_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    :cond_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-int p1, p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    shr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0
.end method

.method public static final computeConstantOperationUNSIGNED_RIGHT_SHIFT(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 5

    const/16 v0, 0xa

    const/4 v1, 0x7

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_18

    if-eq p1, v3, :cond_12

    if-eq p1, v2, :cond_c

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq p3, v4, :cond_5

    if-eq p3, v3, :cond_4

    if-eq p3, v2, :cond_3

    if-eq p3, v1, :cond_2

    if-eq p3, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_6
    if-eq p3, v4, :cond_b

    if-eq p3, v3, :cond_a

    if-eq p3, v2, :cond_9

    if-eq p3, v1, :cond_8

    if-eq p3, v0, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    ushr-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    long-to-int p2, p2

    ushr-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    ushr-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    ushr-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    ushr-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_c
    if-eq p3, v4, :cond_11

    if-eq p3, v3, :cond_10

    if-eq p3, v2, :cond_f

    if-eq p3, v1, :cond_e

    if-eq p3, v0, :cond_d

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_12
    if-eq p3, v4, :cond_17

    if-eq p3, v3, :cond_16

    if-eq p3, v2, :cond_15

    if-eq p3, v1, :cond_14

    if-eq p3, v0, :cond_13

    goto :goto_0

    :cond_13
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_14
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_18
    if-eq p3, v4, :cond_1d

    if-eq p3, v3, :cond_1c

    if-eq p3, v2, :cond_1b

    if-eq p3, v1, :cond_1a

    if-eq p3, v0, :cond_19

    :goto_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    :cond_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0
.end method

.method public static final computeConstantOperationXOR(Lorg/eclipse/jdt/internal/compiler/impl/Constant;ILorg/eclipse/jdt/internal/compiler/impl/Constant;I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 6

    const/16 v0, 0xa

    const/4 v1, 0x7

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_19

    if-eq p1, v3, :cond_13

    if-eq p1, v2, :cond_d

    const/4 v5, 0x5

    if-eq p1, v5, :cond_c

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq p3, v4, :cond_5

    if-eq p3, v3, :cond_4

    if-eq p3, v2, :cond_3

    if-eq p3, v1, :cond_2

    if-eq p3, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    xor-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_6
    if-eq p3, v4, :cond_b

    if-eq p3, v3, :cond_a

    if-eq p3, v2, :cond_9

    if-eq p3, v1, :cond_8

    if-eq p3, v0, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    int-to-long p2, p2

    xor-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    xor-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    int-to-long p2, p2

    xor-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    int-to-long p2, p2

    xor-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    int-to-long p2, p2

    xor-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_d
    if-eq p3, v4, :cond_12

    if-eq p3, v3, :cond_11

    if-eq p3, v2, :cond_10

    if-eq p3, v1, :cond_f

    if-eq p3, v0, :cond_e

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    xor-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_13
    if-eq p3, v4, :cond_18

    if-eq p3, v3, :cond_17

    if-eq p3, v2, :cond_16

    if-eq p3, v1, :cond_15

    if-eq p3, v0, :cond_14

    goto :goto_0

    :cond_14
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    xor-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_19
    if-eq p3, v4, :cond_1e

    if-eq p3, v3, :cond_1d

    if-eq p3, v2, :cond_1c

    if-eq p3, v1, :cond_1b

    if-eq p3, v0, :cond_1a

    :goto_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p0

    :cond_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    xor-long/2addr p0, p2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0

    :cond_1e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    xor-int/2addr p0, p1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public booleanValue()Z
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->constant_cannotCastedInto:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "boolean"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public byteValue()B
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->constant_cannotCastedInto:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "byte"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final castTo(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne p0, v0, :cond_0

    return-object v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    return-object v0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_8
    return-object p0

    :sswitch_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v0

    double-to-float p1, v0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_10
    return-object p0

    :sswitch_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_13
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_14
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    float-to-long v0, p1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_18
    return-object p0

    :sswitch_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_1c
    return-object p0

    :sswitch_1d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->fromValue(S)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_1e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    float-to-int p1, p1

    int-to-short p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->fromValue(S)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_1f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v0

    double-to-int p1, v0

    int-to-short p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->fromValue(S)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_20
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    int-to-short p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->fromValue(S)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_21
    return-object p0

    :sswitch_22
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->fromValue(S)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_23
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->fromValue(S)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_24
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/ByteConstant;->fromValue(B)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_25
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    float-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/ByteConstant;->fromValue(B)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_26
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v0

    double-to-int p1, v0

    int-to-byte p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/ByteConstant;->fromValue(B)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_27
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    int-to-byte p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/ByteConstant;->fromValue(B)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_28
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/ByteConstant;->fromValue(B)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_29
    return-object p0

    :sswitch_2a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/ByteConstant;->fromValue(B)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_2b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->fromValue(C)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_2c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    float-to-int p1, p1

    int-to-char p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->fromValue(C)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_2d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v0

    double-to-int p1, v0

    int-to-char p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->fromValue(C)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_2e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    int-to-char p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->fromValue(C)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_2f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->fromValue(C)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_30
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->fromValue(C)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :sswitch_31
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_31
        0x22 -> :sswitch_31
        0x23 -> :sswitch_30
        0x24 -> :sswitch_2f
        0x27 -> :sswitch_2e
        0x28 -> :sswitch_2d
        0x29 -> :sswitch_2c
        0x2a -> :sswitch_2b
        0x32 -> :sswitch_2a
        0x33 -> :sswitch_29
        0x34 -> :sswitch_28
        0x37 -> :sswitch_27
        0x38 -> :sswitch_26
        0x39 -> :sswitch_25
        0x3a -> :sswitch_24
        0x42 -> :sswitch_23
        0x43 -> :sswitch_22
        0x44 -> :sswitch_21
        0x47 -> :sswitch_20
        0x48 -> :sswitch_1f
        0x49 -> :sswitch_1e
        0x4a -> :sswitch_1d
        0x55 -> :sswitch_1c
        0x72 -> :sswitch_1b
        0x73 -> :sswitch_1a
        0x74 -> :sswitch_19
        0x77 -> :sswitch_18
        0x78 -> :sswitch_17
        0x79 -> :sswitch_16
        0x7a -> :sswitch_15
        0x82 -> :sswitch_14
        0x83 -> :sswitch_13
        0x84 -> :sswitch_12
        0x87 -> :sswitch_11
        0x88 -> :sswitch_10
        0x89 -> :sswitch_f
        0x8a -> :sswitch_e
        0x92 -> :sswitch_d
        0x93 -> :sswitch_c
        0x94 -> :sswitch_b
        0x97 -> :sswitch_a
        0x98 -> :sswitch_9
        0x99 -> :sswitch_8
        0x9a -> :sswitch_7
        0xa2 -> :sswitch_6
        0xa3 -> :sswitch_5
        0xa4 -> :sswitch_4
        0xa7 -> :sswitch_3
        0xa8 -> :sswitch_2
        0xa9 -> :sswitch_1
        0xaa -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method public charValue()C
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->constant_cannotCastedInto:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "char"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doubleValue()D
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->constant_cannotCastedInto:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "double"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public floatValue()F
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->constant_cannotCastedInto:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "float"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasSameValue(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return v3

    :pswitch_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    if-ne v1, p1, :cond_4

    return v0

    :cond_4
    return v3

    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    cmpl-float p1, v1, p1

    if-nez p1, :cond_5

    return v0

    :cond_5
    return v3

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v4

    cmpl-double p1, v1, v4

    if-nez p1, :cond_6

    return v0

    :cond_6
    return v3

    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v4

    cmp-long p1, v1, v4

    if-nez p1, :cond_7

    return v0

    :cond_7
    return v3

    :pswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p1

    if-ne v1, p1, :cond_8

    return v0

    :cond_8
    return v3

    :pswitch_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    if-ne v1, p1, :cond_9

    return v0

    :cond_9
    return v3

    :pswitch_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    if-ne v1, p1, :cond_a

    return v0

    :cond_a
    return v3

    :pswitch_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    if-ne v1, p1, :cond_b

    return v0

    :cond_b
    return v3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public intValue()I
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->constant_cannotCastedInto:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "int"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longValue()J
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->constant_cannotCastedInto:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "long"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shortValue()S
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->constant_cannotConvertedTo:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "short"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stringValue()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->constant_cannotConvertedTo:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "String"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne p0, v0, :cond_0

    const-string v0, "(Constant) NotAConstant"

    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract typeID()I
.end method

.method public typeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "unknown"

    return-object v0

    :pswitch_1
    const-string v0, "java.lang.String"

    return-object v0

    :pswitch_2
    const-string v0, "int"

    return-object v0

    :pswitch_3
    const-string v0, "float"

    return-object v0

    :pswitch_4
    const-string v0, "double"

    return-object v0

    :pswitch_5
    const-string v0, "long"

    return-object v0

    :pswitch_6
    const-string v0, "boolean"

    return-object v0

    :pswitch_7
    const-string v0, "short"

    return-object v0

    :pswitch_8
    const-string v0, "byte"

    return-object v0

    :pswitch_9
    const-string v0, "char"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
