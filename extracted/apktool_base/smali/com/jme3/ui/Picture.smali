.class public Lcom/jme3/ui/Picture;
.super Lcom/jme3/scene/Geometry;
.source "SourceFile"


# instance fields
.field private height:F

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/jme3/scene/Geometry;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lcom/jme3/ui/Picture;->width:F

    .line 9
    iput v0, p0, Lcom/jme3/ui/Picture;->height:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/jme3/ui/Picture;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/jme3/scene/shape/Quad;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, p2}, Lcom/jme3/scene/shape/Quad;-><init>(FFZ)V

    invoke-direct {p0, p1, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    .line 2
    iput v1, p0, Lcom/jme3/ui/Picture;->width:F

    .line 3
    iput v1, p0, Lcom/jme3/ui/Picture;->height:F

    .line 4
    sget-object p1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Gui:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    .line 5
    sget-object p1, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/jme3/ui/Picture;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/jme3/ui/Picture;->width:F

    return v0
.end method

.method public setHeight(F)V
    .locals 2

    iput p1, p0, Lcom/jme3/ui/Picture;->height:F

    iget v0, p0, Lcom/jme3/ui/Picture;->width:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p1, v1}, Lcom/jme3/scene/Spatial;->setLocalScale(FFF)V

    return-void
.end method

.method public setImage(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lcom/jme3/asset/TextureKey;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/jme3/asset/TextureKey;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Lcom/jme3/asset/AssetManager;->loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;

    move-result-object p2

    check-cast p2, Lcom/jme3/texture/Texture2D;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/ui/Picture;->setTexture(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture2D;Z)V

    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    return-void
.end method

.method public setTexture(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture2D;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "Common/MatDefs/Gui/Gui.j3md"

    invoke-direct {v0, p1, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string p1, "Color"

    sget-object v1, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, p1, v1}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    :cond_0
    iget-object p1, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p1

    if-eqz p3, :cond_1

    sget-object p3, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    :goto_0
    invoke-virtual {p1, p3}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    iget-object p1, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    const-string p3, "Texture"

    invoke-virtual {p1, p3, p2}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    return-void
.end method

.method public setWidth(F)V
    .locals 2

    iput p1, p0, Lcom/jme3/ui/Picture;->width:F

    iget v0, p0, Lcom/jme3/ui/Picture;->height:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v1}, Lcom/jme3/scene/Spatial;->setLocalScale(FFF)V

    return-void
.end method
