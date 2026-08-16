.class public Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private elementSize:I

.field private keyTable:[F

.field private valueTable:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->elementSize:I

    .line 4
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->keyTable:[F

    .line 5
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->valueTable:[I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->keyTable:[F

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->elementSize:I

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->keyTable:[F

    const/4 v3, 0x0

    aput v3, v2, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->valueTable:[I

    aput v1, v2, v0

    goto :goto_0
.end method

.method public containsKey(F)Z
    .locals 8

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->elementSize:I

    move v4, v2

    :goto_0
    if-lt v4, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->keyTable:[F

    aget v5, v5, v4

    cmpl-float v5, v5, v0

    if-nez v5, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->keyTable:[F

    aget v6, v6, v4

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    const/high16 v7, -0x80000000

    if-ne v5, v7, :cond_1

    if-ne v6, v7, :cond_1

    return v3

    :cond_1
    if-nez v5, :cond_2

    if-nez v6, :cond_2

    return v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->elementSize:I

    move v1, v2

    :goto_1
    if-lt v1, v0, :cond_4

    :goto_2
    return v2

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->keyTable:[F

    aget v4, v4, v1

    cmpl-float v4, v4, p1

    if-nez v4, :cond_5

    return v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public put(FI)I
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->elementSize:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->keyTable:[F

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->keyTable:[F

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->valueTable:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->elementSize:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->valueTable:[I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->keyTable:[F

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->elementSize:I

    aput p1, v0, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->valueTable:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->elementSize:I

    return p2
.end method

.method public putIfAbsent(FI)I
    .locals 7

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->elementSize:I

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->keyTable:[F

    aget v4, v4, v3

    cmpl-float v4, v4, v0

    if-nez v4, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->keyTable:[F

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    const/high16 v6, -0x80000000

    if-ne v4, v6, :cond_1

    if-ne v5, v6, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->valueTable:[I

    aget p1, p1, v3

    return p1

    :cond_1
    if-nez v4, :cond_2

    if-nez v5, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->valueTable:[I

    aget p1, p1, v3

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->elementSize:I

    move v1, v2

    :goto_1
    if-lt v1, v0, :cond_5

    :goto_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->elementSize:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->keyTable:[F

    array-length v3, v1

    if-ne v0, v3, :cond_4

    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [F

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->keyTable:[F

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->valueTable:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->elementSize:I

    mul-int/lit8 v3, v1, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->valueTable:[I

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->keyTable:[F

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->elementSize:I

    aput p1, v0, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->valueTable:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->elementSize:I

    neg-int p1, p2

    return p1

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->keyTable:[F

    aget v3, v3, v1

    cmpl-float v3, v3, p1

    if-nez v3, :cond_6

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->valueTable:[I

    aget p1, p1, v1

    return p1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->elementSize:I

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->keyTable:[F

    aget v3, v3, v2

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-nez v5, :cond_1

    cmpl-float v4, v3, v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->valueTable:[I

    aget v4, v4, v2

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v3, "->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/FloatCache;->valueTable:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    if-ge v2, v0, :cond_3

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
