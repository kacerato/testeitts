.class public abstract Lcom/ardor3d/scenegraph/AbstractBufferData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/nio/Buffer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final STATIC_REF:Ljava/lang/Object;

.field private static _identityCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ardor3d/scenegraph/AbstractBufferData<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static _vboRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/ardor3d/scenegraph/AbstractBufferData<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _buffer:Ljava/nio/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected _needsRefresh:Z

.field protected _vboAccessMode:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

.field protected transient _vboIdCache:Lcom/ardor3d/util/ContextIdReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/util/ContextIdReference<",
            "Lcom/ardor3d/scenegraph/AbstractBufferData<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/O1;

    invoke-direct {v0}, Lcom/google/common/collect/O1;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/O1;->l()Lcom/google/common/collect/O1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/O1;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_identityCache:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ardor3d/scenegraph/AbstractBufferData;->STATIC_REF:Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboRefQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Lcom/ardor3d/scenegraph/AbstractBufferData$1;

    invoke-direct {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData$1;-><init>()V

    invoke-static {v0}, Lcom/ardor3d/renderer/ContextManager;->addContextCleanListener(Lcom/ardor3d/renderer/ContextCleanListener;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;->StaticDraw:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboAccessMode:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_needsRefresh:Z

    sget-object v0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_identityCache:Ljava/util/Map;

    sget-object v1, Lcom/ardor3d/scenegraph/AbstractBufferData;->STATIC_REF:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static cleanAllVBOs(Lcom/ardor3d/renderer/Renderer;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/common/collect/s;->M()Lcom/google/common/collect/s;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->gatherGCdIds(Lcom/google/common/collect/S1;)Lcom/google/common/collect/S1;

    .line 3
    sget-object v1, Lcom/ardor3d/scenegraph/AbstractBufferData;->_identityCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/scenegraph/AbstractBufferData;

    .line 4
    iget-object v3, v2, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboIdCache:Lcom/ardor3d/util/ContextIdReference;

    if-eqz v3, :cond_0

    .line 5
    sget-boolean v4, Lcom/ardor3d/util/Constants;->useMultipleContexts:Z

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v3}, Lcom/ardor3d/util/ContextIdReference;->getContextObjects()Ljava/util/Set;

    move-result-object v3

    .line 7
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getVBOID(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/renderer/RenderContext;->getGlContextRep()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getVBOID(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {p0, v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->handleVBODelete(Lcom/ardor3d/renderer/Renderer;Lcom/google/common/collect/S1;)V

    return-void
.end method

.method public static cleanAllVBOs(Lcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/RenderContext;)V
    .locals 6

    .line 11
    invoke-static {}, Lcom/google/common/collect/s;->M()Lcom/google/common/collect/s;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->gatherGCdIds(Lcom/google/common/collect/S1;)Lcom/google/common/collect/S1;

    .line 13
    invoke-virtual {p1}, Lcom/ardor3d/renderer/RenderContext;->getGlContextRep()Ljava/lang/Object;

    move-result-object v1

    .line 14
    sget-object v2, Lcom/ardor3d/scenegraph/AbstractBufferData;->_identityCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/scenegraph/AbstractBufferData;

    .line 15
    iget-object v4, v3, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboIdCache:Lcom/ardor3d/util/ContextIdReference;

    if-eqz v4, :cond_0

    .line 16
    invoke-virtual {v4, v1}, Lcom/ardor3d/util/ContextIdReference;->get(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/ardor3d/renderer/RenderContext;->getGlContextRep()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    iget-object v3, v3, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboIdCache:Lcom/ardor3d/util/ContextIdReference;

    invoke-virtual {v3, v1}, Lcom/ardor3d/util/ContextIdReference;->remove(Ljava/lang/Object;)I

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {p0, v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->handleVBODelete(Lcom/ardor3d/renderer/Renderer;Lcom/google/common/collect/S1;)V

    return-void
.end method

.method public static cleanExpiredVBOs(Lcom/ardor3d/renderer/Renderer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->gatherGCdIds(Lcom/google/common/collect/S1;)Lcom/google/common/collect/S1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->handleVBODelete(Lcom/ardor3d/renderer/Renderer;Lcom/google/common/collect/S1;)V

    :cond_0
    return-void
.end method

.method private static final gatherGCdIds(Lcom/google/common/collect/S1;)Lcom/google/common/collect/S1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/collect/S1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :goto_0
    sget-object v0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/ContextIdReference;

    if-eqz v0, :cond_4

    sget-boolean v1, Lcom/ardor3d/util/Constants;->useMultipleContexts:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/ardor3d/util/ContextIdReference;->getContextObjects()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/common/collect/s;->M()Lcom/google/common/collect/s;

    move-result-object p0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/ardor3d/util/ContextIdReference;->get(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-nez p0, :cond_2

    invoke-static {}, Lcom/google/common/collect/s;->M()Lcom/google/common/collect/s;

    move-result-object p0

    :cond_2
    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/renderer/RenderContext;->getGlContextRep()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ardor3d/util/ContextIdReference;->get(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v0}, Lcom/ardor3d/util/ContextIdReference;->clear()V

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method private static handleVBODelete(Lcom/ardor3d/renderer/Renderer;Lcom/google/common/collect/S1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/renderer/Renderer;",
            "Lcom/google/common/collect/S1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/renderer/RenderContext;->getGlContextRep()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lcom/google/common/collect/S1;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz p0, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Lcom/google/common/collect/S1;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/ardor3d/renderer/Renderer;->deleteVBOs(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/ardor3d/renderer/ContextManager;->getContextForRef(Ljava/lang/Object;)Lcom/ardor3d/renderer/RenderContext;

    move-result-object v3

    invoke-static {v3}, Lcom/ardor3d/util/GameTaskQueueManager;->getManager(Ljava/lang/Object;)Lcom/ardor3d/util/GameTaskQueueManager;

    move-result-object v3

    new-instance v4, Lcom/ardor3d/scenegraph/AbstractBufferData$2;

    invoke-direct {v4, p1, v2}, Lcom/ardor3d/scenegraph/AbstractBufferData$2;-><init>(Lcom/google/common/collect/S1;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/ardor3d/util/GameTaskQueueManager;->render(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    return-object v0
.end method

.method public getBufferCapacity()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferLimit()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVBOID(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboIdCache:Lcom/ardor3d/util/ContextIdReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ardor3d/util/ContextIdReference;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboIdCache:Lcom/ardor3d/util/ContextIdReference;

    invoke-virtual {v0, p1}, Lcom/ardor3d/util/ContextIdReference;->get(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getVboAccessMode()Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboAccessMode:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    return-object v0
.end method

.method public isNeedsRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_needsRefresh:Z

    return v0
.end method

.method public abstract makeCopy()Lcom/ardor3d/scenegraph/AbstractBufferData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ardor3d/scenegraph/AbstractBufferData<",
            "TT;>;"
        }
    .end annotation
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    sget-object v1, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;->StaticDraw:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    const-string v2, "vboAccessMode"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    iput-object p1, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboAccessMode:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    return-void
.end method

.method public removeVBOID(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboIdCache:Lcom/ardor3d/util/ContextIdReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ardor3d/util/ContextIdReference;->remove(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setBuffer(Ljava/nio/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    return-void
.end method

.method public setNeedsRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_needsRefresh:Z

    return-void
.end method

.method public setVBOID(Ljava/lang/Object;I)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboIdCache:Lcom/ardor3d/util/ContextIdReference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ardor3d/util/ContextIdReference;

    sget-object v1, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v1}, Lcom/ardor3d/util/ContextIdReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboIdCache:Lcom/ardor3d/util/ContextIdReference;

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboIdCache:Lcom/ardor3d/util/ContextIdReference;

    invoke-virtual {v0, p1, p2}, Lcom/ardor3d/util/ContextIdReference;->put(Ljava/lang/Object;I)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "vboId must != 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVboAccessMode(Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboAccessMode:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboAccessMode:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    const-string v1, "vboAccessMode"

    sget-object v2, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;->StaticDraw:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method
