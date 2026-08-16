.class public Lcom/ardor3d/renderer/queue/OrthoRenderBucket;
.super Lcom/ardor3d/renderer/queue/AbstractRenderBucket;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/renderer/queue/OrthoRenderBucket$OrthoComparator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;-><init>()V

    new-instance v0, Lcom/ardor3d/renderer/queue/OrthoRenderBucket$OrthoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ardor3d/renderer/queue/OrthoRenderBucket$OrthoComparator;-><init>(Lcom/ardor3d/renderer/queue/OrthoRenderBucket$1;)V

    iput-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public render(Lcom/ardor3d/renderer/Renderer;)V
    .locals 2

    iget v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    if-lez v0, :cond_1

    invoke-interface {p1}, Lcom/ardor3d/renderer/Renderer;->setOrtho()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/ardor3d/scenegraph/Spatial;->draw(Lcom/ardor3d/renderer/Renderer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/ardor3d/renderer/Renderer;->unsetOrtho()V

    :cond_1
    return-void
.end method
