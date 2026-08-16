.class public Lcom/jme3/material/Material;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/CloneableSmartAsset;
.implements Ljava/lang/Cloneable;
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/material/Material$BindUnits;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final SAVABLE_VERSION:I = 0x2

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private additionalState:Lcom/jme3/material/RenderState;

.field private bindUnits:Lcom/jme3/material/Material$BindUnits;

.field private def:Lcom/jme3/material/MaterialDef;

.field private key:Lcom/jme3/asset/AssetKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/asset/AssetKey<",
            "*>;"
        }
    .end annotation
.end field

.field private final mergedRenderState:Lcom/jme3/material/RenderState;

.field private name:Ljava/lang/String;

.field private paramValues:Lcom/jme3/util/ListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/ListMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/material/MatParam;",
            ">;"
        }
    .end annotation
.end field

.field private receivesShadows:Z

.field private sortingId:I

.field private technique:Lcom/jme3/material/Technique;

.field private techniques:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/material/Technique;",
            ">;"
        }
    .end annotation
.end field

.field private transparent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/material/Material;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/material/Material;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/jme3/util/ListMap;

    invoke-direct {v0}, Lcom/jme3/util/ListMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/Material;->techniques:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    .line 20
    new-instance v0, Lcom/jme3/material/RenderState;

    invoke-direct {v0}, Lcom/jme3/material/RenderState;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/Material;->mergedRenderState:Lcom/jme3/material/RenderState;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/jme3/material/Material;->transparent:Z

    .line 22
    iput-boolean v0, p0, Lcom/jme3/material/Material;->receivesShadows:Z

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/jme3/material/Material;->sortingId:I

    .line 24
    new-instance v0, Lcom/jme3/material/Material$BindUnits;

    invoke-direct {v0}, Lcom/jme3/material/Material$BindUnits;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/Material;->bindUnits:Lcom/jme3/material/Material$BindUnits;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V
    .locals 1

    .line 15
    new-instance v0, Lcom/jme3/asset/AssetKey;

    invoke-direct {v0, p2}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/material/MaterialDef;

    invoke-direct {p0, p1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/material/MaterialDef;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/material/MaterialDef;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/util/ListMap;

    invoke-direct {v0}, Lcom/jme3/util/ListMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/Material;->techniques:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    .line 5
    new-instance v0, Lcom/jme3/material/RenderState;

    invoke-direct {v0}, Lcom/jme3/material/RenderState;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/Material;->mergedRenderState:Lcom/jme3/material/RenderState;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/jme3/material/Material;->transparent:Z

    .line 7
    iput-boolean v0, p0, Lcom/jme3/material/Material;->receivesShadows:Z

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/jme3/material/Material;->sortingId:I

    .line 9
    new-instance v0, Lcom/jme3/material/Material$BindUnits;

    invoke-direct {v0}, Lcom/jme3/material/Material$BindUnits;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/Material;->bindUnits:Lcom/jme3/material/Material$BindUnits;

    if-eqz p1, :cond_2

    .line 10
    iput-object p1, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    .line 11
    invoke-virtual {p1}, Lcom/jme3/material/MaterialDef;->getMaterialParams()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/MatParam;

    .line 12
    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Material definition cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private applyOverrides(Lcom/jme3/renderer/Renderer;Lcom/jme3/shader/Shader;Lcom/jme3/util/SafeArrayList;Lcom/jme3/material/Material$BindUnits;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/renderer/Renderer;",
            "Lcom/jme3/shader/Shader;",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/material/MatParamOverride;",
            ">;",
            "Lcom/jme3/material/Material$BindUnits;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/jme3/material/MatParamOverride;

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v6, p3, v1

    invoke-virtual {v6}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v4

    iget-object v2, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v6}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/material/MaterialDef;->getMaterialParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v2

    if-ne v2, v4, :cond_2

    invoke-virtual {v6}, Lcom/jme3/material/MatParamOverride;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lcom/jme3/material/MatParam;->getPrefixedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v2

    invoke-virtual {v6}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/jme3/material/Material;->updateShaderMaterialParameter(Lcom/jme3/renderer/Renderer;Lcom/jme3/shader/VarType;Lcom/jme3/shader/Shader;Lcom/jme3/material/MatParam;Lcom/jme3/material/Material$BindUnits;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/jme3/shader/Uniform;->clearValue()V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private checkSetParam(Lcom/jme3/shader/VarType;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v0, p2}, Lcom/jme3/material/MaterialDef;->getMaterialParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v1

    if-eq v1, p1, :cond_0

    sget-object v1, Lcom/jme3/material/Material;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v0

    filled-new-array {p2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Material parameter being set: {0} with type {1} doesn\'\'t match definition types {2}"

    invoke-virtual {v1, v2, p2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Material parameter is not defined: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkTextureParamColorSpace(Ljava/lang/String;Lcom/jme3/texture/Texture;)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v0, p1}, Lcom/jme3/material/MaterialDef;->getMaterialParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/MatParamTexture;

    invoke-virtual {v0}, Lcom/jme3/material/MatParamTexture;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jme3/material/MatParamTexture;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jme3/material/MatParamTexture;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/texture/Image;->setColorSpace(Lcom/jme3/texture/image/ColorSpace;)V

    sget-object v1, Lcom/jme3/material/Material;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/jme3/material/MatParamTexture;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, v0, v3, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Material parameter {0} needs a {1} texture, texture {2} was switched to {3} color space."

    invoke-virtual {v1, v2, p2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/material/MatParamTexture;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v0

    sget-object v1, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/jme3/material/Material;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2, p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "The texture {0} has linear color space, but the material parameter {2} specifies no color space requirement, this may lead to unexpected behavior.\nCheck if the image was not set to another material parameter with a linear color space, or that you did not set the ColorSpace to Linear using texture.getImage.setColorSpace()."

    invoke-virtual {v0, v1, p2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private clearUniformsSetByCurrent(Lcom/jme3/shader/Shader;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getUniformMap()Lcom/jme3/util/ListMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/util/ListMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/jme3/util/ListMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/Uniform;

    invoke-virtual {v2}, Lcom/jme3/shader/Uniform;->clearSetByCurrentMaterial()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isNormalsBackward(Lcom/jme3/math/Vector3f;)Z
    .locals 5

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget v4, p1, Lcom/jme3/math/Vector3f;->y:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-eq v0, v2, :cond_4

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    :goto_1
    return v2
.end method

.method private resetUniformsNotSetByCurrent(Lcom/jme3/shader/Shader;)V
    .locals 6

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getUniformMap()Lcom/jme3/util/ListMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/util/ListMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lcom/jme3/util/ListMap;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/shader/Uniform;

    invoke-virtual {v3}, Lcom/jme3/shader/Uniform;->isSetByCurrentMaterial()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x67

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/jme3/shader/Uniform;->clearValue()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateRenderState(Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Renderer;Lcom/jme3/material/TechniqueDef;)V
    .locals 1

    invoke-virtual {p2}, Lcom/jme3/renderer/RenderManager;->getForcedRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p4, p0, Lcom/jme3/material/Material;->mergedRenderState:Lcom/jme3/material/RenderState;

    invoke-virtual {p2}, Lcom/jme3/renderer/RenderManager;->getForcedRenderState()Lcom/jme3/material/RenderState;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/jme3/material/RenderState;->copyFrom(Lcom/jme3/material/RenderState;)Lcom/jme3/material/RenderState;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/jme3/material/TechniqueDef;->getRenderState()Lcom/jme3/material/RenderState;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/jme3/material/Material;->mergedRenderState:Lcom/jme3/material/RenderState;

    sget-object v0, Lcom/jme3/material/RenderState;->DEFAULT:Lcom/jme3/material/RenderState;

    invoke-virtual {p2, v0}, Lcom/jme3/material/RenderState;->copyFrom(Lcom/jme3/material/RenderState;)Lcom/jme3/material/RenderState;

    move-result-object p2

    invoke-virtual {p4}, Lcom/jme3/material/TechniqueDef;->getRenderState()Lcom/jme3/material/RenderState;

    move-result-object p4

    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    invoke-virtual {p4, v0, p2}, Lcom/jme3/material/RenderState;->copyMergedTo(Lcom/jme3/material/RenderState;Lcom/jme3/material/RenderState;)Lcom/jme3/material/RenderState;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/jme3/material/Material;->mergedRenderState:Lcom/jme3/material/RenderState;

    sget-object p4, Lcom/jme3/material/RenderState;->DEFAULT:Lcom/jme3/material/RenderState;

    invoke-virtual {p2, p4}, Lcom/jme3/material/RenderState;->copyFrom(Lcom/jme3/material/RenderState;)Lcom/jme3/material/RenderState;

    move-result-object p2

    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    invoke-virtual {p4, v0, p2}, Lcom/jme3/material/RenderState;->copyMergedTo(Lcom/jme3/material/RenderState;Lcom/jme3/material/RenderState;)Lcom/jme3/material/RenderState;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Lcom/jme3/material/RenderState;->isFaceCullFlippable()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/material/Material;->isNormalsBackward(Lcom/jme3/math/Vector3f;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/jme3/material/RenderState;->flipFaceCull()V

    :cond_2
    invoke-interface {p3, p2}, Lcom/jme3/renderer/Renderer;->applyRenderState(Lcom/jme3/material/RenderState;)V

    return-void
.end method

.method private updateShaderMaterialParameter(Lcom/jme3/renderer/Renderer;Lcom/jme3/shader/VarType;Lcom/jme3/shader/Shader;Lcom/jme3/material/MatParam;Lcom/jme3/material/Material$BindUnits;Z)V
    .locals 1

    sget-object v0, Lcom/jme3/shader/VarType;->UniformBufferObject:Lcom/jme3/shader/VarType;

    if-eq p2, v0, :cond_5

    sget-object v0, Lcom/jme3/shader/VarType;->ShaderStorageBufferObject:Lcom/jme3/shader/VarType;

    if-ne p2, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p4}, Lcom/jme3/material/MatParam;->getPrefixedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object p3

    if-nez p6, :cond_1

    invoke-virtual {p3}, Lcom/jme3/shader/Uniform;->isSetByCurrentMaterial()Z

    move-result p6

    if-eqz p6, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/jme3/shader/VarType;->isTextureType()Z

    move-result p6

    if-nez p6, :cond_3

    invoke-virtual {p2}, Lcom/jme3/shader/VarType;->isImageType()Z

    move-result p6

    if-eqz p6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p4}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/jme3/shader/VarType;->isTextureType()Z

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p5, Lcom/jme3/material/Material$BindUnits;->textureUnit:I

    invoke-virtual {p4}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/jme3/texture/Texture;

    invoke-interface {p1, p2, p4}, Lcom/jme3/renderer/Renderer;->setTexture(ILcom/jme3/texture/Texture;)V

    goto :goto_1

    :cond_4
    iget p2, p5, Lcom/jme3/material/Material$BindUnits;->textureUnit:I

    invoke-virtual {p4}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/jme3/texture/TextureImage;

    invoke-interface {p1, p2, p4}, Lcom/jme3/renderer/Renderer;->setTextureImage(ILcom/jme3/texture/TextureImage;)V
    :try_end_0
    .catch Lcom/jme3/renderer/TextureUnitException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object p1, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    iget p2, p5, Lcom/jme3/material/Material$BindUnits;->textureUnit:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    iget p1, p5, Lcom/jme3/material/Material$BindUnits;->textureUnit:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p5, Lcom/jme3/material/Material$BindUnits;->textureUnit:I

    goto :goto_4

    :catch_0
    iget p1, p5, Lcom/jme3/material/Material$BindUnits;->textureUnit:I

    add-int/lit8 p1, p1, 0x1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many texture parameters ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") assigned\n to "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/material/Material;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_2
    invoke-virtual {p4}, Lcom/jme3/material/MatParam;->getPrefixedName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Lcom/jme3/shader/Shader;->getBufferBlock(Ljava/lang/String;)Lcom/jme3/shader/ShaderBufferBlock;

    move-result-object p3

    invoke-virtual {p4}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/jme3/shader/bufferobject/BufferObject;

    sget-object p6, Lcom/jme3/shader/VarType;->ShaderStorageBufferObject:Lcom/jme3/shader/VarType;

    if-ne p2, p6, :cond_6

    sget-object p2, Lcom/jme3/shader/ShaderBufferBlock$BufferType;->ShaderStorageBufferObject:Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    invoke-virtual {p3, p2, p4}, Lcom/jme3/shader/ShaderBufferBlock;->setBufferObject(Lcom/jme3/shader/ShaderBufferBlock$BufferType;Lcom/jme3/shader/bufferobject/BufferObject;)V

    iget p2, p5, Lcom/jme3/material/Material$BindUnits;->bufferUnit:I

    invoke-interface {p1, p2, p4}, Lcom/jme3/renderer/Renderer;->setShaderStorageBufferObject(ILcom/jme3/shader/bufferobject/BufferObject;)V

    goto :goto_3

    :cond_6
    sget-object p2, Lcom/jme3/shader/ShaderBufferBlock$BufferType;->UniformBufferObject:Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    invoke-virtual {p3, p2, p4}, Lcom/jme3/shader/ShaderBufferBlock;->setBufferObject(Lcom/jme3/shader/ShaderBufferBlock$BufferType;Lcom/jme3/shader/bufferobject/BufferObject;)V

    iget p2, p5, Lcom/jme3/material/Material$BindUnits;->bufferUnit:I

    invoke-interface {p1, p2, p4}, Lcom/jme3/renderer/Renderer;->setUniformBufferObject(ILcom/jme3/shader/bufferobject/BufferObject;)V

    :goto_3
    iget p1, p5, Lcom/jme3/material/Material$BindUnits;->bufferUnit:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p5, Lcom/jme3/material/Material$BindUnits;->bufferUnit:I

    :goto_4
    return-void
.end method

.method private updateShaderMaterialParameters(Lcom/jme3/renderer/Renderer;Lcom/jme3/shader/Shader;Lcom/jme3/util/SafeArrayList;Lcom/jme3/util/SafeArrayList;)Lcom/jme3/material/Material$BindUnits;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/renderer/Renderer;",
            "Lcom/jme3/shader/Shader;",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/material/MatParamOverride;",
            ">;",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/material/MatParamOverride;",
            ">;)",
            "Lcom/jme3/material/Material$BindUnits;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/Material;->bindUnits:Lcom/jme3/material/Material$BindUnits;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jme3/material/Material$BindUnits;->textureUnit:I

    iput v1, v0, Lcom/jme3/material/Material$BindUnits;->bufferUnit:I

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jme3/material/Material;->applyOverrides(Lcom/jme3/renderer/Renderer;Lcom/jme3/shader/Shader;Lcom/jme3/util/SafeArrayList;Lcom/jme3/material/Material$BindUnits;)V

    :cond_0
    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/jme3/material/Material;->bindUnits:Lcom/jme3/material/Material$BindUnits;

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/jme3/material/Material;->applyOverrides(Lcom/jme3/renderer/Renderer;Lcom/jme3/shader/Shader;Lcom/jme3/util/SafeArrayList;Lcom/jme3/material/Material$BindUnits;)V

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {p3}, Lcom/jme3/util/ListMap;->size()I

    move-result p3

    if-ge v1, p3, :cond_2

    iget-object p3, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {p3, v1}, Lcom/jme3/util/ListMap;->getValue(I)Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Lcom/jme3/material/MatParam;

    invoke-virtual {v6}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v4

    iget-object v7, p0, Lcom/jme3/material/Material;->bindUnits:Lcom/jme3/material/Material$BindUnits;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/jme3/material/Material;->updateShaderMaterialParameter(Lcom/jme3/renderer/Renderer;Lcom/jme3/shader/VarType;Lcom/jme3/shader/Shader;Lcom/jme3/material/MatParam;Lcom/jme3/material/Material$BindUnits;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/jme3/material/Material;->bindUnits:Lcom/jme3/material/Material$BindUnits;

    return-object p1
.end method


# virtual methods
.method public clearParam(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/jme3/material/Material;->checkSetParam(Lcom/jme3/shader/VarType;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v2, p1}, Lcom/jme3/util/ListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, v1, Lcom/jme3/material/MatParamTexture;

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Lcom/jme3/material/Material;->sortingId:I

    :cond_1
    iget-object v1, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v0, v0}, Lcom/jme3/material/Technique;->notifyParamChanged(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic clone()Lcom/jme3/asset/CloneableSmartAsset;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/material/Material;->clone()Lcom/jme3/material/Material;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/jme3/material/Material;
    .locals 5

    .line 3
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/Material;

    .line 4
    iget-object v1, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/jme3/material/RenderState;->clone()Lcom/jme3/material/RenderState;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/jme3/material/Material;->techniques:Ljava/util/HashMap;

    .line 8
    new-instance v1, Lcom/jme3/util/ListMap;

    invoke-direct {v1}, Lcom/jme3/util/ListMap;-><init>()V

    iput-object v1, v0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    const/4 v1, 0x0

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v2}, Lcom/jme3/util/ListMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v2, v1}, Lcom/jme3/util/ListMap;->getEntry(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 11
    iget-object v3, v0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/material/MatParam;

    invoke-virtual {v2}, Lcom/jme3/material/MatParam;->clone()Lcom/jme3/material/MatParam;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/jme3/util/ListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    .line 12
    iput v1, v0, Lcom/jme3/material/Material;->sortingId:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 13
    :goto_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/jme3/material/Material;->clone()Lcom/jme3/material/Material;

    move-result-object v0

    return-object v0
.end method

.method public contentEquals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/jme3/material/Material;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/jme3/material/Material;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/material/Material;->getMaterialDef()Lcom/jme3/material/MaterialDef;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getMaterialDef()Lcom/jme3/material/MaterialDef;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v2}, Lcom/jme3/util/ListMap;->size()I

    move-result v2

    iget-object v3, p1, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v3}, Lcom/jme3/util/ListMap;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    if-nez v2, :cond_4

    iget-object v3, p1, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    if-eqz v3, :cond_7

    :cond_4
    const-string v3, "Default"

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/material/TechniqueDef;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v3

    :goto_0
    iget-object v4, p1, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/material/TechniqueDef;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v2}, Lcom/jme3/util/ListMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v4

    invoke-virtual {p1, v3}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v3

    if-nez v3, :cond_9

    return v1

    :cond_9
    invoke-virtual {v3, v4}, Lcom/jme3/material/MatParam;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v1

    :cond_a
    iget-object v2, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    if-nez v2, :cond_b

    iget-object p1, p1, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    if-eqz p1, :cond_c

    return v1

    :cond_b
    iget-object p1, p1, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    invoke-virtual {v2, p1}, Lcom/jme3/material/RenderState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v1

    :cond_c
    return v0
.end method

.method public contentHashCode()I
    .locals 3

    iget-object v0, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0xcb

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1d

    iget-object v0, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1d

    iget-object v0, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1d

    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/jme3/material/RenderState;->contentHashCode()I

    move-result v1

    :cond_3
    add-int/2addr v2, v1

    return v2
.end method

.method public getActiveTechnique()Lcom/jme3/material/Technique;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    return-object v0
.end method

.method public getAdditionalRenderState()Lcom/jme3/material/RenderState;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    if-nez v0, :cond_0

    sget-object v0, Lcom/jme3/material/RenderState;->ADDITIONAL:Lcom/jme3/material/RenderState;

    invoke-virtual {v0}, Lcom/jme3/material/RenderState;->clone()Lcom/jme3/material/RenderState;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    :cond_0
    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    return-object v0
.end method

.method public getAssetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/Material;->key:Lcom/jme3/asset/AssetKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/asset/AssetKey;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getKey()Lcom/jme3/asset/AssetKey;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/Material;->key:Lcom/jme3/asset/AssetKey;

    return-object v0
.end method

.method public getMaterialDef()Lcom/jme3/material/MaterialDef;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/Material;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v0, p1}, Lcom/jme3/util/ListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/material/MatParam;

    return-object p1
.end method

.method public getParamValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v0, p1}, Lcom/jme3/util/ListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/material/MatParam;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getParams()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/material/MatParam;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v0}, Lcom/jme3/util/ListMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getParamsMap()Lcom/jme3/util/ListMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/ListMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/material/MatParam;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    return-object v0
.end method

