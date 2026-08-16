.class public Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private elementSize:I

.field private keyTable:[D

.field private valueTable:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->elementSize:I

    .line 4
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->keyTable:[D

    .line 5
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->valueTable:[I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->keyTable:[D

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->elementSize:I

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->keyTable:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->valueTable:[I

    aput v1, v2, v0

    goto :goto_0
.end method

.method public containsKey(D)Z
    .locals 13

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->elementSize:I

    move v5, v3

    :goto_0
    if-lt v5, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->keyTable:[D

    aget-wide v7, v6, v5

    cmpl-double v6, v7, v0

    if-nez v6, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->keyTable:[D

    aget-wide v9, v8, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v12, v6, v10

    if-nez v12, :cond_1

    cmp-long v10, v8, v10

    if-nez v10, :cond_1

    return v4

    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-nez v6, :cond_2

    cmp-long v6, v8, v10

    if-nez v6, :cond_2

    return v4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->elementSize:I

    move v1, v3

    :goto_1
    if-lt v1, v0, :cond_4

    :goto_2
    return v3

    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->keyTable:[D

    aget-wide v5, v2, v1

    cmpl-double v2, v5, p1

    if-nez v2, :cond_5

    return v4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public put(DI)I
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->elementSize:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->keyTable:[D

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [D

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->keyTable:[D

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->valueTable:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->elementSize:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->valueTable:[I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->keyTable:[D

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->elementSize:I

    aput-wide p1, v0, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->valueTable:[I

    aput p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->elementSize:I

    return p3
.end method

.method public putIfAbsent(DI)I
    .locals 12

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->elementSize:I

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->keyTable:[D

    aget-wide v6, v5, v4

    cmpl-double v5, v6, v0

    if-nez v5, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->keyTable:[D

    aget-wide v8, v7, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v11, v5, v9

    if-nez v11, :cond_1

    cmp-long v9, v7, v9

    if-nez v9, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->valueTable:[I

    aget p1, p1, v4

    return p1

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-nez v5, :cond_2

    cmp-long v5, v7, v9

    if-nez v5, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->valueTable:[I

    aget p1, p1, v4

    return p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->elementSize:I

    move v1, v3

    :goto_1
    if-lt v1, v0, :cond_5

    :goto_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->elementSize:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->keyTable:[D

    array-length v2, v1

    if-ne v0, v2, :cond_4

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [D

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->keyTable:[D

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->valueTable:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->elementSize:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->valueTable:[I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->keyTable:[D

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->elementSize:I

    aput-wide p1, v0, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->valueTable:[I

    aput p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->elementSize:I

    neg-int p1, p3

    return p1

    :cond_5
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->keyTable:[D

    aget-wide v4, v2, v1

    cmpl-double v2, v4, p1

    if-nez v2, :cond_6

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->valueTable:[I

    aget p1, p1, v1

    return p1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->elementSize:I

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
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->keyTable:[D

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-nez v3, :cond_1

    cmpl-double v3, v4, v6

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->valueTable:[I

    aget v3, v3, v2

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v3, "->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/DoubleCache;->valueTable:[I

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
