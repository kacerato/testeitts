.class public Ljme3utilities/debug/b;
.super Lif/B;
.source "SourceFile"


# static fields
.field public static final k:Z = false

.field public static final l:Lcom/jme3/math/ColorRGBA;

.field public static final m:F = 1.0f

.field public static final n:I = 0x0

.field public static final o:Ljava/util/logging/Logger;

.field public static final p:Ljava/lang/String; = "bound lines"

.field public static final q:Ljava/lang/String; = "bound node"

.field public static final r:Ljava/lang/String; = "billboardAxis"

.field public static final s:Ljava/lang/String; = "camera"

.field public static final t:Ljava/lang/String; = "lineMaterial"

.field public static final u:Ljava/lang/String; = "lineWidth"

.field public static final v:Ljava/lang/String; = "sphereType"

.field public static final w:Ljava/lang/String; = "subject"

.field public static final synthetic x:Z


# instance fields
.field public e:Lcom/jme3/renderer/Camera;

.field public f:F

.field public g:I

.field public h:Lcom/jme3/material/Material;

.field public i:Lcom/jme3/scene/Spatial;

.field public j:Ljme3utilities/debug/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Ljme3utilities/debug/b;->l:Lcom/jme3/math/ColorRGBA;

    const-class v0, Ljme3utilities/debug/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljme3utilities/debug/b;->o:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lif/B;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ljme3utilities/debug/b;->e:Lcom/jme3/renderer/Camera;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Ljme3utilities/debug/b;->f:F

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Ljme3utilities/debug/b;->g:I

    .line 5
    iput-object v0, p0, Ljme3utilities/debug/b;->i:Lcom/jme3/scene/Spatial;

    .line 6
    sget-object v0, Ljme3utilities/debug/i;->WireSphere:Ljme3utilities/debug/i;

    iput-object v0, p0, Ljme3utilities/debug/b;->j:Ljme3utilities/debug/i;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lif/B;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Ljme3utilities/debug/b;->e:Lcom/jme3/renderer/Camera;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    iput v1, p0, Ljme3utilities/debug/b;->f:F

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Ljme3utilities/debug/b;->g:I

    .line 11
    iput-object v0, p0, Ljme3utilities/debug/b;->i:Lcom/jme3/scene/Spatial;

    .line 12
    sget-object v0, Ljme3utilities/debug/i;->WireSphere:Ljme3utilities/debug/i;

    iput-object v0, p0, Ljme3utilities/debug/b;->j:Ljme3utilities/debug/i;

    .line 13
    const-string v0, "asset manager"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 14
    sget-object v0, Ljme3utilities/debug/b;->l:Lcom/jme3/math/ColorRGBA;

    invoke-static {p1, v0}, Lif/l;->q(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;

    move-result-object p1

    iput-object p1, p0, Ljme3utilities/debug/b;->h:Lcom/jme3/material/Material;

    .line 15
    invoke-virtual {p1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v1}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    .line 17
    iget-object p1, p0, Ljme3utilities/debug/b;->h:Lcom/jme3/material/Material;

    const-string v0, "bound mat"

    invoke-virtual {p1, v0}, Lcom/jme3/material/Material;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Lif/B;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ljme3utilities/debug/b;->g()Ljme3utilities/debug/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ljme3utilities/debug/b;->g()Ljme3utilities/debug/b;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lif/B;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Ljme3utilities/debug/b;->e:Lcom/jme3/renderer/Camera;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/renderer/Camera;

    iput-object p2, p0, Ljme3utilities/debug/b;->e:Lcom/jme3/renderer/Camera;

    iget-object p2, p0, Ljme3utilities/debug/b;->h:Lcom/jme3/material/Material;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/material/Material;

    iput-object p2, p0, Ljme3utilities/debug/b;->h:Lcom/jme3/material/Material;

    iget-object p2, p0, Ljme3utilities/debug/b;->i:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Ljme3utilities/debug/b;->i:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public controlUpdate(F)V
    .locals 3

    invoke-super {p0, p1}, Lif/z;->controlUpdate(F)V

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Node;

    iget-object v0, p0, Ljme3utilities/debug/b;->i:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_4

    iget v0, p0, Ljme3utilities/debug/b;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getQuantity()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljme3utilities/debug/b;->e()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Ljme3utilities/debug/b;->i:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    instance-of v2, v1, Lcom/jme3/bounding/BoundingBox;

    if-eqz v2, :cond_2

    instance-of v2, v0, Lcom/jme3/scene/debug/WireBox;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljme3utilities/debug/b;->t()V

    goto :goto_1

    :cond_2
    instance-of v1, v1, Lcom/jme3/bounding/BoundingSphere;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljme3utilities/debug/b;->j:Ljme3utilities/debug/i;

    invoke-virtual {v1, v0}, Ljme3utilities/debug/i;->b(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljme3utilities/debug/b;->v()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/jme3/scene/Node;->detachAllChildren()V

    invoke-virtual {p0}, Ljme3utilities/debug/b;->e()V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/scene/Node;->detachAllChildren()V

    :goto_1
    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Ljme3utilities/debug/b;->i:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    instance-of v1, v0, Lcom/jme3/bounding/BoundingBox;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v0, Lcom/jme3/scene/debug/WireBox;

    invoke-direct {v0}, Lcom/jme3/scene/debug/WireBox;-><init>()V

    goto :goto_0

    :cond_0
    instance-of v3, v0, Lcom/jme3/bounding/BoundingSphere;

    if-eqz v3, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v3, p0, Ljme3utilities/debug/b;->j:Ljme3utilities/debug/i;

    invoke-virtual {v3, v0, v2, v2}, Ljme3utilities/debug/i;->c(FZZ)Lcom/jme3/scene/Mesh;

    move-result-object v0

    :goto_0
    new-instance v3, Lcom/jme3/scene/Geometry;

    const-string v4, "bound lines"

    invoke-direct {v3, v4, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iget-object v0, p0, Ljme3utilities/debug/b;->h:Lcom/jme3/material/Material;

    invoke-virtual {v3, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0, v3, v2}, Lcom/jme3/scene/Node;->attachChildAt(Lcom/jme3/scene/Spatial;I)I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljme3utilities/debug/b;->t()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljme3utilities/debug/b;->v()V

    :goto_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Ljme3utilities/debug/b;->e:Lcom/jme3/renderer/Camera;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Ljme3utilities/debug/b;->g:I

    :goto_0
    return v0
.end method

.method public g()Ljme3utilities/debug/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lif/B;->b()Lif/B;

    move-result-object v0

    check-cast v0, Ljme3utilities/debug/b;

    return-object v0
.end method

.method public getCamera()Lcom/jme3/renderer/Camera;
    .locals 1

    iget-object v0, p0, Ljme3utilities/debug/b;->e:Lcom/jme3/renderer/Camera;

    return-object v0
.end method

.method public h(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/ColorRGBA;

    invoke-direct {p1}, Lcom/jme3/math/ColorRGBA;-><init>()V

    :cond_0
    iget-object v0, p0, Ljme3utilities/debug/b;->h:Lcom/jme3/material/Material;

    const-string v1, "Color"

    invoke-virtual {v0, v1}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p1, v0}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    return-object p1
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljme3utilities/debug/b;->e:Lcom/jme3/renderer/Camera;

    return-void
.end method

.method public j(Lcom/jme3/renderer/Camera;I)V
    .locals 1

    const-string v0, "camera"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "axis index"

    invoke-static {p2, v0}, Lif/E;->a(ILjava/lang/String;)Z

    iput-object p1, p0, Ljme3utilities/debug/b;->e:Lcom/jme3/renderer/Camera;

    iput p2, p0, Ljme3utilities/debug/b;->g:I

    return-void
.end method

.method public k()Lcom/jme3/scene/Spatial;
    .locals 1

    iget-object v0, p0, Ljme3utilities/debug/b;->i:Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Ljme3utilities/debug/b;->h:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/RenderState;->isDepthTest()Z

    move-result v0

    return v0
.end method

.method public m()F
    .locals 1

    iget v0, p0, Ljme3utilities/debug/b;->f:F

    return v0
.end method

.method public n(Lcom/jme3/math/ColorRGBA;)V
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object p1

    iget-object v0, p0, Ljme3utilities/debug/b;->h:Lcom/jme3/material/Material;

    const-string v1, "Color"

    invoke-virtual {v0, v1, p1}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    return-void
.end method

.method public o(Z)V
    .locals 1

    iget-object v0, p0, Ljme3utilities/debug/b;->h:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    return-void
.end method

.method public p(F)V
    .locals 1

    const-string v0, "new width"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    iput p1, p0, Ljme3utilities/debug/b;->f:F

    return-void
.end method

.method public q(Ljme3utilities/debug/i;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iput-object p1, p0, Ljme3utilities/debug/b;->j:Ljme3utilities/debug/i;

    return-void
.end method

.method public r(Lcom/jme3/scene/Spatial;)V
    .locals 0

    iput-object p1, p0, Ljme3utilities/debug/b;->i:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lif/B;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "billboardAxis"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ljme3utilities/debug/b;->g:I

    const-string v0, "camera"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/renderer/Camera;

    iput-object v0, p0, Ljme3utilities/debug/b;->e:Lcom/jme3/renderer/Camera;

    const-string v0, "lineMaterial"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/Material;

    iput-object v0, p0, Ljme3utilities/debug/b;->h:Lcom/jme3/material/Material;

    const-string v0, "lineWidth"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Ljme3utilities/debug/b;->f:F

    const-string v0, "sphereType"

    const-class v2, Ljme3utilities/debug/i;

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljme3utilities/debug/i;

    iput-object v0, p0, Ljme3utilities/debug/b;->j:Ljme3utilities/debug/i;

    const-string v0, "subject"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Ljme3utilities/debug/b;->i:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public s()Ljme3utilities/debug/i;
    .locals 1

    iget-object v0, p0, Ljme3utilities/debug/b;->j:Ljme3utilities/debug/i;

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "bound node"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    invoke-virtual {p0, v0}, Lif/B;->d(Lcom/jme3/scene/Spatial;)V

    :cond_0
    invoke-super {p0, p1}, Lif/B;->setEnabled(Z)V

    return-void
.end method

.method public final t()V
    .locals 6

    iget-object v0, p0, Ljme3utilities/debug/b;->i:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    check-cast v0, Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Node;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Geometry;

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/debug/WireBox;

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v3

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v4

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/jme3/scene/debug/WireBox;->updatePositions(FFF)V

    new-instance v2, Lcom/jme3/math/Transform;

    invoke-direct {v2}, Lcom/jme3/math/Transform;-><init>()V

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    invoke-static {v1, v2}, Lif/s;->P(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Transform;)V

    invoke-virtual {p0}, Ljme3utilities/debug/b;->u()V

    return-void
.end method

.method public final u()V
    .locals 2

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    iget-object v0, p0, Ljme3utilities/debug/b;->h:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    iget v1, p0, Ljme3utilities/debug/b;->f:F

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setLineWidth(F)V

    return-void
.end method

.method public final v()V
    .locals 9

    iget-object v0, p0, Ljme3utilities/debug/b;->i:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    check-cast v0, Lcom/jme3/bounding/BoundingSphere;

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Node;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Geometry;

    new-instance v2, Lcom/jme3/math/Transform;

    invoke-direct {v2}, Lcom/jme3/math/Transform;-><init>()V

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    iget-object v4, p0, Ljme3utilities/debug/b;->e:Lcom/jme3/renderer/Camera;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-static {v3, v4, v5}, Ljf/h;->u(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v6

    iget v7, p0, Ljme3utilities/debug/b;->g:I

    if-nez v7, :cond_0

    invoke-virtual {v6, v3, v4, v5}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    invoke-virtual {v6, v5, v3, v4}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    goto :goto_0

    :cond_1
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    invoke-virtual {v6, v4, v5, v3}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "billboardAxis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljme3utilities/debug/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    invoke-static {v1, v2}, Lif/s;->P(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Transform;)V

    invoke-virtual {p0}, Ljme3utilities/debug/b;->u()V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lif/B;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Ljme3utilities/debug/b;->g:I

    const-string v1, "billboardAxis"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Ljme3utilities/debug/b;->e:Lcom/jme3/renderer/Camera;

    const-string v1, "camera"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Ljme3utilities/debug/b;->h:Lcom/jme3/material/Material;

    const-string v1, "lineMaterial"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Ljme3utilities/debug/b;->f:F

    const-string v1, "lineWidth"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Ljme3utilities/debug/b;->j:Ljme3utilities/debug/i;

    const-string v1, "sphereType"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Ljme3utilities/debug/b;->i:Lcom/jme3/scene/Spatial;

    const-string v1, "subject"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
