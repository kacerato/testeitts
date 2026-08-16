.class public Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field elementSize:I

.field public keyTable:[J

.field threshold:I

.field public valueTable:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->elementSize:I

    int-to-double v0, p1

    const-wide v2, 0x3fe51eb851eb851fL    # 0.66

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 4
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->threshold:I

    .line 5
    new-array v0, p1, [J

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->keyTable:[J

    .line 6
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->valueTable:[I

    return-void
.end method

.method private rehash()V
    .locals 7

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->keyTable:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->keyTable:[J

    array-length v1, v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->keyTable:[J

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->keyTable:[J

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->valueTable:[I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->valueTable:[I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->threshold:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->threshold:I

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->keyTable:[J

    aget-wide v3, v2, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->valueTable:[I

    aget v2, v2, v1

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_2

    if-nez v5, :cond_0

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {v0, v3, v4, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->put(JI)I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->keyTable:[J

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->elementSize:I

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->keyTable:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->valueTable:[I

    aput v1, v2, v0

    goto :goto_0
.end method

.method public containsKey(J)Z
    .locals 8

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->hash(J)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->keyTable:[J

    array-length v1, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->keyTable:[J

    aget-wide v3, v2, v0

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    const/4 v7, 0x0

    if-nez v2, :cond_2

    cmp-long v2, v3, v5

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->valueTable:[I

    aget v2, v2, v0

    if-nez v2, :cond_2

    :cond_1
    return v7

    :cond_2
    cmp-long v2, v3, p1

    if-nez v2, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v7

    goto :goto_0
.end method

.method public hash(J)I
    .locals 0

    long-to-int p1, p1

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->keyTable:[J

    array-length p2, p2

    rem-int/2addr p1, p2

    return p1
.end method

.method public put(JI)I
    .locals 8

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->hash(J)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->keyTable:[J

    array-length v1, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->keyTable:[J

    aget-wide v3, v2, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->valueTable:[I

    aget v5, v5, v0

    if-nez v5, :cond_3

    :cond_1
    aput-wide p1, v2, v0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->valueTable:[I

    aput p3, p1, v0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->elementSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->elementSize:I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->threshold:I

    if-le p1, p2, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->rehash()V

    :cond_2
    return p3

    :cond_3
    cmp-long v2, v3, p1

    if-nez v2, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->valueTable:[I

    aput p3, p1, v0

    return p3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putIfAbsent(JI)I
    .locals 8

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->hash(J)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->keyTable:[J

    array-length v1, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->keyTable:[J

    aget-wide v3, v2, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->valueTable:[I

    aget v5, v5, v0

    if-nez v5, :cond_3

    :cond_1
    aput-wide p1, v2, v0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->valueTable:[I

    aput p3, p1, v0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->elementSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->elementSize:I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->threshold:I

    if-le p1, p2, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->rehash()V

    :cond_2
    neg-int p1, p3

    return p1

    :cond_3
    cmp-long v2, v3, p1

    if-nez v2, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->valueTable:[I

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

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->elementSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->size()I

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
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->keyTable:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->valueTable:[I

    aget v3, v3, v2

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v3, "->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/LongCache;->valueTable:[I

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
