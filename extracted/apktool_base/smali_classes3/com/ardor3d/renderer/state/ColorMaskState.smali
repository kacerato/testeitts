.class public Lcom/ardor3d/renderer/state/ColorMaskState;
.super Lcom/ardor3d/renderer/state/RenderState;
.source "SourceFile"


# instance fields
.field protected alpha:Z

.field protected blue:Z

.field protected green:Z

.field protected red:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/RenderState;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->blue:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->green:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->red:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->alpha:Z

    return-void
.end method


# virtual methods
.method public createStateRecord()Lcom/ardor3d/renderer/state/record/StateRecord;
    .locals 1

    new-instance v0, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;-><init>()V

    return-object v0
.end method

.method public getAlpha()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->alpha:Z

    return v0
.end method

.method public getBlue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->blue:Z

    return v0
.end method

.method public getGreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->green:Z

    return v0
.end method

.method public getRed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->red:Z

    return v0
.end method

.method public getType()Lcom/ardor3d/renderer/state/RenderState$StateType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->ColorMask:Lcom/ardor3d/renderer/state/RenderState$StateType;

    return-object v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "blue"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->blue:Z

    const-string v0, "green"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->green:Z

    const-string v0, "red"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->red:Z

    const-string v0, "alpha"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->alpha:Z

    return-void
.end method

.method public setAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->blue:Z

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->green:Z

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->red:Z

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->alpha:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setAlpha(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->alpha:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setBlue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->blue:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setGreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->green:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setRed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->red:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->blue:Z

    const-string v1, "blue"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->green:Z

    const-string v1, "green"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->red:Z

    const-string v1, "red"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/ColorMaskState;->alpha:Z

    const-string v1, "alpha"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
