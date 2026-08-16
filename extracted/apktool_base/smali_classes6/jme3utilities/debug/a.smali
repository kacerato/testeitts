.class public Ljme3utilities/debug/a;
.super Lif/B;
.source "SourceFile"


# static fields
.field public static final j:Z = false

.field public static final k:Lcom/jme3/math/ColorRGBA;

.field public static final l:Lcom/jme3/math/ColorRGBA;

.field public static final m:Lcom/jme3/math/ColorRGBA;

.field public static final n:F = 0.0f

.field public static final o:Ljava/util/logging/Logger;

.field public static final p:Ljava/lang/String; = "Models/indicators/arrow/arrow.j3o"

.field public static final q:Ljava/lang/String; = "axes node"

.field public static final r:Ljava/lang/String; = "axisLength"

.field public static final s:Ljava/lang/String; = "depthTest"

.field public static final t:Ljava/lang/String; = "lineWidth"

.field public static final u:Ljava/lang/String; = "numAxes"

.field public static final v:Lcom/jme3/math/Vector3f;

.field public static final w:Lcom/jme3/math/Vector3f;

.field public static final x:Lcom/jme3/math/Vector3f;

.field public static final synthetic y:Z


# instance fields
.field public e:Lcom/jme3/asset/AssetManager;

.field public f:Z

.field public g:F

.field public h:F

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Ljme3utilities/debug/a;->k:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v2, v1, v2, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Ljme3utilities/debug/a;->l:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v2, v2, v1, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Ljme3utilities/debug/a;->m:Lcom/jme3/math/ColorRGBA;

    const-class v0, Ljme3utilities/debug/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljme3utilities/debug/a;->o:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Ljme3utilities/debug/a;->v:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v2, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Ljme3utilities/debug/a;->w:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v2, v2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Ljme3utilities/debug/a;->x:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lif/B;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ljme3utilities/debug/a;->f:Z

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Ljme3utilities/debug/a;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;F)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lif/B;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ljme3utilities/debug/a;->f:Z

    const/4 v0, 0x3

    .line 6
    iput v0, p0, Ljme3utilities/debug/a;->i:I

    .line 7
    const-string v0, "asset manager"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 8
    const-string v0, "axis length"

    invoke-static {p2, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 9
    iput-object p1, p0, Ljme3utilities/debug/a;->e:Lcom/jme3/asset/AssetManager;

    .line 10
    iput p2, p0, Ljme3utilities/debug/a;->g:F

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Ljme3utilities/debug/a;->h:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;FF)V
    .locals 3

    .line 12
    invoke-direct {p0}, Lif/B;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Ljme3utilities/debug/a;->f:Z

    const/4 v0, 0x3

    .line 14
    iput v0, p0, Ljme3utilities/debug/a;->i:I

    .line 15
    const-string v0, "asset manager"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 16
    const-string v0, "axis length"

    invoke-static {p2, v0}, Lif/E;->E(FLjava/lang/String;)Z

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 17
    const-string v2, "line width"

    invoke-static {p3, v2, v0, v1}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 18
    iput-object p1, p0, Ljme3utilities/debug/a;->e:Lcom/jme3/asset/AssetManager;

    .line 19
    iput p2, p0, Ljme3utilities/debug/a;->g:F

    .line 20
    iput p3, p0, Ljme3utilities/debug/a;->h:F

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

    invoke-virtual {p0}, Ljme3utilities/debug/a;->i()Ljme3utilities/debug/a;

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

    invoke-virtual {p0}, Ljme3utilities/debug/a;->i()Ljme3utilities/debug/a;

    move-result-object v0

    return-object v0
.end method

.method public controlUpdate(F)V
    .locals 4

    invoke-super {p0, p1}, Lif/z;->controlUpdate(F)V

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getQuantity()I

    move-result v0

    iget v1, p0, Ljme3utilities/debug/a;->i:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/scene/debug/Arrow;

    iget v1, p0, Ljme3utilities/debug/a;->h:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljme3utilities/debug/a;->r()V

    goto :goto_0

    :cond_0
    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljme3utilities/debug/a;->r()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/scene/Node;->detachAllChildren()V

    invoke-virtual {p0}, Ljme3utilities/debug/a;->e()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/scene/Node;->detachAllChildren()V

    invoke-virtual {p0}, Ljme3utilities/debug/a;->e()V

    :goto_0
    return-void
