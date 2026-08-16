.class public Lcom/ardor3d/renderer/ContextManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static _cleanListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/renderer/ContextCleanListener;",
            ">;"
        }
    .end annotation
.end field

.field protected static final contextStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/ardor3d/renderer/RenderContext;",
            ">;"
        }
    .end annotation
.end field

.field protected static currentContext:Lcom/ardor3d/renderer/RenderContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/common/collect/M1;->q()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/ContextManager;->_cleanListeners:Ljava/util/List;

    new-instance v0, Lcom/google/common/collect/O1;

    invoke-direct {v0}, Lcom/google/common/collect/O1;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/O1;->l()Lcom/google/common/collect/O1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/O1;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/ContextManager;->contextStore:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addContext(Ljava/lang/Object;Lcom/ardor3d/renderer/RenderContext;)V
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/ContextManager;->contextStore:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addContextCleanListener(Lcom/ardor3d/renderer/ContextCleanListener;)V
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/ContextManager;->_cleanListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static fireCleanContextEvent(Lcom/ardor3d/renderer/RenderContext;)V
    .locals 2

    sget-object v0, Lcom/ardor3d/renderer/ContextManager;->_cleanListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/renderer/ContextCleanListener;

    invoke-interface {v1, p0}, Lcom/ardor3d/renderer/ContextCleanListener;->cleanForContext(Lcom/ardor3d/renderer/RenderContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getContextForKey(Ljava/lang/Object;)Lcom/ardor3d/renderer/RenderContext;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/ContextManager;->contextStore:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/renderer/RenderContext;

    return-object p0
.end method

.method public static getContextForRef(Ljava/lang/Object;)Lcom/ardor3d/renderer/RenderContext;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/ardor3d/renderer/ContextManager;->contextStore:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/renderer/RenderContext;

    invoke-virtual {v2}, Lcom/ardor3d/renderer/RenderContext;->getGlContextRep()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public static getCurrentContext()Lcom/ardor3d/renderer/RenderContext;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/ContextManager;->currentContext:Lcom/ardor3d/renderer/RenderContext;

    return-object v0
.end method

.method public static removeContext(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/ContextManager;->contextStore:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static switchContext(Ljava/lang/Object;)Lcom/ardor3d/renderer/RenderContext;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/ContextManager;->contextStore:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/renderer/RenderContext;

    sput-object p0, Lcom/ardor3d/renderer/ContextManager;->currentContext:Lcom/ardor3d/renderer/RenderContext;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "contextKey not found in context store."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
