.class public Lcom/ardor3d/renderer/state/CullState;
.super Lcom/ardor3d/renderer/state/RenderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/renderer/state/CullState$PolygonWind;,
        Lcom/ardor3d/renderer/state/CullState$Face;
    }
.end annotation


# instance fields
.field private cullFace:Lcom/ardor3d/renderer/state/CullState$Face;

.field private polygonWind:Lcom/ardor3d/renderer/state/CullState$PolygonWind;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/RenderState;-><init>()V

    sget-object v0, Lcom/ardor3d/renderer/state/CullState$Face;->None:Lcom/ardor3d/renderer/state/CullState$Face;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/CullState;->cullFace:Lcom/ardor3d/renderer/state/CullState$Face;

    sget-object v0, Lcom/ardor3d/renderer/state/CullState$PolygonWind;->CounterClockWise:Lcom/ardor3d/renderer/state/CullState$PolygonWind;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/CullState;->polygonWind:Lcom/ardor3d/renderer/state/CullState$PolygonWind;

    return-void
.end method


# virtual methods
.method public createStateRecord()Lcom/ardor3d/renderer/state/record/StateRecord;
    .locals 1

    new-instance v0, Lcom/ardor3d/renderer/state/record/CullStateRecord;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/record/CullStateRecord;-><init>()V

    return-object v0
.end method

.method public getCullFace()Lcom/ardor3d/renderer/state/CullState$Face;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/CullState;->cullFace:Lcom/ardor3d/renderer/state/CullState$Face;

    return-object v0
.end method

.method public getPolygonWind()Lcom/ardor3d/renderer/state/CullState$PolygonWind;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/CullState;->polygonWind:Lcom/ardor3d/renderer/state/CullState$PolygonWind;

    return-object v0
.end method

.method public getType()Lcom/ardor3d/renderer/state/RenderState$StateType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->Cull:Lcom/ardor3d/renderer/state/RenderState$StateType;

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

    const-class v0, Lcom/ardor3d/renderer/state/CullState$Face;

    sget-object v1, Lcom/ardor3d/renderer/state/CullState$Face;->None:Lcom/ardor3d/renderer/state/CullState$Face;

    const-string v2, "cullFace"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/state/CullState$Face;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/CullState;->cullFace:Lcom/ardor3d/renderer/state/CullState$Face;

    const-class v0, Lcom/ardor3d/renderer/state/CullState$PolygonWind;

    sget-object v1, Lcom/ardor3d/renderer/state/CullState$PolygonWind;->CounterClockWise:Lcom/ardor3d/renderer/state/CullState$PolygonWind;

    const-string v2, "polygonWind"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/CullState$PolygonWind;

    iput-object p1, p0, Lcom/ardor3d/renderer/state/CullState;->polygonWind:Lcom/ardor3d/renderer/state/CullState$PolygonWind;

    return-void
.end method

.method public setCullFace(Lcom/ardor3d/renderer/state/CullState$Face;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/CullState;->cullFace:Lcom/ardor3d/renderer/state/CullState$Face;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setPolygonWind(Lcom/ardor3d/renderer/state/CullState$PolygonWind;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/CullState;->polygonWind:Lcom/ardor3d/renderer/state/CullState$PolygonWind;

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

    iget-object v0, p0, Lcom/ardor3d/renderer/state/CullState;->cullFace:Lcom/ardor3d/renderer/state/CullState$Face;

    const-string v1, "cullFace"

    sget-object v2, Lcom/ardor3d/renderer/state/CullState$Face;->None:Lcom/ardor3d/renderer/state/CullState$Face;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/CullState;->polygonWind:Lcom/ardor3d/renderer/state/CullState$PolygonWind;

    const-string v1, "polygonWind"

    sget-object v2, Lcom/ardor3d/renderer/state/CullState$PolygonWind;->CounterClockWise:Lcom/ardor3d/renderer/state/CullState$PolygonWind;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method
