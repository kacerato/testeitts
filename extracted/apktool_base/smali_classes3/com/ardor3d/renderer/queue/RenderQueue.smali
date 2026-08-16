.class public Lcom/ardor3d/renderer/queue/RenderQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final renderBuckets:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/renderer/queue/RenderBucketType;",
            "Lcom/ardor3d/renderer/queue/RenderBucket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    invoke-direct {p0}, Lcom/ardor3d/renderer/queue/RenderQueue;->setupDefaultBuckets()V

    return-void
.end method

.method private setupDefaultBuckets()V
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    sget-object v1, Lcom/ardor3d/renderer/queue/RenderBucketType;->PreBucket:Lcom/ardor3d/renderer/queue/RenderBucketType;

    new-instance v2, Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;

    invoke-direct {v2}, Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    sget-object v1, Lcom/ardor3d/renderer/queue/RenderBucketType;->Shadow:Lcom/ardor3d/renderer/queue/RenderBucketType;

    new-instance v2, Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;

    invoke-direct {v2}, Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    sget-object v1, Lcom/ardor3d/renderer/queue/RenderBucketType;->Opaque:Lcom/ardor3d/renderer/queue/RenderBucketType;

    new-instance v2, Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;

    invoke-direct {v2}, Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    sget-object v1, Lcom/ardor3d/renderer/queue/RenderBucketType;->Transparent:Lcom/ardor3d/renderer/queue/RenderBucketType;

    new-instance v2, Lcom/ardor3d/renderer/queue/TransparentRenderBucket;

    invoke-direct {v2}, Lcom/ardor3d/renderer/queue/TransparentRenderBucket;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    sget-object v1, Lcom/ardor3d/renderer/queue/RenderBucketType;->Ortho:Lcom/ardor3d/renderer/queue/RenderBucketType;

    new-instance v2, Lcom/ardor3d/renderer/queue/OrthoRenderBucket;

    invoke-direct {v2}, Lcom/ardor3d/renderer/queue/OrthoRenderBucket;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    sget-object v1, Lcom/ardor3d/renderer/queue/RenderBucketType;->PostBucket:Lcom/ardor3d/renderer/queue/RenderBucketType;

    new-instance v2, Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;

    invoke-direct {v2}, Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addToQueue(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/queue/RenderBucketType;)V
    .locals 2

    sget-object v0, Lcom/ardor3d/renderer/queue/RenderBucketType;->Inherit:Lcom/ardor3d/renderer/queue/RenderBucketType;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/ardor3d/renderer/queue/RenderBucketType;->Skip:Lcom/ardor3d/renderer/queue/RenderBucketType;

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ardor3d/renderer/queue/RenderBucket;

    invoke-interface {p2, p1}, Lcom/ardor3d/renderer/queue/RenderBucket;->add(Lcom/ardor3d/scenegraph/Spatial;)V

    return-void

    :cond_0
    new-instance p1, Lcom/ardor3d/util/Ardor3dException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No bucket exists of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/ardor3d/util/Ardor3dException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t add spatial to bucket of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearBuckets()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/renderer/queue/RenderBucket;

    invoke-interface {v1}, Lcom/ardor3d/renderer/queue/RenderBucket;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getRenderBucket(Lcom/ardor3d/renderer/queue/RenderBucketType;)Lcom/ardor3d/renderer/queue/RenderBucket;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/queue/RenderBucket;

    return-object p1
.end method

.method public popBuckets()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/renderer/queue/RenderBucket;

    invoke-interface {v1}, Lcom/ardor3d/renderer/queue/RenderBucket;->popBucket()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pushBuckets()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/renderer/queue/RenderBucket;

    invoke-interface {v1}, Lcom/ardor3d/renderer/queue/RenderBucket;->pushBucket()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeFromQueue(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/queue/RenderBucketType;)V
    .locals 2

    sget-object v0, Lcom/ardor3d/renderer/queue/RenderBucketType;->Inherit:Lcom/ardor3d/renderer/queue/RenderBucketType;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/ardor3d/renderer/queue/RenderBucketType;->Skip:Lcom/ardor3d/renderer/queue/RenderBucketType;

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ardor3d/renderer/queue/RenderBucket;

    invoke-interface {p2, p1}, Lcom/ardor3d/renderer/queue/RenderBucket;->remove(Lcom/ardor3d/scenegraph/Spatial;)V

    return-void

    :cond_0
    new-instance p1, Lcom/ardor3d/util/Ardor3dException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No bucket exists of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/ardor3d/util/Ardor3dException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t add spatial to bucket of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public renderBuckets(Lcom/ardor3d/renderer/Renderer;)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/renderer/queue/RenderBucket;

    invoke-interface {v1}, Lcom/ardor3d/renderer/queue/RenderBucket;->sort()V

    invoke-interface {v1, p1}, Lcom/ardor3d/renderer/queue/RenderBucket;->render(Lcom/ardor3d/renderer/Renderer;)V

    invoke-interface {v1}, Lcom/ardor3d/renderer/queue/RenderBucket;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public renderOnly(Lcom/ardor3d/renderer/Renderer;)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/renderer/queue/RenderBucket;

    invoke-interface {v1, p1}, Lcom/ardor3d/renderer/queue/RenderBucket;->render(Lcom/ardor3d/renderer/Renderer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRenderBucket(Lcom/ardor3d/renderer/queue/RenderBucketType;Lcom/ardor3d/renderer/queue/RenderBucket;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sortBuckets()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/RenderQueue;->renderBuckets:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/renderer/queue/RenderBucket;

    invoke-interface {v1}, Lcom/ardor3d/renderer/queue/RenderBucket;->sort()V

    goto :goto_0

    :cond_0
    return-void
.end method
