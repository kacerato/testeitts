.class Lcom/ardor3d/renderer/queue/OpaqueRenderBucket$OpaqueComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpaqueComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ardor3d/scenegraph/Spatial;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;


# direct methods
.method private constructor <init>(Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ardor3d/renderer/queue/OpaqueRenderBucket$OpaqueComparator;->this$0:Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;Lcom/ardor3d/renderer/queue/OpaqueRenderBucket$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ardor3d/renderer/queue/OpaqueRenderBucket$OpaqueComparator;-><init>(Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;)V

    return-void
.end method

.method private compareByStates(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/scenegraph/Mesh;)I
    .locals 7

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->Texture:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/Mesh;->getWorldRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/TextureState;

    invoke-virtual {p2, v0}, Lcom/ardor3d/scenegraph/Mesh;->getWorldRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object p2

    check-cast p2, Lcom/ardor3d/renderer/state/TextureState;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Lcom/ardor3d/renderer/state/TextureState;->getMaxTextureIndexUsed()I

    move-result v3

    invoke-virtual {p2}, Lcom/ardor3d/renderer/state/TextureState;->getMaxTextureIndexUsed()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v0

    :goto_0
    if-gt v4, v3, :cond_8

    invoke-virtual {p1, v4}, Lcom/ardor3d/renderer/state/TextureState;->getTextureKey(I)Lcom/ardor3d/util/TextureKey;

    move-result-object v5

    invoke-virtual {p2, v4}, Lcom/ardor3d/renderer/state/TextureState;->getTextureKey(I)Lcom/ardor3d/util/TextureKey;

    move-result-object v6

    if-nez v5, :cond_4

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    if-nez v6, :cond_5

    return v2

    :cond_5
    invoke-virtual {v5}, Lcom/ardor3d/util/TextureKey;->hashCode()I

    move-result v5

    invoke-virtual {v6}, Lcom/ardor3d/util/TextureKey;->hashCode()I

    move-result v6

    if-ne v5, v6, :cond_6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    if-ge v5, v6, :cond_7

    return v1

    :cond_7
    return v2

    :cond_8
    invoke-virtual {p1}, Lcom/ardor3d/renderer/state/TextureState;->getMaxTextureIndexUsed()I

    move-result v1

    invoke-virtual {p2}, Lcom/ardor3d/renderer/state/TextureState;->getMaxTextureIndexUsed()I

    move-result v2

    if-eq v1, v2, :cond_9

    invoke-virtual {p2}, Lcom/ardor3d/renderer/state/TextureState;->getMaxTextureIndexUsed()I

    move-result p2

    invoke-virtual {p1}, Lcom/ardor3d/renderer/state/TextureState;->getMaxTextureIndexUsed()I

    move-result p1

    sub-int/2addr p2, p1

    return p2

    :cond_9
    return v0
.end method


# virtual methods
.method public compare(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/Spatial;)I
    .locals 3

    .line 2
    instance-of v0, p1, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/ardor3d/scenegraph/Mesh;

    check-cast p2, Lcom/ardor3d/scenegraph/Mesh;

    invoke-direct {p0, p1, p2}, Lcom/ardor3d/renderer/queue/OpaqueRenderBucket$OpaqueComparator;->compareByStates(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/scenegraph/Mesh;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/queue/OpaqueRenderBucket$OpaqueComparator;->this$0:Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;

    invoke-virtual {v0, p1}, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->distanceToCam(Lcom/ardor3d/scenegraph/Spatial;)D

    move-result-wide v0

    .line 5
    iget-object p1, p0, Lcom/ardor3d/renderer/queue/OpaqueRenderBucket$OpaqueComparator;->this$0:Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->distanceToCam(Lcom/ardor3d/scenegraph/Spatial;)D

    move-result-wide p1

    cmpl-double v2, v0, p1

    if-lez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    cmpg-double p1, v0, p1

    if-gez p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/scenegraph/Spatial;

    check-cast p2, Lcom/ardor3d/scenegraph/Spatial;

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/renderer/queue/OpaqueRenderBucket$OpaqueComparator;->compare(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/Spatial;)I

    move-result p1

    return p1
.end method
