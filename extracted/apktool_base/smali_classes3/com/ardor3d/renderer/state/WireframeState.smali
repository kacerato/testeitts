.class public Lcom/ardor3d/renderer/state/WireframeState;
.super Lcom/ardor3d/renderer/state/RenderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/renderer/state/WireframeState$Face;
    }
.end annotation


# instance fields
.field protected _antialiased:Z

.field protected _face:Lcom/ardor3d/renderer/state/WireframeState$Face;

.field protected _lineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/RenderState;-><init>()V

    sget-object v0, Lcom/ardor3d/renderer/state/WireframeState$Face;->FrontAndBack:Lcom/ardor3d/renderer/state/WireframeState$Face;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/WireframeState;->_face:Lcom/ardor3d/renderer/state/WireframeState$Face;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ardor3d/renderer/state/WireframeState;->_lineWidth:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/WireframeState;->_antialiased:Z

    return-void
.end method


# virtual methods
.method public createStateRecord()Lcom/ardor3d/renderer/state/record/StateRecord;
    .locals 1

    new-instance v0, Lcom/ardor3d/renderer/state/record/WireframeStateRecord;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/record/WireframeStateRecord;-><init>()V

    return-object v0
.end method

.method public getFace()Lcom/ardor3d/renderer/state/WireframeState$Face;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/WireframeState;->_face:Lcom/ardor3d/renderer/state/WireframeState$Face;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/WireframeState;->_lineWidth:F

    return v0
.end method

.method public getType()Lcom/ardor3d/renderer/state/RenderState$StateType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->Wireframe:Lcom/ardor3d/renderer/state/RenderState$StateType;

    return-object v0
.end method

.method public isAntialiased()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/WireframeState;->_antialiased:Z

    return v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-class v0, Lcom/ardor3d/renderer/state/WireframeState$Face;

    sget-object v1, Lcom/ardor3d/renderer/state/WireframeState$Face;->FrontAndBack:Lcom/ardor3d/renderer/state/WireframeState$Face;

    const-string v2, "face"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/state/WireframeState$Face;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/WireframeState;->_face:Lcom/ardor3d/renderer/state/WireframeState$Face;

    const-string v0, "lineWidth"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/state/WireframeState;->_lineWidth:F

    const-string v0, "antialiased"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/WireframeState;->_antialiased:Z

    return-void
.end method

.method public setAntialiased(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/WireframeState;->_antialiased:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setFace(Lcom/ardor3d/renderer/state/WireframeState$Face;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/WireframeState;->_face:Lcom/ardor3d/renderer/state/WireframeState$Face;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "face can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLineWidth(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Lcom/ardor3d/renderer/state/WireframeState;->_lineWidth:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Line width must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/WireframeState;->_face:Lcom/ardor3d/renderer/state/WireframeState$Face;

    const-string v1, "face"

    sget-object v2, Lcom/ardor3d/renderer/state/WireframeState$Face;->FrontAndBack:Lcom/ardor3d/renderer/state/WireframeState$Face;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget v0, p0, Lcom/ardor3d/renderer/state/WireframeState;->_lineWidth:F

    const-string v1, "lineWidth"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/WireframeState;->_antialiased:Z

    const-string v1, "antialiased"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
