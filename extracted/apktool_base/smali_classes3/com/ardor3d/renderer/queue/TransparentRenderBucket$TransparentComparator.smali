.class Lcom/ardor3d/renderer/queue/TransparentRenderBucket$TransparentComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/renderer/queue/TransparentRenderBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransparentComparator"
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
.field final synthetic this$0:Lcom/ardor3d/renderer/queue/TransparentRenderBucket;


# direct methods
.method private constructor <init>(Lcom/ardor3d/renderer/queue/TransparentRenderBucket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ardor3d/renderer/queue/TransparentRenderBucket$TransparentComparator;->this$0:Lcom/ardor3d/renderer/queue/TransparentRenderBucket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ardor3d/renderer/queue/TransparentRenderBucket;Lcom/ardor3d/renderer/queue/TransparentRenderBucket$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ardor3d/renderer/queue/TransparentRenderBucket$TransparentComparator;-><init>(Lcom/ardor3d/renderer/queue/TransparentRenderBucket;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/Spatial;)I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ardor3d/renderer/queue/TransparentRenderBucket$TransparentComparator;->this$0:Lcom/ardor3d/renderer/queue/TransparentRenderBucket;

    invoke-virtual {v0, p1}, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->distanceToCam(Lcom/ardor3d/scenegraph/Spatial;)D

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lcom/ardor3d/renderer/queue/TransparentRenderBucket$TransparentComparator;->this$0:Lcom/ardor3d/renderer/queue/TransparentRenderBucket;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->distanceToCam(Lcom/ardor3d/scenegraph/Spatial;)D

    move-result-wide p1

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmpg-double p1, v0, p1

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/scenegraph/Spatial;

    check-cast p2, Lcom/ardor3d/scenegraph/Spatial;

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/renderer/queue/TransparentRenderBucket$TransparentComparator;->compare(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/Spatial;)I

    move-result p1

    return p1
.end method
