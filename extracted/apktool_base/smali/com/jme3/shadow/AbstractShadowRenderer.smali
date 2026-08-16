.class public abstract Lcom/jme3/shadow/AbstractShadowRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/post/SceneProcessor;
.implements Lcom/jme3/export/Savable;
.implements Lcom/jme3/util/clone/JmeCloneable;


# static fields
.field private static final NULL_LIGHT_FILTER:Lcom/jme3/light/LightFilter;

.field protected static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected assetManager:Lcom/jme3/asset/AssetManager;

.field protected debug:Z

.field protected debugfrustums:Z

.field protected dispPic:[Lcom/jme3/ui/Picture;

.field protected dummyTex:Lcom/jme3/texture/Texture2D;

.field protected edgeFilteringMode:Lcom/jme3/shadow/EdgeFilteringMode;

.field protected edgesThickness:F

.field protected fadeInfo:Lcom/jme3/math/Vector2f;

.field protected fadeLength:F

.field protected forcedRenderState:Lcom/jme3/material/RenderState;

.field protected frustumCam:Lcom/jme3/renderer/Camera;

.field protected lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

.field protected lightViewProjectionsMatrices:[Lcom/jme3/math/Matrix4f;

.field private lightViewStringCache:[Ljava/lang/String;

.field protected matCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/material/Material;",
            ">;"
        }
    .end annotation
.end field

.field protected nbShadowMaps:I

.field protected needsfallBackMaterial:Z

.field protected postTechniqueName:Ljava/lang/String;

.field protected postshadowMat:Lcom/jme3/material/Material;

.field protected preshadowMat:Lcom/jme3/material/Material;

.field protected prof:Lcom/jme3/profile/AppProfiler;

.field protected renderBackFacesShadows:Z

.field protected renderManager:Lcom/jme3/renderer/RenderManager;

.field protected shadowCompareMode:Lcom/jme3/shadow/CompareMode;

.field protected shadowFB:[Lcom/jme3/texture/FrameBuffer;

.field protected shadowIntensity:F

.field protected shadowMapOccluders:Lcom/jme3/renderer/queue/GeometryList;

.field protected shadowMapSize:F

.field protected shadowMapStringCache:[Ljava/lang/String;

.field protected shadowMaps:[Lcom/jme3/texture/Texture2D;

.field protected skipPostPass:Z

.field protected viewPort:Lcom/jme3/renderer/ViewPort;

.field protected zFarOverride:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/shadow/AbstractShadowRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/light/NullLightFilter;

    invoke-direct {v0}, Lcom/jme3/light/NullLightFilter;-><init>()V

    sput-object v0, Lcom/jme3/shadow/AbstractShadowRenderer;->NULL_LIGHT_FILTER:Lcom/jme3/light/LightFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    const v1, 0x3f333333    # 0.7f

    .line 3
    iput v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowIntensity:F

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->debug:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    iput v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgesThickness:F

    .line 6
    sget-object v2, Lcom/jme3/shadow/EdgeFilteringMode;->Bilinear:Lcom/jme3/shadow/EdgeFilteringMode;

    iput-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgeFilteringMode:Lcom/jme3/shadow/EdgeFilteringMode;

    .line 7
    sget-object v2, Lcom/jme3/shadow/CompareMode;->Hardware:Lcom/jme3/shadow/CompareMode;

    iput-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowCompareMode:Lcom/jme3/shadow/CompareMode;

    .line 8
    new-instance v2, Lcom/jme3/material/RenderState;

    invoke-direct {v2}, Lcom/jme3/material/RenderState;-><init>()V

    iput-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->forcedRenderState:Lcom/jme3/material/RenderState;

    .line 9
    iput-boolean v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderBackFacesShadows:Z

    .line 10
    iput-boolean v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->debugfrustums:Z

    .line 11
    iput-boolean v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->needsfallBackMaterial:Z

    .line 12
    const-string v0, "PostShadow"

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postTechniqueName:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->matCache:Ljava/util/List;

    .line 14
    new-instance v0, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v1, Lcom/jme3/renderer/queue/OpaqueComparator;

    invoke-direct {v1}, Lcom/jme3/renderer/queue/OpaqueComparator;-><init>()V

    invoke-direct {v0, v1}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    .line 15
    new-instance v0, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v1, Lcom/jme3/renderer/queue/OpaqueComparator;

    invoke-direct {v1}, Lcom/jme3/renderer/queue/OpaqueComparator;-><init>()V

    invoke-direct {v0, v1}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapOccluders:Lcom/jme3/renderer/queue/GeometryList;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->zFarOverride:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;II)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    const v1, 0x3f333333    # 0.7f

    .line 19
    iput v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowIntensity:F

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->debug:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    iput v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgesThickness:F

    .line 22
    sget-object v2, Lcom/jme3/shadow/EdgeFilteringMode;->Bilinear:Lcom/jme3/shadow/EdgeFilteringMode;

    iput-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgeFilteringMode:Lcom/jme3/shadow/EdgeFilteringMode;

    .line 23
    sget-object v2, Lcom/jme3/shadow/CompareMode;->Hardware:Lcom/jme3/shadow/CompareMode;

    iput-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowCompareMode:Lcom/jme3/shadow/CompareMode;

    .line 24
    new-instance v2, Lcom/jme3/material/RenderState;

    invoke-direct {v2}, Lcom/jme3/material/RenderState;-><init>()V

    iput-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->forcedRenderState:Lcom/jme3/material/RenderState;

    .line 25
    iput-boolean v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderBackFacesShadows:Z

    .line 26
    iput-boolean v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->debugfrustums:Z

    .line 27
    iput-boolean v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->needsfallBackMaterial:Z

    .line 28
    const-string v0, "PostShadow"

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postTechniqueName:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->matCache:Ljava/util/List;

    .line 30
    new-instance v0, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v1, Lcom/jme3/renderer/queue/OpaqueComparator;

    invoke-direct {v1}, Lcom/jme3/renderer/queue/OpaqueComparator;-><init>()V

    invoke-direct {v0, v1}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    .line 31
    new-instance v0, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v1, Lcom/jme3/renderer/queue/OpaqueComparator;

    invoke-direct {v1}, Lcom/jme3/renderer/queue/OpaqueComparator;-><init>()V

    invoke-direct {v0, v1}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapOccluders:Lcom/jme3/renderer/queue/GeometryList;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->zFarOverride:F

    .line 33
    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->assetManager:Lcom/jme3/asset/AssetManager;

    int-to-float v0, p2

    .line 34
    iput v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapSize:F

    .line 35
    iput p3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    .line 36
    invoke-direct {p0, p1, p3, p2}, Lcom/jme3/shadow/AbstractShadowRenderer;->init(Lcom/jme3/asset/AssetManager;II)V

    return-void
.end method

.method private buildMatCache(Lcom/jme3/renderer/queue/GeometryList;)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->matCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/queue/GeometryList;->get(I)Lcom/jme3/scene/Geometry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/material/Material;->getMaterialDef()Lcom/jme3/material/MaterialDef;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postTechniqueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jme3/material/MaterialDef;->getTechniqueDefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->matCache:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->matCache:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->needsfallBackMaterial:Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private clearMatParams()V
    .locals 5

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->matCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/Material;

    const/4 v2, 0x1

    move v3, v2

    :goto_1
    iget v4, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightViewStringCache:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    :goto_2
    iget v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapStringCache:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const-string v2, "FadeInfo"

    invoke-virtual {v1, v2}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/jme3/shadow/AbstractShadowRenderer;->clearMaterialParameters(Lcom/jme3/material/Material;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private init(Lcom/jme3/asset/AssetManager;II)V
    .locals 6

    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "Common/MatDefs/Shadow/PostShadow.j3md"

    invoke-direct {v0, p1, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    new-array v0, p2, [Lcom/jme3/texture/FrameBuffer;

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowFB:[Lcom/jme3/texture/FrameBuffer;

    new-array v0, p2, [Lcom/jme3/texture/Texture2D;

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    new-array v0, p2, [Lcom/jme3/ui/Picture;

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->dispPic:[Lcom/jme3/ui/Picture;

    new-array v0, p2, [Lcom/jme3/math/Matrix4f;

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightViewProjectionsMatrices:[Lcom/jme3/math/Matrix4f;

    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapStringCache:[Ljava/lang/String;

    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightViewStringCache:[Ljava/lang/String;

    new-instance v0, Lcom/jme3/texture/Texture2D;

    sget-object v1, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    invoke-direct {v0, p3, p3, v1}, Lcom/jme3/texture/Texture2D;-><init>(IILcom/jme3/texture/Image$Format;)V

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->dummyTex:Lcom/jme3/texture/Texture2D;

    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "Common/MatDefs/Shadow/PreShadow.j3md"

    invoke-direct {v0, p1, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->preshadowMat:Lcom/jme3/material/Material;

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v1, "ShadowMapSize"

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightViewProjectionsMatrices:[Lcom/jme3/math/Matrix4f;

    new-instance v3, Lcom/jme3/math/Matrix4f;

    invoke-direct {v3}, Lcom/jme3/math/Matrix4f;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowFB:[Lcom/jme3/texture/FrameBuffer;

    new-instance v3, Lcom/jme3/texture/FrameBuffer;

    const/4 v4, 0x1

    invoke-direct {v3, p3, p3, v4}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    new-instance v3, Lcom/jme3/texture/Texture2D;

    sget-object v4, Lcom/jme3/texture/Image$Format;->Depth:Lcom/jme3/texture/Image$Format;

    invoke-direct {v3, p3, p3, v4}, Lcom/jme3/texture/Texture2D;-><init>(IILcom/jme3/texture/Image$Format;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowFB:[Lcom/jme3/texture/FrameBuffer;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/texture/FrameBuffer;->setDepthTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowFB:[Lcom/jme3/texture/FrameBuffer;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->dummyTex:Lcom/jme3/texture/Texture2D;

    invoke-static {v3}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/texture/FrameBuffer;->addColorTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapStringCache:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShadowMap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightViewStringCache:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LightViewProjectionMatrix"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapStringCache:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->dispPic:[Lcom/jme3/ui/Picture;

    new-instance v3, Lcom/jme3/ui/Picture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Picture"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jme3/ui/Picture;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->dispPic:[Lcom/jme3/ui/Picture;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    aget-object v3, v3, v1

    invoke-virtual {v2, p1, v3, v0}, Lcom/jme3/ui/Picture;->setTexture(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture2D;Z)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowCompareMode:Lcom/jme3/shadow/CompareMode;

    invoke-virtual {p0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->setShadowCompareMode(Lcom/jme3/shadow/CompareMode;)V

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgeFilteringMode:Lcom/jme3/shadow/EdgeFilteringMode;

    invoke-virtual {p0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->setEdgeFilteringMode(Lcom/jme3/shadow/EdgeFilteringMode;)V

    iget p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowIntensity:F

    invoke-virtual {p0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->setShadowIntensity(F)V

    invoke-virtual {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;->initForcedRenderState()V

    invoke-virtual {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;->isRenderBackFacesShadows()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->setRenderBackFacesShadows(Z)V

    return-void
.end method

.method private setMatParams(Lcom/jme3/renderer/queue/GeometryList;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->buildMatCache(Lcom/jme3/renderer/queue/GeometryList;)V

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->matCache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/Material;

    const-string v1, "ShadowMapSize"

    iget v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapSize:F

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightViewStringCache:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightViewProjectionsMatrices:[Lcom/jme3/math/Matrix4f;

    aget-object v4, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/jme3/material/Material;->setMatrix4(Ljava/lang/String;Lcom/jme3/math/Matrix4f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_2
    iget v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapStringCache:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    aget-object v4, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowCompareMode:Lcom/jme3/shadow/CompareMode;

    sget-object v3, Lcom/jme3/shadow/CompareMode;->Hardware:Lcom/jme3/shadow/CompareMode;

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    const-string v2, "HardwareShadows"

    invoke-virtual {v0, v2, v1}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgeFilteringMode:Lcom/jme3/shadow/EdgeFilteringMode;

    invoke-virtual {v1}, Lcom/jme3/shadow/EdgeFilteringMode;->getMaterialParamValue()I

    move-result v1

    const-string v2, "FilterMode"

    invoke-virtual {v0, v2, v1}, Lcom/jme3/material/Material;->setInt(Ljava/lang/String;I)V

    const-string v1, "PCFEdge"

    iget v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgesThickness:F

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    const-string v1, "ShadowIntensity"

    iget v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowIntensity:F

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    const-string v1, "BackfaceShadows"

    iget-boolean v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderBackFacesShadows:Z

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    if-eqz v1, :cond_3

    const-string v2, "FadeInfo"

    invoke-virtual {v0, v2, v1}, Lcom/jme3/material/Material;->setVector2(Ljava/lang/String;Lcom/jme3/math/Vector2f;)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->setMaterialParameters(Lcom/jme3/material/Material;)V

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->needsfallBackMaterial:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;->setPostShadowParams()V

    :cond_5
    return-void
.end method


# virtual methods
.method public abstract checkCulling(Lcom/jme3/renderer/Camera;)Z
.end method

.method public cleanup()V
    .locals 0

    return-void
.end method

.method public abstract clearMaterialParameters(Lcom/jme3/material/Material;)V
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    iget-object p2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->forcedRenderState:Lcom/jme3/material/RenderState;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/material/RenderState;

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->forcedRenderState:Lcom/jme3/material/RenderState;

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->assetManager:Lcom/jme3/asset/AssetManager;

    iget p2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapSize:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->init(Lcom/jme3/asset/AssetManager;II)V

    return-void
.end method

.method public createFrustum([Lcom/jme3/math/Vector3f;I)Lcom/jme3/scene/Geometry;
    .locals 3

    new-instance v0, Lcom/jme3/scene/debug/WireFrustum;

    invoke-direct {v0, p1}, Lcom/jme3/scene/debug/WireFrustum;-><init>([Lcom/jme3/math/Vector3f;)V

    new-instance p1, Lcom/jme3/scene/Geometry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WireFrustum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    new-instance v0, Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v2, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    const-string v1, "Color"

    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    sget-object p2, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1, p2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/jme3/math/ColorRGBA;->Blue:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1, p2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/jme3/math/ColorRGBA;->Green:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1, p2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/jme3/math/ColorRGBA;->Red:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1, p2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/jme3/math/ColorRGBA;->Pink:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1, p2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->updateGeometricState()V

    return-object p1
.end method

.method public displayDebug()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->debug:Z

    return-void
.end method

.method public displayFrustum()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->debugfrustums:Z

    return-void
.end method

.method public displayShadowMap(Lcom/jme3/renderer/Renderer;)V
    .locals 8

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->dispPic:[Lcom/jme3/ui/Picture;

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

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->dispPic:[Lcom/jme3/ui/Picture;

    aget-object v3, v3, v2

    const/high16 v4, 0x43000000    # 128.0f

    invoke-virtual {v3, v4}, Lcom/jme3/ui/Picture;->setWidth(F)V

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->dispPic:[Lcom/jme3/ui/Picture;

    aget-object v3, v3, v2

    invoke-virtual {v3, v4}, Lcom/jme3/ui/Picture;->setHeight(F)V

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->dispPic:[Lcom/jme3/ui/Picture;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->updateGeometricState()V

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v4, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->dispPic:[Lcom/jme3/ui/Picture;

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Lcom/jme3/renderer/RenderManager;->renderGeometry(Lcom/jme3/scene/Geometry;)V

    move v2, v5

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0, p1, v1}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    return-void
.end method

.method public doDisplayFrustumDebug(I)V
    .locals 0

    return-void
.end method

.method public getEdgeFilteringMode()Lcom/jme3/shadow/EdgeFilteringMode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgeFilteringMode:Lcom/jme3/shadow/EdgeFilteringMode;

    return-object v0
.end method

.method public getEdgesThickness()I
    .locals 2

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgesThickness:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNumShadowMaps()I
    .locals 1

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    return v0
.end method

.method public abstract getOccludersToRender(ILcom/jme3/renderer/queue/GeometryList;)Lcom/jme3/renderer/queue/GeometryList;
.end method

.method public getPreShadowForcedRenderState()Lcom/jme3/material/RenderState;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->forcedRenderState:Lcom/jme3/material/RenderState;

    return-object v0
.end method

.method public abstract getReceivers(Lcom/jme3/renderer/queue/GeometryList;)V
.end method

.method public getSceneForDebug()Lcom/jme3/scene/Node;
    .locals 2

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getScenes()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    return-object v0
.end method

.method public abstract getShadowCam(I)Lcom/jme3/renderer/Camera;
.end method

.method public getShadowCompareMode()Lcom/jme3/shadow/CompareMode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowCompareMode:Lcom/jme3/shadow/CompareMode;

    return-object v0
.end method

.method public getShadowIntensity()F
    .locals 1

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowIntensity:F

    return v0
.end method

.method public getShadowMapSize()I
    .locals 1

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getShadowZExtend()F
    .locals 1

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->zFarOverride:F

    return v0
.end method

.method public getShadowZFadeLength()F
    .locals 2

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->zFarOverride:F

    iget v0, v0, Lcom/jme3/math/Vector2f;->x:F

    sub-float/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initForcedRenderState()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->forcedRenderState:Lcom/jme3/material/RenderState;

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Front:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setFaceCullMode(Lcom/jme3/material/RenderState$FaceCullMode;)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->forcedRenderState:Lcom/jme3/material/RenderState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setColorWrite(Z)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->forcedRenderState:Lcom/jme3/material/RenderState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setDepthWrite(Z)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->forcedRenderState:Lcom/jme3/material/RenderState;

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    return-void
.end method

.method public abstract initFrustumCam()V
.end method

.method public initialize(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iput-object p2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    const-string p1, "PostShadow"

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postTechniqueName:Ljava/lang/String;

    iget p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->zFarOverride:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->frustumCam:Lcom/jme3/renderer/Camera;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;->initFrustumCam()V

    :cond_0
    return-void
.end method

.method public isFlushQueues()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRenderBackFacesShadows()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderBackFacesShadows:Z

    return v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public postFrame(Lcom/jme3/texture/FrameBuffer;)V
    .locals 4

    iget-boolean p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->skipPostPass:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->debug:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->displayShadowMap(Lcom/jme3/renderer/Renderer;)V

    :cond_1
    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->getReceivers(Lcom/jme3/renderer/queue/GeometryList;)V

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    invoke-direct {p0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->setMatParams(Lcom/jme3/renderer/queue/GeometryList;)V

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    iget-boolean v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->needsfallBackMaterial:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/RenderManager;->setForcedMaterial(Lcom/jme3/material/Material;)V

    :cond_2
    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postTechniqueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/RenderManager;->setForcedTechnique(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/jme3/renderer/queue/RenderQueue;->renderShadowQueue(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/RenderManager;->setForcedTechnique(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/RenderManager;->setForcedMaterial(Lcom/jme3/material/Material;)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0, p1, v3}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    invoke-direct {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;->clearMatParams()V

    :cond_3
    return-void
.end method

.method public postQueue(Lcom/jme3/renderer/queue/RenderQueue;)V
    .locals 3

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->clear()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->skipPostPass:Z

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->checkCulling(Lcom/jme3/renderer/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->skipPostPass:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->updateShadowCams(Lcom/jme3/renderer/Camera;)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->preshadowMat:Lcom/jme3/material/Material;

    invoke-virtual {v1, v2}, Lcom/jme3/renderer/RenderManager;->setForcedMaterial(Lcom/jme3/material/Material;)V

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    const-string v2, "PreShadow"

    invoke-virtual {v1, v2}, Lcom/jme3/renderer/RenderManager;->setForcedTechnique(Ljava/lang/String;)V

    move v1, p1

    :goto_0
    iget v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    if-ge v1, v2, :cond_2

    iget-boolean v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->debugfrustums:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/jme3/shadow/AbstractShadowRenderer;->doDisplayFrustumDebug(I)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/jme3/shadow/AbstractShadowRenderer;->renderShadowMap(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->debugfrustums:Z

    if-eqz v1, :cond_3

    iput-boolean p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->debugfrustums:Z

    invoke-virtual {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getSceneForDebug()Lcom/jme3/scene/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/Node;->updateGeometricState()V

    :cond_3
    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jme3/renderer/Renderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/RenderManager;->setForcedMaterial(Lcom/jme3/material/Material;)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/RenderManager;->setForcedTechnique(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    return-void
.end method

.method public preFrame(F)V
    .locals 0

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string p1, "nbShadowMaps"

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    const-string p1, "shadowMapSize"

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapSize:F

    const-string p1, "shadowIntensity"

    const v1, 0x3f333333    # 0.7f

    invoke-interface {v0, p1, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowIntensity:F

    const-class p1, Lcom/jme3/shadow/EdgeFilteringMode;

    sget-object v1, Lcom/jme3/shadow/EdgeFilteringMode;->Bilinear:Lcom/jme3/shadow/EdgeFilteringMode;

    const-string v2, "edgeFilteringMode"

    invoke-interface {v0, v2, p1, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/jme3/shadow/EdgeFilteringMode;

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgeFilteringMode:Lcom/jme3/shadow/EdgeFilteringMode;

    const-class p1, Lcom/jme3/shadow/CompareMode;

    sget-object v1, Lcom/jme3/shadow/CompareMode;->Hardware:Lcom/jme3/shadow/CompareMode;

    const-string v2, "shadowCompareMode"

    invoke-interface {v0, v2, p1, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/jme3/shadow/CompareMode;

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowCompareMode:Lcom/jme3/shadow/CompareMode;

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->assetManager:Lcom/jme3/asset/AssetManager;

    iget v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    iget v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapSize:F

    float-to-int v2, v2

    invoke-direct {p0, p1, v1, v2}, Lcom/jme3/shadow/AbstractShadowRenderer;->init(Lcom/jme3/asset/AssetManager;II)V

    const-string p1, "edgesThickness"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, p1, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgesThickness:F

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v1, "PCFEdge"

    invoke-virtual {v0, v1, p1}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public renderShadowMap(I)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapOccluders:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p0, p1, v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getOccludersToRender(ILcom/jme3/renderer/queue/GeometryList;)Lcom/jme3/renderer/queue/GeometryList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapOccluders:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->getShadowCam(I)Lcom/jme3/renderer/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightViewProjectionsMatrices:[Lcom/jme3/math/Matrix4f;

    aget-object v1, v1, p1

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getViewProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowFB:[Lcom/jme3/texture/FrameBuffer;

    aget-object p1, v2, p1

    invoke-interface {v1, p1}, Lcom/jme3/renderer/Renderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1, v1, v1}, Lcom/jme3/renderer/Renderer;->clearBuffers(ZZZ)V

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->forcedRenderState:Lcom/jme3/material/RenderState;

    invoke-virtual {p1, v2}, Lcom/jme3/renderer/RenderManager;->setForcedRenderState(Lcom/jme3/material/RenderState;)V

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getLightFilter()Lcom/jme3/light/LightFilter;

    move-result-object p1

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    sget-object v3, Lcom/jme3/shadow/AbstractShadowRenderer;->NULL_LIGHT_FILTER:Lcom/jme3/light/LightFilter;

    invoke-virtual {v2, v3}, Lcom/jme3/renderer/RenderManager;->setLightFilter(Lcom/jme3/light/LightFilter;)V

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v2}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapOccluders:Lcom/jme3/renderer/queue/GeometryList;

    iget-object v4, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/jme3/renderer/queue/RenderQueue;->renderShadowQueue(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/RenderManager;->setLightFilter(Lcom/jme3/light/LightFilter;)V

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/RenderManager;->setForcedRenderState(Lcom/jme3/material/RenderState;)V

    return-void
.end method

.method public reshape(Lcom/jme3/renderer/ViewPort;II)V
    .locals 0

    return-void
.end method

.method public final setEdgeFilteringMode(Lcom/jme3/shadow/EdgeFilteringMode;)V
    .locals 5

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgeFilteringMode:Lcom/jme3/shadow/EdgeFilteringMode;

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v1, "FilterMode"

    invoke-virtual {p1}, Lcom/jme3/shadow/EdgeFilteringMode;->getMaterialParamValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v1, "PCFEdge"

    iget v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgesThickness:F

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowCompareMode:Lcom/jme3/shadow/CompareMode;

    sget-object v1, Lcom/jme3/shadow/CompareMode;->Hardware:Lcom/jme3/shadow/CompareMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    sget-object v4, Lcom/jme3/shadow/EdgeFilteringMode;->Bilinear:Lcom/jme3/shadow/EdgeFilteringMode;

    if-ne p1, v4, :cond_0

    sget-object v4, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v3, v4}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    sget-object v4, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v3, v4}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/jme3/texture/Texture$MagFilter;->Nearest:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v3, v4}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    sget-object v4, Lcom/jme3/texture/Texture$MinFilter;->NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v3, v4}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filterMode cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEdgesThickness(I)V
    .locals 2

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgesThickness:F

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v1, "PCFEdge"

    invoke-virtual {v0, v1, p1}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public abstract setMaterialParameters(Lcom/jme3/material/Material;)V
.end method

.method public final setPostShadowMaterial(Lcom/jme3/material/Material;)V
    .locals 3

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v0, "ShadowMapSize"

    iget v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapSize:F

    invoke-virtual {p1, v0, v1}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapStringCache:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowCompareMode:Lcom/jme3/shadow/CompareMode;

    invoke-virtual {p0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->setShadowCompareMode(Lcom/jme3/shadow/CompareMode;)V

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgeFilteringMode:Lcom/jme3/shadow/EdgeFilteringMode;

    invoke-virtual {p0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->setEdgeFilteringMode(Lcom/jme3/shadow/EdgeFilteringMode;)V

    iget p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowIntensity:F

    invoke-virtual {p0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->setShadowIntensity(F)V

    return-void
.end method

.method public setPostShadowParams()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    invoke-virtual {p0, v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->setMaterialParameters(Lcom/jme3/material/Material;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightViewStringCache:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightViewProjectionsMatrices:[Lcom/jme3/math/Matrix4f;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/jme3/material/Material;->setMatrix4(Ljava/lang/String;Lcom/jme3/math/Matrix4f;)V

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapStringCache:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v2, "FadeInfo"

    invoke-virtual {v1, v2, v0}, Lcom/jme3/material/Material;->setVector2(Ljava/lang/String;Lcom/jme3/math/Vector2f;)V

    :cond_1
    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v1, "BackfaceShadows"

    iget-boolean v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderBackFacesShadows:Z

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setProfiler(Lcom/jme3/profile/AppProfiler;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->prof:Lcom/jme3/profile/AppProfiler;

    return-void
.end method

.method public setRenderBackFacesShadows(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderBackFacesShadows:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getPreShadowForcedRenderState()Lcom/jme3/material/RenderState;

    move-result-object p1

    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p1, v0, v1}, Lcom/jme3/material/RenderState;->setPolyOffset(FF)V

    invoke-virtual {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getPreShadowForcedRenderState()Lcom/jme3/material/RenderState;

    move-result-object p1

    sget-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {p1, v0}, Lcom/jme3/material/RenderState;->setFaceCullMode(Lcom/jme3/material/RenderState$FaceCullMode;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getPreShadowForcedRenderState()Lcom/jme3/material/RenderState;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/jme3/material/RenderState;->setPolyOffset(FF)V

    invoke-virtual {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getPreShadowForcedRenderState()Lcom/jme3/material/RenderState;

    move-result-object p1

    sget-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->Front:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {p1, v0}, Lcom/jme3/material/RenderState;->setFaceCullMode(Lcom/jme3/material/RenderState$FaceCullMode;)V

    :goto_0
    return-void
.end method

.method public final setShadowCompareMode(Lcom/jme3/shadow/CompareMode;)V
    .locals 7

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowCompareMode:Lcom/jme3/shadow/CompareMode;

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    sget-object v5, Lcom/jme3/shadow/CompareMode;->Hardware:Lcom/jme3/shadow/CompareMode;

    if-ne p1, v5, :cond_1

    sget-object v5, Lcom/jme3/texture/Texture$ShadowCompareMode;->LessOrEqual:Lcom/jme3/texture/Texture$ShadowCompareMode;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/Texture;->setShadowCompareMode(Lcom/jme3/texture/Texture$ShadowCompareMode;)V

    iget-object v5, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgeFilteringMode:Lcom/jme3/shadow/EdgeFilteringMode;

    sget-object v6, Lcom/jme3/shadow/EdgeFilteringMode;->Bilinear:Lcom/jme3/shadow/EdgeFilteringMode;

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    sget-object v5, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    goto :goto_1

    :cond_0
    sget-object v5, Lcom/jme3/texture/Texture$MagFilter;->Nearest:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    sget-object v5, Lcom/jme3/texture/Texture$MinFilter;->NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/jme3/texture/Texture$ShadowCompareMode;->Off:Lcom/jme3/texture/Texture$ShadowCompareMode;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/Texture;->setShadowCompareMode(Lcom/jme3/texture/Texture$ShadowCompareMode;)V

    sget-object v5, Lcom/jme3/texture/Texture$MagFilter;->Nearest:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    sget-object v5, Lcom/jme3/texture/Texture$MinFilter;->NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    sget-object v1, Lcom/jme3/shadow/CompareMode;->Hardware:Lcom/jme3/shadow/CompareMode;

    if-ne p1, v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    const-string p1, "HardwareShadows"

    invoke-virtual {v0, p1, v2}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Shadow compare mode cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setShadowIntensity(F)V
    .locals 2

    iput p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowIntensity:F

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v1, "ShadowIntensity"

    invoke-virtual {v0, v1, p1}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setShadowZExtend(F)V
    .locals 3

    iput p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->zFarOverride:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->frustumCam:Lcom/jme3/renderer/Camera;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeLength:F

    sub-float/2addr p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    invoke-virtual {v0, p1, v2}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    :cond_1
    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->frustumCam:Lcom/jme3/renderer/Camera;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;->initFrustumCam()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setShadowZFadeLength(F)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const-string v2, "FadeInfo"

    if-nez v1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    iput v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeLength:F

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    invoke-virtual {p1, v2}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->zFarOverride:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1, v0, v0}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    iput-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/jme3/math/Vector2f;

    iget v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->zFarOverride:F

    sub-float/2addr v1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, p1

    invoke-direct {v0, v1, v3}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    :goto_0
    iput p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeLength:F

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    invoke-virtual {p1, v2, v0}, Lcom/jme3/material/Material;->setVector2(Ljava/lang/String;Lcom/jme3/math/Vector2f;)V

    :goto_1
    return-void
.end method

.method public abstract updateShadowCams(Lcom/jme3/renderer/Camera;)V
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    const-string v1, "nbShadowMaps"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapSize:F

    const-string v1, "shadowMapSize"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowIntensity:F

    const-string v1, "shadowIntensity"

    const v2, 0x3f333333    # 0.7f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgeFilteringMode:Lcom/jme3/shadow/EdgeFilteringMode;

    const-string v1, "edgeFilteringMode"

    sget-object v2, Lcom/jme3/shadow/EdgeFilteringMode;->Bilinear:Lcom/jme3/shadow/EdgeFilteringMode;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowCompareMode:Lcom/jme3/shadow/CompareMode;

    const-string v1, "shadowCompareMode"

    sget-object v2, Lcom/jme3/shadow/CompareMode;->Hardware:Lcom/jme3/shadow/CompareMode;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->edgesThickness:F

    const-string v1, "edgesThickness"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
