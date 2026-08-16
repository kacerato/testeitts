.class public final Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public elementSize:I

.field public threshold:I

.field public values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    add-int/lit8 v0, p1, 0x1

    .line 4
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->threshold:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    return-void
.end method

.method private rehash()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    array-length v1, v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->threshold:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->threshold:I

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-nez v3, :cond_2

    aput-object p1, v2, v1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->threshold:I

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->rehash()V

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    aput-object p1, v0, v1

    return-object p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addIfNotIncluded(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-nez v3, :cond_2

    aput-object p1, v2, v1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->threshold:I

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->rehash()V

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public asArray([Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    array-length v1, p1

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    aput-object v3, p1, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

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

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->threshold:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->threshold:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    array-length v1, v1

    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public includes(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

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

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    aget-object v2, p1, v1

    aput-object v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    aget-object p1, p1, v4

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->rehash()V

    :cond_3
    return-object v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    move v1, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    array-length v0, v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
