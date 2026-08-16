.class public final Lcom/jme3/material/logic/SinglePassLightingLogic;
.super Lcom/jme3/material/logic/DefaultTechniqueDefLogic;
.source "SourceFile"


# static fields
.field private static final ADDITIVE_LIGHT:Lcom/jme3/material/RenderState;

.field private static final DEFINE_NB_LIGHTS:Ljava/lang/String; = "NB_LIGHTS"

.field private static final DEFINE_SINGLE_PASS_LIGHTING:Ljava/lang/String; = "SINGLE_PASS_LIGHTING"


# instance fields
.field private final ambientLightColor:Lcom/jme3/math/ColorRGBA;

.field private final nbLightsDefineId:I

.field private final singlePassLightingDefineId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jme3/material/RenderState;

    invoke-direct {v0}, Lcom/jme3/material/RenderState;-><init>()V

    sput-object v0, Lcom/jme3/material/logic/SinglePassLightingLogic;->ADDITIVE_LIGHT:Lcom/jme3/material/RenderState;

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

    iput-object v0, p0, Lcom/jme3/material/logic/SinglePassLightingLogic;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    const-string v0, "SINGLE_PASS_LIGHTING"

    sget-object v1, Lcom/jme3/shader/VarType;->Boolean:Lcom/jme3/shader/VarType;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/material/TechniqueDef;->addShaderUnmappedDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;)I

    move-result v0

    iput v0, p0, Lcom/jme3/material/logic/SinglePassLightingLogic;->singlePassLightingDefineId:I

    const-string v0, "NB_LIGHTS"

    sget-object v1, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/material/TechniqueDef;->addShaderUnmappedDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;)I

    move-result p1

    iput p1, p0, Lcom/jme3/material/logic/SinglePassLightingLogic;->nbLightsDefineId:I

    return-void
.end method


# virtual methods
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

    iget v0, p0, Lcom/jme3/material/logic/SinglePassLightingLogic;->nbLightsDefineId:I

    invoke-virtual {p2}, Lcom/jme3/renderer/RenderManager;->getSinglePassLightBatchSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {p5, v0, v1}, Lcom/jme3/shader/DefineList;->set(II)V

    iget v0, p0, Lcom/jme3/material/logic/SinglePassLightingLogic;->singlePassLightingDefineId:I

    const/4 v1, 0x1

    invoke-virtual {p5, v0, v1}, Lcom/jme3/shader/DefineList;->set(IZ)V

    invoke-super/range {p0 .. p5}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;->makeCurrent(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/RenderManager;Ljava/util/EnumSet;Lcom/jme3/light/LightList;Lcom/jme3/shader/DefineList;)Lcom/jme3/shader/Shader;

    move-result-object p1

    return-object p1
.end method

