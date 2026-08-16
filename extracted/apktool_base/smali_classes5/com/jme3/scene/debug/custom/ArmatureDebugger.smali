.class public Lcom/jme3/scene/debug/custom/ArmatureDebugger;
.super Lcom/jme3/scene/Node;
.source "SourceFile"


# instance fields
.field private armature:Lcom/jme3/anim/Armature;

.field private armatureNode:Lcom/jme3/scene/debug/custom/ArmatureNode;

.field private interJointWires:Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;

.field private joints:Lcom/jme3/scene/Node;

.field private outlines:Lcom/jme3/scene/Node;

.field private wires:Lcom/jme3/scene/Node;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Node;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/anim/SkinningControl;)V
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/jme3/anim/SkinningControl;->getArmature()Lcom/jme3/anim/Armature;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/anim/SkinningControl;->getArmature()Lcom/jme3/anim/Armature;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/anim/Armature;->getJointList()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;-><init>(Ljava/lang/String;Lcom/jme3/anim/Armature;Ljava/util/List;)V

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->initialize(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/Camera;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/anim/Armature;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jme3/anim/Armature;",
            "Ljava/util/List<",
            "Lcom/jme3/anim/Joint;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object p2, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->armature:Lcom/jme3/anim/Armature;

    .line 6
    invoke-virtual {p2}, Lcom/jme3/anim/Armature;->update()V

    .line 7
    new-instance p1, Lcom/jme3/scene/Node;

    const-string v0, "joints"

    invoke-direct {p1, v0}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->joints:Lcom/jme3/scene/Node;

    .line 8
    new-instance p1, Lcom/jme3/scene/Node;

    const-string v0, "outlines"

    invoke-direct {p1, v0}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    .line 9
    new-instance p1, Lcom/jme3/scene/Node;

    const-string v0, "bones"

    invoke-direct {p1, v0}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    .line 10
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->joints:Lcom/jme3/scene/Node;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 11
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 12
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 13
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->joints:Lcom/jme3/scene/Node;

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "NonDeformingJoints"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 14
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "NonDeformingOutlines"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 15
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "NonDeformingWires"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 16
    new-instance p1, Lcom/jme3/scene/Node;

    const-string v0, "DashedOutlines"

    invoke-direct {p1, v0}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "DashedNonDeformingOutlines"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 18
    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 19
    new-instance p1, Lcom/jme3/scene/Node;

    const-string v0, "DashedWires"

    invoke-direct {p1, v0}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "DashedNonDeformingWires"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 21
    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 22
    new-instance p1, Lcom/jme3/scene/debug/custom/ArmatureNode;

    iget-object v3, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->joints:Lcom/jme3/scene/Node;

    iget-object v4, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    iget-object v5, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/jme3/scene/debug/custom/ArmatureNode;-><init>(Lcom/jme3/anim/Armature;Lcom/jme3/scene/Node;Lcom/jme3/scene/Node;Lcom/jme3/scene/Node;Ljava/util/List;)V

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->armatureNode:Lcom/jme3/scene/debug/custom/ArmatureNode;

    .line 23
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->displayNonDeformingJoint(Z)V

    return-void
.end method

.method private getDashedMaterial(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;
    .locals 2

    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "Common/MatDefs/Misc/DashedLine.j3md"

    invoke-direct {v0, p1, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    return-object v0
.end method

.method private getJointMaterial(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;
    .locals 2

    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "Common/MatDefs/Misc/Billboard.j3md"

    invoke-direct {v0, p1, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string v1, "Common/Textures/dot.png"

    invoke-interface {p1, v1}, Lcom/jme3/asset/AssetManager;->loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object p1

    const-string v1, "Texture"

    invoke-virtual {v0, v1, p1}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p1

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {p1, v1}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    return-object v0
.end method

.method private getUnshadedMaterial(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;
    .locals 2

    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, p1, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string p1, "VertexColor"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    return-object v0
.end method


# virtual methods
.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->armatureNode:Lcom/jme3/scene/debug/custom/ArmatureNode;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/scene/debug/custom/ArmatureNode;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1
.end method

.method public displayNonDeformingJoint(Z)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object p1, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_0
    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->joints:Lcom/jme3/scene/Node;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    return-void
.end method

.method public getArmature()Lcom/jme3/anim/Armature;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->armature:Lcom/jme3/anim/Armature;

    return-object v0
.end method

.method public getBoneShapes()Lcom/jme3/scene/debug/custom/ArmatureNode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->armatureNode:Lcom/jme3/scene/debug/custom/ArmatureNode;

    return-object v0
.end method

.method public getInterJointWires()Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->interJointWires:Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;

    return-object v0
.end method

.method public initialize(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/Camera;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->armatureNode:Lcom/jme3/scene/debug/custom/ArmatureNode;

    invoke-virtual {v0, p2}, Lcom/jme3/scene/debug/custom/ArmatureNode;->setCamera(Lcom/jme3/renderer/Camera;)V

    invoke-direct {p0, p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->getJointMaterial(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;

    move-result-object p2

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->joints:Lcom/jme3/scene/Node;

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Translucent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->joints:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p2}, Lcom/jme3/scene/Node;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-direct {p0, p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->getUnshadedMaterial(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;

    move-result-object p2

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p2}, Lcom/jme3/scene/Node;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-direct {p0, p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->getDashedMaterial(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;

    move-result-object p2

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jme3/scene/Spatial;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-direct {p0, p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->getUnshadedMaterial(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;

    move-result-object p2

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p2}, Lcom/jme3/scene/Node;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-direct {p0, p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->getDashedMaterial(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    invoke-virtual {p2, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jme3/scene/Spatial;->setMaterial(Lcom/jme3/material/Material;)V

    return-void
.end method

.method public select(Lcom/jme3/scene/Geometry;)Lcom/jme3/anim/Joint;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->armatureNode:Lcom/jme3/scene/debug/custom/ArmatureNode;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/debug/custom/ArmatureNode;->select(Lcom/jme3/scene/Geometry;)Lcom/jme3/anim/Joint;

    move-result-object p1

    return-object p1
.end method

.method public updateLogicalState(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->updateLogicalState(F)V

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->armatureNode:Lcom/jme3/scene/debug/custom/ArmatureNode;

    invoke-virtual {p1}, Lcom/jme3/scene/debug/custom/ArmatureNode;->updateGeometry()V

    return-void
.end method