.method public getSortId()I
    .locals 6

    iget v0, p0, Lcom/jme3/material/Material;->sortingId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/jme3/material/Technique;->getSortId()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/jme3/material/Material;->sortingId:I

    const/4 v0, 0x0

    const/16 v2, 0x11

    move v3, v0

    :goto_0
    iget-object v4, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v4}, Lcom/jme3/util/ListMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v4, v3}, Lcom/jme3/util/ListMap;->getValue(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/material/MatParam;

    invoke-virtual {v4}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/shader/VarType;->isTextureType()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/texture/Texture;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v4

    if-ne v4, v1, :cond_3

    move v4, v0

    :cond_3
    mul-int/lit8 v2, v2, 0x17

    add-int/2addr v2, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/jme3/material/Material;->sortingId:I

    const v1, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/jme3/material/Material;->sortingId:I

    :cond_5
    iget v0, p0, Lcom/jme3/material/Material;->sortingId:I

    return v0
.end method

.method public getTextureParam(Ljava/lang/String;)Lcom/jme3/material/MatParamTexture;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v0, p1}, Lcom/jme3/util/ListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/material/MatParam;

    instance-of v0, p1, Lcom/jme3/material/MatParamTexture;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/material/MatParamTexture;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isReceivesShadows()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/Material;->receivesShadows:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/Material;->transparent:Z

    return v0
