.class public Lcom/jme3/shadow/PointLightShadowFilter;
.super Lcom/jme3/shadow/AbstractShadowFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/shadow/AbstractShadowFilter<",
        "Lcom/jme3/shadow/PointLightShadowRenderer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/shadow/AbstractShadowFilter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;I)V
    .locals 1

    .line 2
    new-instance v0, Lcom/jme3/shadow/PointLightShadowRenderer;

    invoke-direct {v0, p1, p2}, Lcom/jme3/shadow/PointLightShadowRenderer;-><init>(Lcom/jme3/asset/AssetManager;I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/shadow/AbstractShadowFilter;-><init>(Lcom/jme3/asset/AssetManager;ILcom/jme3/shadow/AbstractShadowRenderer;)V

    return-void
.end method


# virtual methods
.method public getLight()Lcom/jme3/light/PointLight;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast v0, Lcom/jme3/shadow/PointLightShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/PointLightShadowRenderer;->getLight()Lcom/jme3/light/PointLight;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/post/Filter;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "shadowRenderer"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/shadow/PointLightShadowRenderer;

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    return-void
.end method

.method public setLight(Lcom/jme3/light/PointLight;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast v0, Lcom/jme3/shadow/PointLightShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/PointLightShadowRenderer;->setLight(Lcom/jme3/light/PointLight;)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/post/Filter;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    const-string v1, "shadowRenderer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
