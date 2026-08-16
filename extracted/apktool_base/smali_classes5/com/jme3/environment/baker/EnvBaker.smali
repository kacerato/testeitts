.class public interface abstract Lcom/jme3/environment/baker/EnvBaker;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract bakeEnvironment(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;FFLjava/util/function/Predicate;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            "Lcom/jme3/math/Vector3f;",
            "FF",
            "Ljava/util/function/Predicate<",
            "Lcom/jme3/scene/Geometry;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clean()V
.end method

.method public abstract getEnvMap()Lcom/jme3/texture/TextureCubeMap;
.end method

.method public abstract isTexturePulling()Z
.end method

.method public abstract setTexturePulling(Z)V
.end method
