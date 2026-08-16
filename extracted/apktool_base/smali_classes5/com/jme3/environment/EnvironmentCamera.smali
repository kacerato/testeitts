.class public Lcom/jme3/environment/EnvironmentCamera;
.super Lcom/jme3/app/state/BaseAppState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/environment/EnvironmentCamera$SnapshotJob;
    }
.end annotation


# static fields
.field protected static axisX:[Lcom/jme3/math/Vector3f;

.field protected static axisY:[Lcom/jme3/math/Vector3f;

.field protected static axisZ:[Lcom/jme3/math/Vector3f;


# instance fields
.field protected backGroundColor:Lcom/jme3/math/ColorRGBA;

.field protected buffers:[Ljava/nio/ByteBuffer;

.field public debugEnv:Lcom/jme3/texture/TextureCubeMap;

.field protected framebuffers:[Lcom/jme3/texture/FrameBuffer;

.field protected imageFormat:Lcom/jme3/texture/Image$Format;

.field protected images:[Lcom/jme3/texture/Image;

.field private final jobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/environment/EnvironmentCamera$SnapshotJob;",
            ">;"
        }
    .end annotation
.end field

.field protected position:Lcom/jme3/math/Vector3f;

.field protected size:I

.field protected viewports:[Lcom/jme3/renderer/ViewPort;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/jme3/math/Vector3f;

    sput-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisX:[Lcom/jme3/math/Vector3f;

    new-array v2, v0, [Lcom/jme3/math/Vector3f;

    sput-object v2, Lcom/jme3/environment/EnvironmentCamera;->axisY:[Lcom/jme3/math/Vector3f;

    new-array v0, v0, [Lcom/jme3/math/Vector3f;

    sput-object v0, Lcom/jme3/environment/EnvironmentCamera;->axisZ:[Lcom/jme3/math/Vector3f;

    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    sget-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisY:[Lcom/jme3/math/Vector3f;

    sget-object v3, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v3, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v6

    aput-object v6, v1, v4

    sget-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisZ:[Lcom/jme3/math/Vector3f;

    sget-object v6, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v7

    aput-object v7, v1, v4

    sget-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisX:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisY:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisZ:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisX:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisY:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisZ:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisX:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisY:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisZ:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisX:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    const/4 v7, 0x4

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisY:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisZ:[Lcom/jme3/math/Vector3f;

    aput-object v0, v1, v7

    sget-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisX:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisY:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v1, Lcom/jme3/environment/EnvironmentCamera;->axisZ:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    aput-object v0, v1, v4

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/app/state/BaseAppState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->imageFormat:Lcom/jme3/texture/Image$Format;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->position:Lcom/jme3/math/Vector3f;

    const/16 v0, 0x100

    .line 4
    iput v0, p0, Lcom/jme3/environment/EnvironmentCamera;->size:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->jobs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/jme3/app/state/BaseAppState;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->imageFormat:Lcom/jme3/texture/Image$Format;

    .line 8
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->position:Lcom/jme3/math/Vector3f;

    const/16 v0, 0x100

    .line 9
    iput v0, p0, Lcom/jme3/environment/EnvironmentCamera;->size:I

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->jobs:Ljava/util/List;

    .line 11
    iput p1, p0, Lcom/jme3/environment/EnvironmentCamera;->size:I

    return-void
.end method

.method public constructor <init>(ILcom/jme3/math/Vector3f;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/jme3/app/state/BaseAppState;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->imageFormat:Lcom/jme3/texture/Image$Format;

    .line 14
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->position:Lcom/jme3/math/Vector3f;

    const/16 v0, 0x100

    .line 15
    iput v0, p0, Lcom/jme3/environment/EnvironmentCamera;->size:I

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->jobs:Ljava/util/List;

    .line 17
    iput p1, p0, Lcom/jme3/environment/EnvironmentCamera;->size:I

    .line 18
    iget-object p1, p0, Lcom/jme3/environment/EnvironmentCamera;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(ILcom/jme3/math/Vector3f;Lcom/jme3/texture/Image$Format;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/jme3/app/state/BaseAppState;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->imageFormat:Lcom/jme3/texture/Image$Format;

    .line 21
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->position:Lcom/jme3/math/Vector3f;

    const/16 v0, 0x100

    .line 22
    iput v0, p0, Lcom/jme3/environment/EnvironmentCamera;->size:I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->jobs:Ljava/util/List;

    .line 24
    iput p1, p0, Lcom/jme3/environment/EnvironmentCamera;->size:I

    .line 25
    iget-object p1, p0, Lcom/jme3/environment/EnvironmentCamera;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 26
    iput-object p3, p0, Lcom/jme3/environment/EnvironmentCamera;->imageFormat:Lcom/jme3/texture/Image$Format;

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/environment/EnvironmentCamera;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/jme3/environment/EnvironmentCamera;->jobs:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public cleanup(Lcom/jme3/app/Application;)V
    .locals 4

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/environment/EnvironmentCamera;->backGroundColor:Lcom/jme3/math/ColorRGBA;

    iget-object p1, p0, Lcom/jme3/environment/EnvironmentCamera;->framebuffers:[Lcom/jme3/texture/FrameBuffer;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/jme3/util/NativeObject;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/environment/EnvironmentCamera;->images:[Lcom/jme3/texture/Image;

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/jme3/util/NativeObject;->dispose()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public createOffCamera(ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/renderer/Camera;
    .locals 1

    new-instance v0, Lcom/jme3/renderer/Camera;

    invoke-direct {v0, p1, p1}, Lcom/jme3/renderer/Camera;-><init>(II)V

    invoke-virtual {v0, p2}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0, p3, p4, p5}, Lcom/jme3/renderer/Camera;->setAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    const p1, 0x3dcccccd    # 0.1f

    const/high16 p2, 0x447a0000    # 1000.0f

    const/high16 p3, 0x42b40000    # 90.0f

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {v0, p3, p4, p1, p2}, Lcom/jme3/renderer/Camera;->setFrustumPerspective(FFFF)V

    iget-object p1, p0, Lcom/jme3/environment/EnvironmentCamera;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    return-object v0
.end method

.method public createOffScreenFrameBuffer(ILcom/jme3/renderer/ViewPort;)Lcom/jme3/texture/FrameBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object v0

    invoke-interface {v0}, Lcom/jme3/app/Application;->getRenderManager()Lcom/jme3/renderer/RenderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/environment/EnvironmentCamera;->getDepthFormat(Lcom/jme3/renderer/Renderer;)Lcom/jme3/texture/Image$Format;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/environment/EnvironmentCamera;->createOffScreenFrameBuffer(ILcom/jme3/renderer/ViewPort;Lcom/jme3/texture/Image$Format;)Lcom/jme3/texture/FrameBuffer;

    move-result-object p1

    return-object p1
.end method

.method public createOffScreenFrameBuffer(ILcom/jme3/renderer/ViewPort;Lcom/jme3/texture/Image$Format;)Lcom/jme3/texture/FrameBuffer;
    .locals 2

    .line 3
    new-instance v0, Lcom/jme3/texture/FrameBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p1, v1}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/jme3/texture/FrameBuffer;->setDepthBuffer(Lcom/jme3/texture/Image$Format;)V

    .line 5
    invoke-virtual {p2, v0}, Lcom/jme3/renderer/ViewPort;->setOutputFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    return-object v0
.end method

.method public createOffViewPort(Ljava/lang/String;Lcom/jme3/renderer/Camera;)Lcom/jme3/renderer/ViewPort;
    .locals 1

    new-instance v0, Lcom/jme3/renderer/ViewPort;

    invoke-direct {v0, p1, p2}, Lcom/jme3/renderer/ViewPort;-><init>(Ljava/lang/String;Lcom/jme3/renderer/Camera;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, p1, p1}, Lcom/jme3/renderer/ViewPort;->setClearFlags(ZZZ)V

    iget-object p1, p0, Lcom/jme3/environment/EnvironmentCamera;->backGroundColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/ViewPort;->setBackgroundColor(Lcom/jme3/math/ColorRGBA;)V

    return-object v0
.end method

.method public getDepthFormat(Lcom/jme3/renderer/Renderer;)Lcom/jme3/texture/Image$Format;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0}, Lcom/jme3/renderer/Renderer;->getBestDepthTargetFormat(ZZZ)Lcom/jme3/texture/Image$Format;

    move-result-object p1

    return-object p1
.end method

.method public getImageFormat()Lcom/jme3/texture/Image$Format;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->imageFormat:Lcom/jme3/texture/Image$Format;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object v0

    invoke-interface {v0}, Lcom/jme3/app/Application;->getRenderManager()Lcom/jme3/renderer/RenderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/environment/EnvironmentCamera;->getImageFormat(Lcom/jme3/renderer/Renderer;)Lcom/jme3/texture/Image$Format;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->imageFormat:Lcom/jme3/texture/Image$Format;

    return-object v0
.end method

.method public getImageFormat(Lcom/jme3/renderer/Renderer;)Lcom/jme3/texture/Image$Format;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->imageFormat:Lcom/jme3/texture/Image$Format;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-interface {p1, v0, v1, v1}, Lcom/jme3/renderer/Renderer;->getBestColorTargetFormat(ZZZ)Lcom/jme3/texture/Image$Format;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/environment/EnvironmentCamera;->imageFormat:Lcom/jme3/texture/Image$Format;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/jme3/environment/EnvironmentCamera;->imageFormat:Lcom/jme3/texture/Image$Format;

    return-object p1
.end method

.method public getPosition()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->position:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/jme3/environment/EnvironmentCamera;->size:I

    return v0
.end method

.method public getViewPorts()[Lcom/jme3/renderer/ViewPort;
    .locals 1

    iget-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->viewports:[Lcom/jme3/renderer/ViewPort;

    return-object v0
.end method

.method public initialize(Lcom/jme3/app/Application;)V
    .locals 10

    invoke-interface {p1}, Lcom/jme3/app/Application;->getViewPort()Lcom/jme3/renderer/ViewPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getBackgroundColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->backGroundColor:Lcom/jme3/math/ColorRGBA;

    invoke-interface {p1}, Lcom/jme3/app/Application;->getRenderManager()Lcom/jme3/renderer/RenderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/environment/EnvironmentCamera;->getImageFormat(Lcom/jme3/renderer/Renderer;)Lcom/jme3/texture/Image$Format;

    move-result-object p1

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/jme3/renderer/Camera;

    new-array v2, v0, [Lcom/jme3/texture/Texture2D;

    new-array v3, v0, [Lcom/jme3/renderer/ViewPort;

    iput-object v3, p0, Lcom/jme3/environment/EnvironmentCamera;->viewports:[Lcom/jme3/renderer/ViewPort;

    new-array v3, v0, [Lcom/jme3/texture/FrameBuffer;

    iput-object v3, p0, Lcom/jme3/environment/EnvironmentCamera;->framebuffers:[Lcom/jme3/texture/FrameBuffer;

    new-array v3, v0, [Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lcom/jme3/environment/EnvironmentCamera;->buffers:[Ljava/nio/ByteBuffer;

    new-array v3, v0, [Lcom/jme3/texture/Image;

    iput-object v3, p0, Lcom/jme3/environment/EnvironmentCamera;->images:[Lcom/jme3/texture/Image;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget v5, p0, Lcom/jme3/environment/EnvironmentCamera;->size:I

    iget-object v6, p0, Lcom/jme3/environment/EnvironmentCamera;->position:Lcom/jme3/math/Vector3f;

    sget-object v4, Lcom/jme3/environment/EnvironmentCamera;->axisX:[Lcom/jme3/math/Vector3f;

    aget-object v7, v4, v3

    sget-object v4, Lcom/jme3/environment/EnvironmentCamera;->axisY:[Lcom/jme3/math/Vector3f;

    aget-object v8, v4, v3

    sget-object v4, Lcom/jme3/environment/EnvironmentCamera;->axisZ:[Lcom/jme3/math/Vector3f;

    aget-object v9, v4, v3

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/jme3/environment/EnvironmentCamera;->createOffCamera(ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/renderer/Camera;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/jme3/environment/EnvironmentCamera;->viewports:[Lcom/jme3/renderer/ViewPort;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnvView"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-virtual {p0, v5, v6}, Lcom/jme3/environment/EnvironmentCamera;->createOffViewPort(Ljava/lang/String;Lcom/jme3/renderer/Camera;)Lcom/jme3/renderer/ViewPort;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v4, p0, Lcom/jme3/environment/EnvironmentCamera;->framebuffers:[Lcom/jme3/texture/FrameBuffer;

    iget v5, p0, Lcom/jme3/environment/EnvironmentCamera;->size:I

    iget-object v6, p0, Lcom/jme3/environment/EnvironmentCamera;->viewports:[Lcom/jme3/renderer/ViewPort;

    aget-object v6, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/jme3/environment/EnvironmentCamera;->createOffScreenFrameBuffer(ILcom/jme3/renderer/ViewPort;)Lcom/jme3/texture/FrameBuffer;

    move-result-object v5

    aput-object v5, v4, v3

    new-instance v4, Lcom/jme3/texture/Texture2D;

    iget v5, p0, Lcom/jme3/environment/EnvironmentCamera;->size:I

    invoke-direct {v4, v5, v5, p1}, Lcom/jme3/texture/Texture2D;-><init>(IILcom/jme3/texture/Image$Format;)V

    aput-object v4, v2, v3

    iget-object v5, p0, Lcom/jme3/environment/EnvironmentCamera;->framebuffers:[Lcom/jme3/texture/FrameBuffer;

    aget-object v5, v5, v3

    invoke-virtual {v5, v4}, Lcom/jme3/texture/FrameBuffer;->setColorTexture(Lcom/jme3/texture/Texture2D;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isBusy()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->jobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onDisable()V
    .locals 0

    return-void
.end method

.method public onEnable()V
    .locals 0

    return-void
.end method

.method public rebuild()V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/environment/EnvironmentCamera;->cleanup(Lcom/jme3/app/Application;)V

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/environment/EnvironmentCamera;->initialize(Lcom/jme3/app/Application;)V

    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;)V
    .locals 12

    invoke-virtual {p0}, Lcom/jme3/environment/EnvironmentCamera;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->jobs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/environment/EnvironmentCamera$SnapshotJob;

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jme3/environment/EnvironmentCamera;->getImageFormat(Lcom/jme3/renderer/Renderer;)Lcom/jme3/texture/Image$Format;

    move-result-object v9

    move v2, v1

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/jme3/environment/EnvironmentCamera;->viewports:[Lcom/jme3/renderer/ViewPort;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/jme3/renderer/ViewPort;->clearScenes()V

    iget-object v3, p0, Lcom/jme3/environment/EnvironmentCamera;->viewports:[Lcom/jme3/renderer/ViewPort;

    aget-object v3, v3, v2

    iget-object v4, v0, Lcom/jme3/environment/EnvironmentCamera$SnapshotJob;->scene:Lcom/jme3/scene/Spatial;

    invoke-virtual {v3, v4}, Lcom/jme3/renderer/ViewPort;->attachScene(Lcom/jme3/scene/Spatial;)V

    iget-object v3, p0, Lcom/jme3/environment/EnvironmentCamera;->viewports:[Lcom/jme3/renderer/ViewPort;

    aget-object v3, v3, v2

    const v4, 0x3e23d70a    # 0.16f

    invoke-virtual {p1, v3, v4}, Lcom/jme3/renderer/RenderManager;->renderViewPort(Lcom/jme3/renderer/ViewPort;F)V

    iget-object v3, p0, Lcom/jme3/environment/EnvironmentCamera;->buffers:[Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/jme3/environment/EnvironmentCamera;->size:I

    mul-int/2addr v4, v4

    invoke-virtual {v9}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v5

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x8

    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/environment/EnvironmentCamera;->framebuffers:[Lcom/jme3/texture/FrameBuffer;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/jme3/environment/EnvironmentCamera;->buffers:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v2

    invoke-interface {v3, v4, v5, v9}, Lcom/jme3/renderer/Renderer;->readFrameBufferWithFormat(Lcom/jme3/texture/FrameBuffer;Ljava/nio/ByteBuffer;Lcom/jme3/texture/Image$Format;)V

    iget-object v10, p0, Lcom/jme3/environment/EnvironmentCamera;->images:[Lcom/jme3/texture/Image;

    new-instance v11, Lcom/jme3/texture/Image;

    iget v6, p0, Lcom/jme3/environment/EnvironmentCamera;->size:I

    iget-object v3, p0, Lcom/jme3/environment/EnvironmentCamera;->buffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v3, v2

    sget-object v8, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    move-object v3, v11

    move-object v4, v9

    move v5, v6

    invoke-direct/range {v3 .. v8}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;Lcom/jme3/texture/image/ColorSpace;)V

    aput-object v11, v10, v2

    iget-object v3, p0, Lcom/jme3/environment/EnvironmentCamera;->images:[Lcom/jme3/texture/Image;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/jme3/util/MipMapGenerator;->generateMipMaps(Lcom/jme3/texture/Image;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/environment/EnvironmentCamera;->images:[Lcom/jme3/texture/Image;

    aget-object v3, p1, v1

    const/4 v2, 0x1

    aget-object v4, p1, v2

    const/4 v2, 0x2

    aget-object v5, p1, v2

    const/4 v2, 0x3

    aget-object v6, p1, v2

    const/4 v2, 0x4

    aget-object v7, p1, v2

    const/4 v2, 0x5

    aget-object v8, p1, v2

    invoke-static/range {v3 .. v9}, Lcom/jme3/environment/util/EnvMapUtils;->makeCubeMap(Lcom/jme3/texture/Image;Lcom/jme3/texture/Image;Lcom/jme3/texture/Image;Lcom/jme3/texture/Image;Lcom/jme3/texture/Image;Lcom/jme3/texture/Image;Lcom/jme3/texture/Image$Format;)Lcom/jme3/texture/TextureCubeMap;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/environment/EnvironmentCamera;->debugEnv:Lcom/jme3/texture/TextureCubeMap;

    iget-object v0, v0, Lcom/jme3/environment/EnvironmentCamera$SnapshotJob;->callback:Lcom/jme3/environment/generation/JobProgressListener;

    invoke-interface {v0, p1}, Lcom/jme3/environment/generation/JobProgressListener;->done(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->dispose()V

    iget-object p1, p0, Lcom/jme3/environment/EnvironmentCamera;->jobs:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setBackGroundColor(Lcom/jme3/math/ColorRGBA;)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->backGroundColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/environment/EnvironmentCamera;->viewports:[Lcom/jme3/renderer/ViewPort;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/jme3/renderer/ViewPort;->setBackgroundColor(Lcom/jme3/math/ColorRGBA;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The EnvironmentCamera is uninitialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPosition(Lcom/jme3/math/Vector3f;)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/environment/EnvironmentCamera;->viewports:[Lcom/jme3/renderer/ViewPort;

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/environment/EnvironmentCamera;->size:I

    invoke-virtual {p0}, Lcom/jme3/environment/EnvironmentCamera;->rebuild()V

    return-void
.end method

.method public snapshot(Lcom/jme3/scene/Spatial;Lcom/jme3/environment/generation/JobProgressListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            "Lcom/jme3/environment/generation/JobProgressListener<",
            "Lcom/jme3/texture/TextureCubeMap;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object v0

    new-instance v1, Lcom/jme3/environment/EnvironmentCamera$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/jme3/environment/EnvironmentCamera$1;-><init>(Lcom/jme3/environment/EnvironmentCamera;Lcom/jme3/environment/generation/JobProgressListener;Lcom/jme3/scene/Spatial;)V

    invoke-interface {v0, v1}, Lcom/jme3/app/Application;->enqueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method
