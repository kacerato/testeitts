.class public Lcom/ardor3d/renderer/state/LightState;
.super Lcom/ardor3d/renderer/state/RenderState;
.source "SourceFile"


# static fields
.field public static final DEFAULT_GLOBAL_AMBIENT:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static LIGHTS_ENABLED:Z = true

.field public static final MASK_AMBIENT:I = 0x1

.field public static final MASK_DIFFUSE:I = 0x2

.field public static final MASK_GLOBALAMBIENT:I = 0x8

.field public static final MASK_SPECULAR:I = 0x4

.field public static final MAX_LIGHTS_ALLOWED:I = 0x8


# instance fields
.field protected _globalAmbient:Lcom/ardor3d/math/ColorRGBA;

.field protected backLightMask:I

.field private lightList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/light/Light;",
            ">;"
        }
    .end annotation
.end field

.field protected lightMask:I

.field protected localViewerOn:Z

.field protected separateSpecularOn:Z

.field protected twoSidedOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/renderer/state/LightState;->DEFAULT_GLOBAL_AMBIENT:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/RenderState;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ardor3d/renderer/state/LightState;->lightMask:I

    iput v0, p0, Lcom/ardor3d/renderer/state/LightState;->backLightMask:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/LightState;->twoSidedOn:Z

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    sget-object v1, Lcom/ardor3d/renderer/state/LightState;->DEFAULT_GLOBAL_AMBIENT:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/LightState;->_globalAmbient:Lcom/ardor3d/math/ColorRGBA;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/LightState;->lightList:Ljava/util/List;

    return-void
.end method

