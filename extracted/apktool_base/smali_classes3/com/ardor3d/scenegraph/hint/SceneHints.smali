.class public Lcom/ardor3d/scenegraph/hint/SceneHints;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/Savable;


# instance fields
.field protected _castsShadows:Z

.field protected _cullHint:Lcom/ardor3d/scenegraph/hint/CullHint;

.field protected _dataMode:Lcom/ardor3d/scenegraph/hint/DataMode;

.field protected _lightCombineMode:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

.field protected _normalsMode:Lcom/ardor3d/scenegraph/hint/NormalsMode;

.field protected _orthoOrder:I

.field protected final _pickingHints:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/scenegraph/hint/PickingHint;",
            ">;"
        }
    .end annotation
.end field

.field protected _renderBucketType:Lcom/ardor3d/renderer/queue/RenderBucketType;

.field private final _source:Lcom/ardor3d/scenegraph/hint/Hintable;

.field protected _textureCombineMode:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

.field private _transpType:Lcom/ardor3d/scenegraph/hint/TransparencyType;


# direct methods
.method public constructor <init>(Lcom/ardor3d/scenegraph/hint/Hintable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ardor3d/scenegraph/hint/DataMode;->Inherit:Lcom/ardor3d/scenegraph/hint/DataMode;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_dataMode:Lcom/ardor3d/scenegraph/hint/DataMode;

    sget-object v0, Lcom/ardor3d/scenegraph/hint/NormalsMode;->Inherit:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_normalsMode:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    sget-object v0, Lcom/ardor3d/scenegraph/hint/CullHint;->Inherit:Lcom/ardor3d/scenegraph/hint/CullHint;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_cullHint:Lcom/ardor3d/scenegraph/hint/CullHint;

    sget-object v0, Lcom/ardor3d/scenegraph/hint/LightCombineMode;->Inherit:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_lightCombineMode:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    sget-object v0, Lcom/ardor3d/scenegraph/hint/TextureCombineMode;->Inherit:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_textureCombineMode:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    sget-object v0, Lcom/ardor3d/renderer/queue/RenderBucketType;->Inherit:Lcom/ardor3d/renderer/queue/RenderBucketType;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_renderBucketType:Lcom/ardor3d/renderer/queue/RenderBucketType;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_orthoOrder:I

    const-class v0, Lcom/ardor3d/scenegraph/hint/PickingHint;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_pickingHints:Ljava/util/EnumSet;

    sget-object v0, Lcom/ardor3d/scenegraph/hint/TransparencyType;->Inherit:Lcom/ardor3d/scenegraph/hint/TransparencyType;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_transpType:Lcom/ardor3d/scenegraph/hint/TransparencyType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_castsShadows:Z

    iput-object p1, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_source:Lcom/ardor3d/scenegraph/hint/Hintable;

    return-void
.end method


# virtual methods
.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/scenegraph/hint/SceneHints;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getCullHint()Lcom/ardor3d/scenegraph/hint/CullHint;
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_cullHint:Lcom/ardor3d/scenegraph/hint/CullHint;

    sget-object v1, Lcom/ardor3d/scenegraph/hint/CullHint;->Inherit:Lcom/ardor3d/scenegraph/hint/CullHint;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_source:Lcom/ardor3d/scenegraph/hint/Hintable;

    invoke-interface {v0}, Lcom/ardor3d/scenegraph/hint/Hintable;->getParentHintable()Lcom/ardor3d/scenegraph/hint/Hintable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ardor3d/scenegraph/hint/Hintable;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getCullHint()Lcom/ardor3d/scenegraph/hint/CullHint;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/ardor3d/scenegraph/hint/CullHint;->Dynamic:Lcom/ardor3d/scenegraph/hint/CullHint;

    return-object v0
.end method

.method public getDataMode()Lcom/ardor3d/scenegraph/hint/DataMode;
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_dataMode:Lcom/ardor3d/scenegraph/hint/DataMode;

    sget-object v1, Lcom/ardor3d/scenegraph/hint/DataMode;->Inherit:Lcom/ardor3d/scenegraph/hint/DataMode;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_source:Lcom/ardor3d/scenegraph/hint/Hintable;

    invoke-interface {v0}, Lcom/ardor3d/scenegraph/hint/Hintable;->getParentHintable()Lcom/ardor3d/scenegraph/hint/Hintable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ardor3d/scenegraph/hint/Hintable;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getDataMode()Lcom/ardor3d/scenegraph/hint/DataMode;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/ardor3d/scenegraph/hint/DataMode;->Arrays:Lcom/ardor3d/scenegraph/hint/DataMode;

    return-object v0
.end method

.method public getLightCombineMode()Lcom/ardor3d/scenegraph/hint/LightCombineMode;
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_lightCombineMode:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    sget-object v1, Lcom/ardor3d/scenegraph/hint/LightCombineMode;->Inherit:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_source:Lcom/ardor3d/scenegraph/hint/Hintable;

    invoke-interface {v0}, Lcom/ardor3d/scenegraph/hint/Hintable;->getParentHintable()Lcom/ardor3d/scenegraph/hint/Hintable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ardor3d/scenegraph/hint/Hintable;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getLightCombineMode()Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/ardor3d/scenegraph/hint/LightCombineMode;->CombineFirst:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    return-object v0
.end method

.method public getLocalCullHint()Lcom/ardor3d/scenegraph/hint/CullHint;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_cullHint:Lcom/ardor3d/scenegraph/hint/CullHint;

    return-object v0
.end method

.method public getLocalDataMode()Lcom/ardor3d/scenegraph/hint/DataMode;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_dataMode:Lcom/ardor3d/scenegraph/hint/DataMode;

    return-object v0
.end method

.method public getLocalLightCombineMode()Lcom/ardor3d/scenegraph/hint/LightCombineMode;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_lightCombineMode:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    return-object v0
.end method

.method public getLocalNormalsMode()Lcom/ardor3d/scenegraph/hint/NormalsMode;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_normalsMode:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    return-object v0
.end method

.method public getLocalRenderBucketType()Lcom/ardor3d/renderer/queue/RenderBucketType;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_renderBucketType:Lcom/ardor3d/renderer/queue/RenderBucketType;

    return-object v0
.end method

.method public getLocalTextureCombineMode()Lcom/ardor3d/scenegraph/hint/TextureCombineMode;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_textureCombineMode:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    return-object v0
.end method

.method public getLocalTransparencyType()Lcom/ardor3d/scenegraph/hint/TransparencyType;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_transpType:Lcom/ardor3d/scenegraph/hint/TransparencyType;

    return-object v0
.end method

.method public getNormalsMode()Lcom/ardor3d/scenegraph/hint/NormalsMode;
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_normalsMode:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    sget-object v1, Lcom/ardor3d/scenegraph/hint/NormalsMode;->Inherit:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_source:Lcom/ardor3d/scenegraph/hint/Hintable;

    invoke-interface {v0}, Lcom/ardor3d/scenegraph/hint/Hintable;->getParentHintable()Lcom/ardor3d/scenegraph/hint/Hintable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ardor3d/scenegraph/hint/Hintable;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getNormalsMode()Lcom/ardor3d/scenegraph/hint/NormalsMode;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/ardor3d/scenegraph/hint/NormalsMode;->NormalizeIfScaled:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    return-object v0
.end method

.method public getOrthoOrder()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_orthoOrder:I

    return v0
.end method

.method public getRenderBucketType()Lcom/ardor3d/renderer/queue/RenderBucketType;
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_renderBucketType:Lcom/ardor3d/renderer/queue/RenderBucketType;

    sget-object v1, Lcom/ardor3d/renderer/queue/RenderBucketType;->Inherit:Lcom/ardor3d/renderer/queue/RenderBucketType;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_source:Lcom/ardor3d/scenegraph/hint/Hintable;

    invoke-interface {v0}, Lcom/ardor3d/scenegraph/hint/Hintable;->getParentHintable()Lcom/ardor3d/scenegraph/hint/Hintable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ardor3d/scenegraph/hint/Hintable;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getRenderBucketType()Lcom/ardor3d/renderer/queue/RenderBucketType;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/ardor3d/renderer/queue/RenderBucketType;->Opaque:Lcom/ardor3d/renderer/queue/RenderBucketType;

    return-object v0
.end method

.method public getTextureCombineMode()Lcom/ardor3d/scenegraph/hint/TextureCombineMode;
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_textureCombineMode:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    sget-object v1, Lcom/ardor3d/scenegraph/hint/TextureCombineMode;->Inherit:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_source:Lcom/ardor3d/scenegraph/hint/Hintable;

    invoke-interface {v0}, Lcom/ardor3d/scenegraph/hint/Hintable;->getParentHintable()Lcom/ardor3d/scenegraph/hint/Hintable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ardor3d/scenegraph/hint/Hintable;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getTextureCombineMode()Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/ardor3d/scenegraph/hint/TextureCombineMode;->CombineClosest:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    return-object v0
.end method

.method public getTransparencyType()Lcom/ardor3d/scenegraph/hint/TransparencyType;
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_transpType:Lcom/ardor3d/scenegraph/hint/TransparencyType;

    sget-object v1, Lcom/ardor3d/scenegraph/hint/TransparencyType;->Inherit:Lcom/ardor3d/scenegraph/hint/TransparencyType;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_source:Lcom/ardor3d/scenegraph/hint/Hintable;

    invoke-interface {v0}, Lcom/ardor3d/scenegraph/hint/Hintable;->getParentHintable()Lcom/ardor3d/scenegraph/hint/Hintable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ardor3d/scenegraph/hint/Hintable;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getTransparencyType()Lcom/ardor3d/scenegraph/hint/TransparencyType;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/ardor3d/scenegraph/hint/TransparencyType;->OnePass:Lcom/ardor3d/scenegraph/hint/TransparencyType;

    return-object v0
.end method

.method public isCastsShadows()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_castsShadows:Z

    return v0
.end method

.method public isPickingHintEnabled(Lcom/ardor3d/scenegraph/hint/PickingHint;)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_pickingHints:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "orthoOrder"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_orthoOrder:I

    const-class v0, Lcom/ardor3d/scenegraph/hint/CullHint;

    sget-object v2, Lcom/ardor3d/scenegraph/hint/CullHint;->Inherit:Lcom/ardor3d/scenegraph/hint/CullHint;

    const-string v3, "cullMode"

    invoke-interface {p1, v3, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/hint/CullHint;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_cullHint:Lcom/ardor3d/scenegraph/hint/CullHint;

    const-class v0, Lcom/ardor3d/renderer/queue/RenderBucketType;

    sget-object v2, Lcom/ardor3d/renderer/queue/RenderBucketType;->Inherit:Lcom/ardor3d/renderer/queue/RenderBucketType;

    const-string v3, "renderBucketType"

    invoke-interface {p1, v3, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/queue/RenderBucketType;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_renderBucketType:Lcom/ardor3d/renderer/queue/RenderBucketType;

    const-class v0, Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    sget-object v2, Lcom/ardor3d/scenegraph/hint/LightCombineMode;->Inherit:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    const-string v3, "lightCombineMode"

    invoke-interface {p1, v3, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_lightCombineMode:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    const-class v0, Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    sget-object v2, Lcom/ardor3d/scenegraph/hint/TextureCombineMode;->Inherit:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    const-string v3, "textureCombineMode"

    invoke-interface {p1, v3, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_textureCombineMode:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    const-class v0, Lcom/ardor3d/scenegraph/hint/NormalsMode;

    sget-object v2, Lcom/ardor3d/scenegraph/hint/NormalsMode;->Inherit:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    const-string v3, "normalsMode"

    invoke-interface {p1, v3, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/hint/NormalsMode;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_normalsMode:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    const-class v0, Lcom/ardor3d/scenegraph/hint/DataMode;

    sget-object v2, Lcom/ardor3d/scenegraph/hint/DataMode;->Inherit:Lcom/ardor3d/scenegraph/hint/DataMode;

    const-string v3, "dataMode"

    invoke-interface {p1, v3, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/hint/DataMode;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_dataMode:Lcom/ardor3d/scenegraph/hint/DataMode;

    const-class v0, Lcom/ardor3d/scenegraph/hint/TransparencyType;

    sget-object v2, Lcom/ardor3d/scenegraph/hint/TransparencyType;->Inherit:Lcom/ardor3d/scenegraph/hint/TransparencyType;

    const-string v3, "transpType"

    invoke-interface {p1, v3, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/hint/TransparencyType;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_transpType:Lcom/ardor3d/scenegraph/hint/TransparencyType;

    const-string v0, "castsShadows"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_castsShadows:Z

    const-class v0, Lcom/ardor3d/scenegraph/hint/PickingHint;

    const/4 v2, 0x0

    const-string v3, "pickingHints"

    invoke-interface {p1, v3, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnumArray(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Enum;)[Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, [Lcom/ardor3d/scenegraph/hint/PickingHint;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_pickingHints:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_pickingHints:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ardor3d/scenegraph/hint/PickingHint;->values()[Lcom/ardor3d/scenegraph/hint/PickingHint;

    move-result-object p1

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_pickingHints:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public set(Lcom/ardor3d/scenegraph/hint/SceneHints;)V
    .locals 2

    iget-object v0, p1, Lcom/ardor3d/scenegraph/hint/SceneHints;->_dataMode:Lcom/ardor3d/scenegraph/hint/DataMode;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_dataMode:Lcom/ardor3d/scenegraph/hint/DataMode;

    iget-object v0, p1, Lcom/ardor3d/scenegraph/hint/SceneHints;->_normalsMode:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_normalsMode:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    iget-object v0, p1, Lcom/ardor3d/scenegraph/hint/SceneHints;->_cullHint:Lcom/ardor3d/scenegraph/hint/CullHint;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_cullHint:Lcom/ardor3d/scenegraph/hint/CullHint;

    iget-object v0, p1, Lcom/ardor3d/scenegraph/hint/SceneHints;->_lightCombineMode:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_lightCombineMode:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    iget-object v0, p1, Lcom/ardor3d/scenegraph/hint/SceneHints;->_textureCombineMode:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_textureCombineMode:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    iget-object v0, p1, Lcom/ardor3d/scenegraph/hint/SceneHints;->_renderBucketType:Lcom/ardor3d/renderer/queue/RenderBucketType;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_renderBucketType:Lcom/ardor3d/renderer/queue/RenderBucketType;

    iget v0, p1, Lcom/ardor3d/scenegraph/hint/SceneHints;->_orthoOrder:I

    iput v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_orthoOrder:I

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_pickingHints:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_pickingHints:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/ardor3d/scenegraph/hint/SceneHints;->_pickingHints:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, p1, Lcom/ardor3d/scenegraph/hint/SceneHints;->_castsShadows:Z

    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_castsShadows:Z

    iget-object p1, p1, Lcom/ardor3d/scenegraph/hint/SceneHints;->_transpType:Lcom/ardor3d/scenegraph/hint/TransparencyType;

    iput-object p1, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_transpType:Lcom/ardor3d/scenegraph/hint/TransparencyType;

    return-void
.end method

.method public setAllPickingHints(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_pickingHints:Ljava/util/EnumSet;

    const-class v0, Lcom/ardor3d/scenegraph/hint/PickingHint;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_pickingHints:Ljava/util/EnumSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    :goto_0
    return-void
.end method

.method public setCastsShadows(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_castsShadows:Z

    return-void
.end method

.method public setCullHint(Lcom/ardor3d/scenegraph/hint/CullHint;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_cullHint:Lcom/ardor3d/scenegraph/hint/CullHint;

    return-void
.end method

.method public setDataMode(Lcom/ardor3d/scenegraph/hint/DataMode;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_dataMode:Lcom/ardor3d/scenegraph/hint/DataMode;

    return-void
.end method

.method public setLightCombineMode(Lcom/ardor3d/scenegraph/hint/LightCombineMode;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_lightCombineMode:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mode can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNormalsMode(Lcom/ardor3d/scenegraph/hint/NormalsMode;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_normalsMode:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    return-void
.end method

.method public setOrthoOrder(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_orthoOrder:I

    return-void
.end method

.method public setPickingHint(Lcom/ardor3d/scenegraph/hint/PickingHint;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_pickingHints:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_pickingHints:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_renderBucketType:Lcom/ardor3d/renderer/queue/RenderBucketType;

    return-void
.end method

.method public setTextureCombineMode(Lcom/ardor3d/scenegraph/hint/TextureCombineMode;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_textureCombineMode:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mode can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTransparencyType(Lcom/ardor3d/scenegraph/hint/TransparencyType;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_transpType:Lcom/ardor3d/scenegraph/hint/TransparencyType;

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_orthoOrder:I

    const-string v1, "orthoOrder"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_cullHint:Lcom/ardor3d/scenegraph/hint/CullHint;

    const-string v1, "cullMode"

    sget-object v3, Lcom/ardor3d/scenegraph/hint/CullHint;->Inherit:Lcom/ardor3d/scenegraph/hint/CullHint;

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_renderBucketType:Lcom/ardor3d/renderer/queue/RenderBucketType;

    const-string v1, "renderBucketType"

    sget-object v3, Lcom/ardor3d/renderer/queue/RenderBucketType;->Inherit:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_lightCombineMode:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    const-string v1, "lightCombineMode"

    sget-object v3, Lcom/ardor3d/scenegraph/hint/LightCombineMode;->Inherit:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_textureCombineMode:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    const-string v1, "textureCombineMode"

    sget-object v3, Lcom/ardor3d/scenegraph/hint/TextureCombineMode;->Inherit:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_normalsMode:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    const-string v1, "normalsMode"

    sget-object v3, Lcom/ardor3d/scenegraph/hint/NormalsMode;->Inherit:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_dataMode:Lcom/ardor3d/scenegraph/hint/DataMode;

    const-string v1, "dataMode"

    sget-object v3, Lcom/ardor3d/scenegraph/hint/DataMode;->Inherit:Lcom/ardor3d/scenegraph/hint/DataMode;

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_pickingHints:Ljava/util/EnumSet;

    new-array v1, v2, [Lcom/ardor3d/scenegraph/hint/PickingHint;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    const-string v1, "pickingHints"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write([Ljava/lang/Enum;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_transpType:Lcom/ardor3d/scenegraph/hint/TransparencyType;

    const-string v1, "transpType"

    sget-object v2, Lcom/ardor3d/scenegraph/hint/TransparencyType;->Inherit:Lcom/ardor3d/scenegraph/hint/TransparencyType;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/hint/SceneHints;->_castsShadows:Z

    const-string v1, "castsShadows"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
