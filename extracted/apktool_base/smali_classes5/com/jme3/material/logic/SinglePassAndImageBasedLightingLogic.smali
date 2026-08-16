.class public final Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;
.super Lcom/jme3/material/logic/DefaultTechniqueDefLogic;
.source "SourceFile"


# static fields
.field private static final ADDITIVE_LIGHT:Lcom/jme3/material/RenderState;

.field private static final DEFINE_NB_LIGHTS:Ljava/lang/String; = "NB_LIGHTS"

.field private static final DEFINE_NB_PROBES:Ljava/lang/String; = "NB_PROBES"

.field private static final DEFINE_SINGLE_PASS_LIGHTING:Ljava/lang/String; = "SINGLE_PASS_LIGHTING"

.field private static final DEFINE_USE_AMBIENT_LIGHT:Ljava/lang/String; = "USE_AMBIENT_LIGHT"


# instance fields
.field private final ambientLightColor:Lcom/jme3/math/ColorRGBA;

.field private final lightProbes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/light/LightProbe;",
            ">;"
        }
    .end annotation
.end field

.field private final nbLightsDefineId:I

.field private final nbProbesDefineId:I

.field private final singlePassLightingDefineId:I

.field private useAmbientLight:Z

.field private final useAmbientLightDefineId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jme3/material/RenderState;

    invoke-direct {v0}, Lcom/jme3/material/RenderState;-><init>()V

    sput-object v0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->ADDITIVE_LIGHT:Lcom/jme3/material/RenderState;

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->AlphaAdditive:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setDepthWrite(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/material/TechniqueDef;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;-><init>(Lcom/jme3/material/TechniqueDef;)V

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->lightProbes:Ljava/util/List;

    sget-object v0, Lcom/jme3/shader/VarType;->Boolean:Lcom/jme3/shader/VarType;

    const-string v1, "SINGLE_PASS_LIGHTING"

    invoke-virtual {p1, v1, v0}, Lcom/jme3/material/TechniqueDef;->addShaderUnmappedDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;)I

    move-result v1

    iput v1, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->singlePassLightingDefineId:I

    sget-object v1, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    const-string v2, "NB_LIGHTS"

    invoke-virtual {p1, v2, v1}, Lcom/jme3/material/TechniqueDef;->addShaderUnmappedDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;)I

    move-result v2

    iput v2, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->nbLightsDefineId:I

    const-string v2, "NB_PROBES"

    invoke-virtual {p1, v2, v1}, Lcom/jme3/material/TechniqueDef;->addShaderUnmappedDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;)I

    move-result v1

    iput v1, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->nbProbesDefineId:I

    const-string v1, "USE_AMBIENT_LIGHT"

    invoke-virtual {p1, v1, v0}, Lcom/jme3/material/TechniqueDef;->addShaderUnmappedDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;)I

    move-result p1

    iput p1, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->useAmbientLightDefineId:I

    return-void
.end method

