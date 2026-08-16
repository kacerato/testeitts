.class Lcom/ardor3d/renderer/queue/OrthoRenderBucket$OrthoComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/renderer/queue/OrthoRenderBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrthoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ardor3d/scenegraph/Spatial;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ardor3d/renderer/queue/OrthoRenderBucket$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ardor3d/renderer/queue/OrthoRenderBucket$OrthoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/Spatial;)I
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getOrthoOrder()I

    move-result v0

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getOrthoOrder()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getOrthoOrder()I

    move-result p2

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getOrthoOrder()I

    move-result p1

    if-ge p2, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/scenegraph/Spatial;

    check-cast p2, Lcom/ardor3d/scenegraph/Spatial;

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/renderer/queue/OrthoRenderBucket$OrthoComparator;->compare(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/Spatial;)I

    move-result p1

    return p1
.end method
