.class public final Lcom/jme3/material/logic/StaticPassLightingLogic;
.super Lcom/jme3/material/logic/DefaultTechniqueDefLogic;
.source "SourceFile"


# static fields
.field private static final DEFINE_NUM_DIR_LIGHTS:Ljava/lang/String; = "NUM_DIR_LIGHTS"

.field private static final DEFINE_NUM_POINT_LIGHTS:Ljava/lang/String; = "NUM_POINT_LIGHTS"

.field private static final DEFINE_NUM_SPOT_LIGHTS:Ljava/lang/String; = "NUM_SPOT_LIGHTS"


# instance fields
.field private final ambientLightColor:Lcom/jme3/math/ColorRGBA;

.field private final numDirLightsDefineId:I

.field private final numPointLightsDefineId:I

.field private final numSpotLightsDefineId:I

.field private final tempDirLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/light/DirectionalLight;",
            ">;"
        }
    .end annotation
.end field

.field private final tempDirection:Lcom/jme3/math/Vector3f;

.field private final tempPointLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/light/PointLight;",
            ">;"
        }
    .end annotation
.end field

.field private final tempPosition:Lcom/jme3/math/Vector3f;

.field private final tempSpotLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/light/SpotLight;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jme3/material/TechniqueDef;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;-><init>(Lcom/jme3/material/TechniqueDef;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempDirLights:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempPointLights:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempSpotLights:Ljava/util/ArrayList;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempPosition:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempDirection:Lcom/jme3/math/Vector3f;

    sget-object v0, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    const-string v1, "NUM_DIR_LIGHTS"

    invoke-virtual {p1, v1, v0}, Lcom/jme3/material/TechniqueDef;->addShaderUnmappedDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;)I

    move-result v1

    iput v1, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->numDirLightsDefineId:I

    const-string v1, "NUM_POINT_LIGHTS"

    invoke-virtual {p1, v1, v0}, Lcom/jme3/material/TechniqueDef;->addShaderUnmappedDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;)I

    move-result v1

    iput v1, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->numPointLightsDefineId:I

    const-string v1, "NUM_SPOT_LIGHTS"

    invoke-virtual {p1, v1, v0}, Lcom/jme3/material/TechniqueDef;->addShaderUnmappedDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;)I

    move-result p1

    iput p1, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->numSpotLightsDefineId:I

    return-void
.end method

