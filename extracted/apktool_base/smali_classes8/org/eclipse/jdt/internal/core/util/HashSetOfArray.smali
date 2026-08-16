.class public final Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public elementSize:I

.field public set:[[Ljava/lang/Object;

.field threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->elementSize:I

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->threshold:I

    int-to-float v0, p1

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 5
    :cond_0
    new-array p1, v0, [[Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    return-void
.end method

.method private hashCode([Ljava/lang/Object;)I
    .locals 1

    .line 1
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->hashCode([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method private hashCode([Ljava/lang/Object;I)I
    .locals 2

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gez p2, :cond_0

    const p1, 0x7fffffff

    and-int/2addr p1, v0

    return p1

    .line 2
    :cond_0
    aget-object v1, p1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->combineHashCodes(II)I

    move-result v0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method

.method private rehash()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->elementSize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    array-length v1, v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->threshold:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->threshold:I

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->add([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public add([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    array-length v0, v0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->hashCode([Ljava/lang/Object;)I

    move-result v1

    rem-int/2addr v1, v0

    array-length v2, p1

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    aget-object v4, v3, v1

    if-nez v4, :cond_2

    aput-object p1, v3, v1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->elementSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->elementSize:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->threshold:I

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->rehash()V

    :cond_1
    return-object p1

    :cond_2
    array-length v3, v4

    if-ne v3, v2, :cond_3

    invoke-static {v4, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->equalArraysOrNull([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    aput-object p1, v0, v1

    return-object p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->elementSize:I

    iput v1, v0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->elementSize:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->threshold:I

    iput v1, v0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->threshold:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    array-length v1, v1

    new-array v2, v1, [[Ljava/lang/Object;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public contains([Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    array-length v0, v0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->hashCode([Ljava/lang/Object;)I

    move-result v1

    rem-int/2addr v1, v0

    array-length v2, p1

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    :cond_1
    array-length v5, v3

    if-ne v5, v2, :cond_2

    invoke-static {v3, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->equalArraysOrNull([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    move v1, v4

    goto :goto_0
.end method

.method public remove([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    array-length v0, v0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->hashCode([Ljava/lang/Object;)I

    move-result v1

    rem-int/2addr v1, v0

    array-length v2, p1

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return-object v4

    :cond_1
    array-length v5, v3

    if-ne v5, v2, :cond_2

    invoke-static {v3, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->equalArraysOrNull([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    aget-object v0, p1, v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->elementSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->elementSize:I

    aput-object v4, p1, v1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->rehash()V

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->elementSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_3

    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v5, v4

    move v6, v2

    :goto_1
    if-lt v6, v5, :cond_1

    const-string v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v1, -0x1

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    aget-object v7, v4, v6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v5, -0x1

    if-eq v6, v7, :cond_2

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
