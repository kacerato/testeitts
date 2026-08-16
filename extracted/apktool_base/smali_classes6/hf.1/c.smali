.class public Lhf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static b:Lcom/jme3/asset/AssetManager;

.field public static final c:[Lhf/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lhf/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lhf/c;->a:Ljava/util/logging/Logger;

    new-instance v0, Lhf/a;

    invoke-direct {v0}, Lhf/a;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lhf/d;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lhf/c;->c:[Lhf/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 10

    sget-object v0, Lhf/c;->b:Lcom/jme3/asset/AssetManager;

    invoke-interface {v0, p0}, Lcom/jme3/asset/AssetManager;->loadAsset(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jme3/material/MaterialDef;

    const-class v0, Lcom/jme3/renderer/Caps;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL100:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string v1, "Default"

    invoke-virtual {p0, v1}, Lcom/jme3/material/MaterialDef;->getTechniqueDefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v1}, Lcom/jme3/material/TechniqueDef;->createDefineList()Lcom/jme3/shader/DefineList;

    move-result-object v2

    sget-object v3, Lhf/c;->b:Lcom/jme3/asset/AssetManager;

    invoke-virtual {v1, v3, v0, v2}, Lcom/jme3/material/TechniqueDef;->getShader(Lcom/jme3/asset/AssetManager;Ljava/util/EnumSet;Lcom/jme3/shader/DefineList;)Lcom/jme3/shader/Shader;

    move-result-object v1

    sget-object v2, Lhf/c;->c:[Lhf/d;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5, v1, v6}, Lhf/d;->b(Lcom/jme3/shader/Shader;Ljava/lang/StringBuilder;)V

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==== Validator: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lhf/d;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lhf/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ===="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static b()V
    .locals 8

    invoke-static {}, Lcom/jme3/system/JmeSystem;->newAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v0

    sput-object v0, Lhf/c;->b:Lcom/jme3/asset/AssetManager;

    const-string v1, "."

    const-class v2, Lcom/jme3/asset/plugins/FileLocator;

    invoke-interface {v0, v1, v2}, Lcom/jme3/asset/AssetManager;->registerLocator(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lhf/c;->b:Lcom/jme3/asset/AssetManager;

    const-string v1, "/"

    const-class v2, Lcom/jme3/asset/plugins/ClasspathLocator;

    invoke-interface {v0, v1, v2}, Lcom/jme3/asset/AssetManager;->registerLocator(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lhf/c;->b:Lcom/jme3/asset/AssetManager;

    const-string v1, "j3m"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/jme3/material/plugins/J3MLoader;

    invoke-interface {v0, v2, v1}, Lcom/jme3/asset/AssetManager;->registerLoader(Ljava/lang/Class;[Ljava/lang/String;)V

    sget-object v0, Lhf/c;->b:Lcom/jme3/asset/AssetManager;

    const-string v1, "j3md"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/jme3/asset/AssetManager;->registerLoader(Ljava/lang/Class;[Ljava/lang/String;)V

    sget-object v0, Lhf/c;->b:Lcom/jme3/asset/AssetManager;

    const-string v6, "glsllib"

    const-string v7, "glsl"

    const-string v1, "vert"

    const-string v2, "frag"

    const-string v3, "geom"

    const-string v4, "tsctrl"

    const-string v5, "tseval"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/jme3/shader/plugins/GLSLLoader;

    invoke-interface {v0, v2, v1}, Lcom/jme3/asset/AssetManager;->registerLoader(Ljava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method

.method public static c([Ljava/lang/String;)V
    .locals 1

    const-class p0, Lcom/jme3/material/MaterialDef;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p0

    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    invoke-static {}, Lhf/c;->b()V

    const-string p0, "Common/MatDefs/Blur/HGaussianBlur.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Blur/RadialBlur.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Blur/VGaussianBlur.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Gui/Gui.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Hdr/LogLum.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Hdr/ToneMap.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Light/Lighting.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Misc/ColoredTextured.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Misc/Particle.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Misc/ShowNormals.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Misc/Sky.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Post/BloomExtract.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Post/BloomFinal.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Post/CartoonEdge.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Post/CrossHatch.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Post/DepthOfField.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Post/FXAA.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Post/Fade.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Post/Fog.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Post/GammaCorrection.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Post/LightScattering.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Post/Overlay.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Post/Posterization.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/SSAO/ssao.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/SSAO/ssaoBlur.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Shadow/PostShadow.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Shadow/PostShadowPSSM.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Shadow/PreShadow.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Water/SimpleWater.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    const-string p0, "Common/MatDefs/Water/Water.j3md"

    invoke-static {p0}, Lhf/c;->a(Ljava/lang/String;)V

    return-void
.end method
