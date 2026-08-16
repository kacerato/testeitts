.class public Ljme3utilities/debug/f;
.super Lcom/jme3/scene/Geometry;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/logging/Logger;


# instance fields
.field public b:Lcom/jme3/asset/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljme3utilities/debug/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljme3utilities/debug/f;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Geometry;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;ILcom/jme3/math/ColorRGBA;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Llf/m;

    invoke-direct {v0}, Llf/m;-><init>()V

    invoke-direct {p0, p4, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    .line 3
    const-string v0, "asset manager"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    const-string v0, "size"

    invoke-static {p2, v0}, Lif/E;->F(ILjava/lang/String;)Z

    .line 5
    iput-object p1, p0, Ljme3utilities/debug/f;->b:Lcom/jme3/asset/AssetManager;

    const/4 v0, 0x0

    int-to-float p2, p2

    .line 6
    invoke-static {p1, v0, p2}, Lif/l;->f(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;F)Lcom/jme3/material/Material;

    move-result-object p1

    .line 7
    const-string p2, "point"

    invoke-virtual {p1, p2}, Lcom/jme3/material/Material;->setName(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 8
    const-string p2, "Color"

    invoke-virtual {p3}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p2

    .line 10
    sget-object p3, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {p2, p3}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    const/4 p3, 0x0

    .line 11
    invoke-virtual {p2, p3}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 13
    sget-object p1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Translucent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    .line 14
    sget-object p1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    if-eqz p4, :cond_1

    .line 15
    invoke-virtual {p0, p4}, Ljme3utilities/debug/f;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public c(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/ColorRGBA;

    invoke-direct {p1}, Lcom/jme3/math/ColorRGBA;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    const-string v1, "Color"

    invoke-virtual {v0, v1}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p1, v0}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    return-object p1
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    return-void
.end method

.method public e(Lcom/jme3/texture/Texture;)V
    .locals 2

    const-string v0, "desired texture"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    const-string v1, "PointShape"

    invoke-virtual {v0, v1, p1}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    const-string v0, "shape name"

    invoke-static {p1, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Textures/shapes/%s.png"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Ljme3utilities/debug/f;->b:Lcom/jme3/asset/AssetManager;

    invoke-static {v1, p1, v0}, Lif/l;->t(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljme3utilities/debug/f;->e(Lcom/jme3/texture/Texture;)V

    return-void
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    const-string v1, "PointSize"

    invoke-virtual {v0, v1}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->cullHint:Lcom/jme3/scene/Spatial$CullHint;

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Geometry;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object p1

    iput-object p1, p0, Ljme3utilities/debug/f;->b:Lcom/jme3/asset/AssetManager;

    return-void
.end method

.method public setColor(Lcom/jme3/math/ColorRGBA;)V
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    const-string v1, "Color"

    invoke-virtual {v0, v1, p1}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->cullHint:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->cullHint:Lcom/jme3/scene/Spatial$CullHint;

    :goto_0
    return-void
.end method

.method public setSize(I)V
    .locals 2

    const-string v0, "desired size"

    invoke-static {p1, v0}, Lif/E;->F(ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    const-string v1, "PointSize"

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    return-void
.end method
