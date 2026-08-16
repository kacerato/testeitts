.class public interface abstract Lcom/ardor3d/math/type/ReadOnlyTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract applyForward(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
.end method

.method public abstract applyForward(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
.end method

.method public abstract applyForwardVector(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
.end method

.method public abstract applyForwardVector(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
.end method

.method public abstract applyInverse(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
.end method

.method public abstract applyInverse(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
.end method

.method public abstract applyInverseVector(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
.end method

.method public abstract applyInverseVector(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
.end method

.method public abstract getGLApplyMatrix(Ljava/nio/DoubleBuffer;)V
.end method

.method public abstract getGLApplyMatrix(Ljava/nio/FloatBuffer;)V
.end method

.method public abstract getHomogeneousMatrix(Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;
.end method

.method public abstract getMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix3;
.end method

.method public abstract getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;
.end method

.method public abstract getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;
.end method

.method public abstract invert(Lcom/ardor3d/math/Transform;)Lcom/ardor3d/math/Transform;
.end method

.method public abstract isIdentity()Z
.end method

.method public abstract isRotationMatrix()Z
.end method

.method public abstract isUniformScale()Z
.end method

.method public abstract multiply(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/math/Transform;)Lcom/ardor3d/math/Transform;
.end method