.end method

.method public preload(Lcom/jme3/renderer/RenderManager;Lcom/jme3/scene/Geometry;)V
    .locals 8

    iget-object v0, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    if-nez v0, :cond_0

    const-string v0, "Default"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/material/Material;->selectTechnique(Ljava/lang/String;Lcom/jme3/renderer/RenderManager;)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    invoke-virtual {v0}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v1

    invoke-interface {v1}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object v7

    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->isNoRender()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getWorldMatParamOverrides()Lcom/jme3/util/SafeArrayList;

    move-result-object p2

    iget-object v2, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/jme3/material/Technique;->makeCurrent(Lcom/jme3/renderer/RenderManager;Lcom/jme3/util/SafeArrayList;Lcom/jme3/util/SafeArrayList;Lcom/jme3/light/LightList;Ljava/util/EnumSet;)Lcom/jme3/shader/Shader;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, p2, v2}, Lcom/jme3/material/Material;->updateShaderMaterialParameters(Lcom/jme3/renderer/Renderer;Lcom/jme3/shader/Shader;Lcom/jme3/util/SafeArrayList;Lcom/jme3/util/SafeArrayList;)Lcom/jme3/material/Material$BindUnits;

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/jme3/renderer/Renderer;->setShader(Lcom/jme3/shader/Shader;)V

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/material/Material;->name:Ljava/lang/String;

    const-string v1, "render_state"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/RenderState;

    iput-object v1, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    const-string v1, "is_transparent"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jme3/material/Material;->transparent:Z

    const-string v1, "receives_shadows"

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jme3/material/Material;->receivesShadows:Z

    const-string v1, "material_def"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "parameters"

    invoke-interface {v0, v4, v2}, Lcom/jme3/export/InputCapsule;->readStringSavableMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-class v4, Lcom/jme3/material/Material;

    invoke-interface {v0, v4}, Lcom/jme3/export/InputCapsule;->getSavableVersion(Ljava/lang/Class;)I

    move-result v0

    const/4 v4, 0x1

    if-ge v0, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const/4 v6, 0x2

    if-ge v0, v6, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getFormatVersion()I

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "Common/MatDefs/Misc/VertexColor.j3md"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "Common/MatDefs/Misc/Unshaded.j3md"

    if-eqz v7, :cond_2

    move v7, v4

    move-object v1, v8

    move v8, v3

    goto :goto_4

    :cond_2
    const-string v7, "Common/MatDefs/Misc/SimpleTextured.j3md"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "Common/MatDefs/Misc/SolidColor.j3md"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const-string v7, "Common/MatDefs/Misc/WireColor.j3md"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    :cond_4
    :goto_2
    move v7, v3

    move-object v1, v8

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "SeperateTexCoord"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/material/MatParam;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v4, :cond_6

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v7, v3

    move v8, v4

    goto :goto_4

    :cond_6
    move v7, v3

    :goto_3
    move v8, v7

    :goto_4
    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v9

    new-instance v10, Lcom/jme3/asset/AssetKey;

    invoke-direct {v10, v1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/MaterialDef;

    iput-object v1, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    new-instance v1, Lcom/jme3/util/ListMap;

    invoke-direct {v1}, Lcom/jme3/util/ListMap;-><init>()V

    iput-object v1, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/material/MatParam;

    instance-of v9, v2, Lcom/jme3/material/MatParamTexture;

    if-eqz v9, :cond_9

    move-object v9, v2

    check-cast v9, Lcom/jme3/material/MatParamTexture;

    invoke-virtual {v9}, Lcom/jme3/material/MatParamTexture;->getTextureValue()Lcom/jme3/texture/Texture;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v9}, Lcom/jme3/material/MatParamTexture;->getTextureValue()Lcom/jme3/texture/Texture;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v10

    if-nez v10, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v9}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/jme3/material/MatParamTexture;->getTextureValue()Lcom/jme3/texture/Texture;

    move-result-object v9

    invoke-direct {p0, v10, v9}, Lcom/jme3/material/Material;->checkTextureParamColorSpace(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    :cond_9
    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getFormatVersion()I

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v2}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "m_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v2}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/jme3/material/MatParam;->setName(Ljava/lang/String;)V

    :cond_a
    iget-object v9, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v2}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/jme3/material/MaterialDef;->getMaterialParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v9

    if-nez v9, :cond_b

    sget-object v9, Lcom/jme3/material/Material;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "The material parameter is not defined: {0}. Ignoring.."

    invoke-virtual {v2}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v10, v11, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    invoke-virtual {v2}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v9

    invoke-virtual {v2}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/jme3/material/Material;->checkSetParam(Lcom/jme3/shader/VarType;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v2}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Lcom/jme3/util/ListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_c
    if-eqz v5, :cond_e

    iget-object p1, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {p1}, Lcom/jme3/material/MaterialDef;->getMaterialParams()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/MatParam;

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/jme3/util/ListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v5

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v5, v1}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_6

    :cond_e
    if-eqz v0, :cond_11

    iget-object p1, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    if-eqz p1, :cond_11

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    iput-boolean v0, p1, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    iget-object v0, p1, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    if-eq v0, v1, :cond_f

    move v0, v4

    goto :goto_7

    :cond_f
    move v0, v3

    :goto_7
    iput-boolean v0, p1, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->colorWrite:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p1, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    iget-object v0, p1, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    if-eq v0, v1, :cond_10

    move v3, v4

    :cond_10
    iput-boolean v3, p1, Lcom/jme3/material/RenderState;->applyCullMode:Z

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->depthTest:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p1, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->depthWrite:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p1, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->stencilTest:Z

    iput-boolean v0, p1, Lcom/jme3/material/RenderState;->applyStencilTest:Z

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->wireframe:Z

    iput-boolean v0, p1, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    :cond_11
    if-eqz v7, :cond_12

    const-string p1, "VertexColor"

    invoke-virtual {p0, p1, v4}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    :cond_12
    if-eqz v8, :cond_13

    const-string p1, "SeparateTexCoord"

    invoke-virtual {p0, p1, v4}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    :cond_13
    return-void
