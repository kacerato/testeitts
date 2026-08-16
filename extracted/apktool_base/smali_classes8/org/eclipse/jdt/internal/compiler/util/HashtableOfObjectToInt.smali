.class public final Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public elementSize:I

.field public keyTable:[Ljava/lang/Object;

.field threshold:I

.field public valueTable:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->elementSize:I

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->threshold:I

    int-to-float v0, p1

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 5
    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    .line 6
    new-array p1, v0, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->valueTable:[I

    return-void
.end method

.method private rehash()V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->elementSize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->valueTable:[I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->valueTable:[I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->threshold:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->threshold:I

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->valueTable:[I

    aget v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->elementSize:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->elementSize:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->threshold:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->threshold:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->valueTable:[I

    array-length v1, v1

    new-array v2, v1, [I

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->valueTable:[I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->valueTable:[I

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public get(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->valueTable:[I

    aget p1, p1, v1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keysToArray([Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    aput-object v3, p1, v2

    move v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;I)I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-nez v3, :cond_2

    aput-object p1, v2, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->valueTable:[I

    aput p2, p1, v1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->elementSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->elementSize:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->threshold:I

    if-le p1, v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->rehash()V

    :cond_1
    return p2

    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->valueTable:[I

    aput p2, p1, v1

    return p2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeKey(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->valueTable:[I

    aget p1, p1, v1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->elementSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->elementSize:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->rehash()V

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->elementSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->valueTable:[I

    aget v1, v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
