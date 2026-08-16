.class public Lcom/ardor3d/renderer/state/MaterialState;
.super Lcom/ardor3d/renderer/state/RenderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;,
        Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;
    }
.end annotation


# static fields
.field public static final DEFAULT_AMBIENT:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final DEFAULT_COLOR_MATERIAL:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

.field public static final DEFAULT_COLOR_MATERIAL_FACE:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

.field public static final DEFAULT_DIFFUSE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final DEFAULT_EMISSIVE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field public static final DEFAULT_SHININESS:F

.field public static final DEFAULT_SPECULAR:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;


# instance fields
.field protected final _backAmbient:Lcom/ardor3d/math/ColorRGBA;

.field protected final _backDiffuse:Lcom/ardor3d/math/ColorRGBA;

.field protected final _backEmissive:Lcom/ardor3d/math/ColorRGBA;

.field protected _backShininess:F

.field protected final _backSpecular:Lcom/ardor3d/math/ColorRGBA;

.field protected _colorMaterial:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

.field protected _colorMaterialFace:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

.field protected final _frontAmbient:Lcom/ardor3d/math/ColorRGBA;

.field protected final _frontDiffuse:Lcom/ardor3d/math/ColorRGBA;

.field protected final _frontEmissive:Lcom/ardor3d/math/ColorRGBA;

.field protected _frontShininess:F

.field protected final _frontSpecular:Lcom/ardor3d/math/ColorRGBA;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_AMBIENT:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_DIFFUSE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_SPECULAR:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_EMISSIVE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;->None:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    sput-object v0, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_COLOR_MATERIAL:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    sput-object v0, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_COLOR_MATERIAL_FACE:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/RenderState;-><init>()V

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    sget-object v1, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_AMBIENT:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontAmbient:Lcom/ardor3d/math/ColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    sget-object v2, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_DIFFUSE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v0, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontDiffuse:Lcom/ardor3d/math/ColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    sget-object v3, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_SPECULAR:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v0, v3}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontSpecular:Lcom/ardor3d/math/ColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    sget-object v4, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_EMISSIVE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v0, v4}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontEmissive:Lcom/ardor3d/math/ColorRGBA;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontShininess:F

    new-instance v5, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v5, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iput-object v5, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backAmbient:Lcom/ardor3d/math/ColorRGBA;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iput-object v1, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backDiffuse:Lcom/ardor3d/math/ColorRGBA;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v1, v3}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iput-object v1, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backSpecular:Lcom/ardor3d/math/ColorRGBA;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v1, v4}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iput-object v1, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backEmissive:Lcom/ardor3d/math/ColorRGBA;

    iput v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backShininess:F

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_COLOR_MATERIAL:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_colorMaterial:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_COLOR_MATERIAL_FACE:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_colorMaterialFace:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    return-void
.end method


# virtual methods
.method public createStateRecord()Lcom/ardor3d/renderer/state/record/StateRecord;
    .locals 1

    new-instance v0, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/record/MaterialStateRecord;-><init>()V

    return-object v0
.end method

.method public getAmbient()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontAmbient:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getBackAmbient()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backAmbient:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getBackDiffuse()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backDiffuse:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getBackEmissive()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backEmissive:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getBackShininess()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backShininess:F

    return v0
.end method

.method public getBackSpecular()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backSpecular:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getColorMaterial()Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_colorMaterial:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    return-object v0
.end method

.method public getColorMaterialFace()Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_colorMaterialFace:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    return-object v0
.end method

.method public getDiffuse()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontDiffuse:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getEmissive()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontEmissive:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getShininess()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontShininess:F

    return v0
.end method

