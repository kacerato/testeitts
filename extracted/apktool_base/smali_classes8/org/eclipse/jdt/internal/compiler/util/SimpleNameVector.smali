.class public final Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static INITIAL_SIZE:I = 0xa


# instance fields
.field elements:[[C

.field maxSize:I

.field public size:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->INITIAL_SIZE:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->maxSize:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->elements:[[C

    return-void
.end method


# virtual methods
.method public add([C)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->maxSize:I

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->elements:[[C

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->maxSize:I

    new-array v1, v1, [[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->elements:[[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->elements:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    aput-object p1, v0, v1

    return-void
.end method

.method public addAll([[C)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->maxSize:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    array-length v1, p1

    add-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->maxSize:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->elements:[[C

    new-array v1, v1, [[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->elements:[[C

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->elements:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    return-void
.end method

.method public contains([C)Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->elements:[[C

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public copyInto([Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->elements:[[C

    const/4 v1, 0x0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public elementAt(I)[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->elements:[[C

    aget-object p1, v0, p1

    return-object p1
.end method

.method public remove([C)[C
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->elements:[[C

    aget-object v4, v3, v1

    if-ne p1, v4, :cond_1

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    sub-int/2addr v4, v1

    invoke-static {v3, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->elements:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    aput-object v2, v0, v1

    return-object p1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public removeAll()V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->elements:[[C

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->elements:[[C

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
