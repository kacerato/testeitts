.class public final LJAVARuntime/Camera;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Rendering",
        "Components"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/Camera$InternalFiltering;,
        LJAVARuntime/Camera$ResolutionMode;
    }
.end annotation


# static fields
.field public static final BACKGROUND_ALPHA:I = 0x1

.field public static final BACKGROUND_SKYBOX:I = 0x0

.field public static final PROJECTION_2D:I = 0x1

.field public static final PROJECTION_3D:I


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;
    .annotation runtime LH6/g;
    .end annotation
.end field

.field private final internalFiltering:LJAVARuntime/Camera$InternalFiltering;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/Camera;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    new-instance v0, LJAVARuntime/Camera$InternalFiltering;

    invoke-direct {v0, p0}, LJAVARuntime/Camera$InternalFiltering;-><init>(LJAVARuntime/Camera;)V

    iput-object v0, p0, LJAVARuntime/Camera;->internalFiltering:LJAVARuntime/Camera$InternalFiltering;

    .line 3
    iput-object p1, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    .line 4
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method

.method private static ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;)LJAVARuntime/Camera$ResolutionMode;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/Camera$ResolutionMode;->valueOf(Ljava/lang/String;)LJAVARuntime/Camera$ResolutionMode;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/Camera$ResolutionMode;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;)Z
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "componentA",
            "componentB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-class v0, LJAVARuntime/Camera;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public determineImageResolutionPercentage()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Define the percentage of the camera image resolution."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a porcentagem da resolu\u00e7\u00e3o da imagem da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->determineImageResolutionPercentage()I

    move-result v0

    return v0
.end method

.method public getBackground()I
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera\'s background mode (Skybox or Alpha)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o modo de fundo da c\u00e2mera (Skybox ou Alpha)."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getBackgroundType()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;->Alpha:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFarPlane()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera\'s far plane."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o far plane da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFarPlane()F

    move-result v0

    return v0
.end method

.method public getFixedResolutionPixelsHeight()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the fixed resolution height in pixels."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a altura da resolu\u00e7\u00e3o fixa em pixels."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFixedResolutionPixelsHeight()I

    move-result v0

    return v0
.end method

.method public getFixedResolutionPixelsWidth()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the fixed resolution width in pixels."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a largura da resolu\u00e7\u00e3o fixa em pixels."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFixedResolutionPixelsWidth()I

    move-result v0

    return v0
.end method

.method public getFov()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera\'s field of view (FOV)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o campo de vis\u00e3o (FOV) da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFov()F

    move-result v0

    return v0
.end method

.method public getFrameBuffer()LJAVARuntime/FrameBuffer;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current framebuffer of the camera."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o framebuffer atual da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageBuffer()LTb/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageBuffer()LTb/a;

    move-result-object v0

    invoke-virtual {v0}, LTb/a;->y()LJAVARuntime/FrameBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFreeResolutionPixels()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the pixel resolution used when in free resolution mode."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a resolu\u00e7\u00e3o em pixels utilizada no modo de resolu\u00e7\u00e3o livre."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFreeResolutionPixels()I

    move-result v0

    return v0
.end method