.method private static copyLightState(Lcom/ardor3d/renderer/state/LightState;Lcom/ardor3d/renderer/state/LightState;)V
    .locals 3

    invoke-virtual {p0}, Lcom/ardor3d/renderer/state/LightState;->getTwoSidedLighting()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ardor3d/renderer/state/LightState;->setTwoSidedLighting(Z)V

    invoke-virtual {p0}, Lcom/ardor3d/renderer/state/LightState;->getLocalViewer()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ardor3d/renderer/state/LightState;->setLocalViewer(Z)V

    invoke-virtual {p0}, Lcom/ardor3d/renderer/state/LightState;->getSeparateSpecular()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ardor3d/renderer/state/LightState;->setSeparateSpecular(Z)V

    invoke-virtual {p0}, Lcom/ardor3d/renderer/state/RenderState;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/ardor3d/renderer/state/LightState;->getGlobalAmbient()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ardor3d/renderer/state/LightState;->setGlobalAmbient(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    invoke-virtual {p0}, Lcom/ardor3d/renderer/state/LightState;->getLightMask()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ardor3d/renderer/state/LightState;->setLightMask(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    invoke-virtual {p0}, Lcom/ardor3d/renderer/state/LightState;->getLightList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/ardor3d/renderer/state/LightState;->get(I)Lcom/ardor3d/light/Light;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Lcom/ardor3d/renderer/state/LightState;->attach(Lcom/ardor3d/light/Light;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public attach(Lcom/ardor3d/light/Light;)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/LightState;->lightList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/renderer/state/LightState;->lightList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public createStateRecord()Lcom/ardor3d/renderer/state/record/StateRecord;
    .locals 1

    new-instance v0, Lcom/ardor3d/renderer/state/record/LightStateRecord;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/record/LightStateRecord;-><init>()V

    return-object v0
.end method

.method public detach(Lcom/ardor3d/light/Light;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/LightState;->lightList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public detachAll()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/LightState;->lightList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public extract(Ljava/util/Stack;Lcom/ardor3d/scenegraph/Spatial;)Lcom/ardor3d/renderer/state/RenderState;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "+",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;",
            "Lcom/ardor3d/scenegraph/Spatial;",
            ")",
            "Lcom/ardor3d/renderer/state/RenderState;"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/RenderState;

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getLightCombineMode()Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    move-result-object v0

    check-cast p2, Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/Mesh;->getLightState()Lcom/ardor3d/renderer/state/LightState;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/ardor3d/renderer/state/LightState;

    invoke-direct {v1}, Lcom/ardor3d/renderer/state/LightState;-><init>()V

    invoke-virtual {p2, v1}, Lcom/ardor3d/scenegraph/Mesh;->setLightState(Lcom/ardor3d/renderer/state/LightState;)V

    :cond_1
    invoke-virtual {v1}, Lcom/ardor3d/renderer/state/LightState;->detachAll()V

    sget-object p2, Lcom/ardor3d/scenegraph/hint/LightCombineMode;->Replace:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    if-eq v0, p2, :cond_a

    sget-object p2, Lcom/ardor3d/scenegraph/hint/LightCombineMode;->Off:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    const/4 v2, 0x1

    if-eq v0, p2, :cond_2

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    if-ne p2, v2, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/ardor3d/renderer/state/LightState$1;->$SwitchMap$com$ardor3d$scenegraph$hint$LightCombineMode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p2, p2, v3

    const/4 v3, 0x0

    if-eq p2, v2, :cond_6

    const/4 v4, 0x2

    if-eq p2, v4, :cond_6

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    goto :goto_3

    :cond_3
    array-length p2, p1

    move v0, v3

    :goto_0
    if-ge v3, p2, :cond_5

    aget-object v4, p1, v3

    check-cast v4, Lcom/ardor3d/renderer/state/LightState;

    invoke-virtual {v4}, Lcom/ardor3d/renderer/state/RenderState;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v4, v1}, Lcom/ardor3d/renderer/state/LightState;->copyLightState(Lcom/ardor3d/renderer/state/LightState;Lcom/ardor3d/renderer/state/LightState;)V

    move v0, v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move v3, v0

    goto :goto_3

    :cond_6
    array-length p2, p1

    sub-int/2addr p2, v2

    :goto_2
    if-ltz p2, :cond_9

    aget-object v4, p1, p2

    check-cast v4, Lcom/ardor3d/renderer/state/LightState;

    invoke-virtual {v4}, Lcom/ardor3d/renderer/state/RenderState;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v4, Lcom/ardor3d/scenegraph/hint/LightCombineMode;->CombineClosestEnabled:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    if-ne v0, v4, :cond_8

    goto :goto_3

    :cond_7
    invoke-static {v4, v1}, Lcom/ardor3d/renderer/state/LightState;->copyLightState(Lcom/ardor3d/renderer/state/LightState;Lcom/ardor3d/renderer/state/LightState;)V

    move v3, v2

    :cond_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_9
    :goto_3
    invoke-virtual {v1, v3}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    goto :goto_5

    :cond_a
    :goto_4
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/LightState;

    invoke-static {p1, v1}, Lcom/ardor3d/renderer/state/LightState;->copyLightState(Lcom/ardor3d/renderer/state/LightState;Lcom/ardor3d/renderer/state/LightState;)V

    :goto_5
    return-object v1
.end method

.method public get(I)Lcom/ardor3d/light/Light;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/LightState;->lightList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/light/Light;

    return-object p1
.end method

.method public getGlobalAmbient()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/LightState;->_globalAmbient:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getLightList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ardor3d/light/Light;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/renderer/state/LightState;->lightList:Ljava/util/List;

    return-object v0
.end method

.method public getLightMask()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/LightState;->lightMask:I

    return v0
.end method

.method public getLocalViewer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/LightState;->localViewerOn:Z

    return v0
.end method

.method public getNumberOfChildren()I
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/state/LightState;->lightList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/state/LightState;->lightList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getSeparateSpecular()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/LightState;->separateSpecularOn:Z

    return v0
.end method

.method public getTwoSidedLighting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/LightState;->twoSidedOn:Z

    return v0
.end method

.method public getType()Lcom/ardor3d/renderer/state/RenderState$StateType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->Light:Lcom/ardor3d/renderer/state/RenderState$StateType;

    return-object v0
.end method

.method public popLightMask()V
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/LightState;->backLightMask:I

    iput v0, p0, Lcom/ardor3d/renderer/state/LightState;->lightMask:I

    return-void
.end method

.method public pushLightMask()V
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/LightState;->lightMask:I

    iput v0, p0, Lcom/ardor3d/renderer/state/LightState;->backLightMask:I

    return-void
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "lightList"

    invoke-interface {p1, v1, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavableList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/LightState;->lightList:Ljava/util/List;

    const-string v0, "lightMask"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/state/LightState;->lightMask:I

    const-string v0, "backLightMask"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/state/LightState;->backLightMask:I

    const-string v0, "twoSidedOn"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/LightState;->twoSidedOn:Z

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    sget-object v2, Lcom/ardor3d/renderer/state/LightState;->DEFAULT_GLOBAL_AMBIENT:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v0, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    const-string v2, "globalAmbient"

    invoke-interface {p1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/ColorRGBA;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/LightState;->_globalAmbient:Lcom/ardor3d/math/ColorRGBA;

    const-string v0, "localViewerOn"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/LightState;->localViewerOn:Z

    const-string v0, "separateSpecularOn"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/LightState;->separateSpecularOn:Z

    return-void
.end method

.method public setGlobalAmbient(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/LightState;->_globalAmbient:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setLightMask(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/LightState;->lightMask:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setLocalViewer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/LightState;->localViewerOn:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setSeparateSpecular(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/LightState;->separateSpecularOn:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setTwoSidedLighting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/LightState;->twoSidedOn:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/LightState;->lightList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "lightList"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->writeSavableList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    iget v0, p0, Lcom/ardor3d/renderer/state/LightState;->lightMask:I

    const-string v1, "lightMask"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/renderer/state/LightState;->backLightMask:I

    const-string v1, "backLightMask"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/LightState;->twoSidedOn:Z

    const-string v1, "twoSidedOn"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/LightState;->_globalAmbient:Lcom/ardor3d/math/ColorRGBA;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    sget-object v3, Lcom/ardor3d/renderer/state/LightState;->DEFAULT_GLOBAL_AMBIENT:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v1, v3}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    const-string v3, "globalAmbient"

    invoke-interface {p1, v0, v3, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/LightState;->localViewerOn:Z

    const-string v1, "localViewerOn"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/LightState;->separateSpecularOn:Z

    const-string v1, "separateSpecularOn"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
