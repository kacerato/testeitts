.class public Lcom/ardor3d/renderer/state/OffsetState;
.super Lcom/ardor3d/renderer/state/RenderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/renderer/state/OffsetState$OffsetType;
    }
.end annotation


# instance fields
.field private final _enabledOffsets:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/renderer/state/OffsetState$OffsetType;",
            ">;"
        }
    .end annotation
.end field

.field private _factor:F

.field private _units:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/RenderState;-><init>()V

    const-class v0, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/OffsetState;->_enabledOffsets:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public createStateRecord()Lcom/ardor3d/renderer/state/record/StateRecord;
    .locals 1

    new-instance v0, Lcom/ardor3d/renderer/state/record/OffsetStateRecord;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/record/OffsetStateRecord;-><init>()V

    return-object v0
.end method

.method public getFactor()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/OffsetState;->_factor:F

    return v0
.end method

.method public getType()Lcom/ardor3d/renderer/state/RenderState$StateType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->Offset:Lcom/ardor3d/renderer/state/RenderState$StateType;

    return-object v0
.end method

.method public getUnits()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/OffsetState;->_units:F

    return v0
.end method

.method public isTypeEnabled(Lcom/ardor3d/renderer/state/OffsetState$OffsetType;)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/OffsetState;->_enabledOffsets:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "factor"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/state/OffsetState;->_factor:F

    const-string v0, "units"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/state/OffsetState;->_units:F

    iget-object v0, p0, Lcom/ardor3d/renderer/state/OffsetState;->_enabledOffsets:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    const-string v0, "typeFill"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/renderer/state/OffsetState;->_enabledOffsets:Ljava/util/EnumSet;

    sget-object v2, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;->Fill:Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "typeLine"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/OffsetState;->_enabledOffsets:Ljava/util/EnumSet;

    sget-object v2, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;->Line:Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "typePoint"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ardor3d/renderer/state/OffsetState;->_enabledOffsets:Ljava/util/EnumSet;

    sget-object v0, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;->Point:Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public setFactor(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/OffsetState;->_factor:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setTypeEnabled(Lcom/ardor3d/renderer/state/OffsetState$OffsetType;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ardor3d/renderer/state/OffsetState;->_enabledOffsets:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/ardor3d/renderer/state/OffsetState;->_enabledOffsets:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUnits(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/OffsetState;->_units:F

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

    iget v0, p0, Lcom/ardor3d/renderer/state/OffsetState;->_factor:F

    const-string v1, "factor"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/ardor3d/renderer/state/OffsetState;->_units:F

    const-string v1, "units"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/OffsetState;->_enabledOffsets:Ljava/util/EnumSet;

    sget-object v1, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;->Fill:Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "typeFill"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/OffsetState;->_enabledOffsets:Ljava/util/EnumSet;

    sget-object v1, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;->Line:Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "typeLine"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/OffsetState;->_enabledOffsets:Ljava/util/EnumSet;

    sget-object v1, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;->Point:Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "typePoint"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
