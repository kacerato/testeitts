.class public Lcom/jme3/shader/Glsl300ShaderGenerator;
.super Lcom/jme3/shader/Glsl150ShaderGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/jme3/asset/AssetManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/shader/Glsl150ShaderGenerator;-><init>(Lcom/jme3/asset/AssetManager;)V

    return-void
.end method


# virtual methods
.method public getLanguageAndVersion(Lcom/jme3/shader/Shader$ShaderType;)Ljava/lang/String;
    .locals 0

    const-string p1, "GLSL300"

    return-object p1
.end method
