.class public Lcom/jme3/scene/instancing/InstancedNode;
.super Lcom/jme3/scene/GeometryGroupNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;,
        Lcom/jme3/scene/instancing/InstancedNode$InstancedNodeControl;
    }
.end annotation


# instance fields
.field private control:Lcom/jme3/scene/instancing/InstancedNode$InstancedNodeControl;

.field protected igByGeom:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/jme3/scene/Geometry;",
            "Lcom/jme3/scene/instancing/InstancedGeometry;",
            ">;"
        }
    .end annotation
.end field

.field private instancesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;",
            "Lcom/jme3/scene/instancing/InstancedGeometry;",
            ">;"
        }
    .end annotation
.end field

.field private lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/GeometryGroupNode;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->igByGeom:Ljava/util/HashMap;

    .line 3
    new-instance v0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    invoke-direct {v0}, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->instancesMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/jme3/scene/GeometryGroupNode;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/jme3/scene/instancing/InstancedNode;->igByGeom:Ljava/util/HashMap;

    .line 7
    new-instance p1, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    invoke-direct {p1}, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;-><init>()V

    iput-object p1, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/jme3/scene/instancing/InstancedNode;->instancesMap:Ljava/util/HashMap;

    .line 9
    new-instance p1, Lcom/jme3/scene/instancing/InstancedNode$InstancedNodeControl;

    invoke-direct {p1, p0}, Lcom/jme3/scene/instancing/InstancedNode$InstancedNodeControl;-><init>(Lcom/jme3/scene/instancing/InstancedNode;)V

    iput-object p1, p0, Lcom/jme3/scene/instancing/InstancedNode;->control:Lcom/jme3/scene/instancing/InstancedNode$InstancedNodeControl;

    .line 10
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/scene/instancing/InstancedNode;Lcom/jme3/renderer/Camera;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/scene/instancing/InstancedNode;->renderFromControl(Lcom/jme3/renderer/Camera;)V

    return-void
.end method

