.class public interface abstract Lcom/jme3/environment/baker/IBLEnvBakerLight;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/environment/baker/EnvBaker;


# virtual methods
.method public abstract bakeSpecularIBL()V
.end method

.method public abstract bakeSphericalHarmonicsCoefficients()V
.end method

.method public abstract getSpecularIBL()Lcom/jme3/texture/TextureCubeMap;
.end method

.method public abstract getSphericalHarmonicsCoefficients()[Lcom/jme3/math/Vector3f;
.end method
