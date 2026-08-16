.class public Ljpct/ae/wrapper/JNPOTTexture;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctNPOTTexture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/NPOTTexture;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialize(IILcom/threed/jpct/RGBColor;)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/NPOTTexture;

    invoke-direct {v0, p1, p2, p3}, Lcom/threed/jpct/NPOTTexture;-><init>(IILcom/threed/jpct/RGBColor;)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JNPOTTexture;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public add(Lcom/threed/jpct/Texture;F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Texture;->add(Lcom/threed/jpct/Texture;F)V

    return-void
.end method

.method public applyEffect()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0}, Lcom/threed/jpct/Texture;->applyEffect()V

    return-void
.end method

.method public compress()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0}, Lcom/threed/jpct/Texture;->compress()V

    return-void
.end method

.method public defaultTo4bpp(Z)V
    .locals 0

    invoke-static {p1}, Lcom/threed/jpct/Texture;->defaultTo4bpp(Z)V

    return-void
.end method

.method public defaultToKeepPixels(Z)V
    .locals 0

    invoke-static {p1}, Lcom/threed/jpct/Texture;->defaultToKeepPixels(Z)V

    return-void
.end method

.method public defaultToMipmapping(Z)V
    .locals 0

    invoke-static {p1}, Lcom/threed/jpct/Texture;->defaultToMipmapping(Z)V

    return-void
.end method

.method public enable4bpp(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Texture;->enable4bpp(Z)V

    return-void
.end method

.method public getArraySize()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0}, Lcom/threed/jpct/Texture;->getArraySize()I

    move-result v0

    return v0
.end method

.method public getDepthBuffer()Lcom/threed/jpct/DepthBuffer;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0}, Lcom/threed/jpct/Texture;->getDepthBuffer()Lcom/threed/jpct/DepthBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0}, Lcom/threed/jpct/Texture;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public keepPixelData(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Texture;->keepPixelData(Z)V

    return-void
.end method

.method public removeAlpha()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0}, Lcom/threed/jpct/Texture;->removeAlpha()V

    return-void
.end method

.method public removeEffect()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0}, Lcom/threed/jpct/Texture;->removeEffect()V

    return-void
.end method

.method public setAsShadowMap(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Texture;->setAsShadowMap(Z)V

    return-void
.end method

.method public setClamping(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Texture;->setClamping(Z)V

    return-void
.end method

.method public setDepthBuffer(Lcom/threed/jpct/DepthBuffer;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Texture;->setDepthBuffer(Lcom/threed/jpct/DepthBuffer;)V

    return-void
.end method

.method public setEffect(Lcom/threed/jpct/ITextureEffect;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Texture;->setEffect(Lcom/threed/jpct/ITextureEffect;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Texture;->setEnabled(Z)V

    return-void
.end method

.method public setFiltering(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Texture;->setFiltering(Z)V

    return-void
.end method

.method public setMipmap(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Texture;->setMipmap(Z)V

    return-void
.end method

.method public setTextureCompression(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JNPOTTexture;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/NPOTTexture;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Texture;->setTextureCompression(Z)V

    return-void
.end method
