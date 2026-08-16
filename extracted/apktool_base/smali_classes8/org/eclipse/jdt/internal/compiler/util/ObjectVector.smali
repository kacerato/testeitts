.class public final Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static INITIAL_SIZE:I = 0xa


# instance fields
.field elements:[Ljava/lang/Object;

.field maxSize:I

.field public size:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->INITIAL_SIZE:I

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget p1, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->INITIAL_SIZE:I

    :goto_0
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->maxSize:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->maxSize:I

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->maxSize:I

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    aput-object p1, v0, v1

    return-void
.end method

.method public addAll(Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V
    .locals 5

    .line 6
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    add-int v2, v0, v1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->maxSize:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    add-int/2addr v1, v0

    .line 7
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->maxSize:I

    .line 8
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    return-void
.end method

.method public addAll([Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->maxSize:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 2
    array-length v1, p1

    add-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->maxSize:I

    .line 3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public containsIdentical(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public copyInto([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->copyInto([Ljava/lang/Object;I)V

    return-void
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public elementAt(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public find(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector$1;-><init>(Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    sub-int/2addr v4, v1

    invoke-static {v3, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    aput-object v2, v0, v1

    return-object p1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public removeAll()V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elements:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
