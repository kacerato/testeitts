.class public Lcom/jme3/shadow/PssmShadowRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/post/SceneProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;,
        Lcom/jme3/shadow/PssmShadowRenderer$FilterMode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NULL_LIGHT_FILTER:Lcom/jme3/light/LightFilter;


# instance fields
.field protected applyFadeInfo:Z

.field protected applyFilterMode:Z

.field protected applyHWShadows:Z

.field protected applyPCFEdge:Z

.field protected applyShadowIntensity:Z

.field protected assetManager:Lcom/jme3/asset/AssetManager;

.field protected compareMode:Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;

.field protected debug:Z

.field debugfrustums:Z

.field protected direction:Lcom/jme3/math/Vector3f;

.field protected dispPic:[Lcom/jme3/ui/Picture;

.field protected dummyTex:Lcom/jme3/texture/Texture2D;

.field protected edgesThickness:F

.field protected fadeInfo:Lcom/jme3/math/Vector2f;

.field protected fadeLength:F

.field protected filterMode:Lcom/jme3/shadow/PssmShadowRenderer$FilterMode;

.field protected flushQueues:Z

.field protected lambda:F

.field protected lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

.field protected lightViewProjectionsMatrices:[Lcom/jme3/math/Matrix4f;

.field protected matCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/material/Material;",
            ">;"
        }
    .end annotation
.end field

.field protected nbSplits:I

.field protected needsfallBackMaterial:Z

.field protected noOccluders:Z

.field protected points:[Lcom/jme3/math/Vector3f;

.field protected postTechniqueName:Ljava/lang/String;

.field protected postshadowMat:Lcom/jme3/material/Material;

.field protected preshadowMat:Lcom/jme3/material/Material;

.field protected renderManager:Lcom/jme3/renderer/RenderManager;

.field protected shadowCam:Lcom/jme3/renderer/Camera;

.field protected shadowFB:[Lcom/jme3/texture/FrameBuffer;

.field protected shadowIntensity:F

.field protected shadowMapSize:F

.field protected shadowMaps:[Lcom/jme3/texture/Texture2D;

.field protected splitOccluders:Lcom/jme3/renderer/queue/GeometryList;

.field protected splits:Lcom/jme3/math/ColorRGBA;

.field protected splitsArray:[F

.field protected viewPort:Lcom/jme3/renderer/ViewPort;

.field protected zFarOverride:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jme3/light/NullLightFilter;

    invoke-direct {v0}, Lcom/jme3/light/NullLightFilter;-><init>()V

    sput-object v0, Lcom/jme3/shadow/PssmShadowRenderer;->NULL_LIGHT_FILTER:Lcom/jme3/light/LightFilter;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;II)V
    .locals 2

    .line 1
    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "Common/MatDefs/Shadow/PostShadow.j3md"

    invoke-direct {v0, p1, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jme3/shadow/PssmShadowRenderer;-><init>(Lcom/jme3/asset/AssetManager;IILcom/jme3/material/Material;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;IILcom/jme3/material/Material;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->nbSplits:I

    const v0, 0x3f266666    # 0.65f

    .line 4
    iput v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->lambda:F

    const v0, 0x3f333333    # 0.7f

    .line 5
    iput v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowIntensity:F

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->zFarOverride:F

    .line 7
    new-instance v1, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v2, Lcom/jme3/renderer/queue/OpaqueComparator;

    invoke-direct {v2}, Lcom/jme3/renderer/queue/OpaqueComparator;-><init>()V

    invoke-direct {v1, v2}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->splitOccluders:Lcom/jme3/renderer/queue/GeometryList;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->noOccluders:Z

    .line 9
    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v2, p0, Lcom/jme3/shadow/PssmShadowRenderer;->direction:Lcom/jme3/math/Vector3f;

    .line 10
    iput-boolean v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->debug:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    iput v2, p0, Lcom/jme3/shadow/PssmShadowRenderer;->edgesThickness:F

    const/16 v2, 0x8

    .line 12
    new-array v2, v2, [Lcom/jme3/math/Vector3f;

    iput-object v2, p0, Lcom/jme3/shadow/PssmShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    const/4 v2, 0x1

    .line 13
    iput-boolean v2, p0, Lcom/jme3/shadow/PssmShadowRenderer;->flushQueues:Z

    .line 14
    iput-boolean v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->needsfallBackMaterial:Z

    .line 15
    const-string v3, "PostShadow"

    iput-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postTechniqueName:Ljava/lang/String;

    .line 16
    iput-boolean v2, p0, Lcom/jme3/shadow/PssmShadowRenderer;->applyHWShadows:Z

    .line 17
    iput-boolean v2, p0, Lcom/jme3/shadow/PssmShadowRenderer;->applyFilterMode:Z

    .line 18
    iput-boolean v2, p0, Lcom/jme3/shadow/PssmShadowRenderer;->applyPCFEdge:Z

    .line 19
    iput-boolean v2, p0, Lcom/jme3/shadow/PssmShadowRenderer;->applyShadowIntensity:Z

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->matCache:Ljava/util/List;

    .line 21
    iput-boolean v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->applyFadeInfo:Z

    .line 22
    new-instance v3, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v4, Lcom/jme3/renderer/queue/OpaqueComparator;

    invoke-direct {v4}, Lcom/jme3/renderer/queue/OpaqueComparator;-><init>()V

    invoke-direct {v3, v4}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    .line 23
    iput-boolean v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->debugfrustums:Z

    .line 24
    iput-object p4, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    .line 25
    iput-object p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->assetManager:Lcom/jme3/asset/AssetManager;

    const/4 p4, 0x4

    .line 26
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 27
    iput p3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->nbSplits:I

    int-to-float p4, p2

    .line 28
    iput p4, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowMapSize:F

    .line 29
    new-array v3, p3, [Lcom/jme3/texture/FrameBuffer;

    iput-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowFB:[Lcom/jme3/texture/FrameBuffer;

    .line 30
    new-array v3, p3, [Lcom/jme3/texture/Texture2D;

    iput-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    .line 31
    new-array v3, p3, [Lcom/jme3/ui/Picture;

    iput-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->dispPic:[Lcom/jme3/ui/Picture;

    .line 32
    new-array v3, p3, [Lcom/jme3/math/Matrix4f;

    iput-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->lightViewProjectionsMatrices:[Lcom/jme3/math/Matrix4f;

    .line 33
    new-instance v3, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v3}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iput-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->splits:Lcom/jme3/math/ColorRGBA;

    add-int/lit8 v3, p3, 0x1

    .line 34
    new-array v3, v3, [F

    iput-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->splitsArray:[F

    .line 35
    new-instance v3, Lcom/jme3/texture/Texture2D;

    sget-object v4, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    invoke-direct {v3, p2, p2, v4}, Lcom/jme3/texture/Texture2D;-><init>(IILcom/jme3/texture/Image$Format;)V

    iput-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->dummyTex:Lcom/jme3/texture/Texture2D;

    .line 36
    new-instance v3, Lcom/jme3/material/Material;

    const-string v4, "Common/MatDefs/Shadow/PreShadow.j3md"

    invoke-direct {v3, p1, v4}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->preshadowMat:Lcom/jme3/material/Material;

    .line 37
    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v4, "ShadowMapSize"

    invoke-virtual {v3, v4, p4}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    move p4, v1

    :goto_0
    if-ge p4, p3, :cond_0

    .line 38
    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->lightViewProjectionsMatrices:[Lcom/jme3/math/Matrix4f;

    new-instance v4, Lcom/jme3/math/Matrix4f;

    invoke-direct {v4}, Lcom/jme3/math/Matrix4f;-><init>()V

    aput-object v4, v3, p4

    .line 39
    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowFB:[Lcom/jme3/texture/FrameBuffer;

    new-instance v4, Lcom/jme3/texture/FrameBuffer;

    invoke-direct {v4, p2, p2, v2}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    aput-object v4, v3, p4

    .line 40
    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    new-instance v4, Lcom/jme3/texture/Texture2D;

    sget-object v5, Lcom/jme3/texture/Image$Format;->Depth:Lcom/jme3/texture/Image$Format;

    invoke-direct {v4, p2, p2, v5}, Lcom/jme3/texture/Texture2D;-><init>(IILcom/jme3/texture/Image$Format;)V

    aput-object v4, v3, p4

    .line 41
    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowFB:[Lcom/jme3/texture/FrameBuffer;

    aget-object v3, v3, p4

    iget-object v4, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    aget-object v4, v4, p4

    invoke-virtual {v3, v4}, Lcom/jme3/texture/FrameBuffer;->setDepthTexture(Lcom/jme3/texture/Texture2D;)V

    .line 42
    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowFB:[Lcom/jme3/texture/FrameBuffer;

    aget-object v3, v3, p4

    iget-object v4, p0, Lcom/jme3/shadow/PssmShadowRenderer;->dummyTex:Lcom/jme3/texture/Texture2D;

    invoke-virtual {v3, v4}, Lcom/jme3/texture/FrameBuffer;->setColorTexture(Lcom/jme3/texture/Texture2D;)V

    .line 43
    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ShadowMap"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    aget-object v5, v5, p4

    invoke-virtual {v3, v4, v5}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    .line 44
    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->dispPic:[Lcom/jme3/ui/Picture;

    new-instance v4, Lcom/jme3/ui/Picture;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Picture"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jme3/ui/Picture;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, p4

    .line 45
    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->dispPic:[Lcom/jme3/ui/Picture;

    aget-object v3, v3, p4

    iget-object v4, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    aget-object v4, v4, p4

    invoke-virtual {v3, p1, v4, v1}, Lcom/jme3/ui/Picture;->setTexture(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture2D;Z)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 46
    :cond_0
    sget-object p1, Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;->Hardware:Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;

    invoke-virtual {p0, p1}, Lcom/jme3/shadow/PssmShadowRenderer;->setCompareMode(Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;)V

    .line 47
    sget-object p1, Lcom/jme3/shadow/PssmShadowRenderer$FilterMode;->Bilinear:Lcom/jme3/shadow/PssmShadowRenderer$FilterMode;

    invoke-virtual {p0, p1}, Lcom/jme3/shadow/PssmShadowRenderer;->setFilterMode(Lcom/jme3/shadow/PssmShadowRenderer$FilterMode;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/jme3/shadow/PssmShadowRenderer;->setShadowIntensity(F)V

    .line 49
    new-instance p1, Lcom/jme3/renderer/Camera;

    invoke-direct {p1, p2, p2}, Lcom/jme3/renderer/Camera;-><init>(II)V

    iput-object p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    .line 50
    invoke-virtual {p1, v2}, Lcom/jme3/renderer/Camera;->setParallelProjection(Z)V

    .line 51
    :goto_1
    iget-object p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    array-length p2, p1

    if-ge v1, p2, :cond_1

    .line 52
    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private createFrustum([Lcom/jme3/math/Vector3f;I)Lcom/jme3/scene/Geometry;
    .locals 3

    new-instance v0, Lcom/jme3/scene/debug/WireFrustum;

    invoke-direct {v0, p1}, Lcom/jme3/scene/debug/WireFrustum;-><init>([Lcom/jme3/math/Vector3f;)V

    new-instance p1, Lcom/jme3/scene/Geometry;

    const-string v1, "f"

    invoke-direct {p1, v1, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    new-instance v0, Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v2, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    const-string v0, "Color"

    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object p2

    sget-object v1, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p2, v0, v1}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object p2

    sget-object v1, Lcom/jme3/math/ColorRGBA;->Blue:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p2, v0, v1}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object p2

    sget-object v1, Lcom/jme3/math/ColorRGBA;->Green:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p2, v0, v1}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object p2

    sget-object v1, Lcom/jme3/math/ColorRGBA;->Red:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p2, v0, v1}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object p2

    sget-object v1, Lcom/jme3/math/ColorRGBA;->Pink:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p2, v0, v1}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->updateGeometricState()V

    return-object p1
.end method

.method private setMatParams()V
    .locals 7

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    iget-object v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->matCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/jme3/renderer/queue/GeometryList;->get(I)Lcom/jme3/scene/Geometry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/material/Material;->getMaterialDef()Lcom/jme3/material/MaterialDef;

    move-result-object v5

    iget-object v6, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postTechniqueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/jme3/material/MaterialDef;->getTechniqueDefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/jme3/shadow/PssmShadowRenderer;->matCache:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/jme3/shadow/PssmShadowRenderer;->matCache:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iput-boolean v4, p0, Lcom/jme3/shadow/PssmShadowRenderer;->needsfallBackMaterial:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->matCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/material/Material;

    const-string v3, "Splits"

    iget-object v5, p0, Lcom/jme3/shadow/PssmShadowRenderer;->splits:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v2, v3, v5}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    const-string v3, "ShadowMapSize"

    iget v5, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowMapSize:F

    invoke-virtual {v2, v3, v5}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    move v3, v1

    :goto_3
    iget v5, p0, Lcom/jme3/shadow/PssmShadowRenderer;->nbSplits:I

    if-ge v3, v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LightViewProjectionMatrix"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jme3/shadow/PssmShadowRenderer;->lightViewProjectionsMatrices:[Lcom/jme3/math/Matrix4f;

    aget-object v6, v6, v3

    invoke-virtual {v2, v5, v6}, Lcom/jme3/material/Material;->setMatrix4(Ljava/lang/String;Lcom/jme3/math/Matrix4f;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_4
    iget v5, p0, Lcom/jme3/shadow/PssmShadowRenderer;->nbSplits:I

    if-ge v3, v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ShadowMap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    aget-object v6, v6, v3

    invoke-virtual {v2, v5, v6}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->compareMode:Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;

    sget-object v5, Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;->Hardware:Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;

    if-ne v3, v5, :cond_6

    move v3, v4

    goto :goto_5

    :cond_6
    move v3, v1

    :goto_5
    const-string v5, "HardwareShadows"

    invoke-virtual {v2, v5, v3}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->filterMode:Lcom/jme3/shadow/PssmShadowRenderer$FilterMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const-string v5, "FilterMode"

    invoke-virtual {v2, v5, v3}, Lcom/jme3/material/Material;->setInt(Ljava/lang/String;I)V

    const-string v3, "PCFEdge"

    iget v5, p0, Lcom/jme3/shadow/PssmShadowRenderer;->edgesThickness:F

    invoke-virtual {v2, v3, v5}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    const-string v3, "ShadowIntensity"

    iget v5, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowIntensity:F

    invoke-virtual {v2, v3, v5}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    if-eqz v3, :cond_3

    const-string v5, "FadeInfo"

    invoke-virtual {v2, v5, v3}, Lcom/jme3/material/Material;->setVector2(Ljava/lang/String;Lcom/jme3/math/Vector2f;)V

    goto/16 :goto_2

    :cond_7
    iput-boolean v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->applyHWShadows:Z

    iput-boolean v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->applyFilterMode:Z

    iput-boolean v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->applyPCFEdge:Z

    iput-boolean v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->applyShadowIntensity:Z

    iput-boolean v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->applyFadeInfo:Z

    iget-boolean v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->needsfallBackMaterial:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/jme3/shadow/PssmShadowRenderer;->setPostShadowParams()V

    :cond_8
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    return-void
.end method

.method public displayDebug()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->debug:Z

    return-void
.end method

.method public displayFrustum()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->debugfrustums:Z

    return-void
.end method

.method public displayShadowMap(Lcom/jme3/renderer/Renderer;)V
    .locals 8

    iget-object p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->dispPic:[Lcom/jme3/ui/Picture;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    mul-int/lit16 v4, v2, 0x80

    add-int/lit8 v5, v2, 0x1

    mul-int/lit8 v6, v5, 0x40

    add-int/lit16 v6, v6, 0x96

    add-int/2addr v4, v6

    int-to-float v4, v4

    int-to-float v6, v0

    const/high16 v7, 0x41a00000    # 20.0f

    div-float/2addr v6, v7

    invoke-virtual {v3, v4, v6}, Lcom/jme3/ui/Picture;->setPosition(FF)V

    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->dispPic:[Lcom/jme3/ui/Picture;

    aget-object v3, v3, v2

    const/high16 v4, 0x43000000    # 128.0f

    invoke-virtual {v3, v4}, Lcom/jme3/ui/Picture;->setWidth(F)V

    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->dispPic:[Lcom/jme3/ui/Picture;

    aget-object v3, v3, v2

    invoke-virtual {v3, v4}, Lcom/jme3/ui/Picture;->setHeight(F)V

    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->dispPic:[Lcom/jme3/ui/Picture;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->updateGeometricState()V

    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v4, p0, Lcom/jme3/shadow/PssmShadowRenderer;->dispPic:[Lcom/jme3/ui/Picture;

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Lcom/jme3/renderer/RenderManager;->renderGeometry(Lcom/jme3/scene/Geometry;)V

    move v2, v5

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0, p1, v1}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    return-void
.end method

.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->direction:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getEdgesThickness()I
    .locals 2

    iget v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->edgesThickness:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getLambda()F
    .locals 1

    iget v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->lambda:F

    return v0
.end method

.method public getSceneForDebug()Lcom/jme3/scene/Node;
    .locals 2

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getScenes()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    return-object v0
.end method

.method public getShadowIntensity()F
    .locals 1

    iget v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowIntensity:F

    return v0
.end method

.method public getShadowZExtend()F
    .locals 1

    iget v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->zFarOverride:F

    return v0
.end method

.method public getShadowZFadeLength()F
    .locals 2

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->zFarOverride:F

    iget v0, v0, Lcom/jme3/math/Vector2f;->x:F

    sub-float/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iput-object p2, p0, Lcom/jme3/shadow/PssmShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    const-string p1, "PostShadow"

    iput-object p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postTechniqueName:Ljava/lang/String;

    return-void
.end method

.method public isFlushQueues()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->flushQueues:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public postFrame(Lcom/jme3/texture/FrameBuffer;)V
    .locals 4

    iget-boolean p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->debug:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/shadow/PssmShadowRenderer;->displayShadowMap(Lcom/jme3/renderer/Renderer;)V

    :cond_0
    iget-boolean p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->noOccluders:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/jme3/shadow/PssmShadowRenderer;->setMatParams()V

    iget-object p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    iget-boolean v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->needsfallBackMaterial:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/RenderManager;->setForcedMaterial(Lcom/jme3/material/Material;)V

    :cond_1
    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postTechniqueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/RenderManager;->setForcedTechnique(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    iget-object v2, p0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/jme3/renderer/queue/RenderQueue;->renderShadowQueue(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/RenderManager;->setForcedTechnique(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/RenderManager;->setForcedMaterial(Lcom/jme3/material/Material;)V

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    :cond_2
    return-void
.end method

.method public postQueue(Lcom/jme3/renderer/queue/RenderQueue;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jme3/shadow/PssmShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getScenes()Lcom/jme3/util/SafeArrayList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Spatial;

    iget-object v3, v0, Lcom/jme3/shadow/PssmShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v3}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v3

    sget-object v4, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Receive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    iget-object v5, v0, Lcom/jme3/shadow/PssmShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    invoke-static {v2, v3, v4, v5}, Lcom/jme3/shadow/ShadowUtil;->getGeometriesInCamFrustum(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/Camera;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/GeometryList;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/jme3/shadow/PssmShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v1

    iget v2, v0, Lcom/jme3/shadow/PssmShadowRenderer;->zFarOverride:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/jme3/renderer/Camera;->getFrustumFar()F

    move-result v2

    :cond_1
    invoke-virtual {v1}, Lcom/jme3/renderer/Camera;->getFrustumNear()F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, v0, Lcom/jme3/shadow/PssmShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v2, v5, v4}, Lcom/jme3/shadow/ShadowUtil;->updateFrustumPoints(Lcom/jme3/renderer/Camera;FFF[Lcom/jme3/math/Vector3f;)V

    iget-object v4, v0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v4}, Lcom/jme3/renderer/Camera;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v4

    iget-object v6, v0, Lcom/jme3/shadow/PssmShadowRenderer;->direction:Lcom/jme3/math/Vector3f;

    iget-object v7, v0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v7}, Lcom/jme3/renderer/Camera;->getUp()Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/jme3/math/Quaternion;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    iget-object v4, v0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v4}, Lcom/jme3/renderer/Camera;->update()V

    iget-object v4, v0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v4}, Lcom/jme3/renderer/Camera;->updateViewProjection()V

    iget-object v4, v0, Lcom/jme3/shadow/PssmShadowRenderer;->splitsArray:[F

    iget v6, v0, Lcom/jme3/shadow/PssmShadowRenderer;->lambda:F

    invoke-static {v4, v3, v2, v6}, Lcom/jme3/shadow/PssmShadowUtil;->updateFrustumSplits([FFFF)V

    iget-object v2, v0, Lcom/jme3/shadow/PssmShadowRenderer;->splitsArray:[F

    array-length v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v6, 0x2

    if-eq v3, v6, :cond_5

    const/4 v7, 0x3

    if-eq v3, v7, :cond_4

    const/4 v8, 0x4

    if-eq v3, v8, :cond_3

    const/4 v9, 0x5

    if-eq v3, v9, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/jme3/shadow/PssmShadowRenderer;->splits:Lcom/jme3/math/ColorRGBA;

    aget v8, v2, v8

    iput v8, v3, Lcom/jme3/math/ColorRGBA;->a:F

    :cond_3
    iget-object v3, v0, Lcom/jme3/shadow/PssmShadowRenderer;->splits:Lcom/jme3/math/ColorRGBA;

    aget v7, v2, v7

    iput v7, v3, Lcom/jme3/math/ColorRGBA;->b:F

    :cond_4
    iget-object v3, v0, Lcom/jme3/shadow/PssmShadowRenderer;->splits:Lcom/jme3/math/ColorRGBA;

    aget v6, v2, v6

    iput v6, v3, Lcom/jme3/math/ColorRGBA;->g:F

    :cond_5
    iget-object v3, v0, Lcom/jme3/shadow/PssmShadowRenderer;->splits:Lcom/jme3/math/ColorRGBA;

    aget v2, v2, v4

    iput v2, v3, Lcom/jme3/math/ColorRGBA;->r:F

    :goto_1
    iget-object v2, v0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v2}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v2

    iget-object v3, v0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v6, v0, Lcom/jme3/shadow/PssmShadowRenderer;->preshadowMat:Lcom/jme3/material/Material;

    invoke-virtual {v3, v6}, Lcom/jme3/renderer/RenderManager;->setForcedMaterial(Lcom/jme3/material/Material;)V

    iget-object v3, v0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    const-string v6, "PreShadow"

    invoke-virtual {v3, v6}, Lcom/jme3/renderer/RenderManager;->setForcedTechnique(Ljava/lang/String;)V

    const/4 v3, 0x0

    move v6, v3

    :goto_2
    iget v7, v0, Lcom/jme3/shadow/PssmShadowRenderer;->nbSplits:I

    if-ge v6, v7, :cond_7

    iget-object v7, v0, Lcom/jme3/shadow/PssmShadowRenderer;->splitsArray:[F

    aget v8, v7, v6

    add-int/lit8 v9, v6, 0x1

    aget v7, v7, v9

    iget-object v10, v0, Lcom/jme3/shadow/PssmShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    invoke-static {v1, v8, v7, v5, v10}, Lcom/jme3/shadow/ShadowUtil;->updateFrustumPoints(Lcom/jme3/renderer/Camera;FFF[Lcom/jme3/math/Vector3f;)V

    iget-object v11, v0, Lcom/jme3/shadow/PssmShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    iget-object v12, v0, Lcom/jme3/shadow/PssmShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    iget-object v13, v0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    iget-object v14, v0, Lcom/jme3/shadow/PssmShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    iget-object v15, v0, Lcom/jme3/shadow/PssmShadowRenderer;->splitOccluders:Lcom/jme3/renderer/queue/GeometryList;

    iget v7, v0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowMapSize:F

    move/from16 v16, v7

    invoke-static/range {v11 .. v16}, Lcom/jme3/shadow/ShadowUtil;->updateShadowCamera(Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/Camera;[Lcom/jme3/math/Vector3f;Lcom/jme3/renderer/queue/GeometryList;F)V

    iget-object v7, v0, Lcom/jme3/shadow/PssmShadowRenderer;->lightViewProjectionsMatrices:[Lcom/jme3/math/Matrix4f;

    aget-object v7, v7, v6

    iget-object v8, v0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v8}, Lcom/jme3/renderer/Camera;->getViewProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v7, v0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v8, v0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v7, v8, v3}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    iget-boolean v7, v0, Lcom/jme3/shadow/PssmShadowRenderer;->debugfrustums:Z

    if-eqz v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/shadow/PssmShadowRenderer;->getSceneForDebug()Lcom/jme3/scene/Node;

    move-result-object v7

    iget-object v8, v0, Lcom/jme3/shadow/PssmShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v8, v6}, Lcom/jme3/shadow/PssmShadowRenderer;->createFrustum([Lcom/jme3/math/Vector3f;I)Lcom/jme3/scene/Geometry;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v7, v0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    iget-object v8, v0, Lcom/jme3/shadow/PssmShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    invoke-static {v7, v8}, Lcom/jme3/shadow/ShadowUtil;->updateFrustumPoints2(Lcom/jme3/renderer/Camera;[Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/shadow/PssmShadowRenderer;->getSceneForDebug()Lcom/jme3/scene/Node;

    move-result-object v7

    iget-object v8, v0, Lcom/jme3/shadow/PssmShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v8, v6}, Lcom/jme3/shadow/PssmShadowRenderer;->createFrustum([Lcom/jme3/math/Vector3f;I)Lcom/jme3/scene/Geometry;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    :cond_6
    iget-object v7, v0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowFB:[Lcom/jme3/texture/FrameBuffer;

    aget-object v6, v7, v6

    invoke-interface {v2, v6}, Lcom/jme3/renderer/Renderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    invoke-interface {v2, v4, v4, v4}, Lcom/jme3/renderer/Renderer;->clearBuffers(ZZZ)V

    iget-object v6, v0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v6}, Lcom/jme3/renderer/RenderManager;->getLightFilter()Lcom/jme3/light/LightFilter;

    move-result-object v6

    iget-object v7, v0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    sget-object v8, Lcom/jme3/shadow/PssmShadowRenderer;->NULL_LIGHT_FILTER:Lcom/jme3/light/LightFilter;

    invoke-virtual {v7, v8}, Lcom/jme3/renderer/RenderManager;->setLightFilter(Lcom/jme3/light/LightFilter;)V

    iget-object v7, v0, Lcom/jme3/shadow/PssmShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v7}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object v7

    iget-object v8, v0, Lcom/jme3/shadow/PssmShadowRenderer;->splitOccluders:Lcom/jme3/renderer/queue/GeometryList;

    iget-object v10, v0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v11, v0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v7, v8, v10, v11, v4}, Lcom/jme3/renderer/queue/RenderQueue;->renderShadowQueue(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    iget-object v7, v0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v7, v6}, Lcom/jme3/renderer/RenderManager;->setLightFilter(Lcom/jme3/light/LightFilter;)V

    move v6, v9

    goto/16 :goto_2

    :cond_7
    iget-boolean v4, v0, Lcom/jme3/shadow/PssmShadowRenderer;->debugfrustums:Z

    if-eqz v4, :cond_8

    iput-boolean v3, v0, Lcom/jme3/shadow/PssmShadowRenderer;->debugfrustums:Z

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/shadow/PssmShadowRenderer;->getSceneForDebug()Lcom/jme3/scene/Node;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/scene/Node;->updateGeometricState()V

    :cond_8
    iget-object v4, v0, Lcom/jme3/shadow/PssmShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v4}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/jme3/renderer/Renderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    iget-object v2, v0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/jme3/renderer/RenderManager;->setForcedMaterial(Lcom/jme3/material/Material;)V

    iget-object v2, v0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v2, v4}, Lcom/jme3/renderer/RenderManager;->setForcedTechnique(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/jme3/shadow/PssmShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v2, v1, v3}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    return-void
.end method

.method public preFrame(F)V
    .locals 0

    return-void
.end method

.method public reshape(Lcom/jme3/renderer/ViewPort;II)V
    .locals 0

    return-void
.end method

.method public final setCompareMode(Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;)V
    .locals 7

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->compareMode:Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->compareMode:Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    sget-object v5, Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;->Hardware:Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;

    if-ne p1, v5, :cond_2

    sget-object v5, Lcom/jme3/texture/Texture$ShadowCompareMode;->LessOrEqual:Lcom/jme3/texture/Texture$ShadowCompareMode;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/Texture;->setShadowCompareMode(Lcom/jme3/texture/Texture$ShadowCompareMode;)V

    iget-object v5, p0, Lcom/jme3/shadow/PssmShadowRenderer;->filterMode:Lcom/jme3/shadow/PssmShadowRenderer$FilterMode;

    sget-object v6, Lcom/jme3/shadow/PssmShadowRenderer$FilterMode;->Bilinear:Lcom/jme3/shadow/PssmShadowRenderer$FilterMode;

    if-ne v5, v6, :cond_1

    sget-object v5, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    sget-object v5, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/jme3/texture/Texture$MagFilter;->Nearest:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    sget-object v5, Lcom/jme3/texture/Texture$MinFilter;->NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/jme3/texture/Texture$ShadowCompareMode;->Off:Lcom/jme3/texture/Texture$ShadowCompareMode;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/Texture;->setShadowCompareMode(Lcom/jme3/texture/Texture$ShadowCompareMode;)V

    sget-object v5, Lcom/jme3/texture/Texture$MagFilter;->Nearest:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    sget-object v5, Lcom/jme3/texture/Texture$MinFilter;->NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    sget-object v1, Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;->Hardware:Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;

    const/4 v3, 0x1

    if-ne p1, v1, :cond_4

    move v2, v3

    :cond_4
    const-string p1, "HardwareShadows"

    invoke-virtual {v0, p1, v2}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->applyHWShadows:Z

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "compareMode cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDirection(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setEdgesThickness(I)V
    .locals 3

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->edgesThickness:F

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v2, "PCFEdge"

    int-to-float p1, p1

    invoke-virtual {v0, v2, p1}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    iput-boolean v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->applyPCFEdge:Z

    return-void
.end method

.method public final setFilterMode(Lcom/jme3/shadow/PssmShadowRenderer$FilterMode;)V
    .locals 5

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->filterMode:Lcom/jme3/shadow/PssmShadowRenderer$FilterMode;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->filterMode:Lcom/jme3/shadow/PssmShadowRenderer$FilterMode;

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v1, "FilterMode"

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v1, "PCFEdge"

    iget v2, p0, Lcom/jme3/shadow/PssmShadowRenderer;->edgesThickness:F

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->compareMode:Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;

    sget-object v1, Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;->Hardware:Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    sget-object v4, Lcom/jme3/shadow/PssmShadowRenderer$FilterMode;->Bilinear:Lcom/jme3/shadow/PssmShadowRenderer$FilterMode;

    if-ne p1, v4, :cond_1

    sget-object v4, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v3, v4}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    sget-object v4, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v3, v4}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/jme3/texture/Texture$MagFilter;->Nearest:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v3, v4}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    sget-object v4, Lcom/jme3/texture/Texture$MinFilter;->NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v3, v4}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->applyFilterMode:Z

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filterMode cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFlushQueues(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->flushQueues:Z

    return-void
.end method

.method public setLambda(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->lambda:F

    return-void
.end method

.method public setPostShadowParams()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v1, "Splits"

    iget-object v2, p0, Lcom/jme3/shadow/PssmShadowRenderer;->splits:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->nbSplits:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LightViewProjectionMatrix"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->lightViewProjectionsMatrices:[Lcom/jme3/math/Matrix4f;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/jme3/material/Material;->setMatrix4(Ljava/lang/String;Lcom/jme3/math/Matrix4f;)V

    iget-object v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShadowMap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProfiler(Lcom/jme3/profile/AppProfiler;)V
    .locals 0

    return-void
.end method

.method public final setShadowIntensity(F)V
    .locals 2

    iput p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->shadowIntensity:F

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v1, "ShadowIntensity"

    invoke-virtual {v0, v1, p1}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->applyShadowIntensity:Z

    return-void
.end method

.method public setShadowZExtend(F)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->fadeLength:F

    sub-float v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    :cond_0
    iput p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->zFarOverride:F

    return-void
.end method

.method public setShadowZFadeLength(F)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const-string v2, "FadeInfo"

    if-nez v1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    iput v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->fadeLength:F

    iget-object p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    invoke-virtual {p1, v2}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->zFarOverride:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1, v0, v0}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    iput-object v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/jme3/math/Vector2f;

    iget v1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->zFarOverride:F

    sub-float/2addr v1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, p1

    invoke-direct {v0, v1, v3}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    iput-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    :goto_0
    iput p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->fadeLength:F

    iget-object p1, p0, Lcom/jme3/shadow/PssmShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    invoke-virtual {p1, v2, v0}, Lcom/jme3/material/Material;->setVector2(Ljava/lang/String;Lcom/jme3/math/Vector2f;)V

    :goto_1
    return-void
.end method
