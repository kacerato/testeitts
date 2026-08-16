.class public final Lif/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Lcom/jme3/math/Vector3f;

.field public static final synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lif/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lif/r;->a:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lif/r;->b:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lcom/jme3/animation/Skeleton;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jme3/animation/Bone;->setUserControl(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static B(Lcom/jme3/scene/Spatial;Z)V
    .locals 1

    const-string v0, "spatial"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lif/r;->t(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Skeleton;

    invoke-static {v0, p1}, Lif/r;->A(Lcom/jme3/animation/Skeleton;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/jme3/animation/Bone;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/animation/Bone;",
            "Ljava/util/List<",
            "Lcom/jme3/animation/Bone;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getChildren()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Bone;

    invoke-static {v0, p1}, Lif/r;->a(Lcom/jme3/animation/Bone;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Lcom/jme3/anim/Joint;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/anim/Joint;",
            "Ljava/util/List<",
            "Lcom/jme3/anim/Joint;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jme3/anim/Joint;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/Joint;

    invoke-static {v0, p1}, Lif/r;->b(Lcom/jme3/anim/Joint;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(Lcom/jme3/anim/Joint;)V
    .locals 2

    :try_start_0
    const-class v0, Lcom/jme3/anim/Joint;

    const-string v1, "attachedNode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static d(Lcom/jme3/animation/Bone;)V
    .locals 2

    :try_start_0
    const-class v0, Lcom/jme3/animation/Bone;

    const-string v1, "attachNode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static e(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Transform;

    invoke-direct {p1}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getBindPosition()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getBindRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Transform;->setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;

    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getBindScale()Lcom/jme3/math/Vector3f;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lif/r;->b:Lcom/jme3/math/Vector3f;

    :cond_1
    invoke-virtual {p1, p0}, Lcom/jme3/math/Transform;->setScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    return-object p1
.end method

.method public static f(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Transform;

    invoke-direct {p1}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getLocalPosition()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getLocalRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Transform;->setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;

    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getLocalScale()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/jme3/math/Transform;->setScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    return-object p1
.end method

.method public static g(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Transform;

    invoke-direct {p1}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getModelSpacePosition()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getModelSpaceRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Transform;->setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;

    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getModelSpaceScale()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/jme3/math/Transform;->setScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    return-object p1
.end method

.method public static h(Lcom/jme3/animation/Skeleton;)I
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/animation/Bone;->getChildren()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static i(Lcom/jme3/animation/Skeleton;)I
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/animation/Skeleton;->getRoots()[Lcom/jme3/animation/Bone;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public static j(Lcom/jme3/anim/Armature;)I
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/anim/Armature;->getRoots()[Lcom/jme3/anim/Joint;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public static k(IILcom/jme3/animation/Skeleton;)Z
    .locals 1

    const-string v0, "bone index"

    invoke-static {p0, v0}, Lif/E;->q(ILjava/lang/String;)Z

    const-string v0, "ancestor index"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    invoke-virtual {p2, p0}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object p0

    invoke-virtual {p2, p1}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object p1

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getParent()Lcom/jme3/animation/Bone;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Lcom/jme3/scene/Spatial;Ljava/lang/String;)Lcom/jme3/animation/Bone;
    .locals 3

    const-string v0, "spatial"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "bone name"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getNumControls()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->getControl(I)Lcom/jme3/scene/control/Control;

    move-result-object v2

    invoke-static {v2}, Lif/n;->e(Lcom/jme3/scene/control/Control;)Lcom/jme3/animation/Skeleton;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/jme3/animation/Skeleton;->getBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static m(Lcom/jme3/scene/Spatial;)Lcom/jme3/animation/Skeleton;
    .locals 2

    const-class v0, Lcom/jme3/animation/AnimControl;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/AnimControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/animation/AnimControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-class v1, Lcom/jme3/animation/SkeletonControl;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object p0

    check-cast p0, Lcom/jme3/animation/SkeletonControl;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/animation/SkeletonControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static n(Lcom/jme3/anim/Joint;)Lcom/jme3/scene/Node;
    .locals 2

    :try_start_0
    const-class v0, Lcom/jme3/anim/Joint;

    const-string v1, "attachedNode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jme3/scene/Node;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static o(Lcom/jme3/animation/Bone;)Lcom/jme3/scene/Node;
    .locals 2

    :try_start_0
    const-class v0, Lcom/jme3/animation/Bone;

    const-string v1, "attachNode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jme3/scene/Node;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static p(Lcom/jme3/anim/Joint;)Lcom/jme3/scene/Geometry;
    .locals 2

    :try_start_0
    const-class v0, Lcom/jme3/anim/Joint;

    const-string v1, "targetGeometry"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jme3/scene/Geometry;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static q(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/util/List<",
            "Lcom/jme3/anim/Armature;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/anim/Armature;",
            ">;"
        }
    .end annotation

    const-string v0, "subtree"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getNumControls()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->getControl(I)Lcom/jme3/scene/control/Control;

    move-result-object v2

    instance-of v3, v2, Lcom/jme3/anim/SkinningControl;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/jme3/anim/SkinningControl;

    invoke-virtual {v2}, Lcom/jme3/anim/SkinningControl;->getArmature()Lcom/jme3/anim/Armature;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1}, Lif/r;->q(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public static r(Lcom/jme3/animation/Skeleton;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/animation/Skeleton;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v0

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static s(Lcom/jme3/scene/Spatial;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getNumControls()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Spatial;->getControl(I)Lcom/jme3/scene/control/Control;

    move-result-object v3

    invoke-static {v3}, Lif/n;->e(Lcom/jme3/scene/control/Control;)Lcom/jme3/animation/Skeleton;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3, v0}, Lif/r;->r(Lcom/jme3/animation/Skeleton;Ljava/util/List;)Ljava/util/List;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static t(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/util/List<",
            "Lcom/jme3/animation/Skeleton;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/animation/Skeleton;",
            ">;"
        }
    .end annotation

    const-string v0, "subtree"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getNumControls()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->getControl(I)Lcom/jme3/scene/control/Control;

    move-result-object v2

    invoke-static {v2}, Lif/n;->e(Lcom/jme3/scene/control/Control;)Lcom/jme3/animation/Skeleton;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1}, Lif/r;->t(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public static u(Lcom/jme3/animation/Skeleton;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/animation/Skeleton;",
            "Ljava/util/Map<",
            "Lcom/jme3/animation/Bone;",
            "Lcom/jme3/scene/Spatial;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/jme3/animation/Bone;",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation

    const-string v0, "skeleton"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v2

    invoke-static {v2}, Lif/r;->o(Lcom/jme3/animation/Bone;)Lcom/jme3/scene/Node;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "bone "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public static v(Lcom/jme3/scene/Spatial;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/util/Map<",
            "Lcom/jme3/animation/Bone;",
            "Lcom/jme3/scene/Spatial;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/jme3/animation/Bone;",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation

    const-string v0, "subtree"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    :cond_0
    const-class v0, Lcom/jme3/animation/SkeletonControl;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lif/s;->A(Lcom/jme3/scene/Spatial;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/SkeletonControl;

    invoke-virtual {v0}, Lcom/jme3/animation/SkeletonControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v0

    invoke-static {v0, p1}, Lif/r;->u(Lcom/jme3/animation/Skeleton;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static w(Lcom/jme3/animation/Skeleton;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/animation/Skeleton;",
            ")",
            "Ljava/util/List<",
            "Lcom/jme3/animation/Bone;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/jme3/animation/Skeleton;->getRoots()[Lcom/jme3/animation/Bone;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3, v1}, Lif/r;->a(Lcom/jme3/animation/Bone;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static x(Lcom/jme3/anim/Armature;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/anim/Armature;",
            ")",
            "Ljava/util/List<",
            "Lcom/jme3/anim/Joint;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/anim/Armature;->getJointCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/jme3/anim/Armature;->getRoots()[Lcom/jme3/anim/Joint;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3, v1}, Lif/r;->b(Lcom/jme3/anim/Joint;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static y(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->hasUserControl()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/jme3/animation/Bone;->setUserControl(Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/animation/Bone;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/animation/Bone;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/animation/Bone;->setLocalScale(Lcom/jme3/math/Vector3f;)V

    if-nez v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jme3/animation/Bone;->setUserControl(Z)V

    :cond_1
    return-void
.end method

.method public static z(Lcom/jme3/animation/Bone;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/jme3/animation/Bone;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :try_start_1
    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p0}, Lif/r;->o(Lcom/jme3/animation/Bone;)Lcom/jme3/scene/Node;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_attachnode"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setName(Ljava/lang/String;)V

    :cond_0
    return v2

    :catch_0
    return v0
.end method
