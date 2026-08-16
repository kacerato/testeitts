.class public interface abstract Lcom/jme3/material/logic/TechniqueDefLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract makeCurrent(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/RenderManager;Ljava/util/EnumSet;Lcom/jme3/light/LightList;Lcom/jme3/shader/DefineList;)Lcom/jme3/shader/Shader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/asset/AssetManager;",
            "Lcom/jme3/renderer/RenderManager;",
            "Ljava/util/EnumSet<",
            "Lcom/jme3/renderer/Caps;",
            ">;",
            "Lcom/jme3/light/LightList;",
            "Lcom/jme3/shader/DefineList;",
            ")",
            "Lcom/jme3/shader/Shader;"
        }
    .end annotation
.end method

.method public abstract render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;Lcom/jme3/material/Material$BindUnits;)V
.end method
