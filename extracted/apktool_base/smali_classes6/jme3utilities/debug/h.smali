.class public Ljme3utilities/debug/h;
.super Lif/B;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String; = "headColor"

.field public static final B:Ljava/lang/String; = "headMaterial"

.field public static final C:Ljava/lang/String; = "lineMaterial"

.field public static final D:Ljava/lang/String; = "lineWidth"

.field public static final E:Ljava/lang/String; = "skeleton"

.field public static final F:Ljava/lang/String; = "transformSpatial"

.field public static final G:Lcom/jme3/math/Transform;

.field public static final synthetic H:Z = false

.field public static final m:Lcom/jme3/math/ColorRGBA;

.field public static final n:Lcom/jme3/math/ColorRGBA;

.field public static final o:F = 4.0f

.field public static final p:F = 1.0f

.field public static final q:I = 0x0

.field public static final r:I = 0x1

.field public static final s:Ljava/util/logging/Logger;

.field public static final t:Ljava/lang/String; = "Textures/shapes/solid circle.png"

.field public static final u:Ljava/lang/String; = "skeleton heads"

.field public static final v:Ljava/lang/String; = "skeleton links"

.field public static final w:Ljava/lang/String; = "skeleton node"

.field public static final x:Ljava/lang/String; = "armature"

.field public static final y:Ljava/lang/String; = "customColorKeys"

.field public static final z:Ljava/lang/String; = "customColors"


# instance fields
.field public e:Lcom/jme3/anim/Armature;

.field public f:Lcom/jme3/math/ColorRGBA;

.field public g:F

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/jme3/math/ColorRGBA;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/jme3/material/Material;

.field public j:Lcom/jme3/material/Material;

.field public k:Lcom/jme3/animation/Skeleton;

