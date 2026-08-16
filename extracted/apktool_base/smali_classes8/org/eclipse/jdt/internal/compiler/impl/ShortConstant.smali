.class public Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;
.super Lorg/eclipse/jdt/internal/compiler/impl/Constant;
.source "SourceFile"


# instance fields
.field private value:S


# direct methods
.method private constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;-><init>()V

    iput-short p1, p0, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->value:S

    return-void
.end method

.method public static fromValue(S)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    iget-short v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->value:S

    int-to-byte v0, v0

    return v0
.end method

.method public charValue()C
    .locals 1

    iget-short v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->value:S

    int-to-char v0, v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    iget-short v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->value:S

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
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;

    iget-short v2, p0, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->value:S

    iget-short p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->value:S

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public floatValue()F
    .locals 1

    iget-short v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->value:S

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-short v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->value:S

    return v0
.end method

.method public intValue()I
    .locals 1

    iget-short v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->value:S

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-short v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->value:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    iget-short v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->value:S

    return v0
.end method

.method public stringValue()Ljava/lang/String;
    .locals 1

    iget-short v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->value:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(short)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v1, p0, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->value:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeID()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
