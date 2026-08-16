.class public Lcom/jme3/anim/MatrixJointModelTransform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/anim/util/JointModelTransform;


# instance fields
.field private final modelTransform:Lcom/jme3/math/Transform;

.field private final modelTransformMatrix:Lcom/jme3/math/Matrix4f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/MatrixJointModelTransform;->modelTransformMatrix:Lcom/jme3/math/Matrix4f;

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/MatrixJointModelTransform;->modelTransform:Lcom/jme3/math/Transform;

    return-void
.end method


# virtual methods
.method public applyBindPose(Lcom/jme3/math/Transform;Lcom/jme3/math/Matrix4f;Lcom/jme3/anim/Joint;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/MatrixJointModelTransform;->modelTransformMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/jme3/anim/Joint;->getJointModelTransform()Lcom/jme3/anim/util/JointModelTransform;

    move-result-object p2

    check-cast p2, Lcom/jme3/anim/MatrixJointModelTransform;

    invoke-virtual {p2}, Lcom/jme3/anim/MatrixJointModelTransform;->getModelTransformMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/math/Matrix4f;->invert()Lcom/jme3/math/Matrix4f;

    move-result-object p2

    iget-object p3, p0, Lcom/jme3/anim/MatrixJointModelTransform;->modelTransformMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p2, p3, p3}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    :cond_0
    iget-object p2, p0, Lcom/jme3/anim/MatrixJointModelTransform;->modelTransformMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Transform;->fromTransformMatrix(Lcom/jme3/math/Matrix4f;)V

    return-void
.end method

.method public getModelTransform()Lcom/jme3/math/Transform;
    .locals 2

    iget-object v0, p0, Lcom/jme3/anim/MatrixJointModelTransform;->modelTransform:Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/anim/MatrixJointModelTransform;->modelTransformMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->fromTransformMatrix(Lcom/jme3/math/Matrix4f;)V

    iget-object v0, p0, Lcom/jme3/anim/MatrixJointModelTransform;->modelTransform:Lcom/jme3/math/Transform;

    return-object v0
.end method

.method public getModelTransformMatrix()Lcom/jme3/math/Matrix4f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/MatrixJointModelTransform;->modelTransformMatrix:Lcom/jme3/math/Matrix4f;

    return-object v0
.end method

.method public getOffsetTransform(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/MatrixJointModelTransform;->modelTransformMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, p2, p1}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public updateModelTransform(Lcom/jme3/math/Transform;Lcom/jme3/anim/Joint;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/MatrixJointModelTransform;->modelTransformMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Transform;->toTransformMatrix(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/jme3/anim/Joint;->getJointModelTransform()Lcom/jme3/anim/util/JointModelTransform;

    move-result-object p1

    check-cast p1, Lcom/jme3/anim/MatrixJointModelTransform;

    invoke-virtual {p1}, Lcom/jme3/anim/MatrixJointModelTransform;->getModelTransformMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/anim/MatrixJointModelTransform;->modelTransformMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1, p2, p2}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    :cond_0
    return-void
.end method
