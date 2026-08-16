.class public interface abstract Lcom/jme3/light/ProbeArea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract getRadius()F
.end method

.method public abstract getUniformMatrix()Lcom/jme3/math/Matrix4f;
.end method

.method public abstract intersectsBox(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/util/TempVars;)Z
.end method

.method public abstract intersectsFrustum(Lcom/jme3/renderer/Camera;Lcom/jme3/util/TempVars;)Z
.end method

.method public abstract intersectsSphere(Lcom/jme3/bounding/BoundingSphere;Lcom/jme3/util/TempVars;)Z
.end method

.method public abstract setCenter(Lcom/jme3/math/Vector3f;)V
.end method

.method public abstract setRadius(F)V
.end method