.method private setProbeData(Lcom/jme3/renderer/RenderManager;ILcom/jme3/shader/Uniform;Lcom/jme3/shader/Uniform;Lcom/jme3/shader/Uniform;Lcom/jme3/light/LightProbe;)I
    .locals 2

    sget-object v0, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    invoke-virtual {p6}, Lcom/jme3/light/LightProbe;->getUniformMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    sget-object p3, Lcom/jme3/shader/VarType;->Vector3Array:Lcom/jme3/shader/VarType;

    invoke-virtual {p6}, Lcom/jme3/light/LightProbe;->getShCoeffs()[Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    add-int/lit8 p3, p2, 0x1

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object p1

    invoke-virtual {p6}, Lcom/jme3/light/LightProbe;->getPrefilteredEnvMap()Lcom/jme3/texture/TextureCubeMap;

    move-result-object p4

    :try_start_0
    invoke-interface {p1, p2, p4}, Lcom/jme3/renderer/Renderer;->setTexture(ILcom/jme3/texture/Texture;)V
    :try_end_0
    .catch Lcom/jme3/renderer/TextureUnitException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    return p3

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t assign texture unit for LightProbe. lastTexUnit="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public extractIndirectLights(Lcom/jme3/light/LightList;Z)V
    .locals 6

    iget-object v0, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->useAmbientLight:Z

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/light/LightList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/jme3/light/LightList;->get(I)Lcom/jme3/light/Light;

    move-result-object v1

    instance-of v3, v1, Lcom/jme3/light/AmbientLight;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->useAmbientLight:Z

    iget-object v3, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v1}, Lcom/jme3/light/Light;->getColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/jme3/math/ColorRGBA;->addLocal(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    if-eqz p2, :cond_0

    invoke-virtual {p1, v1}, Lcom/jme3/light/LightList;->remove(Lcom/jme3/light/Light;)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    instance-of v3, v1, Lcom/jme3/light/LightProbe;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->lightProbes:Ljava/util/List;

    move-object v5, v1

    check-cast v5, Lcom/jme3/light/LightProbe;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    invoke-virtual {p1, v1}, Lcom/jme3/light/LightList;->remove(Lcom/jme3/light/Light;)V

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    iput v2, p1, Lcom/jme3/math/ColorRGBA;->a:F

    return-void
.end method

.method public makeCurrent(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/RenderManager;Ljava/util/EnumSet;Lcom/jme3/light/LightList;Lcom/jme3/shader/DefineList;)Lcom/jme3/shader/Shader;
    .locals 2
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

    iget v0, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->nbLightsDefineId:I

    invoke-virtual {p2}, Lcom/jme3/renderer/RenderManager;->getSinglePassLightBatchSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {p5, v0, v1}, Lcom/jme3/shader/DefineList;->set(II)V

    iget v0, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->singlePassLightingDefineId:I

    const/4 v1, 0x1

    invoke-virtual {p5, v0, v1}, Lcom/jme3/shader/DefineList;->set(IZ)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->lightProbes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->extractIndirectLights(Lcom/jme3/light/LightList;Z)V

    iget v0, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->nbProbesDefineId:I

    iget-object v1, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->lightProbes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p5, v0, v1}, Lcom/jme3/shader/DefineList;->set(II)V

    iget v0, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->useAmbientLightDefineId:I

    iget-boolean v1, p0, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->useAmbientLight:Z

    invoke-virtual {p5, v0, v1}, Lcom/jme3/shader/DefineList;->set(IZ)V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;->makeCurrent(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/RenderManager;Ljava/util/EnumSet;Lcom/jme3/light/LightList;Lcom/jme3/shader/DefineList;)Lcom/jme3/shader/Shader;

    move-result-object p1

    return-object p1
.end method

