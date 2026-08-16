.class public final Lcom/jme3/animation/Skeleton;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Lcom/jme3/util/clone/JmeCloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private boneList:[Lcom/jme3/animation/Bone;

.field private rootBones:[Lcom/jme3/animation/Bone;

.field private transient skinningMatrixes:[Lcom/jme3/math/Matrix4f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/animation/Skeleton;)V
    .locals 6

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iget-object v0, p1, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    .line 16
    array-length v1, v0

    new-array v1, v1, [Lcom/jme3/animation/Bone;

    iput-object v1, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    const/4 v1, 0x0

    move v2, v1

    .line 17
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 18
    iget-object v3, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    new-instance v4, Lcom/jme3/animation/Bone;

    aget-object v5, v0, v2

    invoke-direct {v4, v5}, Lcom/jme3/animation/Bone;-><init>(Lcom/jme3/animation/Bone;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p1, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v0, v0

    new-array v0, v0, [Lcom/jme3/animation/Bone;

    iput-object v0, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    .line 20
    :goto_1
    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 21
    iget-object v2, p1, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/jme3/animation/Skeleton;->recreateBoneStructure(Lcom/jme3/animation/Bone;)Lcom/jme3/animation/Bone;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 22
    :cond_1
    invoke-direct {p0}, Lcom/jme3/animation/Skeleton;->createSkinningMatrices()V

    .line 23
    iget-object p1, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_2

    .line 24
    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/jme3/animation/Bone;->update()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>([Lcom/jme3/animation/Bone;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 5
    aget-object v2, p1, v1

    .line 6
    invoke-virtual {v2}, Lcom/jme3/animation/Bone;->getParent()Lcom/jme3/animation/Bone;

    move-result-object v3

    if-nez v3, :cond_0

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/jme3/animation/Bone;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/jme3/animation/Bone;

    iput-object p1, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    .line 9
    invoke-direct {p0}, Lcom/jme3/animation/Skeleton;->createSkinningMatrices()V

    .line 10
    iget-object p1, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    aget-object v0, v0, p1

    .line 12
    invoke-virtual {v0}, Lcom/jme3/animation/Bone;->update()V

    .line 13
    invoke-virtual {v0}, Lcom/jme3/animation/Bone;->setBindingPose()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private createSkinningMatrices()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    array-length v0, v0

    new-array v0, v0, [Lcom/jme3/math/Matrix4f;

    iput-object v0, p0, Lcom/jme3/animation/Skeleton;->skinningMatrixes:[Lcom/jme3/math/Matrix4f;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->skinningMatrixes:[Lcom/jme3/math/Matrix4f;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/jme3/math/Matrix4f;

    invoke-direct {v2}, Lcom/jme3/math/Matrix4f;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private recreateBoneStructure(Lcom/jme3/animation/Bone;)Lcom/jme3/animation/Bone;
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/animation/Skeleton;->getBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/animation/Bone;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/animation/Bone;

    invoke-virtual {v2}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jme3/animation/Skeleton;->getBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jme3/animation/Bone;->addChild(Lcom/jme3/animation/Bone;)V

    invoke-direct {p0, v2}, Lcom/jme3/animation/Skeleton;->recreateBoneStructure(Lcom/jme3/animation/Bone;)Lcom/jme3/animation/Bone;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/jme3/animation/Bone;

    iput-object p2, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    iget-object p2, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/jme3/animation/Bone;

    iput-object p2, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    iget-object p2, p0, Lcom/jme3/animation/Skeleton;->skinningMatrixes:[Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/jme3/math/Matrix4f;

    iput-object p1, p0, Lcom/jme3/animation/Skeleton;->skinningMatrixes:[Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public computeSkinningMatrices()[Lcom/jme3/math/Matrix4f;
    .locals 10

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v2, p0, Lcom/jme3/animation/Skeleton;->skinningMatrixes:[Lcom/jme3/math/Matrix4f;

    aget-object v5, v2, v1

    iget-object v6, v0, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    iget-object v7, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v8, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v9, v0, Lcom/jme3/util/TempVars;->tempMat3:Lcom/jme3/math/Matrix3f;

    invoke-virtual/range {v4 .. v9}, Lcom/jme3/animation/Bone;->getOffsetTransform(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->skinningMatrixes:[Lcom/jme3/math/Matrix4f;

    return-object v0
.end method

.method public getBone(I)Lcom/jme3/animation/Bone;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;
    .locals 3

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBoneCount()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    array-length v0, v0

    return v0
.end method

.method public getBoneIndex(Lcom/jme3/animation/Bone;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getBoneIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 4
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getRoots()[Lcom/jme3/animation/Bone;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    return-object v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Skeleton;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "rootBones"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [Lcom/jme3/animation/Bone;

    iput-object v2, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "boneList"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [Lcom/jme3/animation/Bone;

    iput-object v0, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    array-length v1, p1

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lcom/jme3/animation/Skeleton;->createSkinningMatrices()V

    iget-object p1, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v0, p1

    :goto_0
    if-ge v4, v0, :cond_0

    aget-object v1, p1, v4

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->reset()V

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->update()V

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->setBindingPose()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->reset()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final resetAndUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->reset()V

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->update()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBindingPose()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->setBindingPose()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skeleton - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bones, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " roots\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/jme3/animation/Bone;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateWorldVectors()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->update()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    const-string v1, "rootBones"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    const-string v1, "boneList"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    return-void
.end method
