.class public Lcom/jme3/scene/instancing/InstancedGeometry$DefaultInstanceCullingFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/instancing/InstancedGeometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultInstanceCullingFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Lcom/jme3/renderer/Camera;",
        "Lcom/jme3/scene/Geometry;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/jme3/renderer/Camera;Lcom/jme3/scene/Geometry;)Ljava/lang/Boolean;
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getPlaneState()I

    move-result v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1}, Lcom/jme3/renderer/Camera;->setPlaneState(I)V

    .line 5
    invoke-virtual {p1, p2}, Lcom/jme3/renderer/Camera;->contains(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/renderer/Camera$FrustumIntersect;

    move-result-object p2

    .line 6
    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->setPlaneState(I)V

    .line 7
    sget-object p1, Lcom/jme3/renderer/Camera$FrustumIntersect;->Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    if-ne p2, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/jme3/renderer/Camera;

    check-cast p2, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/scene/instancing/InstancedGeometry$DefaultInstanceCullingFunction;->apply(Lcom/jme3/renderer/Camera;Lcom/jme3/scene/Geometry;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
