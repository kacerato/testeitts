.class public Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field elementSize:I

.field public keyTable:[I

.field threshold:I

.field public valueTable:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->elementSize:I

    int-to-double v0, p1

    const-wide v2, 0x3fe51eb851eb851fL    # 0.66

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 4
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->threshold:I

    .line 5
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->keyTable:[I

    .line 6
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->valueTable:[I

    return-void
.end method

.method private rehash()V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->keyTable:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->keyTable:[I

    array-length v1, v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->keyTable:[I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->keyTable:[I

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->valueTable:[I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->valueTable:[I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->threshold:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->threshold:I

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->keyTable:[I

    aget v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->valueTable:[I

    aget v3, v3, v1

    if-nez v2, :cond_2

    if-nez v2, :cond_0

    if-eqz v3, :cond_0

    :cond_2
    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->put(II)I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->keyTable:[I

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->elementSize:I

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->keyTable:[I

    aput v1, v2, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->valueTable:[I

    aput v1, v2, v0

    goto :goto_0
.end method

.method public containsKey(I)Z
    .locals 5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->hash(I)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->keyTable:[I

    array-length v1, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->keyTable:[I

    aget v2, v2, v0

    const/4 v3, 0x0

    if-nez v2, :cond_2

    if-nez v2, :cond_1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->valueTable:[I

    aget v4, v4, v0

    if-nez v4, :cond_2

    :cond_1
    return v3

    :cond_2
    if-ne v2, p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0
.end method

.method public hash(I)I
    .locals 1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->keyTable:[I

    array-length v0, v0

    rem-int/2addr p1, v0

    return p1
.end method

.method public put(II)I
    .locals 5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->hash(I)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->keyTable:[I

    array-length v1, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->keyTable:[I

    aget v3, v2, v0

    if-nez v3, :cond_3

    if-nez v3, :cond_1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->valueTable:[I

    aget v4, v4, v0

    if-nez v4, :cond_3

    :cond_1
    aput p1, v2, v0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->valueTable:[I

    aput p2, p1, v0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->elementSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->elementSize:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->threshold:I

    if-le p1, v0, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->rehash()V

    :cond_2
    return p2

    :cond_3
    if-ne v3, p1, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->valueTable:[I

    aput p2, p1, v0

    return p2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putIfAbsent(II)I
    .locals 5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->hash(I)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->keyTable:[I

    array-length v1, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->keyTable:[I

    aget v3, v2, v0

    if-nez v3, :cond_3

    if-nez v3, :cond_1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->valueTable:[I

    aget v4, v4, v0

    if-nez v4, :cond_3

    :cond_1
    aput p1, v2, v0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->valueTable:[I

    aput p2, p1, v0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->elementSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->elementSize:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->threshold:I

    if-le p1, v0, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->rehash()V

    :cond_2
    neg-int p1, p2

    return p1

    :cond_3
    if-ne v3, p1, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->valueTable:[I

    aget p1, p1, v0

    return p1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->elementSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->size()I

    move-result v0

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
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->keyTable:[I

    aget v3, v3, v2

    if-nez v3, :cond_1

    if-nez v3, :cond_2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->valueTable:[I

    aget v4, v4, v2

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/IntegerCache;->valueTable:[I

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
