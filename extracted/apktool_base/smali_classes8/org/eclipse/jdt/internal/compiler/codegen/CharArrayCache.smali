.class public Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field elementSize:I

.field public keyTable:[[C

.field threshold:I

.field public valueTable:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x9

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->elementSize:I

    mul-int/lit8 v0, p1, 0x2

    .line 4
    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->threshold:I

    .line 5
    new-array v0, p1, [[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    .line 6
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->valueTable:[I

    return-void
.end method

.method private put([CI)I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    array-length v0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    aget-object v3, v2, v1

    if-nez v3, :cond_2

    aput-object p1, v2, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->valueTable:[I

    aput p2, p1, v1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->elementSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->elementSize:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->threshold:I

    if-le p1, v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->rehash()V

    :cond_1
    return p2

    :cond_2
    invoke-static {v3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->valueTable:[I

    aput p2, p1, v1

    return p2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private rehash()V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    array-length v1, v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->valueTable:[I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->valueTable:[I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->threshold:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->threshold:I

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->valueTable:[I

    aget v3, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->put([CI)I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->elementSize:I

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    const/4 v3, 0x0

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->valueTable:[I

    aput v1, v2, v0

    goto :goto_0
.end method

.method public containsKey([C)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    array-length v0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    aget-object v2, v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-static {v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    move v1, v3

    goto :goto_0
.end method

.method public get([C)I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    array-length v0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-static {v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->valueTable:[I

    aget p1, p1, v1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putIfAbsent([CI)I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    array-length v0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    aget-object v3, v2, v1

    if-nez v3, :cond_2

    aput-object p1, v2, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->valueTable:[I

    aput p2, p1, v1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->elementSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->elementSize:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->threshold:I

    if-le p1, v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->rehash()V

    :cond_1
    neg-int p1, p2

    return p1

    :cond_2
    invoke-static {v3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->valueTable:[I

    aget p1, p1, v1

    return p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove([C)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    array-length v0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-static {v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->valueTable:[I

    aput v3, p1, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    const/4 v0, 0x0

    aput-object v0, p1, v1

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    move v1, v3

    goto :goto_0
.end method

.method public returnKeyFor(I)[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    array-length v0, v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->valueTable:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    aget-object p1, p1, v1

    return-object p1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->elementSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->size()I

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
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->keyTable:[[C

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v3, "->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->valueTable:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    if-ge v2, v0, :cond_2

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
