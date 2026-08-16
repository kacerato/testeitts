.class public Ljme3utilities/debug/j;
.super Lif/B;
.source "SourceFile"


# static fields
.field public static final j:Z = false

.field public static final k:F = 0.0f

.field public static final l:Ljava/util/logging/Logger;

.field public static final m:Ljava/lang/String; = "Models/indicators/arrow/arrow.j3o"

.field public static final n:Ljava/lang/String; = "vector node"

.field public static final o:Ljava/lang/String; = "color"

.field public static final p:Ljava/lang/String; = "depthTest"

.field public static final q:Ljava/lang/String; = "lineWidth"

.field public static final r:Ljava/lang/String; = "tipOffset"

.field public static final synthetic s:Z


# instance fields
.field public e:Lcom/jme3/asset/AssetManager;

.field public f:Z

.field public g:Lcom/jme3/math/ColorRGBA;

.field public h:F

.field public i:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljme3utilities/debug/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljme3utilities/debug/j;->l:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lif/B;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ljme3utilities/debug/j;->f:Z

    .line 3
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Ljme3utilities/debug/j;->g:Lcom/jme3/math/ColorRGBA;

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljme3utilities/debug/j;->i:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;F)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lif/B;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Ljme3utilities/debug/j;->f:Z

    .line 7
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Ljme3utilities/debug/j;->g:Lcom/jme3/math/ColorRGBA;

    .line 8
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Ljme3utilities/debug/j;->i:Lcom/jme3/math/Vector3f;

    .line 9
    const-string v0, "asset manager"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 10
    const-string v0, "line width"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 11
    iput-object p1, p0, Ljme3utilities/debug/j;->e:Lcom/jme3/asset/AssetManager;

    .line 12
    iput p2, p0, Ljme3utilities/debug/j;->h:F

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

    invoke-virtual {p0}, Ljme3utilities/debug/j;->h()Ljme3utilities/debug/j;

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

    invoke-virtual {p0}, Ljme3utilities/debug/j;->h()Ljme3utilities/debug/j;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lif/B;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p1, p0, Ljme3utilities/debug/j;->g:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p1}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object p1

    iput-object p1, p0, Ljme3utilities/debug/j;->g:Lcom/jme3/math/ColorRGBA;

    iget-object p1, p0, Ljme3utilities/debug/j;->i:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Ljme3utilities/debug/j;->i:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public controlUpdate(F)V
    .locals 4

    invoke-super {p0, p1}, Lif/z;->controlUpdate(F)V

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getQuantity()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/scene/debug/Arrow;

    iget v1, p0, Ljme3utilities/debug/j;->h:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljme3utilities/debug/j;->t()V

    goto :goto_0

    :cond_0
    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljme3utilities/debug/j;->s()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/scene/Node;->detachAllChildren()V

    invoke-virtual {p0}, Ljme3utilities/debug/j;->e()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/scene/Node;->detachAllChildren()V

    invoke-virtual {p0}, Ljme3utilities/debug/j;->e()V

    :goto_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget v0, p0, Ljme3utilities/debug/j;->h:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljme3utilities/debug/j;->g()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljme3utilities/debug/j;->f()V

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Ljme3utilities/debug/j;->e:Lcom/jme3/asset/AssetManager;

    const-string v1, "Models/indicators/arrow/arrow.j3o"

    invoke-interface {v0, v1}, Lcom/jme3/asset/AssetManager;->loadModel(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Node;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v1, p0, Ljme3utilities/debug/j;->e:Lcom/jme3/asset/AssetManager;

    iget-object v2, p0, Ljme3utilities/debug/j;->g:Lcom/jme3/math/ColorRGBA;

    invoke-static {v1, v2}, Lif/l;->n(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    const-string v2, "arrowMaterial"

    invoke-virtual {v1, v2}, Lcom/jme3/material/Material;->setName(Ljava/lang/String;)V

    const-string v1, "arrow"

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljme3utilities/debug/j;->s()V

    return-void
.end method

.method public final g()V
    .locals 3

    new-instance v0, Lcom/jme3/scene/debug/Arrow;

    iget-object v1, p0, Ljme3utilities/debug/j;->i:Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    new-instance v1, Lcom/jme3/scene/Geometry;

    const-string v2, "arrow"

    invoke-direct {v1, v2, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v0, p0, Ljme3utilities/debug/j;->e:Lcom/jme3/asset/AssetManager;

    iget-object v2, p0, Ljme3utilities/debug/j;->g:Lcom/jme3/math/ColorRGBA;

    invoke-static {v0, v2}, Lif/l;->q(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    const-string v1, "arrowMaterial"

    invoke-virtual {v0, v1}, Lcom/jme3/material/Material;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    iget-boolean v1, p0, Ljme3utilities/debug/j;->f:Z

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    iget v1, p0, Ljme3utilities/debug/j;->h:F

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setLineWidth(F)V

    return-void
.end method

.method public h()Ljme3utilities/debug/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lif/B;->b()Lif/B;

    move-result-object v0

    check-cast v0, Ljme3utilities/debug/j;

    return-object v0
.end method

.method public i(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Ljme3utilities/debug/j;->g:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p1}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Ljme3utilities/debug/j;->g:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p1, v0}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Ljme3utilities/debug/j;->f:Z

    return v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Ljme3utilities/debug/j;->h:F

    return v0
.end method

.method public l(Lcom/jme3/math/ColorRGBA;)V
    .locals 1

    const-string v0, "color"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljme3utilities/debug/j;->g:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    return-void
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Ljme3utilities/debug/j;->f:Z

    return-void
.end method

.method public n(F)V
    .locals 1

    const-string v0, "width"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    iput p1, p0, Ljme3utilities/debug/j;->h:F

    return-void
.end method

.method public o(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "offset"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljme3utilities/debug/j;->i:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public p()Lcom/jme3/math/Vector3f;
    .locals 3

    invoke-virtual {p0}, Lif/z;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v2, p0, Ljme3utilities/debug/j;->i:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2, v1}, Lcom/jme3/scene/Spatial;->localToWorld(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public q(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Ljme3utilities/debug/j;->i:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Ljme3utilities/debug/j;->i:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public final r(Lcom/jme3/material/Material;)V
    .locals 3

    const-string v0, "Color"

    invoke-virtual {p1, v0}, Lcom/jme3/material/Material;->getParamValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/ColorRGBA;

    iget-object v2, p0, Ljme3utilities/debug/j;->g:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v1, v2}, Lcom/jme3/math/ColorRGBA;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljme3utilities/debug/j;->g:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v1}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    :cond_0
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

    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v0

    iput-object v0, p0, Ljme3utilities/debug/j;->e:Lcom/jme3/asset/AssetManager;

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "color"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/ColorRGBA;

    iput-object v0, p0, Ljme3utilities/debug/j;->g:Lcom/jme3/math/ColorRGBA;

    const-string v0, "depthTest"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljme3utilities/debug/j;->f:Z

    const-string v0, "lineWidth"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Ljme3utilities/debug/j;->h:F

    const-string v0, "tipOffset"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Ljme3utilities/debug/j;->i:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public final s()V
    .locals 5

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Ljme3utilities/debug/j;->i:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->length()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setLocalScale(F)V

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Ljme3utilities/debug/j;->i:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-static {v1, v2, v3}, Ljf/h;->u(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    new-instance v4, Lcom/jme3/math/Quaternion;

    invoke-direct {v4}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-virtual {v4, v1, v2, v3}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v4}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljme3utilities/debug/j;->r(Lcom/jme3/material/Material;)V

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    iget-boolean v1, p0, Ljme3utilities/debug/j;->f:Z

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "vector node"

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
    .locals 3

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/debug/Arrow;

    iget-object v2, p0, Ljme3utilities/debug/j;->i:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/scene/debug/Arrow;->setArrowExtent(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljme3utilities/debug/j;->r(Lcom/jme3/material/Material;)V

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    iget-boolean v1, p0, Ljme3utilities/debug/j;->f:Z

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    iget v1, p0, Ljme3utilities/debug/j;->h:F

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setLineWidth(F)V

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

    iget-object v0, p0, Ljme3utilities/debug/j;->g:Lcom/jme3/math/ColorRGBA;

    const-string v1, "color"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Ljme3utilities/debug/j;->f:Z

    const-string v1, "depthTest"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget v0, p0, Ljme3utilities/debug/j;->h:F

    const-string v1, "lineWidth"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Ljme3utilities/debug/j;->i:Lcom/jme3/math/Vector3f;

    const-string v1, "tipOffset"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
