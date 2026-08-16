.class public abstract Lcom/ardor3d/math/ObjectPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/ardor3d/math/Poolable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final _maxSize:I

.field private final _pool:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ardor3d/math/ObjectPool$1;

    invoke-direct {v0, p0}, Lcom/ardor3d/math/ObjectPool$1;-><init>(Lcom/ardor3d/math/ObjectPool;)V

    iput-object v0, p0, Lcom/ardor3d/math/ObjectPool;->_pool:Ljava/lang/ThreadLocal;

    iput p1, p0, Lcom/ardor3d/math/ObjectPool;->_maxSize:I

    return-void
.end method

.method public static synthetic access$000(Lcom/ardor3d/math/ObjectPool;)I
    .locals 0

    iget p0, p0, Lcom/ardor3d/math/ObjectPool;->_maxSize:I

    return p0
.end method

.method public static create(Ljava/lang/Class;I)Lcom/ardor3d/math/ObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ardor3d/math/Poolable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lcom/ardor3d/math/ObjectPool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/ardor3d/math/ObjectPool$2;

    invoke-direct {v0, p1, p0}, Lcom/ardor3d/math/ObjectPool$2;-><init>(ILjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final fetch()Lcom/ardor3d/math/Poolable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/math/ObjectPool;->_pool:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/math/ObjectPool;->newInstance()Lcom/ardor3d/math/Poolable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Poolable;

    :goto_0
    return-object v0
.end method

.method public abstract newInstance()Lcom/ardor3d/math/Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final release(Lcom/ardor3d/math/Poolable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ardor3d/math/ObjectPool;->_pool:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/ardor3d/math/ObjectPool;->_maxSize:I

    if-ge v1, v2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Should not release null objects into ObjectPool."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
