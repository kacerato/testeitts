.class public Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation runtime LIc/p;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# instance fields
.field private array:[Ljava/lang/Object;

.field private final chunkSize:I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x32

    .line 1
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunkSize"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 6
    sget-object v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->EMPTY_ARRAY:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    const/16 v0, 0xa

    .line 8
    invoke-static {v0, p1}, LNc/b;->N(II)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->chunkSize:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "collection can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkElementIndex(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkPositionIndex(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getChunkedCapacity(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wantedSize"
        }
    .end annotation

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->chunkSize:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, v0

    mul-int/2addr p1, v0

    return p1
.end method

.method private shrinkCapacity()V
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->getChunkedCapacity(I)I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->checkPositionIndex(I)V

    .line 6
    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->ensureCapacity(I)V

    .line 7
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 9
    iget p1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    .line 10
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->ensureCapacity(I)V

    .line 2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    aput-object p1, v0, v2

    add-int/2addr v2, v1

    .line 3
    iput v2, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    .line 4
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr p1, v1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->checkPositionIndex(I)V

    if-eqz p2, :cond_3

    .line 2
    instance-of v0, p2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    check-cast p2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    .line 4
    iget v0, p2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget v2, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->ensureCapacity(I)V

    .line 6
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    add-int v3, p1, v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p2

    .line 9
    array-length v0, p2

    if-nez v0, :cond_2

    return v1

    .line 10
    :cond_2
    iget v2, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->ensureCapacity(I)V

    .line 11
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    add-int v3, p1, v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    :goto_0
    iget p1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    .line 14
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return p2

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "collection can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 16
    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 4

    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v3, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->shrinkCapacity()V

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "collection can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ensureCapacity(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minCapacity"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->getChunkedCapacity(I)I

    move-result p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->checkElementIndex(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getCapacity()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public getChunkSize()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->chunkSize:I

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->checkElementIndex(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    aget-object v1, v0, p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_0

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->shrinkCapacity()V

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->remove(I)Ljava/lang/Object;

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "collection can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->remove(I)Ljava/lang/Object;

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "collection can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->checkElementIndex(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "destination"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 2
    array-length v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->array:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    array-length v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 6
    aput-object v0, p1, v1

    :cond_1
    return-object p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "destination can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public trimToChunkSize()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->shrinkCapacity()V

    return-void
.end method

.method public trimToSize()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->shrinkCapacity()V

    return-void
.end method