.end method

.method public render(Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;Lcom/jme3/renderer/RenderManager;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "Default"

    invoke-virtual {p0, v0, p3}, Lcom/jme3/material/Material;->selectTechnique(Ljava/lang/String;Lcom/jme3/renderer/RenderManager;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    invoke-virtual {v0}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object v0

    .line 4
    invoke-virtual {p3}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v6

    .line 5
    invoke-interface {v6}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object v5

    .line 6
    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->isNoRender()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-direct {p0, p1, p3, v6, v0}, Lcom/jme3/material/Material;->updateRenderState(Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Renderer;Lcom/jme3/material/TechniqueDef;)V

    .line 8
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldMatParamOverrides()Lcom/jme3/util/SafeArrayList;

    move-result-object v7

    .line 9
    iget-object v0, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    invoke-virtual {p3}, Lcom/jme3/renderer/RenderManager;->getForcedMatParams()Lcom/jme3/util/SafeArrayList;

    move-result-object v3

    move-object v1, p3

    move-object v2, v7

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/material/Technique;->makeCurrent(Lcom/jme3/renderer/RenderManager;Lcom/jme3/util/SafeArrayList;Lcom/jme3/util/SafeArrayList;Lcom/jme3/light/LightList;Ljava/util/EnumSet;)Lcom/jme3/shader/Shader;

    move-result-object v2

    .line 10
    invoke-direct {p0, v2}, Lcom/jme3/material/Material;->clearUniformsSetByCurrent(Lcom/jme3/shader/Shader;)V

    .line 11
    invoke-virtual {p3, v2}, Lcom/jme3/renderer/RenderManager;->updateUniformBindings(Lcom/jme3/shader/Shader;)V

    .line 12
    invoke-virtual {p3}, Lcom/jme3/renderer/RenderManager;->getForcedMatParams()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    invoke-direct {p0, v6, v2, v7, v0}, Lcom/jme3/material/Material;->updateShaderMaterialParameters(Lcom/jme3/renderer/Renderer;Lcom/jme3/shader/Shader;Lcom/jme3/util/SafeArrayList;Lcom/jme3/util/SafeArrayList;)Lcom/jme3/material/Material$BindUnits;

    move-result-object v5

    .line 13
    invoke-direct {p0, v2}, Lcom/jme3/material/Material;->resetUniformsNotSetByCurrent(Lcom/jme3/shader/Shader;)V

    .line 14
    iget-object v0, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/material/Technique;->render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;Lcom/jme3/material/Material$BindUnits;)V

    return-void
.end method

.method public render(Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/RenderManager;)V
    .locals 1

    .line 15
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldLightList()Lcom/jme3/light/LightList;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/material/Material;->render(Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;Lcom/jme3/renderer/RenderManager;)V

    return-void
.end method

.method public selectTechnique(Ljava/lang/String;Lcom/jme3/renderer/RenderManager;)V
    .locals 9

    iget-object v0, p0, Lcom/jme3/material/Material;->techniques:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/Technique;

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v1

    invoke-interface {v1}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v2, p1}, Lcom/jme3/material/MaterialDef;->getTechniqueDefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v4}, Lcom/jme3/material/TechniqueDef;->getRequiredCaps()Ljava/util/EnumSet;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/jme3/material/TechniqueDef;->getWeight()F

    move-result v6

    invoke-virtual {v4}, Lcom/jme3/material/TechniqueDef;->getLightMode()Lcom/jme3/material/TechniqueDef$LightMode;

    move-result-object v7

    invoke-virtual {p2}, Lcom/jme3/renderer/RenderManager;->getPreferredLightMode()Lcom/jme3/material/TechniqueDef$LightMode;

    move-result-object v8

    if-ne v7, v8, :cond_1

    const/high16 v7, 0x41200000    # 10.0f

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    add-float/2addr v6, v7

    cmpl-float v7, v6, v5

    if-lez v7, :cond_0

    new-instance v0, Lcom/jme3/material/Technique;

    invoke-direct {v0, p0, v4}, Lcom/jme3/material/Technique;-><init>(Lcom/jme3/material/Material;Lcom/jme3/material/TechniqueDef;)V

    iget-object v5, p0, Lcom/jme3/material/Material;->techniques:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v6

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    sget-object p1, Lcom/jme3/material/Material;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jme3/material/Material;->getMaterialDef()Lcom/jme3/material/MaterialDef;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/material/MaterialDef;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " selected technique def "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v0}, Lcom/jme3/material/MaterialDef;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/jme3/material/TechniqueDef;->getRequiredCaps()Ljava/util/EnumSet;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "No technique \'%s\' on material \'%s\' is supported by the video hardware. The capabilities %s are required."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v0}, Lcom/jme3/material/MaterialDef;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The requested technique %s is not available on material %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    iget-object p1, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    if-ne p1, v0, :cond_6

    return-void

    :cond_6
    :goto_2
    iput-object v0, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    invoke-virtual {v0}, Lcom/jme3/material/Technique;->notifyTechniqueSwitched()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/Material;->sortingId:I

    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/jme3/shader/VarType;->Boolean:Lcom/jme3/shader/VarType;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    return-void
