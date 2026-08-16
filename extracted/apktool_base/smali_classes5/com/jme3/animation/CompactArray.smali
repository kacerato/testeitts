.class public abstract Lcom/jme3/animation/CompactArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/jme3/util/clone/JmeCloneable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected array:[F

.field protected index:[I

.field protected indexPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private invalid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>([F[I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lcom/jme3/animation/CompactArray;->array:[F

    .line 6
    iput-object p2, p0, Lcom/jme3/animation/CompactArray;->index:[I

    return-void
.end method


# virtual methods
.method public varargs add([Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/animation/CompactArray;->invalid:Z

    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->index:[I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jme3/animation/CompactArray;->index:[I

    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->index:[I

    array-length v2, v0

    array-length v3, p1

    add-int/2addr v3, v2

    new-array v3, v3, [I

    array-length v4, v0

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/jme3/animation/CompactArray;->index:[I

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_4

    aget-object v0, p1, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->index:[I

    add-int v3, v2, v1

    const/4 v4, -0x1

    aput v4, v0, v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->index:[I

    add-int v4, v2, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Internal is already fixed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    return-void
.end method

.method public clone()Lcom/jme3/animation/CompactArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/jme3/util/clone/Cloner;->deepClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/CompactArray;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->clone()Lcom/jme3/animation/CompactArray;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    iget-object p2, p0, Lcom/jme3/animation/CompactArray;->index:[I

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    iput-object p2, p0, Lcom/jme3/animation/CompactArray;->index:[I

    iget-object p2, p0, Lcom/jme3/animation/CompactArray;->array:[F

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/jme3/animation/CompactArray;->array:[F

    return-void
.end method

.method public abstract deserialize(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation
.end method

.method public ensureCapacity([FI)[F
    .locals 2

    if-nez p1, :cond_0

    new-array p1, p2, [F

    return-object p1

    :cond_0
    array-length v0, p1

    if-lt v0, p2, :cond_1

    return-object p1

    :cond_1
    new-array p2, p2, [F

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public freeze()V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->serialize()V

    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->serialize()V

    invoke-virtual {p0, p1}, Lcom/jme3/animation/CompactArray;->getCompactIndex(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/jme3/animation/CompactArray;->deserialize(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCompactIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->index:[I

    if-eqz v0, :cond_0

    aget p1, v0, p1

    :cond_0
    return p1
.end method

.method public final getCompactObjectSize()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getTupleSize()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public abstract getElementClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final varargs getIndex([Ljava/lang/Object;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[I"
        }
    .end annotation

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    :goto_1
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getSerializedData()[F
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->serialize()V

    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->array:[F

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getSerializedData()[F

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getTotalObjectSize()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->index:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getTupleSize()I

    move-result v1

    div-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public abstract getTupleSize()I
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t clone array"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final serialize()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/jme3/animation/CompactArray;->invalid:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getTupleSize()I

    move-result v1

    mul-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/jme3/animation/CompactArray;->array:[F

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/jme3/animation/CompactArray;->array:[F

    invoke-virtual {p0, v1, v0}, Lcom/jme3/animation/CompactArray;->ensureCapacity([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/animation/CompactArray;->array:[F

    .line 5
    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 8
    invoke-virtual {p0, v2, v1}, Lcom/jme3/animation/CompactArray;->serialize(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/jme3/animation/CompactArray;->invalid:Z

    :cond_2
    return-void
.end method

.method public abstract serialize(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method

.method public final set(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/jme3/animation/CompactArray;->getCompactIndex(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/jme3/animation/CompactArray;->serialize(ILjava/lang/Object;)V

    return-void
.end method

.method public setInvalid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/animation/CompactArray;->invalid:Z

    return-void
.end method

.method public final toObjectArray()[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getElementClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getSerializedSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getTupleSize()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getElementClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v3, v4}, Lcom/jme3/animation/CompactArray;->deserialize(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getElementClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getTotalObjectSize()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_1

    invoke-virtual {p0, v2}, Lcom/jme3/animation/CompactArray;->getCompactIndex(I)I

    move-result v4

    aget-object v4, v1, v4

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v3

    :catch_0
    return-object v0
.end method
