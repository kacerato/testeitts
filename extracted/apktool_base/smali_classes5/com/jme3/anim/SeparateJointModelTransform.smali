.class public Lcom/jme3/anim/SeparateJointModelTransform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/anim/util/JointModelTransform;


# instance fields
.field private final modelTransform:Lcom/jme3/math/Transform;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/SeparateJointModelTransform;->modelTransform:Lcom/jme3/math/Transform;

    return-void
.end method


# virtual methods
.method public applyBindPose(Lcom/jme3/math/Transform;Lcom/jme3/math/Matrix4f;Lcom/jme3/anim/Joint;)V
    .locals 0

    invoke-virtual {p2}, Lcom/jme3/math/Matrix4f;->invert()Lcom/jme3/math/Matrix4f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/math/Transform;->fromTransformMatrix(Lcom/jme3/math/Matrix4f;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/math/Transform;->invert()Lcom/jme3/math/Transform;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/math/Transform;->combineWithParent(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    :cond_0
    return-void
.end method

.method public getModelTransform()Lcom/jme3/math/Transform;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/SeparateJointModelTransform;->modelTransform:Lcom/jme3/math/Transform;

    return-object v0
.end method

.method public getOffsetTransform(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/SeparateJointModelTransform;->modelTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->toTransformMatrix(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public updateModelTransform(Lcom/jme3/math/Transform;Lcom/jme3/anim/Joint;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/SeparateJointModelTransform;->modelTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/jme3/anim/SeparateJointModelTransform;->modelTransform:Lcom/jme3/math/Transform;

    invoke-virtual {p2}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/math/Transform;->combineWithParent(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    :cond_0
    return-void
.end method
