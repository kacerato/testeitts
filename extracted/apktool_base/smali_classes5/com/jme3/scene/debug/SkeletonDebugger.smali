.class public Lcom/jme3/scene/debug/SkeletonDebugger;
.super Lcom/jme3/scene/Node;
.source "SourceFile"


# instance fields
.field private interBoneWires:Lcom/jme3/scene/debug/SkeletonInterBoneWire;

.field private points:Lcom/jme3/scene/debug/SkeletonPoints;

.field private wires:Lcom/jme3/scene/debug/SkeletonWire;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Node;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/animation/Skeleton;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/scene/debug/SkeletonDebugger;-><init>(Ljava/lang/String;Lcom/jme3/animation/Skeleton;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/animation/Skeleton;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jme3/animation/Skeleton;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/jme3/scene/debug/SkeletonWire;

    invoke-direct {p1, p2, p3}, Lcom/jme3/scene/debug/SkeletonWire;-><init>(Lcom/jme3/animation/Skeleton;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->wires:Lcom/jme3/scene/debug/SkeletonWire;

    .line 5
    new-instance p1, Lcom/jme3/scene/debug/SkeletonPoints;

    invoke-direct {p1, p2, p3}, Lcom/jme3/scene/debug/SkeletonPoints;-><init>(Lcom/jme3/animation/Skeleton;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->points:Lcom/jme3/scene/debug/SkeletonPoints;

    .line 6
    new-instance p1, Lcom/jme3/scene/Geometry;

    const-string v0, "_wires"

    invoke-direct {p0, v0}, Lcom/jme3/scene/debug/SkeletonDebugger;->getGeometryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->wires:Lcom/jme3/scene/debug/SkeletonWire;

    invoke-direct {p1, v0, v1}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 7
    new-instance p1, Lcom/jme3/scene/Geometry;

    const-string v0, "_points"

    invoke-direct {p0, v0}, Lcom/jme3/scene/debug/SkeletonDebugger;->getGeometryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->points:Lcom/jme3/scene/debug/SkeletonPoints;

    invoke-direct {p1, v0, v1}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    if-eqz p3, :cond_0

    .line 8
    new-instance p1, Lcom/jme3/scene/debug/SkeletonInterBoneWire;

    invoke-direct {p1, p2, p3}, Lcom/jme3/scene/debug/SkeletonInterBoneWire;-><init>(Lcom/jme3/animation/Skeleton;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->interBoneWires:Lcom/jme3/scene/debug/SkeletonInterBoneWire;

    .line 9
    new-instance p1, Lcom/jme3/scene/Geometry;

    const-string p2, "_interwires"

    invoke-direct {p0, p2}, Lcom/jme3/scene/debug/SkeletonDebugger;->getGeometryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->interBoneWires:Lcom/jme3/scene/debug/SkeletonInterBoneWire;

    invoke-direct {p1, p2, p3}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 10
    :cond_0
    sget-object p1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    return-void
.end method

.method private getGeometryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMesh(Ljava/lang/String;)Lcom/jme3/scene/Mesh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jme3/scene/Mesh;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/jme3/scene/debug/SkeletonDebugger;->getGeometryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->getChild(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Geometry;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/Node;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->wires:Lcom/jme3/scene/debug/SkeletonWire;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/debug/SkeletonWire;

    iput-object p2, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->wires:Lcom/jme3/scene/debug/SkeletonWire;

    iget-object p2, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->points:Lcom/jme3/scene/debug/SkeletonPoints;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/debug/SkeletonPoints;

    iput-object p2, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->points:Lcom/jme3/scene/debug/SkeletonPoints;

    iget-object p2, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->interBoneWires:Lcom/jme3/scene/debug/SkeletonInterBoneWire;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/debug/SkeletonInterBoneWire;

    iput-object p1, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->interBoneWires:Lcom/jme3/scene/debug/SkeletonInterBoneWire;

    return-void
.end method

.method public getInterBoneWires()Lcom/jme3/scene/debug/SkeletonInterBoneWire;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->interBoneWires:Lcom/jme3/scene/debug/SkeletonInterBoneWire;

    return-object v0
.end method

.method public getPoints()Lcom/jme3/scene/debug/SkeletonPoints;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->points:Lcom/jme3/scene/debug/SkeletonPoints;

    return-object v0
.end method

.method public getWires()Lcom/jme3/scene/debug/SkeletonWire;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->wires:Lcom/jme3/scene/debug/SkeletonWire;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->read(Lcom/jme3/export/JmeImporter;)V

    const-string p1, "_wires"

    invoke-direct {p0, p1}, Lcom/jme3/scene/debug/SkeletonDebugger;->getMesh(Ljava/lang/String;)Lcom/jme3/scene/Mesh;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/debug/SkeletonWire;

    iput-object p1, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->wires:Lcom/jme3/scene/debug/SkeletonWire;

    const-string p1, "_points"

    invoke-direct {p0, p1}, Lcom/jme3/scene/debug/SkeletonDebugger;->getMesh(Ljava/lang/String;)Lcom/jme3/scene/Mesh;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/debug/SkeletonPoints;

    iput-object p1, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->points:Lcom/jme3/scene/debug/SkeletonPoints;

    const-string p1, "_interwires"

    invoke-direct {p0, p1}, Lcom/jme3/scene/debug/SkeletonDebugger;->getMesh(Ljava/lang/String;)Lcom/jme3/scene/Mesh;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/debug/SkeletonInterBoneWire;

    iput-object p1, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->interBoneWires:Lcom/jme3/scene/debug/SkeletonInterBoneWire;

    return-void
.end method

.method public updateLogicalState(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->updateLogicalState(F)V

    iget-object p1, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->wires:Lcom/jme3/scene/debug/SkeletonWire;

    invoke-virtual {p1}, Lcom/jme3/scene/debug/SkeletonWire;->updateGeometry()V

    iget-object p1, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->points:Lcom/jme3/scene/debug/SkeletonPoints;

    invoke-virtual {p1}, Lcom/jme3/scene/debug/SkeletonPoints;->updateGeometry()V

    iget-object p1, p0, Lcom/jme3/scene/debug/SkeletonDebugger;->interBoneWires:Lcom/jme3/scene/debug/SkeletonInterBoneWire;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/debug/SkeletonInterBoneWire;->updateGeometry()V

    :cond_0
    return-void
.end method