.field public l:Lcom/jme3/scene/Spatial;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Ljme3utilities/debug/h;->m:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Ljme3utilities/debug/h;->n:Lcom/jme3/math/ColorRGBA;

    const-class v0, Ljme3utilities/debug/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljme3utilities/debug/h;->s:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    sput-object v0, Ljme3utilities/debug/h;->G:Lcom/jme3/math/Transform;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lif/B;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ljme3utilities/debug/h;->e:Lcom/jme3/anim/Armature;

    .line 3
    sget-object v1, Ljme3utilities/debug/h;->m:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v1}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v1

    iput-object v1, p0, Ljme3utilities/debug/h;->f:Lcom/jme3/math/ColorRGBA;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Ljme3utilities/debug/h;->g:F

    .line 5
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Ljme3utilities/debug/h;->h:Ljava/util/Map;

    .line 6
    iput-object v0, p0, Ljme3utilities/debug/h;->k:Lcom/jme3/animation/Skeleton;

    .line 7
    iput-object v0, p0, Ljme3utilities/debug/h;->l:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/scene/control/AbstractControl;)V
    .locals 7

    .line 8
    invoke-direct {p0}, Lif/B;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Ljme3utilities/debug/h;->e:Lcom/jme3/anim/Armature;

    .line 10
    sget-object v1, Ljme3utilities/debug/h;->m:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v1}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v1

    iput-object v1, p0, Ljme3utilities/debug/h;->f:Lcom/jme3/math/ColorRGBA;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    iput v1, p0, Ljme3utilities/debug/h;->g:F

    .line 12
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Ljme3utilities/debug/h;->h:Ljava/util/Map;

    .line 13
    iput-object v0, p0, Ljme3utilities/debug/h;->k:Lcom/jme3/animation/Skeleton;

    .line 14
    iput-object v0, p0, Ljme3utilities/debug/h;->l:Lcom/jme3/scene/Spatial;

    .line 15
    const-string v1, "asset manager"

    invoke-static {p1, v1}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v1, 0x0

    .line 16
    invoke-static {p1, v0, v1}, Lif/l;->f(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;F)Lcom/jme3/material/Material;

    move-result-object v0

    iput-object v0, p0, Ljme3utilities/debug/h;->j:Lcom/jme3/material/Material;

    .line 17
    const-string v1, "UseVertexColor"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    .line 18
    iget-object v0, p0, Ljme3utilities/debug/h;->j:Lcom/jme3/material/Material;

    sget-object v3, Ljme3utilities/debug/h;->n:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v3}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v3

    const-string v4, "Color"

    invoke-virtual {v0, v4, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    .line 19
    iget-object v0, p0, Ljme3utilities/debug/h;->j:Lcom/jme3/material/Material;

    const v3, 0x3f7ff972    # 0.9999f

    const-string v4, "AlphaDiscardThreshold"

    invoke-virtual {v0, v4, v3}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    .line 20
    iget-object v0, p0, Ljme3utilities/debug/h;->j:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    .line 21
    sget-object v3, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v0, v3}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    const/4 v5, 0x0

    .line 22
    invoke-virtual {v0, v5}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    .line 23
    const-string v0, "Textures/shapes/solid circle.png"

    invoke-static {p1, v0, v5}, Lif/l;->t(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;

    move-result-object v0

    const/high16 v6, 0x40800000    # 4.0f

    .line 24
    invoke-static {p1, v0, v6}, Lif/l;->f(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;F)Lcom/jme3/material/Material;

    move-result-object p1

    iput-object p1, p0, Ljme3utilities/debug/h;->i:Lcom/jme3/material/Material;

    .line 25
    invoke-virtual {p1, v1, v2}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    .line 26
    iget-object p1, p0, Ljme3utilities/debug/h;->i:Lcom/jme3/material/Material;

    const v0, 0x38d1b717    # 1.0E-4f

    invoke-virtual {p1, v4, v0}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    .line 27
    iget-object p1, p0, Ljme3utilities/debug/h;->i:Lcom/jme3/material/Material;

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v3}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    .line 29
    invoke-virtual {p1, v5}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    .line 30
    invoke-virtual {p0, p2}, Ljme3utilities/debug/h;->t(Lcom/jme3/scene/control/AbstractControl;)V

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

    invoke-virtual {p0}, Ljme3utilities/debug/h;->f()Ljme3utilities/debug/h;

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

    invoke-virtual {p0}, Ljme3utilities/debug/h;->f()Ljme3utilities/debug/h;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lif/B;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    check-cast p2, Ljme3utilities/debug/h;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Ljme3utilities/debug/h;->h:Ljava/util/Map;

    iget-object p2, p2, Ljme3utilities/debug/h;->h:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/ColorRGBA;

    iget-object v2, p0, Ljme3utilities/debug/h;->h:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Ljme3utilities/debug/h;->e:Lcom/jme3/anim/Armature;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/anim/Armature;

    iput-object p2, p0, Ljme3utilities/debug/h;->e:Lcom/jme3/anim/Armature;

    iget-object p2, p0, Ljme3utilities/debug/h;->f:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/ColorRGBA;

    iput-object p2, p0, Ljme3utilities/debug/h;->f:Lcom/jme3/math/ColorRGBA;

    iget-object p2, p0, Ljme3utilities/debug/h;->i:Lcom/jme3/material/Material;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/material/Material;

    iput-object p2, p0, Ljme3utilities/debug/h;->i:Lcom/jme3/material/Material;

    iget-object p2, p0, Ljme3utilities/debug/h;->j:Lcom/jme3/material/Material;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/material/Material;

    iput-object p2, p0, Ljme3utilities/debug/h;->j:Lcom/jme3/material/Material;

    iget-object p2, p0, Ljme3utilities/debug/h;->k:Lcom/jme3/animation/Skeleton;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/animation/Skeleton;

    iput-object p2, p0, Ljme3utilities/debug/h;->k:Lcom/jme3/animation/Skeleton;

    iget-object p2, p0, Ljme3utilities/debug/h;->l:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Ljme3utilities/debug/h;->l:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public controlUpdate(F)V
    .locals 1

    invoke-super {p0, p1}, Lif/z;->controlUpdate(F)V

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Ljme3utilities/debug/h;->i()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->detachAllChildren()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getQuantity()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljme3utilities/debug/h;->e()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljme3utilities/debug/h;->v()V

    :goto_0
    return-void
.end method