.method public getSpecular()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontSpecular:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getType()Lcom/ardor3d/renderer/state/RenderState$StateType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->Material:Lcom/ardor3d/renderer/state/RenderState$StateType;

    return-object v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontAmbient:Lcom/ardor3d/math/ColorRGBA;

    sget-object v1, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_AMBIENT:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    move-object v2, v1

    check-cast v2, Lcom/ardor3d/math/ColorRGBA;

    const-string v3, "frontAmbient"

    invoke-interface {p1, v3, v2}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontDiffuse:Lcom/ardor3d/math/ColorRGBA;

    sget-object v2, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_DIFFUSE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    move-object v3, v2

    check-cast v3, Lcom/ardor3d/math/ColorRGBA;

    const-string v4, "frontDiffuse"

    invoke-interface {p1, v4, v3}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v3}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontSpecular:Lcom/ardor3d/math/ColorRGBA;

    sget-object v3, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_SPECULAR:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    move-object v4, v3

    check-cast v4, Lcom/ardor3d/math/ColorRGBA;

    const-string v5, "frontSpecular"

    invoke-interface {p1, v5, v4}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v4

    check-cast v4, Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v4}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontEmissive:Lcom/ardor3d/math/ColorRGBA;

    sget-object v4, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_EMISSIVE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    move-object v5, v4

    check-cast v5, Lcom/ardor3d/math/ColorRGBA;

    const-string v6, "frontEmissive"

    invoke-interface {p1, v6, v5}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v5

    check-cast v5, Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v5}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    const-string v0, "frontShininess"

    const/4 v5, 0x0

    invoke-interface {p1, v0, v5}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontShininess:F

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backAmbient:Lcom/ardor3d/math/ColorRGBA;

    const-string v6, "backAmbient"

    check-cast v1, Lcom/ardor3d/math/ColorRGBA;

    invoke-interface {p1, v6, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backDiffuse:Lcom/ardor3d/math/ColorRGBA;

    const-string v1, "backDiffuse"

    check-cast v2, Lcom/ardor3d/math/ColorRGBA;

    invoke-interface {p1, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backSpecular:Lcom/ardor3d/math/ColorRGBA;

    const-string v1, "backSpecular"

    check-cast v3, Lcom/ardor3d/math/ColorRGBA;

    invoke-interface {p1, v1, v3}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backEmissive:Lcom/ardor3d/math/ColorRGBA;

    const-string v1, "backEmissive"

    check-cast v4, Lcom/ardor3d/math/ColorRGBA;

    invoke-interface {p1, v1, v4}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    const-string v0, "backShininess"

    invoke-interface {p1, v0, v5}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backShininess:F

    const-class v0, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    sget-object v1, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_COLOR_MATERIAL:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    const-string v2, "colorMaterial"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_colorMaterial:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    const-class v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    sget-object v1, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_COLOR_MATERIAL_FACE:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    const-string v2, "colorMaterialFace"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    iput-object p1, p0, Lcom/ardor3d/renderer/state/MaterialState;->_colorMaterialFace:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    return-void
.end method

.method public setAmbient(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    invoke-virtual {p0, v0, p1}, Lcom/ardor3d/renderer/state/MaterialState;->setAmbient(Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    return-void
.end method

.method public setAmbient(Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Front:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontAmbient:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p2}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    .line 4
    :cond_1
    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Back:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, v0, :cond_3

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backAmbient:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    :cond_3
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setColorMaterial(Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/MaterialState;->_colorMaterial:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "material can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorMaterialFace(Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/MaterialState;->_colorMaterialFace:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "face can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDiffuse(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    invoke-virtual {p0, v0, p1}, Lcom/ardor3d/renderer/state/MaterialState;->setDiffuse(Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    return-void
.end method

.method public setDiffuse(Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Front:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontDiffuse:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p2}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    .line 4
    :cond_1
    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Back:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, v0, :cond_3

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backDiffuse:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    :cond_3
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setEmissive(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    invoke-virtual {p0, v0, p1}, Lcom/ardor3d/renderer/state/MaterialState;->setEmissive(Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    return-void
.end method

.method public setEmissive(Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Front:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontEmissive:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p2}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    .line 4
    :cond_1
    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Back:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, v0, :cond_3

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backEmissive:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    :cond_3
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setShininess(F)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    invoke-virtual {p0, v0, p1}, Lcom/ardor3d/renderer/state/MaterialState;->setShininess(Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;F)V

    return-void
.end method

.method public setShininess(Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_4

    const/high16 v0, 0x43000000    # 128.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_4

    .line 2
    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Front:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, v0, :cond_1

    .line 3
    :cond_0
    iput p2, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontShininess:F

    .line 4
    :cond_1
    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Back:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, v0, :cond_3

    .line 5
    :cond_2
    iput p2, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backShininess:F

    :cond_3
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    .line 7
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Shininess must be between 0 and 128."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpecular(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    invoke-virtual {p0, v0, p1}, Lcom/ardor3d/renderer/state/MaterialState;->setSpecular(Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    return-void
.end method

.method public setSpecular(Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Front:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontSpecular:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p2}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    .line 4
    :cond_1
    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->Back:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;->FrontAndBack:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    if-ne p1, v0, :cond_3

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backSpecular:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    :cond_3
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontAmbient:Lcom/ardor3d/math/ColorRGBA;

    sget-object v1, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_AMBIENT:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    move-object v2, v1

    check-cast v2, Lcom/ardor3d/math/ColorRGBA;

    const-string v3, "frontAmbient"

    invoke-interface {p1, v0, v3, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontDiffuse:Lcom/ardor3d/math/ColorRGBA;

    sget-object v2, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_DIFFUSE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    move-object v3, v2

    check-cast v3, Lcom/ardor3d/math/ColorRGBA;

    const-string v4, "frontDiffuse"

    invoke-interface {p1, v0, v4, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontSpecular:Lcom/ardor3d/math/ColorRGBA;

    sget-object v3, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_SPECULAR:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    move-object v4, v3

    check-cast v4, Lcom/ardor3d/math/ColorRGBA;

    const-string v5, "frontSpecular"

    invoke-interface {p1, v0, v5, v4}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontEmissive:Lcom/ardor3d/math/ColorRGBA;

    sget-object v4, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_EMISSIVE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    move-object v5, v4

    check-cast v5, Lcom/ardor3d/math/ColorRGBA;

    const-string v6, "frontEmissive"

    invoke-interface {p1, v0, v6, v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_frontShininess:F

    const-string v5, "frontShininess"

    const/4 v6, 0x0

    invoke-interface {p1, v0, v5, v6}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backAmbient:Lcom/ardor3d/math/ColorRGBA;

    const-string v5, "backAmbient"

    check-cast v1, Lcom/ardor3d/math/ColorRGBA;

    invoke-interface {p1, v0, v5, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backDiffuse:Lcom/ardor3d/math/ColorRGBA;

    const-string v1, "backDiffuse"

    check-cast v2, Lcom/ardor3d/math/ColorRGBA;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backSpecular:Lcom/ardor3d/math/ColorRGBA;

    const-string v1, "backSpecular"

    check-cast v3, Lcom/ardor3d/math/ColorRGBA;

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backEmissive:Lcom/ardor3d/math/ColorRGBA;

    const-string v1, "backEmissive"

    check-cast v4, Lcom/ardor3d/math/ColorRGBA;

    invoke-interface {p1, v0, v1, v4}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_backShininess:F

    const-string v1, "backShininess"

    invoke-interface {p1, v0, v1, v6}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_colorMaterial:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    const-string v1, "colorMaterial"

    sget-object v2, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_COLOR_MATERIAL:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/MaterialState;->_colorMaterialFace:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    const-string v1, "colorMaterialFace"

    sget-object v2, Lcom/ardor3d/renderer/state/MaterialState;->DEFAULT_COLOR_MATERIAL_FACE:Lcom/ardor3d/renderer/state/MaterialState$MaterialFace;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method