.end method

.method public setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V
    .locals 1

    sget-object v0, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 1

    .line 1
    sget-object v0, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    return-void
.end method

.method public setFloat(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    return-void
.end method

.method public setKey(Lcom/jme3/asset/AssetKey;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/Material;->key:Lcom/jme3/asset/AssetKey;

    return-void
.end method

.method public setMatrix4(Ljava/lang/String;Lcom/jme3/math/Matrix4f;)V
    .locals 1

    sget-object v0, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/Material;->name:Ljava/lang/String;

    return-void
.end method

.method public setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/jme3/material/Material;->checkSetParam(Lcom/jme3/shader/VarType;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/jme3/shader/VarType;->isTextureType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    check-cast p3, Lcom/jme3/texture/Texture;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/material/Material;->setTextureParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Lcom/jme3/texture/Texture;)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    new-instance v1, Lcom/jme3/material/MatParam;

    invoke-direct {v1, p2, p1, p3}, Lcom/jme3/material/MatParam;-><init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/jme3/util/ListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, p3}, Lcom/jme3/material/MatParam;->setValue(Ljava/lang/Object;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/material/Technique;->notifyParamChanged(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 9
    :cond_2
    invoke-virtual {p2}, Lcom/jme3/shader/VarType;->isImageType()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/jme3/material/Material;->sortingId:I

    :cond_3
    :goto_1
    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/jme3/material/Material;->getMaterialDef()Lcom/jme3/material/MaterialDef;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/material/MaterialDef;->getMaterialParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    return-void
.end method

.method public setReceivesShadows(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/material/Material;->receivesShadows:Z

    return-void
.end method

.method public setShaderStorageBufferObject(Ljava/lang/String;Lcom/jme3/shader/bufferobject/BufferObject;)V
    .locals 1

    sget-object v0, Lcom/jme3/shader/VarType;->ShaderStorageBufferObject:Lcom/jme3/shader/VarType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    return-void
.end method

.method public setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/jme3/shader/VarType;->TextureCubeMap:Lcom/jme3/shader/VarType;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown texture type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget-object v0, Lcom/jme3/shader/VarType;->Texture3D:Lcom/jme3/shader/VarType;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/jme3/shader/VarType;->TextureArray:Lcom/jme3/shader/VarType;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/jme3/shader/VarType;->Texture2D:Lcom/jme3/shader/VarType;

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/material/Material;->setTextureParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Lcom/jme3/texture/Texture;)V

    return-void
.end method

.method public setTextureParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Lcom/jme3/texture/Texture;)V
    .locals 2

    if-eqz p3, :cond_3

    invoke-direct {p0, p2, p1}, Lcom/jme3/material/Material;->checkSetParam(Lcom/jme3/shader/VarType;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/jme3/material/Material;->getTextureParam(Ljava/lang/String;)Lcom/jme3/material/MatParamTexture;

    move-result-object v0

    invoke-direct {p0, p1, p3}, Lcom/jme3/material/Material;->checkTextureParamColorSpace(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    invoke-virtual {p3}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/jme3/material/MatParamTexture;

    invoke-direct {v0, p2, p1, p3, v1}, Lcom/jme3/material/MatParamTexture;-><init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Lcom/jme3/texture/Texture;Lcom/jme3/texture/image/ColorSpace;)V

    iget-object v1, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v1, p1, v0}, Lcom/jme3/util/ListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p3}, Lcom/jme3/material/MatParamTexture;->setTextureValue(Lcom/jme3/texture/Texture;)V

    invoke-virtual {v0, v1}, Lcom/jme3/material/MatParamTexture;->setColorSpace(Lcom/jme3/texture/image/ColorSpace;)V

    :goto_1
    iget-object v0, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/material/Technique;->notifyParamChanged(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    :cond_2
    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/Material;->sortingId:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setTransparent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/material/Material;->transparent:Z

    return-void
.end method

.method public setUniformBufferObject(Ljava/lang/String;Lcom/jme3/shader/bufferobject/BufferObject;)V
    .locals 1

    sget-object v0, Lcom/jme3/shader/VarType;->UniformBufferObject:Lcom/jme3/shader/VarType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    return-void
.end method

.method public setVector2(Ljava/lang/String;Lcom/jme3/math/Vector2f;)V
    .locals 1

    sget-object v0, Lcom/jme3/shader/VarType;->Vector2:Lcom/jme3/shader/VarType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    return-void
.end method

.method public setVector3(Ljava/lang/String;Lcom/jme3/math/Vector3f;)V
    .locals 1

    sget-object v0, Lcom/jme3/shader/VarType;->Vector3:Lcom/jme3/shader/VarType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    return-void
.end method

.method public setVector4(Ljava/lang/String;Lcom/jme3/math/Vector4f;)V
    .locals 1

    sget-object v0, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Material[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/Material;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", def="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jme3/material/MaterialDef;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    invoke-virtual {v1}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/material/TechniqueDef;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v0}, Lcom/jme3/material/MaterialDef;->getAssetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "material_def"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    const-string v1, "render_state"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Lcom/jme3/material/Material;->transparent:Z

    const-string v1, "is_transparent"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/material/Material;->receivesShadows:Z

    const-string v1, "receives_shadows"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/material/Material;->name:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    const-string v1, "parameters"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeStringSavableMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
