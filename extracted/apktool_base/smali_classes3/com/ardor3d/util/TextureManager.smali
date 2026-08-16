.class public final Lcom/ardor3d/util/TextureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static _tCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ardor3d/util/TextureKey;",
            "Lcom/ardor3d/image/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static _textureRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/ardor3d/util/TextureKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/util/TextureManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/util/TextureManager;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/google/common/collect/O1;

    invoke-direct {v0}, Lcom/google/common/collect/O1;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/O1;->l()Lcom/google/common/collect/O1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/O1;->m()Lcom/google/common/collect/O1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/O1;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/util/TextureManager;->_tCache:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/ardor3d/util/TextureManager;->_textureRefQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Lcom/ardor3d/util/TextureManager$1;

    invoke-direct {v0}, Lcom/ardor3d/util/TextureManager$1;-><init>()V

    invoke-static {v0}, Lcom/ardor3d/renderer/ContextManager;->addContextCleanListener(Lcom/ardor3d/renderer/ContextCleanListener;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToCache(Lcom/ardor3d/image/Texture;)V
    .locals 2

    invoke-static {}, Lcom/ardor3d/renderer/state/TextureState;->getDefaultTexture()Lcom/ardor3d/image/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ardor3d/renderer/state/TextureState;->getDefaultTexture()Lcom/ardor3d/image/Texture;

    move-result-object v0

    if-eq p0, v0, :cond_1

    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getImage()Lcom/ardor3d/image/Image;

    move-result-object v0

    invoke-static {}, Lcom/ardor3d/renderer/state/TextureState;->getDefaultTextureImage()Lcom/ardor3d/image/Image;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/ardor3d/util/TextureManager;->_tCache:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getTextureKey()Lcom/ardor3d/util/TextureKey;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static cleanAllTextures(Lcom/ardor3d/renderer/Renderer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/ardor3d/util/TextureManager;->cleanAllTextures(Lcom/ardor3d/renderer/Renderer;Ljava/util/Map;)V

    return-void
.end method

.method public static cleanAllTextures(Lcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/RenderContext;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/renderer/Renderer;",
            "Lcom/ardor3d/renderer/RenderContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .line 13
    invoke-static {}, Lcom/ardor3d/util/TextureManager;->gatherGCdIds()Lcom/google/common/collect/S1;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/ardor3d/renderer/RenderContext;->getGlContextRep()Ljava/lang/Object;

    move-result-object v1

    .line 15
    sget-object v2, Lcom/ardor3d/util/TextureManager;->_tCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/util/TextureKey;

    if-nez v0, :cond_1

    .line 16
    invoke-static {}, Lcom/google/common/collect/s;->M()Lcom/google/common/collect/s;

    move-result-object v0

    .line 17
    :cond_1
    invoke-virtual {v3, v1}, Lcom/ardor3d/util/TextureKey;->getTextureIdForContext(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/ardor3d/renderer/RenderContext;->getGlContextRep()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v3, v1}, Lcom/ardor3d/util/TextureKey;->removeFromIdCache(Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_2
    invoke-interface {v0}, Lcom/google/common/collect/S1;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 21
    invoke-static {p0, v0, p2}, Lcom/ardor3d/util/TextureManager;->handleTextureDelete(Lcom/ardor3d/renderer/Renderer;Lcom/google/common/collect/S1;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public static cleanAllTextures(Lcom/ardor3d/renderer/Renderer;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/renderer/Renderer;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/ardor3d/util/TextureManager;->gatherGCdIds()Lcom/google/common/collect/S1;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/ardor3d/util/TextureManager;->_tCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/util/TextureKey;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/google/common/collect/s;->M()Lcom/google/common/collect/s;

    move-result-object v0

    .line 5
    :cond_0
    sget-boolean v3, Lcom/ardor3d/util/Constants;->useMultipleContexts:Z

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/ardor3d/util/TextureKey;->getContextObjects()Ljava/util/Set;

    move-result-object v3

    .line 7
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-virtual {v2, v4}, Lcom/ardor3d/util/TextureKey;->getTextureIdForContext(Ljava/lang/Object;)I

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

    invoke-virtual {v2, v4}, Lcom/ardor3d/util/TextureKey;->getTextureIdForContext(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    :cond_2
    invoke-virtual {v2}, Lcom/ardor3d/util/TextureKey;->removeFromIdCache()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 11
    invoke-interface {v0}, Lcom/google/common/collect/S1;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 12
    invoke-static {p0, v0, p1}, Lcom/ardor3d/util/TextureManager;->handleTextureDelete(Lcom/ardor3d/renderer/Renderer;Lcom/google/common/collect/S1;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method public static cleanExpiredTextures(Lcom/ardor3d/renderer/Renderer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/ardor3d/util/TextureManager;->cleanExpiredTextures(Lcom/ardor3d/renderer/Renderer;Ljava/util/Map;)V

    return-void
.end method

.method public static cleanExpiredTextures(Lcom/ardor3d/renderer/Renderer;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/renderer/Renderer;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/ardor3d/util/TextureManager;->gatherGCdIds()Lcom/google/common/collect/S1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, v0, p1}, Lcom/ardor3d/util/TextureManager;->handleTextureDelete(Lcom/ardor3d/renderer/Renderer;Lcom/google/common/collect/S1;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static findCachedTexture(Lcom/ardor3d/util/TextureKey;)Lcom/ardor3d/image/Texture;
    .locals 1

    sget-object v0, Lcom/ardor3d/util/TextureManager;->_tCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/image/Texture;

    return-object p0
.end method

.method private static gatherGCdIds()Lcom/google/common/collect/S1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/S1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    sget-object v2, Lcom/ardor3d/util/TextureManager;->_textureRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/util/ContextIdReference;

    if-eqz v2, :cond_4

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/common/collect/s;->M()Lcom/google/common/collect/s;

    move-result-object v1

    :cond_0
    sget-boolean v3, Lcom/ardor3d/util/Constants;->useMultipleContexts:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/ardor3d/util/ContextIdReference;->getContextObjects()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ardor3d/util/ContextIdReference;->get(Ljava/lang/Object;)I

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Lcom/ardor3d/util/ContextIdReference;->get(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ardor3d/renderer/RenderContext;->getGlContextRep()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v2}, Lcom/ardor3d/util/ContextIdReference;->clear()V

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public static getRefQueue()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/ardor3d/util/TextureKey;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ardor3d/util/TextureManager;->_textureRefQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private static handleTextureDelete(Lcom/ardor3d/renderer/Renderer;Lcom/google/common/collect/S1;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/renderer/Renderer;",
            "Lcom/google/common/collect/S1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;>;)V"
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

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz p0, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1, v2}, Lcom/google/common/collect/S1;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/ardor3d/renderer/Renderer;->deleteTextureIds(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/ardor3d/renderer/ContextManager;->getContextForRef(Ljava/lang/Object;)Lcom/ardor3d/renderer/RenderContext;

    move-result-object v3

    invoke-static {v3}, Lcom/ardor3d/util/GameTaskQueueManager;->getManager(Ljava/lang/Object;)Lcom/ardor3d/util/GameTaskQueueManager;

    move-result-object v3

    new-instance v4, Lcom/ardor3d/util/TextureManager$2;

    invoke-direct {v4, p1, v2}, Lcom/ardor3d/util/TextureManager$2;-><init>(Lcom/google/common/collect/S1;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/ardor3d/util/GameTaskQueueManager;->render(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    if-eqz p2, :cond_1

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static load(Lcom/ardor3d/util/resource/ResourceSource;Lcom/ardor3d/image/Texture$MinificationFilter;Lcom/ardor3d/image/TextureStoreFormat;Z)Lcom/ardor3d/image/Texture;
    .locals 0

    if-nez p0, :cond_0

    .line 4
    sget-object p0, Lcom/ardor3d/util/TextureManager;->logger:Ljava/util/logging/Logger;

    const-string p1, "Could not load image...  source was null. defaultTexture used."

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/ardor3d/renderer/state/TextureState;->getDefaultTexture()Lcom/ardor3d/image/Texture;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-static {p0, p3, p2, p1}, Lcom/ardor3d/util/TextureKey;->getKey(Lcom/ardor3d/util/resource/ResourceSource;ZLcom/ardor3d/image/TextureStoreFormat;Lcom/ardor3d/image/Texture$MinificationFilter;)Lcom/ardor3d/util/TextureKey;

    move-result-object p0

    const/4 p1, 0x0

    .line 7
    invoke-static {p0, p1, p1}, Lcom/ardor3d/util/TextureManager;->loadFromKey(Lcom/ardor3d/util/TextureKey;Lcom/ardor3d/image/Image;Lcom/ardor3d/image/Texture;)Lcom/ardor3d/image/Texture;

    move-result-object p0

    return-object p0
.end method

.method public static load(Lcom/ardor3d/util/resource/ResourceSource;Lcom/ardor3d/image/Texture$MinificationFilter;Z)Lcom/ardor3d/image/Texture;
    .locals 1

    .line 3
    sget-object v0, Lcom/ardor3d/image/TextureStoreFormat;->GuessNoCompressedFormat:Lcom/ardor3d/image/TextureStoreFormat;

    invoke-static {p0, p1, v0, p2}, Lcom/ardor3d/util/TextureManager;->load(Lcom/ardor3d/util/resource/ResourceSource;Lcom/ardor3d/image/Texture$MinificationFilter;Lcom/ardor3d/image/TextureStoreFormat;Z)Lcom/ardor3d/image/Texture;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/String;Lcom/ardor3d/image/Texture$MinificationFilter;Lcom/ardor3d/image/TextureStoreFormat;Z)Lcom/ardor3d/image/Texture;
    .locals 1

    .line 2
    const-string v0, "texture"

    invoke-static {v0, p0}, Lcom/ardor3d/util/resource/ResourceLocatorTool;->locateResource(Ljava/lang/String;Ljava/lang/String;)Lcom/ardor3d/util/resource/ResourceSource;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/ardor3d/util/TextureManager;->load(Lcom/ardor3d/util/resource/ResourceSource;Lcom/ardor3d/image/Texture$MinificationFilter;Lcom/ardor3d/image/TextureStoreFormat;Z)Lcom/ardor3d/image/Texture;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/String;Lcom/ardor3d/image/Texture$MinificationFilter;Z)Lcom/ardor3d/image/Texture;
    .locals 1

    .line 1
    const-string v0, "texture"

    invoke-static {v0, p0}, Lcom/ardor3d/util/resource/ResourceLocatorTool;->locateResource(Ljava/lang/String;Ljava/lang/String;)Lcom/ardor3d/util/resource/ResourceSource;

    move-result-object p0

    sget-object v0, Lcom/ardor3d/image/TextureStoreFormat;->GuessNoCompressedFormat:Lcom/ardor3d/image/TextureStoreFormat;

    invoke-static {p0, p1, v0, p2}, Lcom/ardor3d/util/TextureManager;->load(Lcom/ardor3d/util/resource/ResourceSource;Lcom/ardor3d/image/Texture$MinificationFilter;Lcom/ardor3d/image/TextureStoreFormat;Z)Lcom/ardor3d/image/Texture;

    move-result-object p0

    return-object p0
.end method

.method public static loadFromImage(Lcom/ardor3d/image/Image;Lcom/ardor3d/image/Texture$MinificationFilter;)Lcom/ardor3d/image/Texture;
    .locals 1

    .line 1
    sget-object v0, Lcom/ardor3d/image/TextureStoreFormat;->GuessNoCompressedFormat:Lcom/ardor3d/image/TextureStoreFormat;

    invoke-static {p0, p1, v0}, Lcom/ardor3d/util/TextureManager;->loadFromImage(Lcom/ardor3d/image/Image;Lcom/ardor3d/image/Texture$MinificationFilter;Lcom/ardor3d/image/TextureStoreFormat;)Lcom/ardor3d/image/Texture;

    move-result-object p0

    return-object p0
.end method

.method public static loadFromImage(Lcom/ardor3d/image/Image;Lcom/ardor3d/image/Texture$MinificationFilter;Lcom/ardor3d/image/TextureStoreFormat;)Lcom/ardor3d/image/Texture;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "img_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, p2, v0, p1}, Lcom/ardor3d/util/TextureKey;->getKey(Lcom/ardor3d/util/resource/ResourceSource;ZLcom/ardor3d/image/TextureStoreFormat;Ljava/lang/String;Lcom/ardor3d/image/Texture$MinificationFilter;)Lcom/ardor3d/util/TextureKey;

    move-result-object p1

    .line 3
    invoke-static {p1, p0, v1}, Lcom/ardor3d/util/TextureManager;->loadFromKey(Lcom/ardor3d/util/TextureKey;Lcom/ardor3d/image/Image;Lcom/ardor3d/image/Texture;)Lcom/ardor3d/image/Texture;

    move-result-object p0

    return-object p0
.end method

.method public static loadFromKey(Lcom/ardor3d/util/TextureKey;Lcom/ardor3d/image/Image;Lcom/ardor3d/image/Texture;)Lcom/ardor3d/image/Texture;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/ardor3d/util/TextureManager;->logger:Ljava/util/logging/Logger;

    const-string p1, "TextureKey is null, cannot load"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-static {}, Lcom/ardor3d/renderer/state/TextureState;->getDefaultTexture()Lcom/ardor3d/image/Texture;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/ardor3d/util/TextureManager;->findCachedTexture(Lcom/ardor3d/util/TextureKey;)Lcom/ardor3d/image/Texture;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    invoke-virtual {v0}, Lcom/ardor3d/image/Texture;->createSimpleClone()Lcom/ardor3d/image/Texture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getTextureKey()Lcom/ardor3d/util/TextureKey;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p0}, Lcom/ardor3d/image/Texture;->setTextureKey(Lcom/ardor3d/util/TextureKey;)V

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {v0, p2}, Lcom/ardor3d/image/Texture;->createSimpleClone(Lcom/ardor3d/image/Texture;)Lcom/ardor3d/image/Texture;

    return-object p2

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/ardor3d/util/TextureKey;->getSource()Lcom/ardor3d/util/resource/ResourceSource;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ardor3d/util/TextureKey;->isFlipped()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/ardor3d/image/util/ImageLoaderUtil;->loadImage(Lcom/ardor3d/util/resource/ResourceSource;Z)Lcom/ardor3d/image/Image;

    move-result-object p1

    :cond_4
    if-nez p1, :cond_5

    sget-object p1, Lcom/ardor3d/util/TextureManager;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(image null) Could not load: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/util/TextureKey;->getSource()Lcom/ardor3d/util/resource/ResourceSource;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-static {}, Lcom/ardor3d/renderer/state/TextureState;->getDefaultTexture()Lcom/ardor3d/image/Texture;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez p2, :cond_8

    invoke-virtual {p1}, Lcom/ardor3d/image/Image;->getDataSize()I

    move-result p2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_6

    new-instance p2, Lcom/ardor3d/image/TextureCubeMap;

    invoke-direct {p2}, Lcom/ardor3d/image/TextureCubeMap;-><init>()V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/ardor3d/image/Image;->getDataSize()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_7

    new-instance p2, Lcom/ardor3d/image/Texture3D;

    invoke-direct {p2}, Lcom/ardor3d/image/Texture3D;-><init>()V

    goto :goto_0

    :cond_7
    new-instance p2, Lcom/ardor3d/image/Texture2D;

    invoke-direct {p2}, Lcom/ardor3d/image/Texture2D;-><init>()V

    :cond_8
    :goto_0
    invoke-virtual {p2, p0}, Lcom/ardor3d/image/Texture;->setTextureKey(Lcom/ardor3d/util/TextureKey;)V

    invoke-virtual {p2, p1}, Lcom/ardor3d/image/Texture;->setImage(Lcom/ardor3d/image/Image;)V

    invoke-virtual {p0}, Lcom/ardor3d/util/TextureKey;->getMinificationFilter()Lcom/ardor3d/image/Texture$MinificationFilter;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ardor3d/image/Texture;->setMinificationFilter(Lcom/ardor3d/image/Texture$MinificationFilter;)V

    invoke-virtual {p0}, Lcom/ardor3d/util/TextureKey;->getFormat()Lcom/ardor3d/image/TextureStoreFormat;

    move-result-object p0

    invoke-virtual {p2}, Lcom/ardor3d/image/Texture;->getImage()Lcom/ardor3d/image/Image;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ardor3d/image/util/ImageUtils;->getTextureStoreFormat(Lcom/ardor3d/image/TextureStoreFormat;Lcom/ardor3d/image/Image;)Lcom/ardor3d/image/TextureStoreFormat;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/ardor3d/image/Texture;->setTextureStoreFormat(Lcom/ardor3d/image/TextureStoreFormat;)V

    invoke-static {p2}, Lcom/ardor3d/util/TextureManager;->addToCache(Lcom/ardor3d/image/Texture;)V

    return-object p2
.end method

.method public static preloadCache(Lcom/ardor3d/renderer/Renderer;)V
    .locals 3
    .annotation runtime Lcom/ardor3d/annotation/MainThread;
    .end annotation

    sget-object v0, Lcom/ardor3d/util/TextureManager;->_tCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/image/Texture;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/ardor3d/image/Texture;->getTextureKey()Lcom/ardor3d/util/TextureKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/util/TextureKey;->getSource()Lcom/ardor3d/util/resource/ResourceSource;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lcom/ardor3d/renderer/Renderer;->loadTexture(Lcom/ardor3d/image/Texture;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static removeFromCache(Lcom/ardor3d/util/TextureKey;)Lcom/ardor3d/image/Texture;
    .locals 1

    sget-object v0, Lcom/ardor3d/util/TextureManager;->_tCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/image/Texture;

    return-object p0
.end method
