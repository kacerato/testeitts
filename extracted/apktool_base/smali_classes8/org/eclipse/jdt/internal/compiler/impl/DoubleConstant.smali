.class public Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;
.super Lorg/eclipse/jdt/internal/compiler/impl/Constant;
.source "SourceFile"


# instance fields
.field private value:D


# direct methods
.method private constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;-><init>()V

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->value:D

    return-void
.end method

.method public static fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->value:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public charValue()C
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->value:D

    double-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->value:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public floatValue()F
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public intValue()I
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->value:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public stringValue()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->value:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne p0, v0, :cond_0

    const-string v0, "(Constant) NotAConstant"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(double)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeID()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
