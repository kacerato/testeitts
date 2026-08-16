.class public Lcom/jme3/anim/Joint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/anim/util/HasLocalTransform;


# instance fields
.field private attachedNode:Lcom/jme3/scene/Node;

.field private children:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/anim/Joint;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private initialTransform:Lcom/jme3/math/Transform;

.field private inverseModelBindMatrix:Lcom/jme3/math/Matrix4f;

.field private jointModelTransform:Lcom/jme3/anim/util/JointModelTransform;

.field private localTransform:Lcom/jme3/math/Transform;

.field private name:Ljava/lang/String;

.field private parent:Lcom/jme3/anim/Joint;

.field private targetGeometry:Lcom/jme3/scene/Geometry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/anim/Joint;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/anim/Joint;->children:Lcom/jme3/util/SafeArrayList;

    .line 3
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/Joint;->localTransform:Lcom/jme3/math/Transform;

    .line 4
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/Joint;->initialTransform:Lcom/jme3/math/Transform;

    .line 5
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/Joint;->inverseModelBindMatrix:Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/anim/Joint;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/anim/Joint;->children:Lcom/jme3/util/SafeArrayList;

    .line 8
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/Joint;->localTransform:Lcom/jme3/math/Transform;

    .line 9
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/Joint;->initialTransform:Lcom/jme3/math/Transform;

    .line 10
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/Joint;->inverseModelBindMatrix:Lcom/jme3/math/Matrix4f;

    .line 11
    iput-object p1, p0, Lcom/jme3/anim/Joint;->name:Ljava/lang/String;

    return-void
.end method

