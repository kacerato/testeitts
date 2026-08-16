.class public Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field elementSize:I

.field public keyTable:[Ljava/lang/Object;

.field threshold:I

.field public valueTable:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->elementSize:I

    int-to-float v0, p1

    const v1, 0x3f28f5c3    # 0.66f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 4
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->threshold:I

    .line 5
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->keyTable:[Ljava/lang/Object;

    .line 6
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->valueTable:[I

    return-void
.end method

.method private rehash()V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->keyTable:[Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->keyTable:[Ljava/lang/Object;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->valueTable:[I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->valueTable:[I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->threshold:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->threshold:I

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->valueTable:[I

    aget v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->put(Ljava/lang/Object;I)I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->elementSize:I

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->keyTable:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->valueTable:[I

    aput v1, v2, v0

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-ne v2, p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->valueTable:[I

    aget p1, p1, v0

    return p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr p1, v0

    return p1
.end method

.method public put(Ljava/lang/Object;I)I
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->keyTable:[Ljava/lang/Object;

    aget-object v3, v2, v0

    if-nez v3, :cond_2

    aput-object p1, v2, v0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->valueTable:[I

    aput p2, p1, v0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->elementSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->elementSize:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->threshold:I

    if-le p1, v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->rehash()V

    :cond_1
    return p2

    :cond_2
    if-ne v3, p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->valueTable:[I

    aput p2, p1, v0

    return p2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->elementSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->size()I

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
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->valueTable:[I

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
