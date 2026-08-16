.class public Lcom/jme3/anim/Armature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# instance fields
.field private jointList:[Lcom/jme3/anim/Joint;

.field private modelTransformClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/anim/util/JointModelTransform;",
            ">;"
        }
    .end annotation
.end field

.field private rootJoints:[Lcom/jme3/anim/Joint;

.field private transient skinningMatrixes:[Lcom/jme3/math/Matrix4f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/jme3/anim/SeparateJointModelTransform;

    iput-object v0, p0, Lcom/jme3/anim/Armature;->modelTransformClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>([Lcom/jme3/anim/Joint;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-class v0, Lcom/jme3/anim/SeparateJointModelTransform;

    iput-object v0, p0, Lcom/jme3/anim/Armature;->modelTransformClass:Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 8
    aget-object v2, p1, v1

    .line 9
    invoke-virtual {v2, v1}, Lcom/jme3/anim/Joint;->setId(I)V

    .line 10
    invoke-direct {p0, v2}, Lcom/jme3/anim/Armature;->instantiateJointModelTransform(Lcom/jme3/anim/Joint;)V

    .line 11
    invoke-virtual {v2}, Lcom/jme3/anim/Joint;->getParent()Lcom/jme3/anim/Joint;

    move-result-object v3

    if-nez v3, :cond_0

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/jme3/anim/Joint;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/jme3/anim/Joint;

    iput-object p1, p0, Lcom/jme3/anim/Armature;->rootJoints:[Lcom/jme3/anim/Joint;

    .line 14
    invoke-direct {p0}, Lcom/jme3/anim/Armature;->createSkinningMatrices()V

    .line 15
    iget-object p1, p0, Lcom/jme3/anim/Armature;->rootJoints:[Lcom/jme3/anim/Joint;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_2

    .line 16
    iget-object v0, p0, Lcom/jme3/anim/Armature;->rootJoints:[Lcom/jme3/anim/Joint;

    aget-object v0, v0, p1

    .line 17
    invoke-virtual {v0}, Lcom/jme3/anim/Joint;->update()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private createSkinningMatrices()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    array-length v0, v0

    new-array v0, v0, [Lcom/jme3/math/Matrix4f;

    iput-object v0, p0, Lcom/jme3/anim/Armature;->skinningMatrixes:[Lcom/jme3/math/Matrix4f;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/anim/Armature;->skinningMatrixes:[Lcom/jme3/math/Matrix4f;

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

.method private instantiateJointModelTransform(Lcom/jme3/anim/Joint;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/jme3/anim/Armature;->modelTransformClass:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/util/JointModelTransform;

    invoke-virtual {p1, v0}, Lcom/jme3/anim/Joint;->setJointModelTransform(Lcom/jme3/anim/util/JointModelTransform;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public applyBindPose()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/anim/Armature;->rootJoints:[Lcom/jme3/anim/Joint;

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

    iget-object v0, p0, Lcom/jme3/anim/Armature;->rootJoints:[Lcom/jme3/anim/Joint;

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
    .locals 2

    iget-object p2, p0, Lcom/jme3/anim/Armature;->rootJoints:[Lcom/jme3/anim/Joint;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/jme3/anim/Joint;

    iput-object p2, p0, Lcom/jme3/anim/Armature;->rootJoints:[Lcom/jme3/anim/Joint;

    iget-object p2, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/jme3/anim/Joint;

    iput-object p2, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    iget-object p2, p0, Lcom/jme3/anim/Armature;->skinningMatrixes:[Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/jme3/math/Matrix4f;

    iput-object p1, p0, Lcom/jme3/anim/Armature;->skinningMatrixes:[Lcom/jme3/math/Matrix4f;

    iget-object p1, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/jme3/anim/Armature;->instantiateJointModelTransform(Lcom/jme3/anim/Joint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public computeSkinningMatrices()[Lcom/jme3/math/Matrix4f;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/jme3/anim/Armature;->skinningMatrixes:[Lcom/jme3/math/Matrix4f;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/jme3/anim/Joint;->getOffsetTransform(Lcom/jme3/math/Matrix4f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/anim/Armature;->skinningMatrixes:[Lcom/jme3/math/Matrix4f;

    return-object v0
.end method

.method public getJoint(I)Lcom/jme3/anim/Joint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getJoint(Ljava/lang/String;)Lcom/jme3/anim/Joint;
    .locals 3

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jme3/anim/Joint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getJointCount()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    array-length v0, v0

    return v0
.end method

.method public getJointIndex(Lcom/jme3/anim/Joint;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

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

.method public getJointIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 4
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jme3/anim/Joint;->getName()Ljava/lang/String;

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

.method public getJointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/anim/Joint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRoots()[Lcom/jme3/anim/Joint;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/Armature;->rootJoints:[Lcom/jme3/anim/Joint;

    return-object v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/Armature;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "rootJoints"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [Lcom/jme3/anim/Joint;

    iput-object v2, p0, Lcom/jme3/anim/Armature;->rootJoints:[Lcom/jme3/anim/Joint;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "jointList"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lcom/jme3/anim/Joint;

    iput-object v1, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-class v0, Lcom/jme3/anim/MatrixJointModelTransform;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "modelTransformClass"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/anim/Armature;->modelTransformClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    array-length v0, p1

    move v1, v4

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v2}, Lcom/jme3/anim/Joint;->setId(I)V

    invoke-direct {p0, v3}, Lcom/jme3/anim/Armature;->instantiateJointModelTransform(Lcom/jme3/anim/Joint;)V

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/jme3/anim/Armature;->createSkinningMatrices()V

    iget-object p1, p0, Lcom/jme3/anim/Armature;->rootJoints:[Lcom/jme3/anim/Joint;

    array-length v0, p1

    :goto_1
    if-ge v4, v0, :cond_1

    aget-object v1, p1, v4

    invoke-virtual {v1}, Lcom/jme3/anim/Joint;->update()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/anim/Armature;->applyInitialPose()V

    return-void

    :catch_0
    new-instance v0, Lcom/jme3/asset/AssetLoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find class for name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveBindPose()V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/anim/Armature;->update()V

    iget-object v0, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->saveBindPose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public saveInitialPose()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->saveInitialPose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setModelTransformClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/anim/util/JointModelTransform;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/anim/Armature;->modelTransformClass:Ljava/lang/Class;

    iget-object p1, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/jme3/anim/Armature;->instantiateJointModelTransform(Lcom/jme3/anim/Joint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public update()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/anim/Armature;->rootJoints:[Lcom/jme3/anim/Joint;

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

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/anim/Armature;->rootJoints:[Lcom/jme3/anim/Joint;

    const-string v1, "rootJoints"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/anim/Armature;->jointList:[Lcom/jme3/anim/Joint;

    const-string v1, "jointList"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/anim/Armature;->modelTransformClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/jme3/anim/MatrixJointModelTransform;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "modelTransformClass"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
