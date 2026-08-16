.class public Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;
.super Lorg/eclipse/jdt/internal/compiler/impl/Constant;
.source "SourceFile"


# instance fields
.field value:F


# direct methods
.method private constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->value:F

    return-void
.end method

.method public static fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->value:F

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public charValue()C
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->value:F

    float-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->value:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->value:F

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public floatValue()F
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->value:F

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public stringValue()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->value:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(float)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeID()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method
