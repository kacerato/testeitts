.class public final Lcom/jme3/material/logic/MultiPassLightingLogic;
.super Lcom/jme3/material/logic/DefaultTechniqueDefLogic;
.source "SourceFile"


# static fields
.field private static final ADDITIVE_LIGHT:Lcom/jme3/material/RenderState;

.field private static final NULL_DIR_LIGHT:Lcom/jme3/math/Quaternion;


# instance fields
.field private final ambientLightColor:Lcom/jme3/math/ColorRGBA;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/jme3/material/RenderState;

    invoke-direct {v0}, Lcom/jme3/material/RenderState;-><init>()V

    sput-object v0, Lcom/jme3/material/logic/MultiPassLightingLogic;->ADDITIVE_LIGHT:Lcom/jme3/material/RenderState;

    new-instance v1, Lcom/jme3/math/Quaternion;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/jme3/math/Quaternion;-><init>(FFFF)V

    sput-object v1, Lcom/jme3/material/logic/MultiPassLightingLogic;->NULL_DIR_LIGHT:Lcom/jme3/math/Quaternion;

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->AlphaAdditive:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setDepthWrite(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/material/TechniqueDef;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;-><init>(Lcom/jme3/material/TechniqueDef;)V

    new-instance p1, Lcom/jme3/math/ColorRGBA;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0, v0, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object p1, p0, Lcom/jme3/material/logic/MultiPassLightingLogic;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    return-void
.end method


# virtual methods
.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;Lcom/jme3/material/Material$BindUnits;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v4

    const-string v5, "g_LightDirection"

    invoke-virtual {v1, v5}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v5

    const-string v6, "g_LightColor"

    invoke-virtual {v1, v6}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v6

    const-string v7, "g_LightPosition"

    invoke-virtual {v1, v7}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v7

    const-string v8, "g_AmbientLightColor"

    invoke-virtual {v1, v8}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v8

    iget-object v9, v0, Lcom/jme3/material/logic/MultiPassLightingLogic;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    const/4 v10, 0x0

    invoke-static {v3, v10, v9}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;->getAmbientColor(Lcom/jme3/light/LightList;ZLcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move v11, v10

    move v13, v11

    const/4 v12, 0x1

    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/jme3/light/LightList;->size()I

    move-result v14

    if-ge v11, v14, :cond_7

    invoke-virtual {v3, v11}, Lcom/jme3/light/LightList;->get(I)Lcom/jme3/light/Light;

    move-result-object v14

    invoke-virtual {v14}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v15

    sget-object v10, Lcom/jme3/light/Light$Type;->Ambient:Lcom/jme3/light/Light$Type;

    if-eq v15, v10, :cond_0

    invoke-virtual {v14}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v10

    sget-object v15, Lcom/jme3/light/Light$Type;->Probe:Lcom/jme3/light/Light$Type;

    if-ne v10, v15, :cond_1

    :cond_0
    move-object/from16 v19, v6

    move-object/from16 v18, v8

    move/from16 v20, v11

    goto/16 :goto_3

    :cond_1
    if-eqz v12, :cond_2

    sget-object v10, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    iget-object v12, v0, Lcom/jme3/material/logic/MultiPassLightingLogic;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v8, v10, v12}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    if-eqz v13, :cond_3

    sget-object v10, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    sget-object v13, Lcom/jme3/math/ColorRGBA;->Black:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v8, v10, v13}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    sget-object v10, Lcom/jme3/material/logic/MultiPassLightingLogic;->ADDITIVE_LIGHT:Lcom/jme3/material/RenderState;

    invoke-interface {v4, v10}, Lcom/jme3/renderer/Renderer;->applyRenderState(Lcom/jme3/material/RenderState;)V

    const/4 v13, 0x0

    :cond_3
    :goto_1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v10

    iget-object v15, v10, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    iget-object v9, v10, Lcom/jme3/util/TempVars;->quat2:Lcom/jme3/math/Quaternion;

    move/from16 v16, v12

    iget-object v12, v10, Lcom/jme3/util/TempVars;->color:Lcom/jme3/math/ColorRGBA;

    move/from16 v17, v13

    iget-object v13, v10, Lcom/jme3/util/TempVars;->vect4f1:Lcom/jme3/math/Vector4f;

    move-object/from16 v18, v8

    invoke-virtual {v14}, Lcom/jme3/light/Light;->getColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v14}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jme3/light/Light$Type;->getId()I

    move-result v8

    int-to-float v8, v8

    iput v8, v12, Lcom/jme3/math/ColorRGBA;->a:F

    sget-object v8, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    invoke-virtual {v6, v8, v12}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    sget-object v12, Lcom/jme3/material/logic/MultiPassLightingLogic$1;->$SwitchMap$com$jme3$light$Light$Type:[I

    invoke-virtual {v14}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aget v12, v12, v19

    move-object/from16 v19, v6

    const/4 v6, 0x1

    if-eq v12, v6, :cond_6

    const/4 v6, 0x2

    if-eq v12, v6, :cond_5

    const/4 v6, 0x3

    if-ne v12, v6, :cond_4

    check-cast v14, Lcom/jme3/light/SpotLight;

    invoke-virtual {v14}, Lcom/jme3/light/SpotLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v14}, Lcom/jme3/light/SpotLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v12

    invoke-virtual {v14}, Lcom/jme3/light/SpotLight;->getInvSpotRange()F

    move-result v3

    invoke-virtual {v14}, Lcom/jme3/light/SpotLight;->getPackedAngleCos()F

    move-result v14

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v0

    move/from16 v20, v11

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v11

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v6

    invoke-virtual {v9, v0, v11, v6, v3}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    invoke-virtual {v7, v8, v9}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v0

    invoke-virtual {v12}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v3

    invoke-virtual {v12}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v6

    const/4 v9, 0x0

    invoke-virtual {v13, v0, v3, v6, v9}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/renderer/RenderManager;->getCurrentCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getViewMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v0

    invoke-virtual {v0, v13, v13}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    invoke-virtual {v13}, Lcom/jme3/math/Vector4f;->getX()F

    move-result v0

    invoke-virtual {v13}, Lcom/jme3/math/Vector4f;->getY()F

    move-result v3

    invoke-virtual {v13}, Lcom/jme3/math/Vector4f;->getZ()F

    move-result v6

    invoke-virtual {v15, v0, v3, v6, v14}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    invoke-virtual {v5, v8, v15}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type of light: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move/from16 v20, v11

    check-cast v14, Lcom/jme3/light/PointLight;

    invoke-virtual {v14}, Lcom/jme3/light/PointLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v14}, Lcom/jme3/light/PointLight;->getInvRadius()F

    move-result v3

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v6

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v11

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v0

    invoke-virtual {v9, v6, v11, v0, v3}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    invoke-virtual {v7, v8, v9}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0, v0, v0, v0}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    invoke-virtual {v5, v8, v15}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    move/from16 v20, v11

    const/4 v0, 0x0

    check-cast v14, Lcom/jme3/light/DirectionalLight;

    invoke-virtual {v14}, Lcom/jme3/light/DirectionalLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v6

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v11

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v3

    const/high16 v12, -0x40800000    # -1.0f

    invoke-virtual {v9, v6, v11, v3, v12}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    invoke-virtual {v7, v8, v9}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v0, v0, v0}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    invoke-virtual {v5, v8, v15}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v10}, Lcom/jme3/util/TempVars;->release()V

    invoke-interface {v4, v1}, Lcom/jme3/renderer/Renderer;->setShader(Lcom/jme3/shader/Shader;)V

    invoke-static {v4, v2}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;->renderMeshFromGeometry(Lcom/jme3/renderer/Renderer;Lcom/jme3/scene/Geometry;)V

    move/from16 v12, v16

    move/from16 v13, v17

    :goto_3
    add-int/lit8 v11, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move-object/from16 v8, v18

    move-object/from16 v6, v19

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v19, v6

    move-object/from16 v18, v8

    if-eqz v12, :cond_8

    sget-object v0, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    move-object/from16 v3, p0

    iget-object v5, v3, Lcom/jme3/material/logic/MultiPassLightingLogic;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    move-object/from16 v6, p4

    const/4 v8, 0x0

    invoke-static {v6, v8, v5}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;->getAmbientColor(Lcom/jme3/light/LightList;ZLcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move-result-object v5

    move-object/from16 v6, v18

    invoke-virtual {v6, v0, v5}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    sget-object v5, Lcom/jme3/math/ColorRGBA;->BlackNoAlpha:Lcom/jme3/math/ColorRGBA;

    move-object/from16 v6, v19

    invoke-virtual {v6, v0, v5}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    sget-object v5, Lcom/jme3/material/logic/MultiPassLightingLogic;->NULL_DIR_LIGHT:Lcom/jme3/math/Quaternion;

    invoke-virtual {v7, v0, v5}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    invoke-interface {v4, v1}, Lcom/jme3/renderer/Renderer;->setShader(Lcom/jme3/shader/Shader;)V

    invoke-static {v4, v2}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;->renderMeshFromGeometry(Lcom/jme3/renderer/Renderer;Lcom/jme3/scene/Geometry;)V

    goto :goto_4

    :cond_8
    move-object/from16 v3, p0

    :goto_4
    return-void
.end method