.method private transformDirection(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Vector3f;)V
    .locals 0

    invoke-virtual {p1, p2, p2}, Lcom/jme3/math/Matrix4f;->multNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method private transformPosition(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Vector3f;)V
    .locals 0

    invoke-virtual {p1, p2, p2}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method private updateLightListUniforms(Lcom/jme3/math/Matrix4f;Lcom/jme3/shader/Shader;Lcom/jme3/light/LightList;)V
    .locals 11

    const-string v0, "g_AmbientLightColor"

    invoke-virtual {p2, v0}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v0

    sget-object v1, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    invoke-static {p3, v2, v3}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;->getAmbientColor(Lcom/jme3/light/LightList;ZLcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    const-string p3, "g_LightData"

    invoke-virtual {p2, p3}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object p2

    iget-object p3, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempDirLights:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    iget-object v0, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempPointLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    iget-object v0, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempSpotLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr p3, v0

    invoke-virtual {p2, p3}, Lcom/jme3/shader/Uniform;->setVector4Length(I)V

    iget-object p3, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempDirLights:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/DirectionalLight;

    invoke-virtual {v0}, Lcom/jme3/light/Light;->getColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/light/DirectionalLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempDirection:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, p1, v0}, Lcom/jme3/material/logic/StaticPassLightingLogic;->transformDirection(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Vector3f;)V

    iget v2, v1, Lcom/jme3/math/ColorRGBA;->r:F

    iget v3, v1, Lcom/jme3/math/ColorRGBA;->g:F

    iget v4, v1, Lcom/jme3/math/ColorRGBA;->b:F

    add-int/lit8 v7, v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p2

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    iget-object v0, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempDirection:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v0, Lcom/jme3/math/Vector3f;->z:F

    add-int/lit8 v6, v6, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p2

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempPointLights:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/PointLight;

    invoke-virtual {v0}, Lcom/jme3/light/Light;->getColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempPosition:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/light/PointLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/light/PointLight;->getInvRadius()F

    move-result v7

    iget-object v0, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempPosition:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, p1, v0}, Lcom/jme3/material/logic/StaticPassLightingLogic;->transformPosition(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Vector3f;)V

    iget v2, v1, Lcom/jme3/math/ColorRGBA;->r:F

    iget v3, v1, Lcom/jme3/math/ColorRGBA;->g:F

    iget v4, v1, Lcom/jme3/math/ColorRGBA;->b:F

    add-int/lit8 v8, v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p2

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    iget-object v0, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempPosition:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v0, Lcom/jme3/math/Vector3f;->z:F

    add-int/lit8 v6, v6, 0x2

    move-object v0, p2

    move v4, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempSpotLights:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/SpotLight;

    invoke-virtual {v0}, Lcom/jme3/light/Light;->getColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jme3/light/SpotLight;->getPosition()Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/light/SpotLight;->getDirection()Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempPosition:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/light/SpotLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/light/SpotLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempPosition:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, p1, v2}, Lcom/jme3/material/logic/StaticPassLightingLogic;->transformPosition(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Vector3f;)V

    iget-object v2, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempDirection:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, p1, v2}, Lcom/jme3/material/logic/StaticPassLightingLogic;->transformDirection(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0}, Lcom/jme3/light/SpotLight;->getInvSpotRange()F

    move-result v7

    invoke-virtual {v0}, Lcom/jme3/light/SpotLight;->getPackedAngleCos()F

    move-result v8

    iget v2, v1, Lcom/jme3/math/ColorRGBA;->r:F

    iget v3, v1, Lcom/jme3/math/ColorRGBA;->g:F

    iget v4, v1, Lcom/jme3/math/ColorRGBA;->b:F

    add-int/lit8 v9, v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p2

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    iget-object v0, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempPosition:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v0, Lcom/jme3/math/Vector3f;->z:F

    add-int/lit8 v10, v6, 0x2

    move-object v0, p2

    move v4, v7

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    iget-object v0, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempDirection:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v0, Lcom/jme3/math/Vector3f;->z:F

    add-int/lit8 v6, v6, 0x3

    move-object v0, p2

    move v4, v8

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    goto :goto_2

    :cond_2
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

    iget-object p2, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempDirLights:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempPointLights:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempSpotLights:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p4}, Lcom/jme3/light/LightList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/jme3/light/Light;

    sget-object v0, Lcom/jme3/material/logic/StaticPassLightingLogic$1;->$SwitchMap$com$jme3$light$Light$Type:[I

    invoke-virtual {p4}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempSpotLights:Ljava/util/ArrayList;

    check-cast p4, Lcom/jme3/light/SpotLight;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempPointLights:Ljava/util/ArrayList;

    check-cast p4, Lcom/jme3/light/PointLight;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempDirLights:Ljava/util/ArrayList;

    check-cast p4, Lcom/jme3/light/DirectionalLight;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget p2, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->numDirLightsDefineId:I

    iget-object p4, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempDirLights:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    invoke-virtual {p5, p2, p4}, Lcom/jme3/shader/DefineList;->set(II)V

    iget p2, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->numPointLightsDefineId:I

    iget-object p4, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempPointLights:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    invoke-virtual {p5, p2, p4}, Lcom/jme3/shader/DefineList;->set(II)V

    iget p2, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->numSpotLightsDefineId:I

    iget-object p4, p0, Lcom/jme3/material/logic/StaticPassLightingLogic;->tempSpotLights:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    invoke-virtual {p5, p2, p4}, Lcom/jme3/shader/DefineList;->set(II)V

    iget-object p2, p0, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {p2, p1, p3, p5}, Lcom/jme3/material/TechniqueDef;->getShader(Lcom/jme3/asset/AssetManager;Ljava/util/EnumSet;Lcom/jme3/shader/DefineList;)Lcom/jme3/shader/Shader;

    move-result-object p1

    return-object p1
.end method

.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;Lcom/jme3/material/Material$BindUnits;)V
    .locals 0

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object p5

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getCurrentCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object p1

    invoke-direct {p0, p1, p2, p4}, Lcom/jme3/material/logic/StaticPassLightingLogic;->updateLightListUniforms(Lcom/jme3/math/Matrix4f;Lcom/jme3/shader/Shader;Lcom/jme3/light/LightList;)V

    invoke-interface {p5, p2}, Lcom/jme3/renderer/Renderer;->setShader(Lcom/jme3/shader/Shader;)V

    invoke-static {p5, p3}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;->renderMeshFromGeometry(Lcom/jme3/renderer/Renderer;Lcom/jme3/scene/Geometry;)V

    return-void
.end method
