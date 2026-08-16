.class Lcom/ardor3d/renderer/state/LightUtil$LightComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/renderer/state/LightUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LightComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ardor3d/light/Light;",
        ">;"
    }
.end annotation


# instance fields
.field private _sp:Lcom/ardor3d/scenegraph/Spatial;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ardor3d/renderer/state/LightUtil$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ardor3d/renderer/state/LightUtil$LightComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ardor3d/light/Light;Lcom/ardor3d/light/Light;)I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ardor3d/renderer/state/LightUtil$LightComparator;->_sp:Lcom/ardor3d/scenegraph/Spatial;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ardor3d/renderer/state/LightUtil;->getValueFor(Lcom/ardor3d/light/Light;Lcom/ardor3d/bounding/BoundingVolume;)D

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lcom/ardor3d/renderer/state/LightUtil$LightComparator;->_sp:Lcom/ardor3d/scenegraph/Spatial;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ardor3d/renderer/state/LightUtil;->getValueFor(Lcom/ardor3d/light/Light;Lcom/ardor3d/bounding/BoundingVolume;)D

    move-result-wide p1

    sub-double/2addr v0, p1

    const-wide/16 p1, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    cmpg-double p1, p1, v0

    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/light/Light;

    check-cast p2, Lcom/ardor3d/light/Light;

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/renderer/state/LightUtil$LightComparator;->compare(Lcom/ardor3d/light/Light;Lcom/ardor3d/light/Light;)I

    move-result p1

    return p1
.end method

.method public setSpatial(Lcom/ardor3d/scenegraph/Spatial;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/LightUtil$LightComparator;->_sp:Lcom/ardor3d/scenegraph/Spatial;

    return-void
.end method