.method public final e()V
    .locals 5

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    new-instance v1, Ljme3utilities/debug/g;

    iget-object v2, p0, Ljme3utilities/debug/h;->e:Lcom/jme3/anim/Armature;

    iget-object v3, p0, Ljme3utilities/debug/h;->k:Lcom/jme3/animation/Skeleton;

    sget-object v4, Lcom/jme3/scene/Mesh$Mode;->Points:Lcom/jme3/scene/Mesh$Mode;

    invoke-direct {v1, v2, v3, v4}, Ljme3utilities/debug/g;-><init>(Lcom/jme3/anim/Armature;Lcom/jme3/animation/Skeleton;Lcom/jme3/scene/Mesh$Mode;)V

    new-instance v2, Lcom/jme3/scene/Geometry;

    const-string v3, "skeleton heads"

    invoke-direct {v2, v3, v1}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iget-object v1, p0, Ljme3utilities/debug/h;->i:Lcom/jme3/material/Material;

    invoke-virtual {v2, v1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/jme3/scene/Node;->attachChildAt(Lcom/jme3/scene/Spatial;I)I

    new-instance v1, Ljme3utilities/debug/g;

    iget-object v2, p0, Ljme3utilities/debug/h;->e:Lcom/jme3/anim/Armature;

    iget-object v3, p0, Ljme3utilities/debug/h;->k:Lcom/jme3/animation/Skeleton;

    sget-object v4, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-direct {v1, v2, v3, v4}, Ljme3utilities/debug/g;-><init>(Lcom/jme3/anim/Armature;Lcom/jme3/animation/Skeleton;Lcom/jme3/scene/Mesh$Mode;)V

    new-instance v2, Lcom/jme3/scene/Geometry;

    const-string v3, "skeleton links"

    invoke-direct {v2, v3, v1}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iget-object v1, p0, Ljme3utilities/debug/h;->j:Lcom/jme3/material/Material;

    invoke-virtual {v2, v1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/jme3/scene/Node;->attachChildAt(Lcom/jme3/scene/Spatial;I)I

    invoke-virtual {p0}, Ljme3utilities/debug/h;->v()V

    return-void
.end method

.method public f()Ljme3utilities/debug/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lif/B;->b()Lif/B;

    move-result-object v0

    check-cast v0, Ljme3utilities/debug/h;

    return-object v0
.end method

.method public g(ILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 1

    const-string v0, "bone index"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/ColorRGBA;

    invoke-direct {p2}, Lcom/jme3/math/ColorRGBA;-><init>()V

    :cond_0
    iget-object v0, p0, Ljme3utilities/debug/h;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/ColorRGBA;

    if-nez p1, :cond_1

    iget-object p1, p0, Ljme3utilities/debug/h;->f:Lcom/jme3/math/ColorRGBA;

    :cond_1
    invoke-virtual {p2, p1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    return-object p2
.end method

.method public h(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/ColorRGBA;

    invoke-direct {p1}, Lcom/jme3/math/ColorRGBA;-><init>()V

    :cond_0
    iget-object v0, p0, Ljme3utilities/debug/h;->j:Lcom/jme3/material/Material;

    const-string v1, "Color"

    invoke-virtual {v0, v1}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p1, v0}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    return-object p1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Ljme3utilities/debug/h;->e:Lcom/jme3/anim/Armature;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/anim/Armature;->getJointCount()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljme3utilities/debug/h;->k:Lcom/jme3/animation/Skeleton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()F
    .locals 2

    iget-object v0, p0, Ljme3utilities/debug/h;->i:Lcom/jme3/material/Material;

    const-string v1, "PointSize"

    invoke-virtual {v0, v1}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Ljme3utilities/debug/h;->g:F

    return v0
.end method

.method public l(Lcom/jme3/math/ColorRGBA;)V
    .locals 1

    const-string v0, "new color"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Ljme3utilities/debug/h;->q(Lcom/jme3/math/ColorRGBA;)V

    invoke-virtual {p0, p1}, Ljme3utilities/debug/h;->n(Lcom/jme3/math/ColorRGBA;)V

    return-void
.end method

.method public m(ILcom/jme3/math/ColorRGBA;)V
    .locals 1

    const-string v0, "bone index"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    const-string v0, "new color"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljme3utilities/debug/h;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public n(Lcom/jme3/math/ColorRGBA;)V
    .locals 1

    const-string v0, "new color"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljme3utilities/debug/h;->f:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    iget-object p1, p0, Ljme3utilities/debug/h;->h:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public o(Lcom/jme3/texture/Texture;)V
    .locals 2

    const-string v0, "shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljme3utilities/debug/h;->i:Lcom/jme3/material/Material;

    const-string v1, "PointShape"

    invoke-virtual {v0, v1, p1}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    return-void
.end method

.method public p(F)V
    .locals 2

    const-string v0, "size"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    iget-object v0, p0, Ljme3utilities/debug/h;->i:Lcom/jme3/material/Material;

    const-string v1, "PointSize"

    invoke-virtual {v0, v1, p1}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public q(Lcom/jme3/math/ColorRGBA;)V
    .locals 2

    const-string v0, "new color"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljme3utilities/debug/h;->j:Lcom/jme3/material/Material;

    const-string v1, "Color"

    invoke-virtual {p1}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    return-void
.end method

.method public r(F)V
    .locals 1

    const-string v0, "width"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    iput p1, p0, Ljme3utilities/debug/h;->g:F

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lif/B;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "armature"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/Armature;

    iput-object v0, p0, Ljme3utilities/debug/h;->e:Lcom/jme3/anim/Armature;

    const-string v0, "customColorKeys"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    const-string v2, "customColors"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    aget v4, v0, v3

    aget-object v5, v2, v3

    check-cast v5, Lcom/jme3/math/ColorRGBA;

    iget-object v6, p0, Ljme3utilities/debug/h;->h:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "headColor"

    sget-object v2, Ljme3utilities/debug/h;->m:Lcom/jme3/math/ColorRGBA;

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/ColorRGBA;

    iput-object v0, p0, Ljme3utilities/debug/h;->f:Lcom/jme3/math/ColorRGBA;

    const-string v0, "headMaterial"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/Material;

    iput-object v0, p0, Ljme3utilities/debug/h;->i:Lcom/jme3/material/Material;

    const-string v0, "lineMaterial"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/Material;

    iput-object v0, p0, Ljme3utilities/debug/h;->j:Lcom/jme3/material/Material;

    const-string v0, "lineWidth"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Ljme3utilities/debug/h;->g:F

    const-string v0, "skeleton"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Skeleton;

    iput-object v0, p0, Ljme3utilities/debug/h;->k:Lcom/jme3/animation/Skeleton;

    const-string v0, "transformSpatial"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Ljme3utilities/debug/h;->l:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public final s(Lcom/jme3/anim/Armature;Lcom/jme3/animation/Skeleton;)V
    .locals 1

    iget-object v0, p0, Ljme3utilities/debug/h;->e:Lcom/jme3/anim/Armature;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Ljme3utilities/debug/h;->k:Lcom/jme3/animation/Skeleton;

    if-eq v0, p2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Node;->detachAllChildren()V

    :cond_1
    iput-object p1, p0, Ljme3utilities/debug/h;->e:Lcom/jme3/anim/Armature;

    iput-object p2, p0, Ljme3utilities/debug/h;->k:Lcom/jme3/animation/Skeleton;

    :cond_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "skeleton node"

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

.method public final t(Lcom/jme3/scene/control/AbstractControl;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0, v0}, Ljme3utilities/debug/h;->s(Lcom/jme3/anim/Armature;Lcom/jme3/animation/Skeleton;)V

    iput-object v0, p0, Ljme3utilities/debug/h;->l:Lcom/jme3/scene/Spatial;

    goto :goto_1

    :cond_0
    instance-of v1, p1, Lcom/jme3/animation/SkeletonControl;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/jme3/animation/SkeletonControl;

    invoke-virtual {v1}, Lcom/jme3/animation/SkeletonControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljme3utilities/debug/h;->s(Lcom/jme3/anim/Armature;Lcom/jme3/animation/Skeleton;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/jme3/anim/SkinningControl;

    invoke-virtual {v1}, Lcom/jme3/anim/SkinningControl;->getArmature()Lcom/jme3/anim/Armature;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljme3utilities/debug/h;->s(Lcom/jme3/anim/Armature;Lcom/jme3/animation/Skeleton;)V

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/scene/control/AbstractControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object p1

    invoke-static {p1}, Lif/s;->j(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/Geometry;

    move-result-object v0

    if-nez v0, :cond_2

    iput-object p1, p0, Ljme3utilities/debug/h;->l:Lcom/jme3/scene/Spatial;

    goto :goto_1

    :cond_2
    iput-object v0, p0, Ljme3utilities/debug/h;->l:Lcom/jme3/scene/Spatial;

    :goto_1
    return-void
.end method

.method public u(Lcom/jme3/scene/Spatial;)V
    .locals 0

    iput-object p1, p0, Ljme3utilities/debug/h;->l:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public final v()V
    .locals 4

    iget-object v0, p0, Ljme3utilities/debug/h;->l:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljme3utilities/debug/h;->l:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Ljme3utilities/debug/h;->G:Lcom/jme3/math/Transform;

    :goto_1
    invoke-virtual {p0}, Lif/B;->c()Lcom/jme3/scene/Spatial;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Node;

    invoke-static {v1, v0}, Lif/s;->P(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Transform;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    check-cast v0, Ljme3utilities/debug/g;

    invoke-virtual {v0, p0}, Ljme3utilities/debug/g;->e(Ljme3utilities/debug/h;)V

    iget-object v2, p0, Ljme3utilities/debug/h;->e:Lcom/jme3/anim/Armature;

    iget-object v3, p0, Ljme3utilities/debug/h;->k:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v0, v2, v3}, Ljme3utilities/debug/g;->f(Lcom/jme3/anim/Armature;Lcom/jme3/animation/Skeleton;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    check-cast v1, Ljme3utilities/debug/g;

    invoke-virtual {v1, p0}, Ljme3utilities/debug/g;->e(Ljme3utilities/debug/h;)V

    iget-object v2, p0, Ljme3utilities/debug/h;->e:Lcom/jme3/anim/Armature;

    iget-object v3, p0, Ljme3utilities/debug/h;->k:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v1, v2, v3}, Ljme3utilities/debug/g;->f(Lcom/jme3/anim/Armature;Lcom/jme3/animation/Skeleton;)V

    iget v1, p0, Ljme3utilities/debug/h;->g:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget-object v1, p0, Ljme3utilities/debug/h;->j:Lcom/jme3/material/Material;

    invoke-virtual {v1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    iget v2, p0, Ljme3utilities/debug/h;->g:F

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setLineWidth(F)V

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Inherit:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    :goto_2
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lif/B;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Ljme3utilities/debug/h;->e:Lcom/jme3/anim/Armature;

    const-string v1, "armature"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Ljme3utilities/debug/h;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [I

    new-array v0, v0, [Lcom/jme3/export/Savable;

    iget-object v3, p0, Ljme3utilities/debug/h;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/export/Savable;

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "customColorKeys"

    invoke-interface {p1, v1, v3, v2}, Lcom/jme3/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    const-string v1, "customColors"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Ljme3utilities/debug/h;->f:Lcom/jme3/math/ColorRGBA;

    const-string v1, "headColor"

    sget-object v3, Ljme3utilities/debug/h;->m:Lcom/jme3/math/ColorRGBA;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Ljme3utilities/debug/h;->i:Lcom/jme3/material/Material;

    const-string v1, "headMaterial"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Ljme3utilities/debug/h;->j:Lcom/jme3/material/Material;

    const-string v1, "lineMaterial"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Ljme3utilities/debug/h;->g:F

    const-string v1, "lineWidth"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Ljme3utilities/debug/h;->k:Lcom/jme3/animation/Skeleton;

    const-string v1, "skeleton"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Ljme3utilities/debug/h;->l:Lcom/jme3/scene/Spatial;

    const-string v1, "transformSpatial"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