.method private addToInstancedGeometry(Lcom/jme3/scene/Geometry;)V
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    const-string v1, "UseInstancing"

    invoke-virtual {v0, v1}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/jme3/scene/instancing/InstancedNode;->lookUpByGeometry(Lcom/jme3/scene/Geometry;)Lcom/jme3/scene/instancing/InstancedGeometry;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/instancing/InstancedNode;->igByGeom:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Lcom/jme3/scene/Geometry;->associateWithGroupNode(Lcom/jme3/scene/GeometryGroupNode;I)V

    invoke-virtual {v0, p1}, Lcom/jme3/scene/instancing/InstancedGeometry;->addInstance(Lcom/jme3/scene/Geometry;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must set the \'UseInstancing\' parameter to true on the material prior to adding it to InstancedNode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getGeometryStartIndex2(Lcom/jme3/scene/Geometry;)I
    .locals 0

    invoke-static {p0}, Lcom/jme3/scene/GeometryGroupNode;->getGeometryStartIndex(Lcom/jme3/scene/Geometry;)I

    move-result p0

    return p0
.end method

.method private instance(Lcom/jme3/scene/Spatial;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/jme3/scene/Geometry;

    .line 3
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->isGrouped()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getBatchHint()Lcom/jme3/scene/Spatial$BatchHint;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/Spatial$BatchHint;->Never:Lcom/jme3/scene/Spatial$BatchHint;

    if-eq v0, v1, :cond_2

    .line 4
    invoke-direct {p0, p1}, Lcom/jme3/scene/instancing/InstancedNode;->addToInstancedGeometry(Lcom/jme3/scene/Geometry;)V

    goto :goto_1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    .line 7
    instance-of v1, v0, Lcom/jme3/scene/GeometryGroupNode;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, v0}, Lcom/jme3/scene/instancing/InstancedNode;->instance(Lcom/jme3/scene/Spatial;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private lookUpByGeometry(Lcom/jme3/scene/Geometry;)Lcom/jme3/scene/instancing/InstancedGeometry;
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->mesh:Lcom/jme3/scene/Mesh;

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->material:Lcom/jme3/material/Material;

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getLodLevel()I

    move-result p1

    iput p1, v0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->lodLevel:I

    iget-object p1, p0, Lcom/jme3/scene/instancing/InstancedNode;->instancesMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/instancing/InstancedGeometry;

    if-nez p1, :cond_1

    new-instance p1, Lcom/jme3/scene/instancing/InstancedGeometry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mesh-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    iget-object v1, v1, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->mesh:Lcom/jme3/scene/Mesh;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",material-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    iget-object v1, v1, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->material:Lcom/jme3/material/Material;

    invoke-virtual {v1}, Lcom/jme3/material/Material;->getMaterialDef()Lcom/jme3/material/MaterialDef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/material/MaterialDef;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",lod-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    iget v1, v1, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->lodLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jme3/scene/instancing/InstancedGeometry;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    iget-object v0, v0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->material:Lcom/jme3/material/Material;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    iget-object v0, v0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Geometry;->setMesh(Lcom/jme3/scene/Mesh;)V

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    iget v0, v0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->lodLevel:I

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Geometry;->setLodLevel(I)V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "JmePhysicsIgnore"

    invoke-virtual {p1, v1, v0}, Lcom/jme3/scene/Spatial;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->instancesMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    invoke-virtual {v1}, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->clone()Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    :cond_1
    return-object p1
.end method

.method private relocateInInstancedGeometry(Lcom/jme3/scene/Geometry;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->igByGeom:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/instancing/InstancedGeometry;

    invoke-direct {p0, p1}, Lcom/jme3/scene/instancing/InstancedNode;->lookUpByGeometry(Lcom/jme3/scene/Geometry;)Lcom/jme3/scene/instancing/InstancedGeometry;

    move-result-object v1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/jme3/scene/instancing/InstancedGeometry;->deleteInstance(Lcom/jme3/scene/Geometry;)V

    invoke-virtual {v0}, Lcom/jme3/scene/instancing/InstancedGeometry;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    :cond_0
    invoke-virtual {v1, p1}, Lcom/jme3/scene/instancing/InstancedGeometry;->addInstance(Lcom/jme3/scene/Geometry;)V

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->igByGeom:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method private removeFromInstancedGeometry(Lcom/jme3/scene/Geometry;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->igByGeom:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/instancing/InstancedGeometry;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/scene/instancing/InstancedGeometry;->deleteInstance(Lcom/jme3/scene/Geometry;)V

    invoke-virtual {v0}, Lcom/jme3/scene/instancing/InstancedGeometry;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    :cond_0
    return-void
.end method

.method private renderFromControl(Lcom/jme3/renderer/Camera;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->instancesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/instancing/InstancedGeometry;

    invoke-virtual {v1, p1}, Lcom/jme3/scene/instancing/InstancedGeometry;->updateInstances(Lcom/jme3/renderer/Camera;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setGeometryStartIndex2(Lcom/jme3/scene/Geometry;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jme3/scene/GeometryGroupNode;->setGeometryStartIndex(Lcom/jme3/scene/Geometry;I)V

    return-void
.end method

.method private ungroupSceneGraph(Lcom/jme3/scene/Spatial;)V
    .locals 1

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-direct {p0, v0}, Lcom/jme3/scene/instancing/InstancedNode;->ungroupSceneGraph(Lcom/jme3/scene/Spatial;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/jme3/scene/Geometry;

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->isGrouped()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->unassociateFromGroupNode()V

    invoke-static {p1}, Lcom/jme3/scene/GeometryGroupNode;->getGeometryStartIndex(Lcom/jme3/scene/Geometry;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/jme3/asset/CloneableSmartAsset;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/scene/instancing/InstancedNode;->clone()Lcom/jme3/scene/instancing/InstancedNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone(Z)Lcom/jme3/scene/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/scene/instancing/InstancedNode;->clone(Z)Lcom/jme3/scene/instancing/InstancedNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/jme3/scene/Spatial;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/jme3/scene/instancing/InstancedNode;->clone()Lcom/jme3/scene/instancing/InstancedNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone(Z)Lcom/jme3/scene/Spatial;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/scene/instancing/InstancedNode;->clone(Z)Lcom/jme3/scene/instancing/InstancedNode;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/jme3/scene/instancing/InstancedNode;
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/jme3/scene/instancing/InstancedNode;->clone(Z)Lcom/jme3/scene/instancing/InstancedNode;

    move-result-object v0

    return-object v0
.end method

.method public clone(Z)Lcom/jme3/scene/instancing/InstancedNode;
    .locals 2

    .line 7
    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->clone(Z)Lcom/jme3/scene/Node;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/instancing/InstancedNode;

    .line 8
    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->instancesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p1, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 10
    iget-object v1, p1, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/jme3/scene/instancing/InstancedGeometry;

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p1, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, p1, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/jme3/scene/Geometry;

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p1, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Geometry;

    .line 14
    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->isGrouped()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p1, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    iget-object v1, p0, Lcom/jme3/scene/instancing/InstancedNode;->control:Lcom/jme3/scene/instancing/InstancedNode$InstancedNodeControl;

    invoke-virtual {v0, v1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Lcom/jme3/scene/instancing/InstancedNode$InstancedNodeControl;

    invoke-direct {v0, p1}, Lcom/jme3/scene/instancing/InstancedNode$InstancedNodeControl;-><init>(Lcom/jme3/scene/instancing/InstancedNode;)V

    iput-object v0, p1, Lcom/jme3/scene/instancing/InstancedNode;->control:Lcom/jme3/scene/instancing/InstancedNode$InstancedNodeControl;

    .line 18
    iget-object v1, p1, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    invoke-direct {v0}, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;-><init>()V

    iput-object v0, p1, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/jme3/scene/instancing/InstancedNode;->igByGeom:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/jme3/scene/instancing/InstancedNode;->instancesMap:Ljava/util/HashMap;

    .line 22
    invoke-virtual {p1}, Lcom/jme3/scene/instancing/InstancedNode;->instance()V

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/jme3/scene/instancing/InstancedNode;->clone()Lcom/jme3/scene/instancing/InstancedNode;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/Node;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/scene/instancing/InstancedNode;->control:Lcom/jme3/scene/instancing/InstancedNode$InstancedNodeControl;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/instancing/InstancedNode$InstancedNodeControl;

    iput-object p2, p0, Lcom/jme3/scene/instancing/InstancedNode;->control:Lcom/jme3/scene/instancing/InstancedNode$InstancedNodeControl;

    iget-object p2, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    iput-object p2, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->igByGeom:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Geometry;

    invoke-virtual {p1, v2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Geometry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/instancing/InstancedGeometry;

    invoke-virtual {p1, v1}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/instancing/InstancedGeometry;

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/jme3/scene/instancing/InstancedNode;->igByGeom:Ljava/util/HashMap;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->instancesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    invoke-virtual {p1, v2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/instancing/InstancedGeometry;

    invoke-virtual {p1, v1}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/instancing/InstancedGeometry;

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lcom/jme3/scene/instancing/InstancedNode;->instancesMap:Ljava/util/HashMap;

    return-void
.end method

.method public detachChildAt(I)Lcom/jme3/scene/Spatial;
    .locals 3

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->detachChildAt(I)Lcom/jme3/scene/Spatial;

    move-result-object p1

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/jme3/scene/instancing/InstancedNode;->ungroupSceneGraph(Lcom/jme3/scene/Spatial;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/jme3/scene/instancing/InstancedGeometry;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/jme3/scene/instancing/InstancedGeometry;

    iget-object v1, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->mesh:Lcom/jme3/scene/Mesh;

    iget-object v1, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->material:Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getLodLevel()I

    move-result v2

    iput v2, v1, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->lodLevel:I

    iget-object v1, p0, Lcom/jme3/scene/instancing/InstancedNode;->instancesMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/jme3/scene/instancing/InstancedNode;->lookUp:Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/jme3/scene/instancing/InstancedGeometry;->cleanup()V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public instance()V
    .locals 0

    .line 9
    invoke-direct {p0, p0}, Lcom/jme3/scene/instancing/InstancedNode;->instance(Lcom/jme3/scene/Spatial;)V

    return-void
.end method

.method public onGeometryUnassociated(Lcom/jme3/scene/Geometry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/scene/instancing/InstancedNode;->removeFromInstancedGeometry(Lcom/jme3/scene/Geometry;)V

    return-void
.end method

.method public onMaterialChange(Lcom/jme3/scene/Geometry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/scene/instancing/InstancedNode;->relocateInInstancedGeometry(Lcom/jme3/scene/Geometry;)V

    return-void
.end method

.method public onMeshChange(Lcom/jme3/scene/Geometry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/scene/instancing/InstancedNode;->relocateInInstancedGeometry(Lcom/jme3/scene/Geometry;)V

    return-void
.end method

.method public onTransformChange(Lcom/jme3/scene/Geometry;)V
    .locals 0

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "control"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/instancing/InstancedNode$InstancedNodeControl;

    iput-object p1, p0, Lcom/jme3/scene/instancing/InstancedNode;->control:Lcom/jme3/scene/instancing/InstancedNode$InstancedNodeControl;

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode;->control:Lcom/jme3/scene/instancing/InstancedNode$InstancedNodeControl;

    const-string v1, "control"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
