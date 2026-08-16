.class public Lcom/ardor3d/renderer/state/FogState;
.super Lcom/ardor3d/renderer/state/RenderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/renderer/state/FogState$Quality;,
        Lcom/ardor3d/renderer/state/FogState$CoordinateSource;,
        Lcom/ardor3d/renderer/state/FogState$DensityFunction;
    }
.end annotation


# instance fields
.field protected final color:Lcom/ardor3d/math/ColorRGBA;

.field protected density:F

.field protected densityFunction:Lcom/ardor3d/renderer/state/FogState$DensityFunction;

.field protected end:F

.field protected quality:Lcom/ardor3d/renderer/state/FogState$Quality;

.field protected source:Lcom/ardor3d/renderer/state/FogState$CoordinateSource;

.field protected start:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/RenderState;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ardor3d/renderer/state/FogState;->start:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ardor3d/renderer/state/FogState;->end:F

    iput v0, p0, Lcom/ardor3d/renderer/state/FogState;->density:F

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0}, Lcom/ardor3d/math/ColorRGBA;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/FogState;->color:Lcom/ardor3d/math/ColorRGBA;

    sget-object v0, Lcom/ardor3d/renderer/state/FogState$DensityFunction;->Exponential:Lcom/ardor3d/renderer/state/FogState$DensityFunction;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/FogState;->densityFunction:Lcom/ardor3d/renderer/state/FogState$DensityFunction;

    sget-object v0, Lcom/ardor3d/renderer/state/FogState$Quality;->PerVertex:Lcom/ardor3d/renderer/state/FogState$Quality;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/FogState;->quality:Lcom/ardor3d/renderer/state/FogState$Quality;

    sget-object v0, Lcom/ardor3d/renderer/state/FogState$CoordinateSource;->Depth:Lcom/ardor3d/renderer/state/FogState$CoordinateSource;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/FogState;->source:Lcom/ardor3d/renderer/state/FogState$CoordinateSource;

    return-void
.end method


# virtual methods
.method public createStateRecord()Lcom/ardor3d/renderer/state/record/StateRecord;
    .locals 1

    new-instance v0, Lcom/ardor3d/renderer/state/record/FogStateRecord;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/record/FogStateRecord;-><init>()V

    return-object v0
.end method

.method public getColor()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/FogState;->color:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/FogState;->density:F

    return v0
.end method

.method public getDensityFunction()Lcom/ardor3d/renderer/state/FogState$DensityFunction;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/FogState;->densityFunction:Lcom/ardor3d/renderer/state/FogState$DensityFunction;

    return-object v0
.end method

.method public getEnd()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/FogState;->end:F

    return v0
.end method

.method public getQuality()Lcom/ardor3d/renderer/state/FogState$Quality;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/FogState;->quality:Lcom/ardor3d/renderer/state/FogState$Quality;

    return-object v0
.end method

.method public getSource()Lcom/ardor3d/renderer/state/FogState$CoordinateSource;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/FogState;->source:Lcom/ardor3d/renderer/state/FogState$CoordinateSource;

    return-object v0
.end method

.method public getStart()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/FogState;->start:F

    return v0
.end method

.method public getType()Lcom/ardor3d/renderer/state/RenderState$StateType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->Fog:Lcom/ardor3d/renderer/state/RenderState$StateType;

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

    const-string v0, "start"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/state/FogState;->start:F

    const-string v0, "end"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/state/FogState;->end:F

    const-string v0, "density"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/state/FogState;->density:F

    iget-object v0, p0, Lcom/ardor3d/renderer/state/FogState;->color:Lcom/ardor3d/math/ColorRGBA;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    sget-object v2, Lcom/ardor3d/math/ColorRGBA;->WHITE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    const-string v2, "color"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    const-class v0, Lcom/ardor3d/renderer/state/FogState$DensityFunction;

    sget-object v1, Lcom/ardor3d/renderer/state/FogState$DensityFunction;->Exponential:Lcom/ardor3d/renderer/state/FogState$DensityFunction;

    const-string v2, "densityFunction"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/state/FogState$DensityFunction;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/FogState;->densityFunction:Lcom/ardor3d/renderer/state/FogState$DensityFunction;

    const-class v0, Lcom/ardor3d/renderer/state/FogState$Quality;

    sget-object v1, Lcom/ardor3d/renderer/state/FogState$Quality;->PerPixel:Lcom/ardor3d/renderer/state/FogState$Quality;

    const-string v2, "applyFunction"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/state/FogState$Quality;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/FogState;->quality:Lcom/ardor3d/renderer/state/FogState$Quality;

    const-class v0, Lcom/ardor3d/renderer/state/FogState$CoordinateSource;

    sget-object v1, Lcom/ardor3d/renderer/state/FogState$CoordinateSource;->Depth:Lcom/ardor3d/renderer/state/FogState$CoordinateSource;

    const-string v2, "source"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/FogState$CoordinateSource;

    iput-object p1, p0, Lcom/ardor3d/renderer/state/FogState;->source:Lcom/ardor3d/renderer/state/FogState$CoordinateSource;

    return-void
.end method

.method public setColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/FogState;->color:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setDensity(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lcom/ardor3d/renderer/state/FogState;->density:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setDensityFunction(Lcom/ardor3d/renderer/state/FogState$DensityFunction;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/FogState;->densityFunction:Lcom/ardor3d/renderer/state/FogState$DensityFunction;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "function can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnd(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/FogState;->end:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setQuality(Lcom/ardor3d/renderer/state/FogState$Quality;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/FogState;->quality:Lcom/ardor3d/renderer/state/FogState$Quality;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "quality can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSource(Lcom/ardor3d/renderer/state/FogState$CoordinateSource;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/FogState;->source:Lcom/ardor3d/renderer/state/FogState$CoordinateSource;

    return-void
.end method

.method public setStart(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/FogState;->start:F

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

    iget v0, p0, Lcom/ardor3d/renderer/state/FogState;->start:F

    const-string v1, "start"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/ardor3d/renderer/state/FogState;->end:F

    const-string v1, "end"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/ardor3d/renderer/state/FogState;->density:F

    const-string v1, "density"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/FogState;->color:Lcom/ardor3d/math/ColorRGBA;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    sget-object v2, Lcom/ardor3d/math/ColorRGBA;->WHITE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    const-string v2, "color"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/FogState;->densityFunction:Lcom/ardor3d/renderer/state/FogState$DensityFunction;

    const-string v1, "densityFunction"

    sget-object v2, Lcom/ardor3d/renderer/state/FogState$DensityFunction;->Exponential:Lcom/ardor3d/renderer/state/FogState$DensityFunction;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/FogState;->quality:Lcom/ardor3d/renderer/state/FogState$Quality;

    const-string v1, "applyFunction"

    sget-object v2, Lcom/ardor3d/renderer/state/FogState$Quality;->PerPixel:Lcom/ardor3d/renderer/state/FogState$Quality;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/FogState;->source:Lcom/ardor3d/renderer/state/FogState$CoordinateSource;

    const-string v1, "source"

    sget-object v2, Lcom/ardor3d/renderer/state/FogState$CoordinateSource;->Depth:Lcom/ardor3d/renderer/state/FogState$CoordinateSource;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method
