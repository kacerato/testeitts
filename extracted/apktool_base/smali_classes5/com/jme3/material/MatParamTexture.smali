.class public Lcom/jme3/material/MatParamTexture;
.super Lcom/jme3/material/MatParam;
.source "SourceFile"


# instance fields
.field private colorSpace:Lcom/jme3/texture/image/ColorSpace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/jme3/material/MatParam;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Lcom/jme3/texture/Texture;Lcom/jme3/texture/image/ColorSpace;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/material/MatParam;-><init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iput-object p4, p0, Lcom/jme3/material/MatParamTexture;->colorSpace:Lcom/jme3/texture/image/ColorSpace;

    return-void
.end method


# virtual methods
.method public getColorSpace()Lcom/jme3/texture/image/ColorSpace;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/MatParamTexture;->colorSpace:Lcom/jme3/texture/image/ColorSpace;

    return-object v0
.end method

.method public getTextureValue()Lcom/jme3/texture/Texture;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/material/MatParam;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-class v0, Lcom/jme3/texture/image/ColorSpace;

    const/4 v1, 0x0

    const-string v2, "colorSpace"

    invoke-interface {p1, v2, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/jme3/texture/image/ColorSpace;

    iput-object p1, p0, Lcom/jme3/material/MatParamTexture;->colorSpace:Lcom/jme3/texture/image/ColorSpace;

    return-void
.end method

.method public setColorSpace(Lcom/jme3/texture/image/ColorSpace;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/MatParamTexture;->colorSpace:Lcom/jme3/texture/image/ColorSpace;

    return-void
.end method

.method public setTextureValue(Lcom/jme3/texture/Texture;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/material/MatParam;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/material/MatParam;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/material/MatParamTexture;->colorSpace:Lcom/jme3/texture/image/ColorSpace;

    const-string v1, "colorSpace"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    const-string v0, "texture_unit"

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-interface {p1, v3, v0, v1}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    check-cast v0, Lcom/jme3/texture/Texture;

    const-string v1, "texture"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
