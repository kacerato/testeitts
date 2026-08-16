.class public final Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public elementSize:I

.field public set:[I

.field threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->elementSize:I

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->threshold:I

    int-to-float v0, p1

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 5
    :cond_0
    new-array p1, v0, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->set:[I

    return-void
.end method

.method private rehash()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->elementSize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->set:[I

    array-length v1, v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->set:[I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->set:[I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->threshold:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->threshold:I

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->set:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->add(I)I

    goto :goto_0
.end method


# virtual methods
.method public add(I)I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->set:[I

    array-length v0, v0

    rem-int v1, p1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->set:[I

    aget v3, v2, v1

    if-nez v3, :cond_2

    aput p1, v2, v1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->elementSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->elementSize:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->threshold:I

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->rehash()V

    :cond_1
    return p1

    :cond_2
    if-ne v3, p1, :cond_3

    aput p1, v2, v1

    return p1

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

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->elementSize:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->elementSize:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->threshold:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->threshold:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->set:[I

    array-length v1, v1

    new-array v2, v1, [I

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->set:[I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->set:[I

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public contains(I)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->set:[I

    array-length v0, v0

    rem-int v1, p1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->set:[I

    aget v2, v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    move v1, v3

    goto :goto_0
.end method

.method public remove(I)I
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->set:[I

    array-length v0, v0

    rem-int v1, p1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->set:[I

    aget v3, v2, v1

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    :cond_1
    if-ne v3, p1, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->elementSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->elementSize:I

    aput v4, v2, v1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->rehash()V

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    move v1, v4

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->elementSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->set:[I

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashSetOfInt;->set:[I

    aget v3, v3, v2

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