.method private updateAttachNode()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/anim/Joint;->attachedNode:Lcom/jme3/scene/Node;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/jme3/anim/Joint;->targetGeometry:Lcom/jme3/scene/Geometry;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/jme3/anim/Joint;->targetGeometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/jme3/anim/Joint;->targetGeometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {p0}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->clone()Lcom/jme3/math/Transform;

    move-result-object v2

    :goto_0
    if-eq v1, v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Transform;->combineWithParent(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jme3/anim/Joint;->attachedNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Spatial;->setLocalTransform(Lcom/jme3/math/Transform;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/jme3/anim/Joint;->attachedNode:Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setLocalTransform(Lcom/jme3/math/Transform;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public addChild(Lcom/jme3/anim/Joint;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/Joint;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Lcom/jme3/anim/Joint;->parent:Lcom/jme3/anim/Joint;

    return-void
.end method

.method public applyBindPose()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/anim/Joint;->jointModelTransform:Lcom/jme3/anim/util/JointModelTransform;

    iget-object v1, p0, Lcom/jme3/anim/Joint;->localTransform:Lcom/jme3/math/Transform;

    iget-object v2, p0, Lcom/jme3/anim/Joint;->inverseModelBindMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/anim/Joint;->parent:Lcom/jme3/anim/Joint;

    invoke-interface {v0, v1, v2, v3}, Lcom/jme3/anim/util/JointModelTransform;->applyBindPose(Lcom/jme3/math/Transform;Lcom/jme3/math/Matrix4f;Lcom/jme3/anim/Joint;)V

    invoke-virtual {p0}, Lcom/jme3/anim/Joint;->updateModelTransforms()V

    iget-object v0, p0, Lcom/jme3/anim/Joint;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/anim/Joint;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->applyBindPose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public applyInitialPose()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/anim/Joint;->initialTransform:Lcom/jme3/math/Transform;

    invoke-virtual {p0, v0}, Lcom/jme3/anim/Joint;->setLocalTransform(Lcom/jme3/math/Transform;)V

    invoke-virtual {p0}, Lcom/jme3/anim/Joint;->updateModelTransforms()V

    iget-object v0, p0, Lcom/jme3/anim/Joint;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/anim/Joint;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->applyInitialPose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/anim/Joint;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/util/SafeArrayList;

    iput-object p2, p0, Lcom/jme3/anim/Joint;->children:Lcom/jme3/util/SafeArrayList;

    iget-object p2, p0, Lcom/jme3/anim/Joint;->parent:Lcom/jme3/anim/Joint;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/anim/Joint;

    iput-object p2, p0, Lcom/jme3/anim/Joint;->parent:Lcom/jme3/anim/Joint;

    iget-object p2, p0, Lcom/jme3/anim/Joint;->attachedNode:Lcom/jme3/scene/Node;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/Node;

    iput-object p2, p0, Lcom/jme3/anim/Joint;->attachedNode:Lcom/jme3/scene/Node;

    iget-object p2, p0, Lcom/jme3/anim/Joint;->targetGeometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/Geometry;

    iput-object p2, p0, Lcom/jme3/anim/Joint;->targetGeometry:Lcom/jme3/scene/Geometry;

    iget-object p2, p0, Lcom/jme3/anim/Joint;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Transform;

    iput-object p2, p0, Lcom/jme3/anim/Joint;->localTransform:Lcom/jme3/math/Transform;

    iget-object p2, p0, Lcom/jme3/anim/Joint;->initialTransform:Lcom/jme3/math/Transform;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Transform;

    iput-object p2, p0, Lcom/jme3/anim/Joint;->initialTransform:Lcom/jme3/math/Transform;

    iget-object p2, p0, Lcom/jme3/anim/Joint;->inverseModelBindMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Matrix4f;

    iput-object p1, p0, Lcom/jme3/anim/Joint;->inverseModelBindMatrix:Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public getAttachmentsNode(ILcom/jme3/util/SafeArrayList;)Lcom/jme3/scene/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/scene/Geometry;",
            ">;)",
            "Lcom/jme3/scene/Node;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/anim/Joint;->targetGeometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {p2}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Geometry;

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/jme3/scene/Mesh;->isAnimatedByJoint(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lcom/jme3/anim/Joint;->targetGeometry:Lcom/jme3/scene/Geometry;

    :cond_1
    iget-object p1, p0, Lcom/jme3/anim/Joint;->attachedNode:Lcom/jme3/scene/Node;

    if-nez p1, :cond_2

    new-instance p1, Lcom/jme3/scene/Node;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jme3/anim/Joint;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_attachnode"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jme3/anim/Joint;->attachedNode:Lcom/jme3/scene/Node;

    const-string p2, "AttachedBone"

    invoke-virtual {p1, p2, p0}, Lcom/jme3/scene/Spatial;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/jme3/anim/Joint;->attachedNode:Lcom/jme3/scene/Node;

    new-instance p2, Lcom/jme3/material/MatParamOverride;

    sget-object v1, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    const-string v2, "NumberOfBones"

    invoke-direct {p2, v1, v2, v0}, Lcom/jme3/material/MatParamOverride;-><init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Spatial;->addMatParamOverride(Lcom/jme3/material/MatParamOverride;)V

    :cond_2
    iget-object p1, p0, Lcom/jme3/anim/Joint;->attachedNode:Lcom/jme3/scene/Node;

    return-object p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/anim/Joint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/anim/Joint;->children:Lcom/jme3/util/SafeArrayList;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/jme3/anim/Joint;->id:I

    return v0
.end method

.method public getInitialTransform()Lcom/jme3/math/Transform;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/Joint;->initialTransform:Lcom/jme3/math/Transform;

    return-object v0
.end method

.method public getInverseModelBindMatrix()Lcom/jme3/math/Matrix4f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/Joint;->inverseModelBindMatrix:Lcom/jme3/math/Matrix4f;

    return-object v0
.end method

.method public getJointModelTransform()Lcom/jme3/anim/util/JointModelTransform;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/Joint;->jointModelTransform:Lcom/jme3/anim/util/JointModelTransform;

    return-object v0
.end method

.method public getLocalRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/Joint;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getLocalScale()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/Joint;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getLocalTransform()Lcom/jme3/math/Transform;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/Joint;->localTransform:Lcom/jme3/math/Transform;

    return-object v0
.end method

.method public getLocalTranslation()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/Joint;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getModelTransform()Lcom/jme3/math/Transform;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/Joint;->jointModelTransform:Lcom/jme3/anim/util/JointModelTransform;

    invoke-interface {v0}, Lcom/jme3/anim/util/JointModelTransform;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/Joint;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffsetTransform(Lcom/jme3/math/Matrix4f;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/anim/Joint;->jointModelTransform:Lcom/jme3/anim/util/JointModelTransform;

    iget-object v1, p0, Lcom/jme3/anim/Joint;->inverseModelBindMatrix:Lcom/jme3/math/Matrix4f;

    invoke-interface {v0, p1, v1}, Lcom/jme3/anim/util/JointModelTransform;->getOffsetTransform(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)V

    return-void
.end method

.method public getParent()Lcom/jme3/anim/Joint;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/Joint;->parent:Lcom/jme3/anim/Joint;

    return-object v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/Joint;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/anim/Joint;->name:Ljava/lang/String;

    const-string v0, "attachedNode"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    iput-object v0, p0, Lcom/jme3/anim/Joint;->attachedNode:Lcom/jme3/scene/Node;

    const-string v0, "targetGeometry"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    iput-object v0, p0, Lcom/jme3/anim/Joint;->targetGeometry:Lcom/jme3/scene/Geometry;

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    const-string v2, "initialTransform"

    invoke-interface {p1, v2, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Transform;

    iput-object v0, p0, Lcom/jme3/anim/Joint;->initialTransform:Lcom/jme3/math/Transform;

    const-string v0, "inverseModelBindMatrix"

    iget-object v2, p0, Lcom/jme3/anim/Joint;->inverseModelBindMatrix:Lcom/jme3/math/Matrix4f;

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Matrix4f;

    iput-object v0, p0, Lcom/jme3/anim/Joint;->inverseModelBindMatrix:Lcom/jme3/math/Matrix4f;

    const-string v0, "children"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/anim/Joint;

    invoke-virtual {p0, v1}, Lcom/jme3/anim/Joint;->addChild(Lcom/jme3/anim/Joint;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public saveBindPose()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/anim/Joint;->inverseModelBindMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->toTransformMatrix(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v0, p0, Lcom/jme3/anim/Joint;->inverseModelBindMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public saveInitialPose()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/anim/Joint;->initialTransform:Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/anim/Joint;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/anim/Joint;->id:I

    return-void
.end method

.method public setInverseModelBindMatrix(Lcom/jme3/math/Matrix4f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/anim/Joint;->inverseModelBindMatrix:Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public setJointModelTransform(Lcom/jme3/anim/util/JointModelTransform;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/anim/Joint;->jointModelTransform:Lcom/jme3/anim/util/JointModelTransform;

    return-void
.end method

.method public setLocalRotation(Lcom/jme3/math/Quaternion;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/Joint;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;

    return-void
.end method

.method public setLocalScale(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/Joint;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->setScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    return-void
.end method

.method public setLocalTransform(Lcom/jme3/math/Transform;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/Joint;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    return-void
.end method

.method public setLocalTranslation(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/Joint;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/anim/Joint;->name:Ljava/lang/String;

    return-void
.end method

.method public final update()V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/anim/Joint;->updateModelTransforms()V

    iget-object v0, p0, Lcom/jme3/anim/Joint;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/anim/Joint;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->update()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateModelTransforms()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/anim/Joint;->jointModelTransform:Lcom/jme3/anim/util/JointModelTransform;

    iget-object v1, p0, Lcom/jme3/anim/Joint;->localTransform:Lcom/jme3/math/Transform;

    iget-object v2, p0, Lcom/jme3/anim/Joint;->parent:Lcom/jme3/anim/Joint;

    invoke-interface {v0, v1, v2}, Lcom/jme3/anim/util/JointModelTransform;->updateModelTransform(Lcom/jme3/math/Transform;Lcom/jme3/anim/Joint;)V

    invoke-direct {p0}, Lcom/jme3/anim/Joint;->updateAttachNode()V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/anim/Joint;->name:Ljava/lang/String;

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/anim/Joint;->attachedNode:Lcom/jme3/scene/Node;

    const-string v1, "attachedNode"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/anim/Joint;->targetGeometry:Lcom/jme3/scene/Geometry;

    const-string v1, "targetGeometry"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/anim/Joint;->initialTransform:Lcom/jme3/math/Transform;

    new-instance v1, Lcom/jme3/math/Transform;

    invoke-direct {v1}, Lcom/jme3/math/Transform;-><init>()V

    const-string v3, "initialTransform"

    invoke-interface {p1, v0, v3, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/anim/Joint;->inverseModelBindMatrix:Lcom/jme3/math/Matrix4f;

    new-instance v1, Lcom/jme3/math/Matrix4f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix4f;-><init>()V

    const-string v3, "inverseModelBindMatrix"

    invoke-interface {p1, v0, v3, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jme3/anim/Joint;->children:Lcom/jme3/util/SafeArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "children"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
