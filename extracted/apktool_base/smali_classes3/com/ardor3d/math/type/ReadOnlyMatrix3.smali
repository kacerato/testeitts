.class public interface abstract Lcom/ardor3d/math/type/ReadOnlyMatrix3;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract add(Lcom/ardor3d/math/type/ReadOnlyMatrix3;Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
.end method

.method public abstract adjugate(Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
.end method

.method public abstract applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
.end method

.method public abstract applyPre(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
.end method

.method public abstract determinant()D
.end method

.method public abstract getColumn(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
.end method

.method public abstract getRow(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
.end method

.method public abstract getValue(II)D
.end method

.method public abstract getValuef(II)F
.end method

.method public abstract invert(Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
.end method

.method public abstract isIdentity()Z
.end method

.method public abstract multiply(Lcom/ardor3d/math/type/ReadOnlyMatrix3;Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
.end method

.method public abstract multiplyDiagonalPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
.end method

.method public abstract multiplyDiagonalPre(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
.end method

.method public abstract scale(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
.end method

.method public abstract toAngles([D)[D
.end method

.method public abstract toArray([D)[D
.end method

.method public abstract toArray([DZ)[D
.end method

.method public abstract toDoubleBuffer(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
.end method

.method public abstract toDoubleBuffer(Ljava/nio/DoubleBuffer;Z)Ljava/nio/DoubleBuffer;
.end method

.method public abstract toFloatBuffer(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
.end method

.method public abstract toFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;
.end method

.method public abstract transpose(Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
.end method
