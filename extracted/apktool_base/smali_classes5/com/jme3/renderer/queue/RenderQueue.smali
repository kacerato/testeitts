.class public Lcom/jme3/renderer/queue/RenderQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/renderer/queue/RenderQueue$Bucket;,
        Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private guiList:Lcom/jme3/renderer/queue/GeometryList;

.field private opaqueList:Lcom/jme3/renderer/queue/GeometryList;

.field private skyList:Lcom/jme3/renderer/queue/GeometryList;

.field private translucentList:Lcom/jme3/renderer/queue/GeometryList;

.field private transparentList:Lcom/jme3/renderer/queue/GeometryList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v1, Lcom/jme3/renderer/queue/OpaqueComparator;

    invoke-direct {v1}, Lcom/jme3/renderer/queue/OpaqueComparator;-><init>()V

    invoke-direct {v0, v1}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->opaqueList:Lcom/jme3/renderer/queue/GeometryList;

    new-instance v0, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v1, Lcom/jme3/renderer/queue/GuiComparator;

    invoke-direct {v1}, Lcom/jme3/renderer/queue/GuiComparator;-><init>()V

    invoke-direct {v0, v1}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->guiList:Lcom/jme3/renderer/queue/GeometryList;

    new-instance v0, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v1, Lcom/jme3/renderer/queue/TransparentComparator;

    invoke-direct {v1}, Lcom/jme3/renderer/queue/TransparentComparator;-><init>()V

    invoke-direct {v0, v1}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->transparentList:Lcom/jme3/renderer/queue/GeometryList;

    new-instance v0, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v1, Lcom/jme3/renderer/queue/TransparentComparator;

    invoke-direct {v1}, Lcom/jme3/renderer/queue/TransparentComparator;-><init>()V

    invoke-direct {v0, v1}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->translucentList:Lcom/jme3/renderer/queue/GeometryList;

    new-instance v0, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v1, Lcom/jme3/renderer/queue/NullComparator;

    invoke-direct {v1}, Lcom/jme3/renderer/queue/NullComparator;-><init>()V

    invoke-direct {v0, v1}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->skyList:Lcom/jme3/renderer/queue/GeometryList;

    return-void
.end method

.method private renderGeometryList(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V
    .locals 2

    invoke-virtual {p1, p3}, Lcom/jme3/renderer/queue/GeometryList;->setCamera(Lcom/jme3/renderer/Camera;)V

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->sort()V

    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    invoke-virtual {p1, p3}, Lcom/jme3/renderer/queue/GeometryList;->get(I)Lcom/jme3/scene/Geometry;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jme3/renderer/RenderManager;->renderGeometry(Lcom/jme3/scene/Geometry;)V

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    iput v1, v0, Lcom/jme3/scene/Spatial;->queueDistance:F

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addToQueue(Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p2, p0, Lcom/jme3/renderer/queue/RenderQueue;->guiList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p2, p1}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown bucket type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p2, p0, Lcom/jme3/renderer/queue/RenderQueue;->translucentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p2, p1}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/jme3/renderer/queue/RenderQueue;->skyList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p2, p1}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/jme3/renderer/queue/RenderQueue;->transparentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p2, p1}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/jme3/renderer/queue/RenderQueue;->opaqueList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p2, p1}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->opaqueList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0}, Lcom/jme3/renderer/queue/GeometryList;->clear()V

    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->guiList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0}, Lcom/jme3/renderer/queue/GeometryList;->clear()V

    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->transparentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0}, Lcom/jme3/renderer/queue/GeometryList;->clear()V

    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->translucentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0}, Lcom/jme3/renderer/queue/GeometryList;->clear()V

    iget-object v0, p0, Lcom/jme3/renderer/queue/RenderQueue;->skyList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0}, Lcom/jme3/renderer/queue/GeometryList;->clear()V

    return-void
.end method

