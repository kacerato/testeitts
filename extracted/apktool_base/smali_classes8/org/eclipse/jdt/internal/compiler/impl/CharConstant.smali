.class public Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;
.super Lorg/eclipse/jdt/internal/compiler/impl/Constant;
.source "SourceFile"


# instance fields
.field private value:C


# direct methods
.method private constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;-><init>()V

    iput-char p1, p0, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->value:C

    return-void
.end method

.method public static fromValue(C)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->value:C

    int-to-byte v0, v0

    return v0
.end method

.method public charValue()C
    .locals 1

    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->value:C

    return v0
.end method

.method public doubleValue()D
    .locals 2

    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->value:C

    int-to-double v0, v0

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
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;

    iget-char v2, p0, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->value:C

    iget-char p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->value:C

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public floatValue()F
    .locals 1

    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->value:C

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->value:C

    return v0
.end method

.method public intValue()I
    .locals 1

    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->value:C

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->value:C

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->value:C

    int-to-short v0, v0

    return v0
.end method

.method public stringValue()Ljava/lang/String;
    .locals 1

    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->value:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(char)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->value:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeID()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
