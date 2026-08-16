.class public Lcom/ardor3d/renderer/state/ShadingState;
.super Lcom/ardor3d/renderer/state/RenderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;
    }
.end annotation


# instance fields
.field protected _shadeMode:Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/RenderState;-><init>()V

    sget-object v0, Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;->Smooth:Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/ShadingState;->_shadeMode:Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    return-void
.end method


# virtual methods
.method public createStateRecord()Lcom/ardor3d/renderer/state/record/StateRecord;
    .locals 1

    new-instance v0, Lcom/ardor3d/renderer/state/record/ShadingStateRecord;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/record/ShadingStateRecord;-><init>()V

    return-object v0
.end method

.method public getShadingMode()Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/ShadingState;->_shadeMode:Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    return-object v0
.end method

.method public getType()Lcom/ardor3d/renderer/state/RenderState$StateType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->Shading:Lcom/ardor3d/renderer/state/RenderState$StateType;

    return-object v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-class v0, Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    sget-object v1, Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;->Smooth:Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    const-string v2, "shadeMode"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    iput-object p1, p0, Lcom/ardor3d/renderer/state/ShadingState;->_shadeMode:Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    return-void
.end method

.method public setShadingMode(Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/ShadingState;->_shadeMode:Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "shadeMode can not be null."

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

    iget-object v0, p0, Lcom/ardor3d/renderer/state/ShadingState;->_shadeMode:Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    const-string v1, "shadeMode"

    sget-object v2, Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;->Smooth:Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method
