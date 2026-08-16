.class public abstract Lcom/ardor3d/light/Light;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/ardor3d/util/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/light/Light$Type;
    }
.end annotation


# static fields
.field public static final DEFAULT_AMBIENT:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final DEFAULT_DIFFUSE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final DEFAULT_SPECULAR:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _attenuate:Z

.field private _backLightMask:I

.field private _constant:F

.field private _enabled:Z

.field private _lightMask:I

.field private _linear:F

.field private _quadratic:F

.field protected _shadowCaster:Z

.field private final ambient:Lcom/ardor3d/math/ColorRGBA;

.field private final diffuse:Lcom/ardor3d/math/ColorRGBA;

.field private name:Ljava/lang/String;

.field private final specular:Lcom/ardor3d/math/ColorRGBA;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/light/Light;->DEFAULT_AMBIENT:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/light/Light;->DEFAULT_DIFFUSE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/light/Light;->DEFAULT_SPECULAR:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    sget-object v1, Lcom/ardor3d/light/Light;->DEFAULT_AMBIENT:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iput-object v0, p0, Lcom/ardor3d/light/Light;->ambient:Lcom/ardor3d/math/ColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    sget-object v1, Lcom/ardor3d/light/Light;->DEFAULT_DIFFUSE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iput-object v0, p0, Lcom/ardor3d/light/Light;->diffuse:Lcom/ardor3d/math/ColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    sget-object v1, Lcom/ardor3d/light/Light;->DEFAULT_SPECULAR:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iput-object v0, p0, Lcom/ardor3d/light/Light;->specular:Lcom/ardor3d/math/ColorRGBA;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ardor3d/light/Light;->_constant:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/ardor3d/light/Light;->_lightMask:I

    iput v0, p0, Lcom/ardor3d/light/Light;->_backLightMask:I

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/ardor3d/light/Light;)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/light/Light;->ambient:Lcom/ardor3d/math/ColorRGBA;

    iget-object v1, p1, Lcom/ardor3d/light/Light;->ambient:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    iget-boolean v0, p1, Lcom/ardor3d/light/Light;->_attenuate:Z

    iput-boolean v0, p0, Lcom/ardor3d/light/Light;->_attenuate:Z

    iget v0, p1, Lcom/ardor3d/light/Light;->_constant:F

    iput v0, p0, Lcom/ardor3d/light/Light;->_constant:F

    iget-object v0, p0, Lcom/ardor3d/light/Light;->diffuse:Lcom/ardor3d/math/ColorRGBA;

    iget-object v1, p1, Lcom/ardor3d/light/Light;->diffuse:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    iget-boolean v0, p1, Lcom/ardor3d/light/Light;->_enabled:Z

    iput-boolean v0, p0, Lcom/ardor3d/light/Light;->_enabled:Z

    iget v0, p1, Lcom/ardor3d/light/Light;->_linear:F

    iput v0, p0, Lcom/ardor3d/light/Light;->_linear:F

    iget v0, p1, Lcom/ardor3d/light/Light;->_quadratic:F

    iput v0, p0, Lcom/ardor3d/light/Light;->_quadratic:F

    iget-boolean v0, p1, Lcom/ardor3d/light/Light;->_shadowCaster:Z

    iput-boolean v0, p0, Lcom/ardor3d/light/Light;->_shadowCaster:Z

    iget-object v0, p0, Lcom/ardor3d/light/Light;->specular:Lcom/ardor3d/math/ColorRGBA;

    iget-object p1, p1, Lcom/ardor3d/light/Light;->specular:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    return-void
.end method

.method public getAmbient()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/light/Light;->ambient:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/light/Light;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getConstant()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/light/Light;->_constant:F

    return v0
.end method

.method public getDiffuse()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/light/Light;->diffuse:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getLightMask()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/light/Light;->_lightMask:I

    return v0
.end method

.method public getLinear()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/light/Light;->_linear:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/light/Light;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getQuadratic()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/light/Light;->_quadratic:F

    return v0
.end method

.method public getSpecular()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/light/Light;->specular:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public abstract getType()Lcom/ardor3d/light/Light$Type;
.end method

.method public isAttenuate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/light/Light;->_attenuate:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/light/Light;->_enabled:Z

    return v0
