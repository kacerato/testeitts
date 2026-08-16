.class public interface abstract Lcom/ardor3d/math/type/ReadOnlyQuaternion;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract add(Lcom/ardor3d/math/type/ReadOnlyQuaternion;Lcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;
.end method

.method public abstract apply(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
.end method

.method public abstract conjugate(Lcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;
.end method

.method public abstract dot(DDDD)D
.end method

.method public abstract dot(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)D
.end method

.method public abstract getRotationColumn(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
.end method

.method public abstract getW()D
.end method

.method public abstract getWf()F
.end method

.method public abstract getX()D
.end method

.method public abstract getXf()F
.end method

.method public abstract getY()D
.end method

.method public abstract getYf()F
.end method

.method public abstract getZ()D
.end method

.method public abstract getZf()F
.end method

.method public abstract isIdentity()Z
.end method

.method public abstract magnitude()D
.end method

.method public abstract magnitudeSquared()D
.end method

.method public abstract multiply(DLcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;
.end method

.method public abstract multiply(Lcom/ardor3d/math/type/ReadOnlyQuaternion;Lcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;
.end method

.method public abstract normalize(Lcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;
.end method

.method public abstract slerp(Lcom/ardor3d/math/type/ReadOnlyQuaternion;DLcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;
.end method

.method public abstract subtract(Lcom/ardor3d/math/type/ReadOnlyQuaternion;Lcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;
.end method

.method public abstract toAngleAxis(Lcom/ardor3d/math/Vector3;)D
.end method

.method public abstract toArray([D)[D
.end method

.method public abstract toAxes([Lcom/ardor3d/math/Vector3;)V
.end method

.method public abstract toEulerAngles([D)[D
.end method

.method public abstract toRotationMatrix(Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
.end method

.method public abstract toRotationMatrix(Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;
.end method
