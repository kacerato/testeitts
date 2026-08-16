.class public Lcom/ardor3d/renderer/state/record/LightStateRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# instance fields
.field private backLightMask:I

.field private enabled:Z

.field public globalAmbient:Lcom/ardor3d/math/ColorRGBA;

.field public lightBuffer:Ljava/nio/FloatBuffer;

.field private final lightList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/renderer/state/record/LightRecord;",
            ">;"
        }
    .end annotation
.end field

.field private lightMask:I

.field private localViewer:Z

.field private separateSpecular:Z

.field private twoSidedOn:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->lightList:Ljava/util/List;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->globalAmbient:Lcom/ardor3d/math/ColorRGBA;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createColorBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->lightBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public getBackLightMask()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->backLightMask:I

    return v0
.end method

.method public getLightMask()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->lightMask:I

    return v0
.end method

.method public getLightRecord(I)Lcom/ardor3d/renderer/state/record/LightRecord;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->lightList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->lightList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/record/LightRecord;

    return-object p1
.end method

.method public invalidate()V
    .locals 2

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->lightList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/renderer/state/record/LightRecord;

    invoke-virtual {v1}, Lcom/ardor3d/renderer/state/record/LightRecord;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->lightMask:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->backLightMask:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->twoSidedOn:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->enabled:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->localViewer:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->separateSpecular:Z

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->globalAmbient:Lcom/ardor3d/math/ColorRGBA;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->enabled:Z

    return v0
.end method

.method public isLocalViewer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->localViewer:Z

    return v0
.end method

.method public isSeparateSpecular()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->separateSpecular:Z

    return v0
.end method

.method public isTwoSidedOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->twoSidedOn:Z

    return v0
.end method

.method public setBackLightMask(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->backLightMask:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->enabled:Z

    return-void
.end method

.method public setLightMask(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->lightMask:I

    return-void
.end method

.method public setLightRecord(Lcom/ardor3d/renderer/state/record/LightRecord;I)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->lightList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->lightList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->lightList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLocalViewer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->localViewer:Z

    return-void
.end method

.method public setSeparateSpecular(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->separateSpecular:Z

    return-void
.end method

.method public setTwoSidedOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->twoSidedOn:Z

    return-void
.end method

.method public validate()V
    .locals 2

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->validate()V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/LightStateRecord;->lightList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/renderer/state/record/LightRecord;

    invoke-virtual {v1}, Lcom/ardor3d/renderer/state/record/StateRecord;->validate()V

    goto :goto_0

    :cond_0
    return-void
.end method