.method public getGeometryComparator(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)Lcom/jme3/renderer/queue/GeometryComparator;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->guiList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->getComparator()Lcom/jme3/renderer/queue/GeometryComparator;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown bucket type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->translucentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->getComparator()Lcom/jme3/renderer/queue/GeometryComparator;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->skyList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->getComparator()Lcom/jme3/renderer/queue/GeometryComparator;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->transparentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->getComparator()Lcom/jme3/renderer/queue/GeometryComparator;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->opaqueList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->getComparator()Lcom/jme3/renderer/queue/GeometryComparator;

    move-result-object p1

    return-object p1
.end method

.method public getList(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)Lcom/jme3/renderer/queue/GeometryList;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->guiList:Lcom/jme3/renderer/queue/GeometryList;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_1
    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->translucentList:Lcom/jme3/renderer/queue/GeometryList;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->skyList:Lcom/jme3/renderer/queue/GeometryList;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->transparentList:Lcom/jme3/renderer/queue/GeometryList;

    return-object p1

    :cond_4
    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->opaqueList:Lcom/jme3/renderer/queue/GeometryList;

    return-object p1
.end method

.method public isQueueEmpty(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->guiList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result p1

    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported bucket type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->translucentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result p1

    if-nez p1, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->skyList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result p1

    if-nez p1, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->transparentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result p1

    if-nez p1, :cond_7

    move v1, v2

    :cond_7
    return v1

    :cond_8
    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->opaqueList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result p1

    if-nez p1, :cond_9

    move v1, v2

    :cond_9
    return v1
.end method

.method public renderQueue(Lcom/jme3/renderer/queue/RenderQueue$Bucket;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jme3/renderer/queue/RenderQueue;->renderQueue(Lcom/jme3/renderer/queue/RenderQueue$Bucket;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    return-void
.end method

.method public renderQueue(Lcom/jme3/renderer/queue/RenderQueue$Bucket;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jme3/renderer/Renderer;->pushDebugGroup(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->guiList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/renderer/queue/RenderQueue;->renderGeometryList(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported bucket type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->translucentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/renderer/queue/RenderQueue;->renderGeometryList(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->skyList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/renderer/queue/RenderQueue;->renderGeometryList(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->transparentList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/renderer/queue/RenderQueue;->renderGeometryList(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    goto :goto_0

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->opaqueList:Lcom/jme3/renderer/queue/GeometryList;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/renderer/queue/RenderQueue;->renderGeometryList(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    .line 10
    :goto_0
    invoke-virtual {p2}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object p1

    invoke-interface {p1}, Lcom/jme3/renderer/Renderer;->popDebugGroup()V

    return-void
.end method

.method public renderShadowQueue(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V
    .locals 2

    invoke-virtual {p2}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    const-string v1, "ShadowQueue"

    invoke-interface {v0, v1}, Lcom/jme3/renderer/Renderer;->pushDebugGroup(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/renderer/queue/RenderQueue;->renderGeometryList(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    invoke-virtual {p2}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object p1

    invoke-interface {p1}, Lcom/jme3/renderer/Renderer;->popDebugGroup()V

    return-void
.end method

.method public setGeometryComparator(Lcom/jme3/renderer/queue/RenderQueue$Bucket;Lcom/jme3/renderer/queue/GeometryComparator;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance p1, Lcom/jme3/renderer/queue/GeometryList;

    invoke-direct {p1, p2}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->guiList:Lcom/jme3/renderer/queue/GeometryList;

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown bucket type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Lcom/jme3/renderer/queue/GeometryList;

    invoke-direct {p1, p2}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->translucentList:Lcom/jme3/renderer/queue/GeometryList;

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/jme3/renderer/queue/GeometryList;

    invoke-direct {p1, p2}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->skyList:Lcom/jme3/renderer/queue/GeometryList;

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/jme3/renderer/queue/GeometryList;

    invoke-direct {p1, p2}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->transparentList:Lcom/jme3/renderer/queue/GeometryList;

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/jme3/renderer/queue/GeometryList;

    invoke-direct {p1, p2}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object p1, p0, Lcom/jme3/renderer/queue/RenderQueue;->opaqueList:Lcom/jme3/renderer/queue/GeometryList;

    :goto_0
    return-void
.end method
