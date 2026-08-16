.class public Lcom/ardor3d/util/ContextIdReference;
.super Ljava/lang/ref/PhantomReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/PhantomReference<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final REFS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/util/ContextIdReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _idCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _singleContextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/ardor3d/util/ContextIdReference;->REFS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    sget-boolean p1, Lcom/ardor3d/util/Constants;->useMultipleContexts:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/common/collect/O1;

    invoke-direct {p1}, Lcom/google/common/collect/O1;-><init>()V

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/common/collect/O1;->g(I)Lcom/google/common/collect/O1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/O1;->l()Lcom/google/common/collect/O1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/O1;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/util/ContextIdReference;->_idCache:Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ardor3d/util/ContextIdReference;->_idCache:Ljava/util/Map;

    :goto_0
    sget-object p1, Lcom/ardor3d/util/ContextIdReference;->REFS:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Ljava/lang/ref/Reference;->clear()V

    sget-object v0, Lcom/ardor3d/util/ContextIdReference;->REFS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMultipleContexts:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/util/ContextIdReference;->_idCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public get(Ljava/lang/Object;)I
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMultipleContexts:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/util/ContextIdReference;->_idCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    iget p1, p0, Lcom/ardor3d/util/ContextIdReference;->_singleContextId:I

    return p1
.end method

.method public getContextObjects()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMultipleContexts:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/util/ContextIdReference;->_idCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/Object;I)V
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMultipleContexts:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/util/ContextIdReference;->_idCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/ardor3d/util/ContextIdReference;->_singleContextId:I

    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)I
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMultipleContexts:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ardor3d/util/ContextIdReference;->_idCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    iget p1, p0, Lcom/ardor3d/util/ContextIdReference;->_singleContextId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ardor3d/util/ContextIdReference;->_singleContextId:I

    return p1
.end method