.method public getFrustumMatrix()[F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the view frustum matrix."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a matriz de frustum de vis\u00e3o."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFrustumMatrix()[F

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHierarchyCameraMatrix()[F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the hierarchical camera matrix."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a matriz hier\u00e1rquica da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getHierarchyCameraMatrix()[F

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the image height in pixels."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a altura da imagem em pixels."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageRatio()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the aspect ratio of the image."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a propor\u00e7\u00e3o da imagem."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageRatio()F

    move-result v0

    return v0
.end method

.method public getImageWidth()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the image width in pixels."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a largura da imagem em pixels."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getInternalFiltering()LJAVARuntime/Camera$InternalFiltering;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the internal filtering controller, used to check if the camera should render specific objects. Useful for custom rendering and shaders."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o controlador de filtragem interna, usado para verificar se a c\u00e2mera deve renderizar determinados objetos. \u00datil para renderiza\u00e7\u00e3o personalizada e shaders."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Camera;->internalFiltering:LJAVARuntime/Camera$InternalFiltering;

    return-object v0
.end method

.method public getInverseFrustumMatrix()[F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the inverse view frustum matrix."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a matriz de frustum de vis\u00e3o invertida."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getInverseFrustumMatrix()[F

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInverseViewMatrix()[F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the inverse view matrix."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a matriz de vis\u00e3o invertida."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getInverseViewMatrix()[F

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayer()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera\'s rendering layer."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a camada de renderiza\u00e7\u00e3o da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getLayer()I

    move-result v0

    return v0
.end method

.method public getMinimalDistance()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the minimal render distance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia m\u00ednima de renderiza\u00e7\u00e3o."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getMinimalDistance()F

    move-result v0

    return v0
.end method

.method public getNearPlane()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera\'s near plane."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o near plane da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getNearPlane()F

    move-result v0

    return v0
.end method

.method public getObjectFilter()LJAVARuntime/CameraObjectFilter;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the object filter applied to the camera."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o filtro de objetos aplicado \u00e0 c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->b1:LJAVARuntime/CameraObjectFilter;

    return-object v0
.end method

.method public getOrthoDiameter()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the diameter of the orthographic projection (2D)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o di\u00e2metro da proje\u00e7\u00e3o ortogr\u00e1fica (2D)."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getOrtho_diameter()F

    move-result v0

    return v0
.end method

.method public getProjection()I
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera\'s projection mode (2D or 3D)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o modo de proje\u00e7\u00e3o da c\u00e2mera (2D ou 3D)."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getProjection()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Orthographic:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getProjectionMatrix()[F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera\'s projection matrix."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a matriz de proje\u00e7\u00e3o da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFrustumMatrix()[F

    move-result-object v0

    return-object v0
.end method

.method public getRectHeight()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the height of the camera\'s Rect."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a altura do Rect da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRectHeight()F

    move-result v0

    return v0
.end method

.method public getRectPosX()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the X position of the camera\'s Rect."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a posi\u00e7\u00e3o X do Rect da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRectPosX()F

    move-result v0

    return v0
.end method

.method public getRectPosY()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the Y position of the camera\'s Rect."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a posi\u00e7\u00e3o Y do Rect da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRectPosY()F

    move-result v0

    return v0
.end method

.method public getRectWidth()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the width of the camera\'s Rect."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a largura do Rect da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRectWidth()F

    move-result v0

    return v0
.end method

.method public getRenderCameraDirection()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera\'s render direction."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dire\u00e7\u00e3o de renderiza\u00e7\u00e3o da camera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraDirection()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderCameraPosition()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera\'s render position."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a posi\u00e7\u00e3o de renderiza\u00e7\u00e3o da camera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderDistance()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera\'s render distance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia de renderiza\u00e7\u00e3o da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderDistance()F

    move-result v0

    return v0
.end method

.method public getRenderPercentage()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera\'s render resolution percentage."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a porcentagem de resolu\u00e7\u00e3o da renderiza\u00e7\u00e3o da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderPercentage()F

    move-result v0

    return v0
.end method

.method public getResolutionMode()LJAVARuntime/Camera$ResolutionMode;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera\'s resolution mode."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o modo de resolu\u00e7\u00e3o."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getResolutionMode()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/Camera;->ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;)LJAVARuntime/Camera$ResolutionMode;

    move-result-object v0

    return-object v0
.end method

.method public getScaledRectHeight()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the height scale of the camera\'s Rect."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a escala da altura do Rect da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectHeight()F

    move-result v0

    return v0
.end method

.method public getScaledRectPosX()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the X position scale of the camera\'s Rect."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a escala da posi\u00e7\u00e3o X do Rect da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectPosX()F

    move-result v0

    return v0
.end method

.method public getScaledRectPosY()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the Y position scale of the camera\'s Rect."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a escala da posi\u00e7\u00e3o Y do Rect da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectPosY()F

    move-result v0

    return v0
.end method

.method public getScaledRectWidth()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the width scale of the camera\'s Rect."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a escala da largura do Rect da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectWidth()F

    move-result v0

    return v0
.end method

.method public getViewMatrix()[F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera\'s view matrix."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a matriz de vis\u00e3o da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getViewMatrix()[F

    move-result-object v0

    return-object v0
.end method

.method public isCubeVisible(FFFF)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the position with the specified cube size is visible in the camera\'s view."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a posi\u00e7\u00e3o com o tamanho do cubo especificado est\u00e1 vis\u00edvel na vis\u00e3o da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "size"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "size"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isCubeVisible(FFFF)Z

    move-result p1

    return p1
.end method

.method public isCubeVisible(LJAVARuntime/Vector3;F)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the position with the specified cube size is visible in the camera\'s view."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a posi\u00e7\u00e3o com o tamanho do cubo especificado est\u00e1 vis\u00edvel na vis\u00e3o da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "size"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "size"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isCubeVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z

    move-result p1

    return p1
.end method

.method public isPointVisible(FFF)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the specified position is visible in the camera\'s view."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a posi\u00e7\u00e3o especificada est\u00e1 vis\u00edvel na vis\u00e3o da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 4
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isPointVisible(FFF)Z

    move-result p1

    return p1
.end method

.method public isPointVisible(LJAVARuntime/SpatialObject;)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the center of the specified object is visible in the camera\'s view."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o centro do objeto especificado est\u00e1 vis\u00edvel na vis\u00e3o da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {p1}, LJAVARuntime/SpatialObject;->getGlobalPosition()LJAVARuntime/Vector3;

    move-result-object p1

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isPointVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    return p1
.end method

.method public isPointVisible(LJAVARuntime/Transform;)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the specified transform is visible in the camera\'s view."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o transform especificado est\u00e1 vis\u00edvel na vis\u00e3o da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "transform"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    const-class v1, LJAVARuntime/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJAVARuntime/Vector3;

    invoke-virtual {p1, v1}, LJAVARuntime/Transform;->getGlobalPosition(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;

    move-result-object p1

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isPointVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    return p1
.end method

.method public isPointVisible(LJAVARuntime/Vector3;)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the specified position is visible in the camera\'s view."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a posi\u00e7\u00e3o especificada est\u00e1 vis\u00edvel na vis\u00e3o da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isPointVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    return p1
.end method

.method public isSphereVisible(FFFF)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the position with the specified sphere radius is visible in the camera\'s view."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a posi\u00e7\u00e3o com o raio da esfera especificado est\u00e1 vis\u00edvel na vis\u00e3o da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "radius"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "radius"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isSphereVisible(FFFF)Z

    move-result p1

    return p1
.end method

.method public isSphereVisible(LJAVARuntime/Transform;F)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the position of the Transform with the specified sphere radius is visible in the camera\'s view."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a posi\u00e7\u00e3o do Transform com o raio da esfera especificado est\u00e1 vis\u00edvel na vis\u00e3o da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "transform",
            "radius"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transform",
            "radius"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-object p1, p1, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isSphereVisible(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;F)Z

    move-result p1

    return p1
.end method

.method public isSphereVisible(LJAVARuntime/Vector3;F)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the position with the specified sphere radius is visible in the camera\'s view."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a posi\u00e7\u00e3o com o raio da esfera especificado est\u00e1 vis\u00edvel na vis\u00e3o da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "radius"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "radius"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isSphereVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z

    move-result p1

    return p1
.end method

.method public isVisible(LJAVARuntime/ModelRenderer;)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if a model is visible in the camera\'s view."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se um modelo est\u00e1 vis\u00edvel na vis\u00e3o da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "modelRenderer"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelRenderer"
        }
    .end annotation

    .line 1
    iget-object v0, p1, LJAVARuntime/Component;->myObject:LJAVARuntime/SpatialObject;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p1, LJAVARuntime/ModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-object v1, p1, LJAVARuntime/ModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    iget-object p1, p1, LJAVARuntime/Component;->myObject:LJAVARuntime/SpatialObject;

    invoke-virtual {p1}, LJAVARuntime/SpatialObject;->getTransform()LJAVARuntime/Transform;

    move-result-object p1

    iget-object p1, p1, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isVisible(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Z

    move-result p1

    return p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "ModelRenderer should be active on an object"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isVisible(LJAVARuntime/Vertex;LJAVARuntime/SpatialObject;)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if a vertex is visible in a specified SpatialObject within the camera\'s view."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se um vertex est\u00e1 vis\u00edvel em um SpatialObject especificado na vis\u00e3o da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex",
            "object"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertex",
            "object"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-object p1, p1, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p2}, LJAVARuntime/SpatialObject;->getTransform()LJAVARuntime/Transform;

    move-result-object p2

    iget-object p2, p2, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isVisible(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Z

    move-result p1

    return p1
.end method

.method public isVisible(LJAVARuntime/Vertex;LJAVARuntime/Transform;)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if a vertex is visible at the position of a specified Transform in the camera\'s view."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se um vertex est\u00e1 vis\u00edvel na posi\u00e7\u00e3o de um Transform especificado na vis\u00e3o da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex",
            "transform"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertex",
            "transform"
        }
    .end annotation

    .line 6
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-object p1, p1, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object p2, p2, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isVisible(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Z

    move-result p1

    return p1
.end method

.method public isVisible(LJAVARuntime/Vertex;[F)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if a vertex is visible in the specified render matrix within the camera\'s view."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se um vertex est\u00e1 vis\u00edvel na matriz de renderiza\u00e7\u00e3o especificada na vis\u00e3o da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex",
            "renderMatrix"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertex",
            "renderMatrix"
        }
    .end annotation

    .line 7
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-object p1, p1, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isVisible(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[F)Z

    move-result p1

    return p1
.end method

.method public recalculateMatrices()V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Recalculates the camera matrices."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Recalcula as matrizes da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->recalculateMatrices()V

    return-void
.end method

.method public screenPointNormal(FF)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera\'s normal vector at the position of the specified coordinates."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o vetor normal da c\u00e2mera na posi\u00e7\u00e3o das coordenadas especificadas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 5
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 6
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenCoordToWorldNormal(II)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public screenPointNormal(II)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera\'s normal vector at the position of the specified coordinates."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o vetor normal da c\u00e2mera na posi\u00e7\u00e3o das coordenadas especificadas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenCoordToWorldNormal(II)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public screenPointNormal(LJAVARuntime/Point2;)LJAVARuntime/Vector3;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera\'s normal vector at the position of the specified Point2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o vetor normal da c\u00e2mera na posi\u00e7\u00e3o do Point2 especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "screenCoords"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenCoords"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 4
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {p1}, LJAVARuntime/Point2;->getX()I

    move-result v1

    invoke-virtual {p1}, LJAVARuntime/Point2;->getY()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenCoordToWorldNormal(II)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public screenPointNormal(LJAVARuntime/Vector2;)LJAVARuntime/Vector3;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera\'s normal vector at the position of the specified Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o vetor normal da c\u00e2mera na posi\u00e7\u00e3o do Vector2 especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "screenCoords"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenCoords"
        }
    .end annotation

    .line 7
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 8
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenCoordToWorldNormal(II)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public screenPointRay(FF)LJAVARuntime/RayDirection;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a ray that originates from the camera and points toward the specified coordinates."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um raio que sai da c\u00e2mera e aponta na dire\u00e7\u00e3o das coordenadas especificadas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 7
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 8
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(II)Laa/d;

    move-result-object p1

    invoke-virtual {p1}, Laa/d;->j()LJAVARuntime/RayDirection;

    move-result-object p1

    return-object p1
.end method

.method public screenPointRay(II)LJAVARuntime/RayDirection;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a ray that originates from the camera and points toward the specified coordinates."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um raio que sai da c\u00e2mera e aponta na dire\u00e7\u00e3o das coordenadas especificadas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 4
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(II)Laa/d;

    move-result-object p1

    invoke-virtual {p1}, Laa/d;->j()LJAVARuntime/RayDirection;

    move-result-object p1

    return-object p1
.end method

.method public screenPointRay(LJAVARuntime/Point2;)LJAVARuntime/RayDirection;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a ray that originates from the camera and points toward the specified Point2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um raio que sai da c\u00e2mera e aponta na dire\u00e7\u00e3o do Point2 especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "screenCoords"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenCoords"
        }
    .end annotation

    .line 5
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 6
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {p1}, LJAVARuntime/Point2;->getX()I

    move-result v1

    invoke-virtual {p1}, LJAVARuntime/Point2;->getY()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(II)Laa/d;

    move-result-object p1

    invoke-virtual {p1}, Laa/d;->j()LJAVARuntime/RayDirection;

    move-result-object p1

    return-object p1
.end method

.method public screenPointRay(LJAVARuntime/Touch;)LJAVARuntime/RayDirection;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a ray that originates from the camera and points toward the specified touch."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um raio que sai da c\u00e2mera e aponta na dire\u00e7\u00e3o do toque especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "touch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {p1}, LJAVARuntime/Touch;->getPosition()LJAVARuntime/Vector2;

    move-result-object v1

    invoke-virtual {v1}, LJAVARuntime/Vector2;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, LJAVARuntime/Touch;->getPosition()LJAVARuntime/Vector2;

    move-result-object p1

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(II)Laa/d;

    move-result-object p1

    invoke-virtual {p1}, Laa/d;->j()LJAVARuntime/RayDirection;

    move-result-object p1

    return-object p1
.end method

.method public screenPointRay(LJAVARuntime/Vector2;)LJAVARuntime/RayDirection;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a ray that originates from the camera and points toward the specified Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um raio que sai da c\u00e2mera e aponta na dire\u00e7\u00e3o do Vector2 especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "screenCoords"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenCoords"
        }
    .end annotation

    .line 9
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 10
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(II)Laa/d;

    move-result-object p1

    invoke-virtual {p1}, Laa/d;->j()LJAVARuntime/RayDirection;

    move-result-object p1

    return-object p1
.end method

.method public setBackground(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the camera\'s background mode (Skybox or Alpha)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o modo de fundo da c\u00e2mera (Skybox ou Alpha)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;->Alpha:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setBackgroundType(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;->Skybox:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setBackgroundType(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFixedResolutionPixelsHeight(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the fixed resolution height in pixels."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a altura da resolu\u00e7\u00e3o fixa em pixels."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setFixedResolutionPixelsHeight(I)V

    return-void
.end method

.method public setFixedResolutionPixelsWidth(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the fixed resolution width in pixels."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a largura da resolu\u00e7\u00e3o fixa em pixels."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setFixedResolutionPixelsWidth(I)V

    return-void
.end method

.method public setFov(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the camera\'s field of view (FOV)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o campo de vis\u00e3o (FOV) da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setFov(F)V

    return-void
.end method

.method public setFreeResolutionPixels(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the pixel resolution to be used in free resolution mode."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a resolu\u00e7\u00e3o em pixels a ser utilizada no modo de resolu\u00e7\u00e3o livre."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setFreeResolutionPixels(I)V

    return-void
.end method

.method public setLayer(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the camera\'s rendering layer."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a camada de renderiza\u00e7\u00e3o da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setLayer(I)V

    return-void
.end method

.method public setMinimalDistance(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the minimal render distance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a dist\u00e2ncia m\u00ednima de renderiza\u00e7\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setMinimalDistance(F)V

    return-void
.end method

.method public setObjectFilter(LJAVARuntime/CameraObjectFilter;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets an object filter for the camera."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define um filtro de objetos para a c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->b1:LJAVARuntime/CameraObjectFilter;

    return-void
.end method

.method public setOrthoDiameter(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the diameter of the orthographic projection (2D)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o di\u00e2metro da proje\u00e7\u00e3o ortogr\u00e1fica (2D)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setOrthoDiameter(F)V

    return-void
.end method

.method public setProjection(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the camera\'s projection mode (2D or 3D)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o modo de proje\u00e7\u00e3o da c\u00e2mera (2D ou 3D)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Orthographic:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setProjection(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setProjection(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;)V

    :goto_0
    return-void
.end method

.method public setRectHeight(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the height of the camera\'s Rect."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a altura do Rect da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectHeight(F)V

    return-void
.end method

.method public setRectPosX(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the X position of the camera\'s Rect."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a posi\u00e7\u00e3o X do Rect da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectPosX(F)V

    return-void
.end method

.method public setRectPosY(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the Y position of the camera\'s Rect."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a posi\u00e7\u00e3o Y do Rect da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectPosY(F)V

    return-void
.end method

.method public setRectWidth(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the width of the camera\'s Rect."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a largura do Rect da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectWidth(F)V

    return-void
.end method

.method public setRenderDistance(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the camera\'s render distance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a dist\u00e2ncia de renderiza\u00e7\u00e3o da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRenderDistance(F)V

    return-void
.end method

.method public setRenderPercentage(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the camera\'s render resolution percentage."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a porcentagem de resolu\u00e7\u00e3o da renderiza\u00e7\u00e3o da c\u00e2mera."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRenderPercentage(F)V

    return-void
.end method

.method public setResolutionMode(LJAVARuntime/Camera$ResolutionMode;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the camera\'s resolution mode."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o modo de resolu\u00e7\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-static {p1}, LJAVARuntime/Camera;->ENUMCONVERT(LJAVARuntime/Camera$ResolutionMode;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setResolutionMode(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;)V

    return-void
.end method

.method public takeScreenShot(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Takes a screenshot and saves it to the specified folder and filename."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tira uma captura de tela e salva na pasta e nome de arquivo especificados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "folder",
            "outputFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "folder",
            "outputFile"
        }
    .end annotation

    .line 8
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, LJAVARuntime/StringUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".png"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    new-instance v0, LJAVARuntime/File;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, LJAVARuntime/File;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 11
    invoke-virtual {v0}, LJAVARuntime/File;->isAccessible()Z

    .line 12
    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->takeScreenShot(Ljava/io/File;)V

    return-void
.end method

.method public takeScreenShot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Takes a screenshot and saves it to the specified folder and filename."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tira uma captura de tela e salva na pasta e nome de arquivo especificados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "folder",
            "outputFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "folder",
            "outputFile"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, LJAVARuntime/Camera;->takeScreenShot(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public takeScreenShot(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Takes a screenshot and saves it to the specified folder and filename. If \'bypassFileChecking\' is false, verifies if the location exists and is accessible before saving."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tira uma captura de tela e salva na pasta e nome de arquivo especificados. Se \'bypassFileChecking\' for falso, verifica se o local existe e \u00e9 acess\u00edvel antes de salvar."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "folder",
            "outputFile",
            "bypassFileChecking"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "folder",
            "outputFile",
            "bypassFileChecking"
        }
    .end annotation

    .line 2
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, LJAVARuntime/StringUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".png"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    .line 5
    new-instance p3, LJAVARuntime/File;

    const/4 v2, 0x1

    invoke-direct {p3, v0, v2}, LJAVARuntime/File;-><init>(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {p3}, LJAVARuntime/File;->isAccessible()Z

    .line 7
    :cond_0
    iget-object p3, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->takeScreenShot(Ljava/io/File;)V

    return-void
.end method

.method public worldToScreenCoordinates(LJAVARuntime/Vector3;)LJAVARuntime/Point2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Converts a world position to screen coordinates."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Converte uma posi\u00e7\u00e3o no mundo para coordenadas de tela."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "worldPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "worldPosition"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Camera;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->worldToScreenCoordinates(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    new-instance v0, LJAVARuntime/Point2;

    invoke-direct {v0, p1}, LJAVARuntime/Point2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-object v0
.end method
