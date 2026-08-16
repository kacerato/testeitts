.class public Lcom/threed/jpct/IntList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cnt:I

.field private store:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/IntList;->store:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/IntList;->cnt:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 4

    iget v0, p0, Lcom/threed/jpct/IntList;->cnt:I

    iget-object v1, p0, Lcom/threed/jpct/IntList;->store:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const v1, 0x8000

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/threed/jpct/IntList;->store:[I

    iget v2, p0, Lcom/threed/jpct/IntList;->cnt:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/threed/jpct/IntList;->store:[I

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/IntList;->store:[I

    iget v1, p0, Lcom/threed/jpct/IntList;->cnt:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/threed/jpct/IntList;->cnt:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/IntList;->cnt:I

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/IntList;->store:[I

    return-void
.end method

.method public compact()V
    .locals 4

    iget v0, p0, Lcom/threed/jpct/IntList;->cnt:I

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/threed/jpct/IntList;->store:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/threed/jpct/IntList;->store:[I

    return-void
.end method

.method public get(I)I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/IntList;->cnt:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/IntList;->store:[I

    aget p1, v0, p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/IntList;->cnt:I

    return v0
.end method
