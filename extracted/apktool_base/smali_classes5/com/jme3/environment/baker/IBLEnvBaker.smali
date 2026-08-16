.class public interface abstract Lcom/jme3/environment/baker/IBLEnvBaker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/environment/baker/EnvBaker;


# virtual methods
.method public abstract bakeIrradiance()V
.end method

.method public abstract bakeSpecularIBL()V
.end method

.method public abstract genBRTF()Lcom/jme3/texture/Texture2D;
.end method

.method public abstract getIrradiance()Lcom/jme3/texture/TextureCubeMap;
.end method

.method public abstract getSpecularIBL()Lcom/jme3/texture/TextureCubeMap;
.end method
