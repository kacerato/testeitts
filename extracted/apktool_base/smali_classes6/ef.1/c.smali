.class public Lef/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/c$a;,
        Lef/c$b;
    }
.end annotation


# static fields
.field public static final i:Ljava/util/logging/Logger;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:I

.field public final d:Lcom/jme3/texture/Image$Format;

.field public final e:Lef/c$a;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lef/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lef/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lef/c;->i:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/jme3/texture/Image$Format;->ABGR8:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lef/c;->d:Lcom/jme3/texture/Image$Format;

    iput p1, p0, Lef/c;->b:I

    iput p2, p0, Lef/c;->c:I

    new-instance v0, Lef/c$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lef/c$a;-><init>(Lef/c;IIII)V

    iput-object v0, p0, Lef/c;->e:Lef/c$a;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lef/c;->f:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lef/c;->g:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lef/c;)I
    .locals 0

    iget p0, p0, Lef/c;->b:I

    return p0
.end method

.method public static synthetic b(Lef/c;)I
    .locals 0

    iget p0, p0, Lef/c;->c:I

    return p0
.end method

.method public static h(Ljava/util/List;Lcom/jme3/scene/Mesh;Lef/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Geometry;",
            ">;",
            "Lcom/jme3/scene/Mesh;",
            "Lef/c;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Geometry;

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->computeWorldMatrix()V

    invoke-virtual {v2}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v3

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v2, v4}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {p1, v4}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v4

    if-eqz v2, :cond_0

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1, v0, p1}, Lef/c;->j(Lcom/jme3/scene/Geometry;ILcom/jme3/scene/Mesh;)Z

    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static l(Lcom/jme3/scene/Spatial;I)Lef/c;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lef/a;->e(Lcom/jme3/scene/Spatial;Ljava/util/List;)V

    new-instance p0, Lef/c;

    invoke-direct {p0, p1, p1}, Lef/c;-><init>(II)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, v0}, Lef/c;->c(Lcom/jme3/scene/Geometry;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lef/c;->i:Ljava/util/logging/Logger;

    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v0, "Texture atlas size too small, cannot add all textures"

    invoke-virtual {p0, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public static q(Lcom/jme3/scene/Geometry;Ljava/lang/String;)Lcom/jme3/texture/Texture;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v1

    instance-of v1, v1, Lcom/jme3/material/MatParamTexture;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object p0

    check-cast p0, Lcom/jme3/material/MatParamTexture;

    invoke-virtual {p0}, Lcom/jme3/material/MatParamTexture;->getTextureValue()Lcom/jme3/texture/Texture;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static r(Lcom/jme3/scene/Spatial;Lcom/jme3/asset/AssetManager;I)Lcom/jme3/scene/Geometry;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lef/a;->e(Lcom/jme3/scene/Spatial;Ljava/util/List;)V

    invoke-static {p0, p2}, Lef/c;->l(Lcom/jme3/scene/Spatial;I)Lef/c;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p2, Lcom/jme3/scene/Geometry;

    invoke-direct {p2}, Lcom/jme3/scene/Geometry;-><init>()V

    new-instance v1, Lcom/jme3/scene/Mesh;

    invoke-direct {v1}, Lcom/jme3/scene/Mesh;-><init>()V

    invoke-static {v0, v1}, Lef/a;->j(Ljava/util/Collection;Lcom/jme3/scene/Mesh;)V

    invoke-static {v0, v1, p0}, Lef/c;->h(Ljava/util/List;Lcom/jme3/scene/Mesh;Lef/c;)V

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->updateCounts()V

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual {p2, v1}, Lcom/jme3/scene/Geometry;->setMesh(Lcom/jme3/scene/Mesh;)V

    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "Common/MatDefs/Light/Lighting.j3md"

    invoke-direct {v0, p1, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string p1, "DiffuseMap"

    invoke-virtual {p0, p1}, Lef/c;->n(Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v1

    const-string v2, "NormalMap"

    invoke-virtual {p0, v2}, Lef/c;->n(Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v3

    const-string v4, "SpecularMap"

    invoke-virtual {p0, v4}, Lef/c;->n(Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object p0

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1, v1}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {v0, v4, p0}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    :cond_3
    const-string p0, "Shininess"

    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p0, p1}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    invoke-virtual {p2, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    return-object p2
.end method


# virtual methods
.method public c(Lcom/jme3/scene/Geometry;)Z
    .locals 7

    const-string v0, "DiffuseMap"

    invoke-static {p1, v0}, Lef/c;->q(Lcom/jme3/scene/Geometry;Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v1

    const-string v2, "NormalMap"

    invoke-static {p1, v2}, Lef/c;->q(Lcom/jme3/scene/Geometry;Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v3

    const-string v4, "SpecularMap"

    invoke-static {p1, v4}, Lef/c;->q(Lcom/jme3/scene/Geometry;Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v5

    if-nez v1, :cond_0

    const-string v1, "ColorMap"

    invoke-static {p1, v1}, Lef/c;->q(Lcom/jme3/scene/Geometry;Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v1

    :cond_0
    const/4 p1, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/jme3/texture/Texture;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Lcom/jme3/texture/Texture;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/asset/AssetKey;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v0}, Lef/c;->g(Lcom/jme3/texture/Texture;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/jme3/texture/Texture;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3, v2, v6}, Lef/c;->f(Lcom/jme3/texture/Texture;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/jme3/texture/Texture;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v5, v4, v6}, Lef/c;->f(Lcom/jme3/texture/Texture;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return p1
.end method

.method public final d(Lcom/jme3/texture/Image;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lef/c;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p3, p0, Lef/c;->h:Ljava/lang/String;

    :cond_0
    if-nez p4, :cond_2

    iget-object v0, p0, Lef/c;->h:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Atlas already has a master map called "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lef/c;->h:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". Textures for new maps have to use a texture from the master map for their location."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lef/c;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lef/c$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object p4, p0, Lef/c;->g:Ljava/util/Map;

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    sget-object p4, Lef/c;->i:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Same texture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is used in different maps! ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lef/c;->g:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "). Location will be based on location in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lef/c;->g:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "!"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0}, Lef/c$b;->f()I

    move-result p2

    invoke-virtual {v0}, Lef/c$b;->g()I

    move-result p4

    invoke-virtual {p0, p1, p2, p4, p3}, Lef/c;->m(Lcom/jme3/texture/Image;IILjava/lang/String;)V

    :cond_3
    return v1

    :cond_4
    if-nez p4, :cond_6

    iget-object p4, p0, Lef/c;->e:Lef/c$a;

    invoke-virtual {p4, p1}, Lef/c$a;->a(Lcom/jme3/texture/Image;)Lef/c$a;

    move-result-object p4

    if-nez p4, :cond_5

    const/4 p1, 0x0

    return p1

    :cond_5
    iget-object p4, p4, Lef/c$a;->a:Lef/c$b;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lef/c;->f:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lef/c$b;

    if-eqz p4, :cond_8

    invoke-static {p4}, Lef/c$b;->a(Lef/c$b;)I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_7

    invoke-static {p4}, Lef/c$b;->b(Lef/c$b;)I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_7

    :goto_1
    iget-object v0, p0, Lef/c;->g:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lef/c;->f:Ljava/util/Map;

    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lef/c$b;->f()I

    move-result p2

    invoke-virtual {p4}, Lef/c$b;->g()I

    move-result p4

    invoke-virtual {p0, p1, p2, p4, p3}, Lef/c;->m(Lcom/jme3/texture/Image;IILjava/lang/String;)V

    return v1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not fit "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lef/c;->h:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " tile size. Make sure all textures (diffuse, normal, specular) for one model are the same size."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot find master map texture for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lcom/jme3/texture/Texture;Ljava/lang/String;Lcom/jme3/texture/Texture;)V
    .locals 0

    invoke-virtual {p0, p3}, Lef/c;->s(Lcom/jme3/texture/Texture;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lef/c;->f(Lcom/jme3/texture/Texture;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Supplied master map texture has no asset key name!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lcom/jme3/texture/Texture;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lef/c;->s(Lcom/jme3/texture/Texture;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p2, p3}, Lef/c;->d(Lcom/jme3/texture/Image;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Texture has no asset key name!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Texture cannot be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Lcom/jme3/texture/Texture;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lef/c;->s(Lcom/jme3/texture/Texture;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lef/c;->d(Lcom/jme3/texture/Image;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Texture has no asset key name!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Texture cannot be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Lcom/jme3/scene/Geometry;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lef/c;->j(Lcom/jme3/scene/Geometry;ILcom/jme3/scene/Mesh;)Z

    move-result p1

    return p1
.end method

.method public j(Lcom/jme3/scene/Geometry;ILcom/jme3/scene/Mesh;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->computeWorldMatrix()V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    invoke-virtual {p3, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p3

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    const-string v1, "DiffuseMap"

    invoke-static {p1, v1}, Lef/c;->q(Lcom/jme3/scene/Geometry;Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "ColorMap"

    invoke-static {p1, v1}, Lef/c;->q(Lcom/jme3/scene/Geometry;Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lef/c;->o(Lcom/jme3/texture/Texture;)Lef/c$b;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {p3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p3

    check-cast p3, Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, p2, p3}, Lef/c$b;->h(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Geometry has no proper texture."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Geometry mesh has no texture coordinate buffer."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Lcom/jme3/texture/Image;)Lcom/jme3/texture/Image;
    .locals 11

    const-class v0, Lcom/jme3/texture/Image;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "jme3tools.converters.ImageToAwt"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v10, Lcom/jme3/texture/Image;

    iget-object v4, p0, Lef/c;->d:Lcom/jme3/texture/Image$Format;

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v7

    mul-int/2addr v3, v7

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v9, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;[ILcom/jme3/texture/image/ColorSpace;)V

    const-string v3, "convert"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {p1, v10}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    return-object v1
.end method

.method public final m(Lcom/jme3/texture/Image;IILjava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lef/c;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lef/c;->a:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lef/c;->a:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    iget v0, p0, Lef/c;->b:I

    iget v1, p0, Lef/c;->c:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lef/c;->a:Ljava/util/Map;

    invoke-interface {v1, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    move v5, p4

    :goto_0
    if-ge v5, v2, :cond_b

    move v6, p4

    :goto_1
    if-ge v6, v3, :cond_a

    add-int v7, v6, p2

    add-int v8, v5, p3

    iget v9, p0, Lef/c;->b:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x4

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v8

    sget-object v9, Lcom/jme3/texture/Image$Format;->ABGR8:Lcom/jme3/texture/Image$Format;

    if-ne v8, v9, :cond_2

    mul-int v8, v5, v3

    add-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0x4

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    aput-byte v9, v0, v7

    add-int/lit8 v9, v7, 0x1

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    aput-byte v10, v0, v9

    add-int/lit8 v9, v7, 0x2

    add-int/lit8 v10, v8, 0x2

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    aput-byte v10, v0, v9

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    aput-byte v8, v0, v7

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v8

    sget-object v9, Lcom/jme3/texture/Image$Format;->BGR8:Lcom/jme3/texture/Image$Format;

    const/4 v10, 0x1

    if-ne v8, v9, :cond_3

    mul-int v8, v5, v3

    add-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0x3

    aput-byte v10, v0, v7

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    aput-byte v10, v0, v9

    add-int/lit8 v9, v7, 0x2

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    aput-byte v10, v0, v9

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    aput-byte v8, v0, v7

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v8

    sget-object v9, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    if-ne v8, v9, :cond_4

    mul-int v8, v5, v3

    add-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0x3

    aput-byte v10, v0, v7

    add-int/lit8 v9, v7, 0x1

    add-int/lit8 v10, v8, 0x2

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    aput-byte v10, v0, v9

    add-int/lit8 v9, v7, 0x2

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    aput-byte v10, v0, v9

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    aput-byte v8, v0, v7

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v8

    sget-object v9, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    if-ne v8, v9, :cond_5

    mul-int v8, v5, v3

    add-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0x4

    add-int/lit8 v9, v8, 0x3

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    aput-byte v9, v0, v7

    add-int/lit8 v9, v7, 0x1

    add-int/lit8 v10, v8, 0x2

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    aput-byte v10, v0, v9

    add-int/lit8 v9, v7, 0x2

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    aput-byte v10, v0, v9

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    aput-byte v8, v0, v7

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v8

    sget-object v9, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    if-ne v8, v9, :cond_6

    mul-int v8, v5, v3

    add-int/2addr v8, v6

    aput-byte v10, v0, v7

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    aput-byte v10, v0, v9

    add-int/lit8 v9, v7, 0x2

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    aput-byte v10, v0, v9

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    aput-byte v8, v0, v7

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v8

    sget-object v9, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    if-ne v8, v9, :cond_7

    mul-int v8, v5, v3

    add-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    aput-byte v9, v0, v7

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    aput-byte v10, v0, v9

    add-int/lit8 v9, v7, 0x2

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    aput-byte v10, v0, v9

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    aput-byte v8, v0, v7

    goto :goto_2

    :cond_7
    if-nez v4, :cond_9

    invoke-virtual {p0, p1}, Lef/c;->k(Lcom/jme3/texture/Image;)Lcom/jme3/texture/Image;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4, p4}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    mul-int p1, v5, v3

    add-int/2addr p1, v6

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    aput-byte v8, v0, v7

    add-int/lit8 v8, v7, 0x1

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    aput-byte v9, v0, v8

    add-int/lit8 v8, v7, 0x2

    add-int/lit8 v9, p1, 0x2

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    aput-byte v9, v0, v8

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    aput-byte p1, v0, v7

    move-object p1, v4

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_8
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot draw or convert textures with format "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot draw textures with format "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public n(Ljava/lang/String;)Lcom/jme3/texture/Texture;
    .locals 9

    iget-object v0, p0, Lef/c;->a:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_1

    new-instance v0, Lcom/jme3/texture/Texture2D;

    new-instance v8, Lcom/jme3/texture/Image;

    iget-object v2, p0, Lef/c;->d:Lcom/jme3/texture/Image$Format;

    iget v3, p0, Lef/c;->b:I

    iget v4, p0, Lef/c;->c:I

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;[ILcom/jme3/texture/image/ColorSpace;)V

    invoke-direct {v0, v8}, Lcom/jme3/texture/Texture2D;-><init>(Lcom/jme3/texture/Image;)V

    sget-object p1, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v0, p1}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    sget-object p1, Lcom/jme3/texture/Texture$MinFilter;->BilinearNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v0, p1}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    sget-object p1, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v0, p1}, Lcom/jme3/texture/Texture2D;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public o(Lcom/jme3/texture/Texture;)Lef/c$b;
    .locals 0

    invoke-virtual {p0, p1}, Lef/c;->s(Lcom/jme3/texture/Texture;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lef/c;->p(Ljava/lang/String;)Lef/c$b;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final p(Ljava/lang/String;)Lef/c$b;
    .locals 1

    iget-object v0, p0, Lef/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lef/c$b;

    return-object p1
.end method

.method public final s(Lcom/jme3/texture/Texture;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method