.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;Lcom/jme3/material/Material$BindUnits;)V
    .locals 8

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object p5

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getSinglePassLightBatchSize()I

    move-result v7

    invoke-virtual {p4}, Lcom/jme3/light/LightList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, v7

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/jme3/material/logic/SinglePassLightingLogic;->updateLightListUniforms(Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;ILcom/jme3/renderer/RenderManager;I)I

    invoke-interface {p5, p2}, Lcom/jme3/renderer/Renderer;->setShader(Lcom/jme3/shader/Shader;)V

    invoke-static {p5, p3}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;->renderMeshFromGeometry(Lcom/jme3/renderer/Renderer;Lcom/jme3/scene/Geometry;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-virtual {p4}, Lcom/jme3/light/LightList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, v7

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/jme3/material/logic/SinglePassLightingLogic;->updateLightListUniforms(Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;ILcom/jme3/renderer/RenderManager;I)I

    move-result v6

    invoke-interface {p5, p2}, Lcom/jme3/renderer/Renderer;->setShader(Lcom/jme3/shader/Shader;)V

    invoke-static {p5, p3}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;->renderMeshFromGeometry(Lcom/jme3/renderer/Renderer;Lcom/jme3/scene/Geometry;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateLightListUniforms(Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;ILcom/jme3/renderer/RenderManager;I)I
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-nez p4, :cond_0

    return v2

    :cond_0
    const-string v3, "g_LightData"

    invoke-virtual {v0, v3}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v3

    mul-int/lit8 v10, p4, 0x3

    invoke-virtual {v3, v10}, Lcom/jme3/shader/Uniform;->setVector4Length(I)V

    const-string v4, "g_LightCount"

    invoke-virtual {v0, v4}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v11

    const-string v4, "g_AmbientLightColor"

    invoke-virtual {v0, v4}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v0

    const/4 v12, 0x1

    if-eqz p6, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v4

    sget-object v5, Lcom/jme3/material/logic/SinglePassLightingLogic;->ADDITIVE_LIGHT:Lcom/jme3/material/RenderState;

    invoke-interface {v4, v5}, Lcom/jme3/renderer/Renderer;->applyRenderState(Lcom/jme3/material/RenderState;)V

    sget-object v4, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    sget-object v5, Lcom/jme3/math/ColorRGBA;->Black:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v4, v5}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    move-object/from16 v13, p0

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    move-object/from16 v13, p0

    iget-object v5, v13, Lcom/jme3/material/logic/SinglePassLightingLogic;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    invoke-static {v1, v12, v5}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;->getAmbientColor(Lcom/jme3/light/LightList;ZLcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v14, v0, Lcom/jme3/util/TempVars;->vect4f1:Lcom/jme3/math/Vector4f;

    add-int v4, p4, p6

    move v15, v2

    move v9, v4

    move/from16 v2, p6

    :goto_1
    if-ge v2, v9, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/jme3/light/LightList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    invoke-virtual {v1, v2}, Lcom/jme3/light/LightList;->get(I)Lcom/jme3/light/Light;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v4

    sget-object v5, Lcom/jme3/light/Light$Type;->Ambient:Lcom/jme3/light/Light$Type;

    if-eq v4, v5, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v4

    sget-object v5, Lcom/jme3/light/Light$Type;->Probe:Lcom/jme3/light/Light$Type;

    if-ne v4, v5, :cond_3

    :cond_2
    move/from16 v17, v9

    goto/16 :goto_3

    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/jme3/light/Light;->getColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/math/ColorRGBA;->getRed()F

    move-result v5

    invoke-virtual {v4}, Lcom/jme3/math/ColorRGBA;->getGreen()F

    move-result v6

    invoke-virtual {v4}, Lcom/jme3/math/ColorRGBA;->getBlue()F

    move-result v7

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/light/Light$Type;->getId()I

    move-result v4

    int-to-float v8, v4

    move-object v4, v3

    move/from16 v17, v9

    move v9, v15

    invoke-virtual/range {v4 .. v9}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    add-int/lit8 v9, v15, 0x1

    sget-object v4, Lcom/jme3/material/logic/SinglePassLightingLogic$1;->$SwitchMap$com$jme3$light$Light$Type:[I

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v8, 0x0

    if-eq v4, v12, :cond_6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    if-eq v4, v6, :cond_5

    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    check-cast v16, Lcom/jme3/light/SpotLight;

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/light/SpotLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/light/SpotLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/light/SpotLight;->getInvSpotRange()F

    move-result v19

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/light/SpotLight;->getPackedAngleCos()F

    move-result v16

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v6

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v7

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v4

    invoke-virtual {v14, v6, v7, v4, v5}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    invoke-virtual/range {p5 .. p5}, Lcom/jme3/renderer/RenderManager;->getCurrentCamera()Lcom/jme3/renderer/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/renderer/Camera;->getViewMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v4

    invoke-virtual {v4, v14, v14}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    invoke-virtual {v14}, Lcom/jme3/math/Vector4f;->getX()F

    move-result v5

    invoke-virtual {v14}, Lcom/jme3/math/Vector4f;->getY()F

    move-result v6

    invoke-virtual {v14}, Lcom/jme3/math/Vector4f;->getZ()F

    move-result v7

    move-object v4, v3

    move v12, v8

    move/from16 v8, v19

    invoke-virtual/range {v4 .. v9}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    add-int/lit8 v9, v15, 0x2

    invoke-virtual/range {v18 .. v18}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v5

    invoke-virtual/range {v18 .. v18}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v6

    invoke-virtual {v14, v4, v5, v6, v12}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    invoke-virtual/range {p5 .. p5}, Lcom/jme3/renderer/RenderManager;->getCurrentCamera()Lcom/jme3/renderer/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/renderer/Camera;->getViewMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v4

    invoke-virtual {v4, v14, v14}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    invoke-virtual {v14}, Lcom/jme3/math/Vector4f;->normalizeLocal()Lcom/jme3/math/Vector4f;

    invoke-virtual {v14}, Lcom/jme3/math/Vector4f;->getX()F

    move-result v5

    invoke-virtual {v14}, Lcom/jme3/math/Vector4f;->getY()F

    move-result v6

    invoke-virtual {v14}, Lcom/jme3/math/Vector4f;->getZ()F

    move-result v7

    move-object v4, v3

    move/from16 v8, v16

    invoke-virtual/range {v4 .. v9}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    :goto_2
    add-int/lit8 v15, v15, 0x3

    move/from16 v9, v17

    goto/16 :goto_4

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type of light: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    check-cast v16, Lcom/jme3/light/PointLight;

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/light/PointLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/light/PointLight;->getInvRadius()F

    move-result v8

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v6

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v7

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v4

    invoke-virtual {v14, v6, v7, v4, v5}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    invoke-virtual/range {p5 .. p5}, Lcom/jme3/renderer/RenderManager;->getCurrentCamera()Lcom/jme3/renderer/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/renderer/Camera;->getViewMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v4

    invoke-virtual {v4, v14, v14}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    invoke-virtual {v14}, Lcom/jme3/math/Vector4f;->getX()F

    move-result v5

    invoke-virtual {v14}, Lcom/jme3/math/Vector4f;->getY()F

    move-result v6

    invoke-virtual {v14}, Lcom/jme3/math/Vector4f;->getZ()F

    move-result v7

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    add-int/lit8 v9, v15, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    goto :goto_2

    :cond_6
    move v12, v8

    check-cast v16, Lcom/jme3/light/DirectionalLight;

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/light/DirectionalLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v5

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v6

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v4

    invoke-virtual {v14, v5, v6, v4, v12}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    invoke-virtual/range {p5 .. p5}, Lcom/jme3/renderer/RenderManager;->getCurrentCamera()Lcom/jme3/renderer/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/renderer/Camera;->getViewMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v4

    invoke-virtual {v4, v14, v14}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    invoke-virtual {v14}, Lcom/jme3/math/Vector4f;->getX()F

    move-result v5

    invoke-virtual {v14}, Lcom/jme3/math/Vector4f;->getY()F

    move-result v6

    invoke-virtual {v14}, Lcom/jme3/math/Vector4f;->getZ()F

    move-result v7

    const/high16 v8, -0x40800000    # -1.0f

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    add-int/lit8 v9, v15, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    goto/16 :goto_2

    :goto_3
    add-int/lit8 v9, v17, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    sget-object v0, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    div-int/lit8 v1, v15, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    :goto_5
    if-ge v15, v10, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p1, v3

    move/from16 p2, v4

    move/from16 p3, v5

    move/from16 p4, v0

    move/from16 p5, v1

    move/from16 p6, v15

    invoke-virtual/range {p1 .. p6}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_8
    return v2
.end method