.end method

.method public final e()V
    .locals 7

    iget v0, p0, Ljme3utilities/debug/a;->h:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const-string v1, "zAxis"

    const/4 v2, 0x2

    const-string v3, "yAxis"

    const/4 v4, 0x1

    const-string v5, "xAxis"

    if-ltz v0, :cond_0

    sget-object v0, Ljme3utilities/debug/a;->k:Lcom/jme3/math/ColorRGBA;

    sget-object v6, Ljme3utilities/debug/a;->v:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0, v5, v6}, Ljme3utilities/debug/a;->g(Lcom/jme3/math/ColorRGBA;Ljava/lang/String;Lcom/jme3/math/Vector3f;)V

    iget v0, p0, Ljme3utilities/debug/a;->i:I

    if-le v0, v4, :cond_1

    sget-object v0, Ljme3utilities/debug/a;->l:Lcom/jme3/math/ColorRGBA;

    sget-object v4, Ljme3utilities/debug/a;->w:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0, v3, v4}, Ljme3utilities/debug/a;->g(Lcom/jme3/math/ColorRGBA;Ljava/lang/String;Lcom/jme3/math/Vector3f;)V

    iget v0, p0, Ljme3utilities/debug/a;->i:I

    if-le v0, v2, :cond_1

    sget-object v0, Ljme3utilities/debug/a;->m:Lcom/jme3/math/ColorRGBA;

    sget-object v2, Ljme3utilities/debug/a;->x:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0, v1, v2}, Ljme3utilities/debug/a;->g(Lcom/jme3/math/ColorRGBA;Ljava/lang/String;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljme3utilities/debug/a;->k:Lcom/jme3/math/ColorRGBA;

    sget-object v6, Ljme3utilities/debug/a;->v:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0, v5, v6}, Ljme3utilities/debug/a;->f(Lcom/jme3/math/ColorRGBA;Ljava/lang/String;Lcom/jme3/math/Vector3f;)V

    iget v0, p0, Ljme3utilities/debug/a;->i:I

    if-le v0, v4, :cond_1

    sget-object v0, Ljme3utilities/debug/a;->l:Lcom/jme3/math/ColorRGBA;

    sget-object v4, Ljme3utilities/debug/a;->w:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0, v3, v4}, Ljme3utilities/debug/a;->f(Lcom/jme3/math/ColorRGBA;Ljava/lang/String;Lcom/jme3/math/Vector3f;)V

    iget v0, p0, Ljme3utilities/debug/a;->i:I

    if-le v0, v2, :cond_1

    sget-object v0, Ljme3utilities/debug/a;->m:Lcom/jme3/math/ColorRGBA;

    sget-object v2, Ljme3utilities/debug/a;->x:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0, v1, v2}, Ljme3utilities/debug/a;->f(Lcom/jme3/math/ColorRGBA;Ljava/lang/String;Lcom/jme3/math/Vector3f;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljme3utilities/debug/a;->r()V

    return-void
.end method

.method public final f(Lcom/jme3/math/ColorRGBA;Ljava/lang/String;Lcom/jme3/math/Vector3f;)V
    .locals 4

    iget-object v0, p0, Ljme3utilities/debug/a;->e:Lcom/jme3/asset/AssetManager;

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

    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p3

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-static {p3, v1, v2}, Ljf/h;->u(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    new-instance v3, Lcom/jme3/math/Quaternion;

    invoke-direct {v3}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-virtual {v3, p3, v1, v2}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v3}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    invoke-virtual {v0, p2}, Lcom/jme3/scene/Spatial;->setName(Ljava/lang/String;)V

    iget-object p3, p0, Ljme3utilities/debug/a;->e:Lcom/jme3/asset/AssetManager;

    invoke-static {p3, p1}, Lif/l;->n(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p3

    iget-boolean v0, p0, Ljme3utilities/debug/a;->f:Z

    invoke-virtual {p3, v0}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Material"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/material/Material;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public final g(Lcom/jme3/math/ColorRGBA;Ljava/lang/String;Lcom/jme3/math/Vector3f;)V
    .locals 1

    new-instance v0, Lcom/jme3/scene/debug/Arrow;

    invoke-direct {v0, p3}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    new-instance p3, Lcom/jme3/scene/Geometry;

    invoke-direct {p3, p2, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0, p3}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v0, p0, Ljme3utilities/debug/a;->e:Lcom/jme3/asset/AssetManager;

    invoke-static {v0, p1}, Lif/l;->q(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p3

    iget-boolean v0, p0, Ljme3utilities/debug/a;->f:Z

    invoke-virtual {p3, v0}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Material"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/material/Material;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public h()F
    .locals 1

    iget v0, p0, Ljme3utilities/debug/a;->g:F

    return v0
.end method

.method public i()Ljme3utilities/debug/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lif/B;->b()Lif/B;

    move-result-object v0

    check-cast v0, Ljme3utilities/debug/a;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Ljme3utilities/debug/a;->f:Z

    return v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Ljme3utilities/debug/a;->h:F

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Ljme3utilities/debug/a;->i:I

    return v0
.end method

.method public m(F)V
    .locals 1

    const-string v0, "length"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    iput p1, p0, Ljme3utilities/debug/a;->g:F

    return-void
.end method

.method public n(Z)V
    .locals 0

    iput-boolean p1, p0, Ljme3utilities/debug/a;->f:Z

    return-void
.end method

.method public o(F)V
    .locals 1

    const-string v0, "width"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    iput p1, p0, Ljme3utilities/debug/a;->h:F

    return-void
.end method

.method public p(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    const-string v2, "new number"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    iput p1, p0, Ljme3utilities/debug/a;->i:I

    return-void
.end method

.method public q(I)Lcom/jme3/math/Vector3f;
    .locals 3

    const-string v0, "axis index"

    invoke-static {p1, v0}, Lif/E;->a(ILjava/lang/String;)Z

    invoke-virtual {p0}, Lif/z;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Ljme3utilities/debug/a;->i:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    iget v2, p0, Ljme3utilities/debug/a;->g:F

    invoke-static {v0, v2}, Lif/s;->O(Lcom/jme3/scene/Spatial;F)V

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Geometry;

    sget-object v0, Ljme3utilities/debug/a;->v:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/scene/Spatial;->localToWorld(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final r()V
    .locals 4

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    iget v1, p0, Ljme3utilities/debug/a;->g:F

    invoke-static {v0, v1}, Lif/s;->O(Lcom/jme3/scene/Spatial;F)V

    invoke-virtual {v0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    check-cast v1, Lcom/jme3/scene/Geometry;

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    iget-boolean v2, p0, Ljme3utilities/debug/a;->f:Z

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    iget v2, p0, Ljme3utilities/debug/a;->h:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setLineWidth(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lif/B;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v0

    iput-object v0, p0, Ljme3utilities/debug/a;->e:Lcom/jme3/asset/AssetManager;

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "axisLength"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Ljme3utilities/debug/a;->g:F

    const-string v0, "depthTest"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljme3utilities/debug/a;->f:Z

    const-string v0, "lineWidth"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Ljme3utilities/debug/a;->h:F

    const-string v0, "numAxes"

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Ljme3utilities/debug/a;->i:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "axes node"

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

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lif/B;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Ljme3utilities/debug/a;->g:F

    const-string v1, "axisLength"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-boolean v0, p0, Ljme3utilities/debug/a;->f:Z

    const-string v1, "depthTest"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget v0, p0, Ljme3utilities/debug/a;->h:F

    const-string v1, "lineWidth"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Ljme3utilities/debug/a;->i:I

    const-string v1, "numAxes"

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
