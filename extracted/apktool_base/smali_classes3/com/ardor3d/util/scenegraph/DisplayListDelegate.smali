.class public Lcom/ardor3d/util/scenegraph/DisplayListDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/scenegraph/RenderDelegate;


# static fields
.field private static final STATIC_REF:Ljava/lang/Object;

.field private static _identityCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ardor3d/util/scenegraph/DisplayListDelegate;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static _refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/ardor3d/util/scenegraph/DisplayListDelegate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _id:Lcom/ardor3d/util/SimpleContextIdReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/util/SimpleContextIdReference<",
            "Lcom/ardor3d/util/scenegraph/DisplayListDelegate;",
            ">;"
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

    sput-object v0, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->_identityCache:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->STATIC_REF:Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->_refQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Lcom/ardor3d/util/scenegraph/DisplayListDelegate$1;

    invoke-direct {v0}, Lcom/ardor3d/util/scenegraph/DisplayListDelegate$1;-><init>()V

    invoke-static {v0}, Lcom/ardor3d/renderer/ContextManager;->addContextCleanListener(Lcom/ardor3d/renderer/ContextCleanListener;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ardor3d/util/SimpleContextIdReference;

    sget-object v1, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->_refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/ardor3d/util/SimpleContextIdReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->_id:Lcom/ardor3d/util/SimpleContextIdReference;

    sget-object p1, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->_identityCache:Ljava/util/Map;

    sget-object p2, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->STATIC_REF:Ljava/lang/Object;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static cleanAllDisplayLists(Lcom/ardor3d/renderer/Renderer;)V
    .locals 4

    invoke-static {}, Lcom/google/common/collect/s;->M()Lcom/google/common/collect/s;

    move-result-object v0

    invoke-static {v0}, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->gatherGCdIds(Lcom/google/common/collect/S1;)Lcom/google/common/collect/S1;

    sget-object v1, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->_identityCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;

    iget-object v3, v2, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->_id:Lcom/ardor3d/util/SimpleContextIdReference;

    invoke-virtual {v3}, Lcom/ardor3d/util/SimpleContextIdReference;->getGlContext()Ljava/lang/Object;

    move-result-object v3

    iget-object v2, v2, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->_id:Lcom/ardor3d/util/SimpleContextIdReference;

    invoke-virtual {v2}, Lcom/ardor3d/util/SimpleContextIdReference;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->handleDisplayListDelete(Lcom/ardor3d/renderer/Renderer;Lcom/google/common/collect/S1;)V

    return-void
.end method

.method public static cleanExpiredDisplayLists(Lcom/ardor3d/renderer/Renderer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->gatherGCdIds(Lcom/google/common/collect/S1;)Lcom/google/common/collect/S1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->handleDisplayListDelete(Lcom/ardor3d/renderer/Renderer;Lcom/google/common/collect/S1;)V

    :cond_0
    return-void
.end method

.method private static gatherGCdIds(Lcom/google/common/collect/S1;)Lcom/google/common/collect/S1;
    .locals 3
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
    sget-object v0, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->_refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/SimpleContextIdReference;

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/common/collect/s;->M()Lcom/google/common/collect/s;

    move-result-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/ardor3d/util/SimpleContextIdReference;->getGlContext()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ardor3d/util/SimpleContextIdReference;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/ardor3d/util/SimpleContextIdReference;->clear()V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static handleDisplayListDelete(Lcom/ardor3d/renderer/Renderer;Lcom/google/common/collect/S1;)V
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

    invoke-interface {p0, v2}, Lcom/ardor3d/renderer/Renderer;->deleteDisplayLists(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/ardor3d/renderer/ContextManager;->getContextForRef(Ljava/lang/Object;)Lcom/ardor3d/renderer/RenderContext;

    move-result-object v3

    invoke-static {v3}, Lcom/ardor3d/util/GameTaskQueueManager;->getManager(Ljava/lang/Object;)Lcom/ardor3d/util/GameTaskQueueManager;

    move-result-object v3

    new-instance v4, Lcom/ardor3d/util/scenegraph/DisplayListDelegate$2;

    invoke-direct {v4, p1, v2}, Lcom/ardor3d/util/scenegraph/DisplayListDelegate$2;-><init>(Lcom/google/common/collect/S1;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/ardor3d/util/GameTaskQueueManager;->render(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public render(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ardor3d/renderer/Renderer;->doTransforms(Lcom/ardor3d/math/type/ReadOnlyTransform;)Z

    move-result v0

    iget-object v1, p0, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->_id:Lcom/ardor3d/util/SimpleContextIdReference;

    invoke-virtual {v1}, Lcom/ardor3d/util/SimpleContextIdReference;->getId()I

    move-result v1

    invoke-interface {p2, v1}, Lcom/ardor3d/renderer/Renderer;->renderDisplayList(I)V

    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/renderer/RenderContext;->invalidateStates()V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ardor3d/renderer/Renderer;->undoTransforms(Lcom/ardor3d/math/type/ReadOnlyTransform;)V

    :cond_0
    return-void
.end method