.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;Lcom/jme3/material/Material$BindUnits;)V
    .locals 10

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getSinglePassLightBatchSize()I

    move-result v9

    invoke-virtual {p4}, Lcom/jme3/light/LightList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v7, 0x0

    iget v8, p5, Lcom/jme3/material/Material$BindUnits;->textureUnit:I

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, v9

    move-object v6, p1

    invoke-virtual/range {v1 .. v8}, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->updateLightListUniforms(Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;ILcom/jme3/renderer/RenderManager;II)I

    invoke-interface {v0, p2}, Lcom/jme3/renderer/Renderer;->setShader(Lcom/jme3/shader/Shader;)V

    invoke-static {v0, p3}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;->renderMeshFromGeometry(Lcom/jme3/renderer/Renderer;Lcom/jme3/scene/Geometry;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v7, v1

    :goto_0
    invoke-virtual {p4}, Lcom/jme3/light/LightList;->size()I

    move-result v1

    if-ge v7, v1, :cond_1

    iget v8, p5, Lcom/jme3/material/Material$BindUnits;->textureUnit:I

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, v9

    move-object v6, p1

    invoke-virtual/range {v1 .. v8}, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->updateLightListUniforms(Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;ILcom/jme3/renderer/RenderManager;II)I

    move-result v7

    invoke-interface {v0, p2}, Lcom/jme3/renderer/Renderer;->setShader(Lcom/jme3/shader/Shader;)V

    invoke-static {v0, p3}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;->renderMeshFromGeometry(Lcom/jme3/renderer/Renderer;Lcom/jme3/scene/Geometry;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateLightListUniforms(Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;ILcom/jme3/renderer/RenderManager;II)I
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    const/4 v9, 0x0

    if-nez p4, :cond_0

    return v9

    :cond_0
    const-string v1, "g_LightData"

    invoke-virtual {v0, v1}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v15

    mul-int/lit8 v14, p4, 0x3

    invoke-virtual {v15, v14}, Lcom/jme3/shader/Uniform;->setVector4Length(I)V

    const-string v1, "g_LightCount"

    invoke-virtual {v0, v1}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v13

    const-string v1, "g_AmbientLightColor"

    invoke-virtual {v0, v1}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v1

    const-string v2, "g_LightProbeData"

    invoke-virtual {v0, v2}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v3

    const-string v2, "g_LightProbeData2"

    invoke-virtual {v0, v2}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v10

    const-string v2, "g_LightProbeData3"

    invoke-virtual {v0, v2}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v11

    const-string v2, "g_ShCoeffs"

    invoke-virtual {v0, v2}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v4

    const-string v2, "g_PrefEnvMap"

    invoke-virtual {v0, v2}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v5

    const-string v2, "g_ShCoeffs2"

    invoke-virtual {v0, v2}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v12

    const-string v2, "g_PrefEnvMap2"

    invoke-virtual {v0, v2}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v16

    const-string v2, "g_ShCoeffs3"

    invoke-virtual {v0, v2}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v17

    const-string v2, "g_PrefEnvMap3"

    invoke-virtual {v0, v2}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v18

    iget-object v0, v7, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->lightProbes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v6, 0x1

    if-eqz p6, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    sget-object v2, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->ADDITIVE_LIGHT:Lcom/jme3/material/RenderState;

    invoke-interface {v0, v2}, Lcom/jme3/renderer/Renderer;->applyRenderState(Lcom/jme3/material/RenderState;)V

    sget-object v0, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    sget-object v2, Lcom/jme3/math/ColorRGBA;->Black:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v1, v0, v2}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v8, v6}, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->extractIndirectLights(Lcom/jme3/light/LightList;Z)V

    sget-object v0, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    iget-object v2, v7, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v1, v0, v2}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, v7, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->lightProbes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_3

    iget-object v0, v7, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->lightProbes:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/jme3/light/LightProbe;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move v9, v2

    move/from16 v2, p7

    move v9, v6

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->setProbeData(Lcom/jme3/renderer/RenderManager;ILcom/jme3/shader/Uniform;Lcom/jme3/shader/Uniform;Lcom/jme3/shader/Uniform;Lcom/jme3/light/LightProbe;)I

    move-result v2

    iget-object v0, v7, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->lightProbes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v9, :cond_2

    iget-object v0, v7, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->lightProbes:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/jme3/light/LightProbe;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v3, v10

    move-object v4, v12

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->setProbeData(Lcom/jme3/renderer/RenderManager;ILcom/jme3/shader/Uniform;Lcom/jme3/shader/Uniform;Lcom/jme3/shader/Uniform;Lcom/jme3/light/LightProbe;)I

    move-result v0

    move v2, v0

    :cond_2
    iget-object v0, v7, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->lightProbes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    iget-object v0, v7, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->lightProbes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/jme3/light/LightProbe;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v3, v11

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v6}, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;->setProbeData(Lcom/jme3/renderer/RenderManager;ILcom/jme3/shader/Uniform;Lcom/jme3/shader/Uniform;Lcom/jme3/shader/Uniform;Lcom/jme3/light/LightProbe;)I

    goto :goto_1

    :cond_3
    move v9, v6

    sget-object v0, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    sget-object v1, Lcom/jme3/light/LightProbe;->FALLBACK_MATRIX:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v0, v1}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect4f1:Lcom/jme3/math/Vector4f;

    add-int v2, p4, p6

    move v3, v2

    const/4 v4, 0x0

    move/from16 v2, p6

    :goto_2
    if-ge v2, v3, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/jme3/light/LightList;->size()I

    move-result v5

    if-ge v2, v5, :cond_a

    invoke-virtual {v8, v2}, Lcom/jme3/light/LightList;->get(I)Lcom/jme3/light/Light;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v6

    sget-object v10, Lcom/jme3/light/Light$Type;->Ambient:Lcom/jme3/light/Light$Type;

    if-ne v6, v10, :cond_5

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v20, v13

    move v6, v14

    move-object/from16 v16, v15

    const/16 v19, 0x2

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v5}, Lcom/jme3/light/Light;->getColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v6

    invoke-virtual {v5}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v10

    sget-object v11, Lcom/jme3/light/Light$Type;->Probe:Lcom/jme3/light/Light$Type;

    if-eq v10, v11, :cond_6

    invoke-virtual {v6}, Lcom/jme3/math/ColorRGBA;->getRed()F

    move-result v11

    invoke-virtual {v6}, Lcom/jme3/math/ColorRGBA;->getGreen()F

    move-result v12

    invoke-virtual {v6}, Lcom/jme3/math/ColorRGBA;->getBlue()F

    move-result v6

    invoke-virtual {v5}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jme3/light/Light$Type;->getId()I

    move-result v10

    int-to-float v10, v10

    move/from16 v16, v10

    move-object v10, v15

    move-object/from16 v20, v13

    move v13, v6

    move v6, v14

    move/from16 v14, v16

    move-object/from16 v16, v15

    move v15, v4

    invoke-virtual/range {v10 .. v15}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v20, v13

    move v6, v14

    move-object/from16 v16, v15

    :goto_3
    sget-object v10, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic$1;->$SwitchMap$com$jme3$light$Light$Type:[I

    invoke-virtual {v5}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const/4 v15, 0x0

    if-eq v10, v9, :cond_9

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v14, 0x2

    if-eq v10, v14, :cond_8

    const/4 v12, 0x3

    if-ne v10, v12, :cond_7

    check-cast v5, Lcom/jme3/light/SpotLight;

    invoke-virtual {v5}, Lcom/jme3/light/SpotLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v10

    invoke-virtual {v5}, Lcom/jme3/light/SpotLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v17

    invoke-virtual {v5}, Lcom/jme3/light/SpotLight;->getInvSpotRange()F

    move-result v18

    invoke-virtual {v5}, Lcom/jme3/light/SpotLight;->getPackedAngleCos()F

    move-result v5

    invoke-virtual {v10}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v12

    invoke-virtual {v10}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v13

    invoke-virtual {v10}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v10

    invoke-virtual {v1, v12, v13, v10, v11}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector4f;->getX()F

    move-result v11

    invoke-virtual {v1}, Lcom/jme3/math/Vector4f;->getY()F

    move-result v12

    invoke-virtual {v1}, Lcom/jme3/math/Vector4f;->getZ()F

    move-result v13

    move-object/from16 v10, v16

    move/from16 v19, v14

    move/from16 v14, v18

    move v9, v15

    move v15, v4

    invoke-virtual/range {v10 .. v15}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    add-int/lit8 v15, v4, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v10

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v11

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v12

    invoke-virtual {v1, v10, v11, v12, v9}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector4f;->getX()F

    move-result v11

    invoke-virtual {v1}, Lcom/jme3/math/Vector4f;->getY()F

    move-result v12

    invoke-virtual {v1}, Lcom/jme3/math/Vector4f;->getZ()F

    move-result v13

    move-object/from16 v10, v16

    move v14, v5

    invoke-virtual/range {v10 .. v15}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    :goto_4
    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_5

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type of light: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move/from16 v19, v14

    check-cast v5, Lcom/jme3/light/PointLight;

    invoke-virtual {v5}, Lcom/jme3/light/PointLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v5}, Lcom/jme3/light/PointLight;->getInvRadius()F

    move-result v14

    invoke-virtual {v9}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v5

    invoke-virtual {v9}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v10

    invoke-virtual {v9}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v9

    invoke-virtual {v1, v5, v10, v9, v11}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector4f;->getX()F

    move-result v11

    invoke-virtual {v1}, Lcom/jme3/math/Vector4f;->getY()F

    move-result v12

    invoke-virtual {v1}, Lcom/jme3/math/Vector4f;->getZ()F

    move-result v13

    move-object/from16 v10, v16

    move v15, v4

    invoke-virtual/range {v10 .. v15}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    add-int/lit8 v15, v4, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    goto :goto_4

    :cond_9
    move v9, v15

    const/16 v19, 0x2

    check-cast v5, Lcom/jme3/light/DirectionalLight;

    invoke-virtual {v5}, Lcom/jme3/light/DirectionalLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v10

    invoke-virtual {v5}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v11

    invoke-virtual {v5}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v5

    invoke-virtual {v1, v10, v11, v5, v9}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector4f;->getX()F

    move-result v11

    invoke-virtual {v1}, Lcom/jme3/math/Vector4f;->getY()F

    move-result v12

    invoke-virtual {v1}, Lcom/jme3/math/Vector4f;->getZ()F

    move-result v13

    const/high16 v14, -0x40800000    # -1.0f

    move-object/from16 v10, v16

    move v15, v4

    invoke-virtual/range {v10 .. v15}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    add-int/lit8 v15, v4, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    goto/16 :goto_4

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move v14, v6

    move-object/from16 v15, v16

    move-object/from16 v13, v20

    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_a
    move-object/from16 v20, v13

    move v6, v14

    move-object/from16 v16, v15

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    sget-object v0, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    div-int/lit8 v1, v4, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-virtual {v3, v0, v1}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    :goto_6
    if-ge v4, v6, :cond_b

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 p1, v16

    move/from16 p2, v3

    move/from16 p3, v5

    move/from16 p4, v0

    move/from16 p5, v1

    move/from16 p6, v4

    invoke-virtual/range {p1 .. p6}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    return v2
.end method
