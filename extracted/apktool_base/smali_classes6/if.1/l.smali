.class public final Lif/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Lcom/jme3/scene/Mesh;

.field public static final c:Ljava/lang/String; = "MatDefs/debug/ShowNormals.j3md"

.field public static final d:Ljava/lang/String; = "MatDefs/wireframe/multicolor2.j3md"

.field public static final e:Ljava/lang/String; = "Common/MatDefs/Misc/Particle.j3md"

.field public static final f:Ljava/lang/String; = "Common/MatDefs/Light/Lighting.j3md"

.field public static final g:Ljava/lang/String; = "Common/MatDefs/Misc/Unshaded.j3md"

.field public static final h:Ljava/lang/String; = "MatDefs/wireframe/wireframe.j3md"

.field public static final i:Lcom/jme3/math/Vector3f;

.field public static final j:[Lcom/jme3/math/Vector3f;

.field public static final k:[Lcom/jme3/math/Vector3f;

.field public static final l:[Lcom/jme3/math/Vector3f;

.field public static final synthetic m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-class v0, Lif/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lif/l;->a:Ljava/util/logging/Logger;

    new-instance v0, Llf/o;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Llf/o;-><init>(FFFFF)V

    sput-object v0, Lif/l;->b:Lcom/jme3/scene/Mesh;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lif/l;->i:Lcom/jme3/math/Vector3f;

    new-instance v2, Lcom/jme3/math/Vector3f;

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v8, 0x0

    invoke-direct {v2, v0, v8, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3, v1, v8, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4, v8, v1, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5, v8, v0, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v6, Lcom/jme3/math/Vector3f;

    invoke-direct {v6, v8, v8, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v7, Lcom/jme3/math/Vector3f;

    invoke-direct {v7, v8, v8, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    filled-new-array/range {v2 .. v7}, [Lcom/jme3/math/Vector3f;

    move-result-object v2

    sput-object v2, Lif/l;->j:[Lcom/jme3/math/Vector3f;

    new-instance v9, Lcom/jme3/math/Vector3f;

    invoke-direct {v9, v8, v8, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v10, Lcom/jme3/math/Vector3f;

    invoke-direct {v10, v8, v8, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v11, Lcom/jme3/math/Vector3f;

    invoke-direct {v11, v0, v8, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v12, Lcom/jme3/math/Vector3f;

    invoke-direct {v12, v0, v8, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v13, Lcom/jme3/math/Vector3f;

    invoke-direct {v13, v0, v8, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v14, Lcom/jme3/math/Vector3f;

    invoke-direct {v14, v1, v8, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    filled-new-array/range {v9 .. v14}, [Lcom/jme3/math/Vector3f;

    move-result-object v2

    sput-object v2, Lif/l;->k:[Lcom/jme3/math/Vector3f;

    new-instance v9, Lcom/jme3/math/Vector3f;

    invoke-direct {v9, v8, v0, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v10, Lcom/jme3/math/Vector3f;

    invoke-direct {v10, v8, v0, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v11, Lcom/jme3/math/Vector3f;

    invoke-direct {v11, v8, v8, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v12, Lcom/jme3/math/Vector3f;

    invoke-direct {v12, v8, v8, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v13, Lcom/jme3/math/Vector3f;

    invoke-direct {v13, v8, v0, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v14, Lcom/jme3/math/Vector3f;

    invoke-direct {v14, v8, v0, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    filled-new-array/range {v9 .. v14}, [Lcom/jme3/math/Vector3f;

    move-result-object v0

    sput-object v0, Lif/l;->l:[Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/jme3/math/Vector3f;
    .locals 1

    sget-object v0, Lif/l;->j:[Lcom/jme3/math/Vector3f;

    aget-object p0, v0, p0

    invoke-virtual {p0}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)Lcom/jme3/math/Vector3f;
    .locals 1

    sget-object v0, Lif/l;->k:[Lcom/jme3/math/Vector3f;

    aget-object p0, v0, p0

    invoke-virtual {p0}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method public static c(I)Lcom/jme3/math/Vector3f;
    .locals 1

    sget-object v0, Lif/l;->l:[Lcom/jme3/math/Vector3f;

    aget-object p0, v0, p0

    invoke-virtual {p0}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/jme3/asset/AssetManager;F)Lcom/jme3/material/Material;
    .locals 2

    const-string v0, "gamma"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    const-string v0, "asset manager"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "MatDefs/debug/ShowNormals.j3md"

    invoke-direct {v0, p0, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string p0, "Gamma"

    invoke-virtual {v0, p0, p1}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    const-string p0, "debug"

    invoke-virtual {v0, p0}, Lcom/jme3/material/Material;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static e(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;
    .locals 2

    const-string v0, "asset manager"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0}, Lif/l;->m(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;

    move-result-object p0

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    const-string v1, "Color"

    invoke-virtual {p0, v1, v0}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    const-string v0, "invisible"

    invoke-virtual {p0, v0}, Lcom/jme3/material/Material;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setDepthWrite(Z)V

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->FrontAndBack:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setFaceCullMode(Lcom/jme3/material/RenderState$FaceCullMode;)V

    return-object p0
.end method

.method public static f(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;F)Lcom/jme3/material/Material;
    .locals 2

    const-string v0, "asset manager"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "point size"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "MatDefs/wireframe/multicolor2.j3md"

    invoke-direct {v0, p0, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string p0, "PointShape"

    invoke-virtual {v0, p0, p1}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    const-string p0, "PointSize"

    invoke-virtual {v0, p0, p2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public static g(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;)Lcom/jme3/material/Material;
    .locals 2

    const-string v0, "asset manager"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "texture"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "Common/MatDefs/Misc/Particle.j3md"

    invoke-direct {v0, p0, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string p0, "Texture"

    invoke-virtual {v0, p0, p1}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    return-object v0
.end method

.method public static h(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;
    .locals 2

    const-string v0, "asset manager"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "color"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "Common/MatDefs/Light/Lighting.j3md"

    invoke-direct {v0, p0, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string p0, "UseMaterialColors"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object p0

    const-string v1, "Ambient"

    invoke-virtual {v0, v1, p0}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    const-string p0, "Diffuse"

    invoke-virtual {p1}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    return-object v0
.end method

.method public static i(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;)Lcom/jme3/material/Material;
    .locals 2

    const-string v0, "asset manager"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "texture"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "Common/MatDefs/Light/Lighting.j3md"

    invoke-direct {v0, p0, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string p0, "DiffuseMap"

    invoke-virtual {v0, p0, p1}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    return-object v0
.end method

.method public static j(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;
    .locals 2

    const-string v0, "asset manager"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "color"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0, p1}, Lif/l;->h(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;

    move-result-object p0

    new-instance p1, Lcom/jme3/math/ColorRGBA;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0, v0, v0}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    const-string v1, "Specular"

    invoke-virtual {p0, v1, p1}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    const-string p1, "Shininess"

    invoke-virtual {p0, p1, v0}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public static k(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)Lcom/jme3/scene/Node;
    .locals 8

    const-string v0, "asset manager"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "star map name"

    invoke-static {p1, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "right1"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lif/l;->s(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;

    move-result-object v2

    const-string v0, "left2"

    invoke-static {p0, p1, v0, v1}, Lif/l;->s(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;

    move-result-object v3

    const-string v0, "top3"

    invoke-static {p0, p1, v0, v1}, Lif/l;->s(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;

    move-result-object v4

    const-string v0, "bottom4"

    invoke-static {p0, p1, v0, v1}, Lif/l;->s(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;

    move-result-object v5

    const-string v0, "front5"

    invoke-static {p0, p1, v0, v1}, Lif/l;->s(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;

    move-result-object v6

    const-string v0, "back6"

    invoke-static {p0, p1, v0, v1}, Lif/l;->s(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Lcom/jme3/texture/Texture;

    move-result-object v0

    new-instance v2, Lcom/jme3/scene/Node;

    const-string v3, "star map"

    invoke-direct {v2, v3}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Sky:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Spatial;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s_face%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/jme3/scene/Geometry;

    sget-object v6, Lif/l;->b:Lcom/jme3/scene/Mesh;

    invoke-direct {v5, v4, v6}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    aget-object v4, v0, v1

    invoke-static {p0, v4}, Lif/l;->o(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;)Lcom/jme3/material/Material;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    sget-object v4, Lif/l;->j:[Lcom/jme3/math/Vector3f;

    aget-object v6, v4, v1

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    sget-object v6, Lif/l;->k:[Lcom/jme3/math/Vector3f;

    aget-object v6, v6, v1

    sget-object v7, Lif/l;->l:[Lcom/jme3/math/Vector3f;

    aget-object v7, v7, v1

    aget-object v1, v4, v1

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->negate()Lcom/jme3/math/Vector3f;

    move-result-object v1

    new-instance v4, Lcom/jme3/math/Quaternion;

    invoke-direct {v4}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-virtual {v4, v6, v7, v1}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    invoke-virtual {v5, v4}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static l(Lcom/jme3/asset/AssetManager;Ljava/lang/String;F)Lcom/jme3/scene/Geometry;
    .locals 11

    const-string v0, "asset manager"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "star map name"

    invoke-static {p1, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "radius"

    invoke-static {p2, v0}, Lif/E;->E(FLjava/lang/String;)Z

    const-string v0, "right1"

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lif/l;->s(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;

    move-result-object v3

    const-string v0, "left2"

    invoke-static {p0, p1, v0, v1}, Lif/l;->s(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;

    move-result-object v4

    const-string v0, "top3"

    invoke-static {p0, p1, v0, v1}, Lif/l;->s(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;

    move-result-object v7

    const-string v0, "bottom4"

    invoke-static {p0, p1, v0, v1}, Lif/l;->s(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;

    move-result-object v8

    const-string v0, "front5"

    invoke-static {p0, p1, v0, v1}, Lif/l;->s(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;

    move-result-object v6

    const-string v0, "back6"

    invoke-static {p0, p1, v0, v1}, Lif/l;->s(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;

    move-result-object v5

    sget-object v9, Lif/l;->i:Lcom/jme3/math/Vector3f;

    move-object v2, p0

    move v10, p2

    invoke-static/range {v2 .. v10}, Lcom/jme3/util/SkyFactory;->createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/math/Vector3f;F)Lcom/jme3/scene/Spatial;

    move-result-object p0

    check-cast p0, Lcom/jme3/scene/Geometry;

    return-object p0
.end method

.method public static m(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;
    .locals 2

    const-string v0, "asset manager"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, p0, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public static n(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;
    .locals 1

    const-string v0, "asset manager"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "color"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0}, Lif/l;->m(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;

    move-result-object p0

    const-string v0, "Color"

    invoke-virtual {p1}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    return-object p0
.end method

.method public static o(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;)Lcom/jme3/material/Material;
    .locals 1

    const-string v0, "asset manager"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "texture"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0}, Lif/l;->m(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;

    move-result-object p0

    const-string v0, "ColorMap"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    return-object p0
.end method

.method public static p(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)Lcom/jme3/material/Material;
    .locals 1

    const-string v0, "asset manager"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "path"

    invoke-static {p1, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lif/l;->t(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;

    move-result-object p1

    invoke-static {p0, p1}, Lif/l;->o(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;)Lcom/jme3/material/Material;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;
    .locals 1

    const-string v0, "asset manager"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "color"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lif/l;->r(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;F)Lcom/jme3/material/Material;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;F)Lcom/jme3/material/Material;
    .locals 2

    const-string v0, "asset manager"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "color"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "point size"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "MatDefs/wireframe/wireframe.j3md"

    invoke-direct {v0, p0, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string p0, "Color"

    invoke-virtual {p1}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    const-string p0, "PointSize"

    invoke-virtual {v0, p0, p2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public static s(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;
    .locals 1

    const-string v0, "folder name"

    invoke-static {p1, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "face name"

    invoke-static {p2, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Textures/skies/star-maps/%s/%s_%s.png"

    filled-new-array {p1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/jme3/asset/TextureKey;

    invoke-direct {p2, p1, p3}, Lcom/jme3/asset/TextureKey;-><init>(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/jme3/asset/TextureKey;->setGenerateMips(Z)V

    invoke-interface {p0, p2}, Lcom/jme3/asset/AssetManager;->loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Lcom/jme3/asset/TextureKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/jme3/asset/TextureKey;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p2}, Lcom/jme3/asset/TextureKey;->setGenerateMips(Z)V

    invoke-interface {p0, v0}, Lcom/jme3/asset/AssetManager;->loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;

    move-result-object p0

    return-object p0
.end method