.end method

.method public isShadowCaster()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/light/Light;->_shadowCaster:Z

    return v0
.end method

.method public popLightMask()V
    .locals 1

    iget v0, p0, Lcom/ardor3d/light/Light;->_backLightMask:I

    iput v0, p0, Lcom/ardor3d/light/Light;->_lightMask:I

    return-void
.end method

.method public pushLightMask()V
    .locals 1

    iget v0, p0, Lcom/ardor3d/light/Light;->_lightMask:I

    iput v0, p0, Lcom/ardor3d/light/Light;->_backLightMask:I

    return-void
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/light/Light;->ambient:Lcom/ardor3d/math/ColorRGBA;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    sget-object v2, Lcom/ardor3d/light/Light;->DEFAULT_AMBIENT:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    const-string v2, "ambient"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    iget-object v0, p0, Lcom/ardor3d/light/Light;->diffuse:Lcom/ardor3d/math/ColorRGBA;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    sget-object v2, Lcom/ardor3d/light/Light;->DEFAULT_DIFFUSE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    const-string v2, "diffuse"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    iget-object v0, p0, Lcom/ardor3d/light/Light;->specular:Lcom/ardor3d/math/ColorRGBA;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    sget-object v2, Lcom/ardor3d/light/Light;->DEFAULT_SPECULAR:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    const-string v2, "specular"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    const-string v0, "attenuate"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/light/Light;->_attenuate:Z

    const-string v0, "constant"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/light/Light;->_constant:F

    const-string v0, "linear"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/light/Light;->_linear:F

    const-string v0, "quadratic"

    invoke-interface {p1, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/light/Light;->_quadratic:F

    const-string v0, "lightMask"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/light/Light;->_lightMask:I

    const-string v0, "backLightMask"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/light/Light;->_backLightMask:I

    const-string v0, "enabled"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/light/Light;->_enabled:Z

    const-string v0, "shadowCaster"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/light/Light;->_shadowCaster:Z

    return-void
.end method

.method public setAmbient(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/light/Light;->ambient:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    return-void
.end method

.method public setAttenuate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/light/Light;->_attenuate:Z

    return-void
.end method

.method public setConstant(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/light/Light;->_constant:F

    return-void
.end method

.method public setDiffuse(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/light/Light;->diffuse:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/light/Light;->_enabled:Z

    return-void
.end method

.method public setLightMask(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/light/Light;->_lightMask:I

    return-void
.end method

.method public setLinear(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/light/Light;->_linear:F

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/light/Light;->name:Ljava/lang/String;

    return-void
.end method

.method public setQuadratic(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/light/Light;->_quadratic:F

    return-void
.end method

.method public setShadowCaster(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/light/Light;->_shadowCaster:Z

    return-void
.end method

.method public setSpecular(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/light/Light;->specular:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/light/Light;->ambient:Lcom/ardor3d/math/ColorRGBA;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    sget-object v2, Lcom/ardor3d/light/Light;->DEFAULT_AMBIENT:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    const-string v2, "ambient"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/light/Light;->diffuse:Lcom/ardor3d/math/ColorRGBA;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    sget-object v2, Lcom/ardor3d/light/Light;->DEFAULT_DIFFUSE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    const-string v2, "diffuse"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/light/Light;->specular:Lcom/ardor3d/math/ColorRGBA;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    sget-object v2, Lcom/ardor3d/light/Light;->DEFAULT_SPECULAR:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    const-string v2, "specular"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-boolean v0, p0, Lcom/ardor3d/light/Light;->_attenuate:Z

    const-string v1, "attenuate"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget v0, p0, Lcom/ardor3d/light/Light;->_constant:F

    const-string v1, "constant"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/ardor3d/light/Light;->_linear:F

    const-string v1, "linear"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/ardor3d/light/Light;->_quadratic:F

    const-string v1, "quadratic"

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/ardor3d/light/Light;->_lightMask:I

    const-string v1, "lightMask"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/light/Light;->_backLightMask:I

    const-string v1, "backLightMask"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-boolean v0, p0, Lcom/ardor3d/light/Light;->_enabled:Z

    const-string v1, "enabled"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/ardor3d/light/Light;->_shadowCaster:Z

    const-string v1, "shadowCaster"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
