.class public final Lif/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x4

.field public static final b:Ljava/util/logging/Logger;

.field public static final synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lif/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lif/g;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/jme3/scene/Spatial;Lcom/jme3/anim/Armature;)Ljava/util/BitSet;
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/anim/Armature;->getJointCount()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    invoke-static {p0, v1}, Lif/g;->d(Lcom/jme3/scene/Spatial;Ljava/util/BitSet;)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_1

    invoke-virtual {v1, p0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p0}, Lcom/jme3/anim/Armature;->getJoint(I)Lcom/jme3/anim/Joint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/anim/Joint;->getParent()Lcom/jme3/anim/Joint;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Lcom/jme3/anim/Armature;->getJointIndex(Lcom/jme3/anim/Joint;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v2}, Lcom/jme3/anim/Joint;->getParent()Lcom/jme3/anim/Joint;

    move-result-object v2

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static b(Lcom/jme3/scene/Spatial;Lcom/jme3/animation/Skeleton;)Ljava/util/BitSet;
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    invoke-static {p0, v1}, Lif/g;->d(Lcom/jme3/scene/Spatial;Ljava/util/BitSet;)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_1

    invoke-virtual {v1, p0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p0}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/animation/Bone;->getParent()Lcom/jme3/animation/Bone;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Lcom/jme3/animation/Skeleton;->getBoneIndex(Lcom/jme3/animation/Bone;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v2}, Lcom/jme3/animation/Bone;->getParent()Lcom/jme3/animation/Bone;

    move-result-object v2

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static c(Lcom/jme3/scene/Mesh;Ljava/util/BitSet;)V
    .locals 10

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const/4 v3, 0x4

    div-int/2addr v2, v3

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v4}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_3

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_2

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v7

    invoke-static {v1}, Ljf/d;->r(Ljava/nio/Buffer;)I

    move-result v8

    if-ge v6, v0, :cond_1

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_1

    invoke-virtual {p1, v8}, Ljava/util/BitSet;->set(I)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static d(Lcom/jme3/scene/Spatial;Ljava/util/BitSet;)V
    .locals 1

    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p0

    invoke-static {p0}, Lif/p;->v(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lif/g;->c(Lcom/jme3/scene/Mesh;Ljava/util/BitSet;)V

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1}, Lif/g;->d(Lcom/jme3/scene/Spatial;Ljava/util/BitSet;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static e(Ljme3utilities/debug/h;Lcom/jme3/anim/SkinningControl;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/scene/control/AbstractControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/anim/SkinningControl;->getArmature()Lcom/jme3/anim/Armature;

    move-result-object p1

    invoke-static {v0, p1}, Lif/g;->a(Lcom/jme3/scene/Spatial;Lcom/jme3/anim/Armature;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/anim/Armature;->getJointCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/jme3/math/ColorRGBA;->BlackNoAlpha:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p0, v1, v2}, Ljme3utilities/debug/h;->m(ILcom/jme3/math/ColorRGBA;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static f(Ljme3utilities/debug/h;Lcom/jme3/animation/SkeletonControl;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/scene/control/AbstractControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/animation/SkeletonControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object p1

    invoke-static {v0, p1}, Lif/g;->b(Lcom/jme3/scene/Spatial;Lcom/jme3/animation/Skeleton;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/jme3/math/ColorRGBA;->BlackNoAlpha:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p0, v1, v2}, Ljme3utilities/debug/h;->m(ILcom/jme3/math/ColorRGBA;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
