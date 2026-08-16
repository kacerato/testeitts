.class public Lcom/jme3/shadow/SdsmFitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/shadow/SdsmFitter$InternalShaders;,
        Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;,
        Lcom/jme3/shadow/SdsmFitter$FitParameters;,
        Lcom/jme3/shadow/SdsmFitter$SplitFitResult;,
        Lcom/jme3/shadow/SdsmFitter$SplitFit;,
        Lcom/jme3/shadow/SdsmFitter$SplitInfo;,
        Lcom/jme3/shadow/SdsmFitter$SplitBounds;
    }
.end annotation


# static fields
.field private static final FIT_FRUSTUMS_SHADER:Ljava/lang/String; = "Common/MatDefs/Shadow/Sdsm/FitLightFrustums.comp"

.field private static final FIT_FRUSTUM_INIT:[I

.field private static final REDUCE_DEPTH_SHADER:Ljava/lang/String; = "Common/MatDefs/Shadow/Sdsm/ReduceDepth.comp"


# instance fields
.field private final assetManager:Lcom/jme3/asset/AssetManager;

.field private final gl4:Lcom/jme3/renderer/opengl/GL4;

.field private maxFrameLag:I

.field private readyToYield:Lcom/jme3/shadow/SdsmFitter$SplitFitResult;

.field private final renderer:Lcom/jme3/renderer/Renderer;

.field private final resultHoldersInFlight:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final resultHoldersReady:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;",
            ">;"
        }
    .end annotation
.end field

.field private shadersMultisampling:Lcom/jme3/shadow/SdsmFitter$InternalShaders;

.field private shadersNoMultisampling:Lcom/jme3/shadow/SdsmFitter$InternalShaders;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/shadow/SdsmFitter;->FIT_FRUSTUM_INIT:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/jme3/shadow/SdsmFitter;->FIT_FRUSTUM_INIT:[I

    mul-int/lit8 v4, v1, 0x4

    aput v3, v2, v4

    add-int/lit8 v5, v4, 0x1

    aput v3, v2, v5

    add-int/lit8 v3, v4, 0x2

    aput v0, v2, v3

    add-int/lit8 v4, v4, 0x3

    aput v0, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    sget-object v4, Lcom/jme3/shadow/SdsmFitter;->FIT_FRUSTUM_INIT:[I

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v6, v5, 0x10

    aput v3, v4, v6

    add-int/lit8 v5, v5, 0x11

    aput v0, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/jme3/shadow/SdsmFitter;->FIT_FRUSTUM_INIT:[I

    const/16 v2, 0x18

    aput v3, v1, v2

    const/16 v2, 0x19

    aput v0, v1, v2

    move v1, v0

    :goto_2
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/jme3/shadow/SdsmFitter;->FIT_FRUSTUM_INIT:[I

    add-int/lit8 v3, v1, 0x1a

    aput v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/opengl/GL4;Lcom/jme3/renderer/Renderer;Lcom/jme3/asset/AssetManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/jme3/shadow/SdsmFitter;->maxFrameLag:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shadow/SdsmFitter;->resultHoldersInFlight:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shadow/SdsmFitter;->resultHoldersReady:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/jme3/shadow/SdsmFitter;->gl4:Lcom/jme3/renderer/opengl/GL4;

    iput-object p2, p0, Lcom/jme3/shadow/SdsmFitter;->renderer:Lcom/jme3/renderer/Renderer;

    iput-object p3, p0, Lcom/jme3/shadow/SdsmFitter;->assetManager:Lcom/jme3/asset/AssetManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/shadow/SdsmFitter;)Lcom/jme3/renderer/opengl/GL4;
    .locals 0

    iget-object p0, p0, Lcom/jme3/shadow/SdsmFitter;->gl4:Lcom/jme3/renderer/opengl/GL4;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/jme3/shadow/SdsmFitter;)Lcom/jme3/renderer/Renderer;
    .locals 0

    iget-object p0, p0, Lcom/jme3/shadow/SdsmFitter;->renderer:Lcom/jme3/renderer/Renderer;

    return-object p0
.end method

.method public static synthetic access$200(I)F
    .locals 0

    invoke-static {p0}, Lcom/jme3/shadow/SdsmFitter;->uintFlip(I)F

    move-result p0

    return p0
.end method

.method public static synthetic access$300(FFF)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jme3/shadow/SdsmFitter;->getProjectionToViewZ(FFF)F

    move-result p0

    return p0
.end method

.method private static divRoundUp(II)I
    .locals 0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, p1

    return p0
.end method

.method private static getProjectionToViewZ(FFF)F
    .locals 2

    sub-float v0, p1, p0

    div-float v0, p1, v0

    mul-float v1, p1, p0

    sub-float/2addr p0, p1

    div-float/2addr v1, p0

    sub-float/2addr p2, v0

    div-float/2addr v1, p2

    return v1
.end method

.method private getResultHolderForUse()Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;
    .locals 2

    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter;->resultHoldersReady:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter;->resultHoldersReady:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter;->resultHoldersInFlight:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/jme3/shadow/SdsmFitter;->maxFrameLag:I

    if-gt v0, v1, :cond_1

    new-instance v0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;

    invoke-direct {v0, p0}, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;-><init>(Lcom/jme3/shadow/SdsmFitter;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter;->resultHoldersInFlight:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->isReady(Z)Z

    invoke-virtual {v0}, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->extract()Lcom/jme3/shadow/SdsmFitter$SplitFitResult;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shadow/SdsmFitter;->readyToYield:Lcom/jme3/shadow/SdsmFitter$SplitFitResult;

    return-object v0
.end method

.method private initShaders(Lcom/jme3/texture/Texture;)Lcom/jme3/shadow/SdsmFitter$InternalShaders;
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/jme3/shadow/SdsmFitter;->shadersMultisampling:Lcom/jme3/shadow/SdsmFitter$InternalShaders;

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/shadow/SdsmFitter$InternalShaders;

    iget-object v1, p0, Lcom/jme3/shadow/SdsmFitter;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-direct {p1, p0, v1, v0}, Lcom/jme3/shadow/SdsmFitter$InternalShaders;-><init>(Lcom/jme3/shadow/SdsmFitter;Lcom/jme3/asset/AssetManager;Z)V

    iput-object p1, p0, Lcom/jme3/shadow/SdsmFitter;->shadersMultisampling:Lcom/jme3/shadow/SdsmFitter$InternalShaders;

    :cond_0
    iget-object p1, p0, Lcom/jme3/shadow/SdsmFitter;->shadersMultisampling:Lcom/jme3/shadow/SdsmFitter$InternalShaders;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/jme3/shadow/SdsmFitter;->shadersNoMultisampling:Lcom/jme3/shadow/SdsmFitter$InternalShaders;

    if-nez p1, :cond_2

    new-instance p1, Lcom/jme3/shadow/SdsmFitter$InternalShaders;

    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter;->assetManager:Lcom/jme3/asset/AssetManager;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/jme3/shadow/SdsmFitter$InternalShaders;-><init>(Lcom/jme3/shadow/SdsmFitter;Lcom/jme3/asset/AssetManager;Z)V

    iput-object p1, p0, Lcom/jme3/shadow/SdsmFitter;->shadersNoMultisampling:Lcom/jme3/shadow/SdsmFitter$InternalShaders;

    :cond_2
    iget-object p1, p0, Lcom/jme3/shadow/SdsmFitter;->shadersNoMultisampling:Lcom/jme3/shadow/SdsmFitter$InternalShaders;

    return-object p1
.end method

.method private static uintFlip(I)F
    .locals 2

    const/high16 v0, -0x80000000

    and-int v1, p0, v0

    if-eqz v1, :cond_0

    xor-int/2addr p0, v0

    goto :goto_0

    :cond_0
    not-int p0, p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter;->resultHoldersInFlight:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;

    invoke-virtual {v1}, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->cleanup()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter;->resultHoldersInFlight:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter;->resultHoldersReady:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;

    invoke-virtual {v1}, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->cleanup()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter;->resultHoldersReady:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter;->shadersMultisampling:Lcom/jme3/shadow/SdsmFitter$InternalShaders;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/jme3/shadow/SdsmFitter;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-virtual {v0, v1}, Lcom/jme3/shadow/SdsmFitter$InternalShaders;->cleanup(Lcom/jme3/renderer/Renderer;)V

    :cond_2
    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter;->shadersNoMultisampling:Lcom/jme3/shadow/SdsmFitter$InternalShaders;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/jme3/shadow/SdsmFitter;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-virtual {v0, v1}, Lcom/jme3/shadow/SdsmFitter$InternalShaders;->cleanup(Lcom/jme3/renderer/Renderer;)V

    :cond_3
    return-void
.end method

.method public fit(Lcom/jme3/texture/Texture;ILcom/jme3/math/Matrix4f;FF)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v6

    invoke-direct/range {p0 .. p1}, Lcom/jme3/shadow/SdsmFitter;->initShaders(Lcom/jme3/texture/Texture;)Lcom/jme3/shadow/SdsmFitter$InternalShaders;

    move-result-object v7

    iget-object v8, v7, Lcom/jme3/shadow/SdsmFitter$InternalShaders;->depthReduceShader:Lcom/jme3/renderer/opengl/ComputeShader;

    iget-object v7, v7, Lcom/jme3/shadow/SdsmFitter$InternalShaders;->fitFrustumsShader:Lcom/jme3/renderer/opengl/ComputeShader;

    invoke-direct/range {p0 .. p0}, Lcom/jme3/shadow/SdsmFitter;->getResultHolderForUse()Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;

    move-result-object v9

    new-instance v10, Lcom/jme3/shadow/SdsmFitter$FitParameters;

    invoke-direct {v10, v3, v2, v4, v5}, Lcom/jme3/shadow/SdsmFitter$FitParameters;-><init>(Lcom/jme3/math/Matrix4f;IFF)V

    iput-object v10, v9, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->parameters:Lcom/jme3/shadow/SdsmFitter$FitParameters;

    iget-object v10, v1, Lcom/jme3/shadow/SdsmFitter;->gl4:Lcom/jme3/renderer/opengl/GL4;

    const/16 v11, 0x8

    invoke-interface {v10, v11}, Lcom/jme3/renderer/opengl/GL4;->glMemoryBarrier(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v11

    const/16 v12, 0x20

    invoke-static {v10, v12}, Lcom/jme3/shadow/SdsmFitter;->divRoundUp(II)I

    move-result v10

    invoke-static {v11, v12}, Lcom/jme3/shadow/SdsmFitter;->divRoundUp(II)I

    move-result v11

    const/4 v12, 0x2

    if-lt v10, v12, :cond_0

    iget-object v13, v9, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->minMaxDepthSsbo:Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

    const/4 v14, -0x1

    const/4 v15, 0x0

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->initialize([I)V

    invoke-virtual {v8}, Lcom/jme3/renderer/opengl/ComputeShader;->makeActive()V

    :try_start_0
    iget-object v13, v1, Lcom/jme3/shadow/SdsmFitter;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v13, v15, v0}, Lcom/jme3/renderer/Renderer;->setTexture(ILcom/jme3/texture/Texture;)V
    :try_end_0
    .catch Lcom/jme3/renderer/TextureUnitException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v13, "m_NumSamplesDepth"

    invoke-virtual {v8, v13}, Lcom/jme3/renderer/opengl/ComputeShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v8, v14, v6}, Lcom/jme3/renderer/opengl/ComputeShader;->setUniform(II)V

    iget-object v14, v9, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->minMaxDepthSsbo:Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

    const/4 v12, 0x1

    invoke-virtual {v8, v12, v14}, Lcom/jme3/renderer/opengl/ComputeShader;->bindShaderStorageBuffer(ILcom/jme3/renderer/opengl/ShaderStorageBufferObject;)V

    invoke-virtual {v8, v10, v11, v12}, Lcom/jme3/renderer/opengl/ComputeShader;->dispatch(III)V

    iget-object v8, v1, Lcom/jme3/shadow/SdsmFitter;->gl4:Lcom/jme3/renderer/opengl/GL4;

    const/16 v14, 0x2000

    invoke-interface {v8, v14}, Lcom/jme3/renderer/opengl/GL4;->glMemoryBarrier(I)V

    iget-object v8, v9, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->fitFrustumSsbo:Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

    sget-object v14, Lcom/jme3/shadow/SdsmFitter;->FIT_FRUSTUM_INIT:[I

    invoke-virtual {v8, v14}, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->initialize([I)V

    invoke-virtual {v7}, Lcom/jme3/renderer/opengl/ComputeShader;->makeActive()V

    :try_start_1
    iget-object v8, v1, Lcom/jme3/shadow/SdsmFitter;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v8, v15, v0}, Lcom/jme3/renderer/Renderer;->setTexture(ILcom/jme3/texture/Texture;)V
    :try_end_1
    .catch Lcom/jme3/renderer/TextureUnitException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v7, v13}, Lcom/jme3/renderer/opengl/ComputeShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0, v6}, Lcom/jme3/renderer/opengl/ComputeShader;->setUniform(II)V

    iget-object v0, v9, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->minMaxDepthSsbo:Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

    invoke-virtual {v7, v12, v0}, Lcom/jme3/renderer/opengl/ComputeShader;->bindShaderStorageBuffer(ILcom/jme3/renderer/opengl/ShaderStorageBufferObject;)V

    iget-object v0, v9, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->fitFrustumSsbo:Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

    const/4 v6, 0x2

    invoke-virtual {v7, v6, v0}, Lcom/jme3/renderer/opengl/ComputeShader;->bindShaderStorageBuffer(ILcom/jme3/renderer/opengl/ShaderStorageBufferObject;)V

    const/4 v0, 0x3

    invoke-virtual {v7, v0, v3}, Lcom/jme3/renderer/opengl/ComputeShader;->setUniform(ILcom/jme3/math/Matrix4f;)V

    const/4 v0, 0x4

    invoke-virtual {v7, v0, v2}, Lcom/jme3/renderer/opengl/ComputeShader;->setUniform(II)V

    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0, v4, v5}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    const/4 v2, 0x5

    invoke-virtual {v7, v2, v0}, Lcom/jme3/renderer/opengl/ComputeShader;->setUniform(ILcom/jme3/math/Vector2f;)V

    const/4 v0, 0x6

    const v2, 0x3d4ccccd    # 0.05f

    invoke-virtual {v7, v0, v2}, Lcom/jme3/renderer/opengl/ComputeShader;->setUniform(IF)V

    invoke-virtual {v7, v10, v11, v12}, Lcom/jme3/renderer/opengl/ComputeShader;->dispatch(III)V

    iget-object v0, v1, Lcom/jme3/shadow/SdsmFitter;->gl4:Lcom/jme3/renderer/opengl/GL4;

    const/16 v2, 0x2000

    invoke-interface {v0, v2}, Lcom/jme3/renderer/opengl/GL4;->glMemoryBarrier(I)V

    iget-object v0, v1, Lcom/jme3/shadow/SdsmFitter;->gl4:Lcom/jme3/renderer/opengl/GL4;

    const v2, 0x9117

    invoke-interface {v0, v2, v15}, Lcom/jme3/renderer/opengl/GL4;->glFenceSync(II)Lcom/jme3/renderer/opengl/GLFence;

    move-result-object v0

    iget-object v2, v1, Lcom/jme3/shadow/SdsmFitter;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v2, v0}, Lcom/jme3/renderer/Renderer;->registerNativeObject(Lcom/jme3/util/NativeObject;)V

    iput-object v0, v9, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->fence:Lcom/jme3/renderer/opengl/GLFence;

    iget-object v0, v1, Lcom/jme3/shadow/SdsmFitter;->resultHoldersInFlight:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/jme3/renderer/RendererException;

    invoke-direct {v2, v0}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Lcom/jme3/renderer/RendererException;

    invoke-direct {v2, v0}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :cond_0
    new-instance v0, Lcom/jme3/renderer/RendererException;

    const-string v2, "Depth texture too small for SDSM fit"

    invoke-direct {v0, v2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResult(Z)Lcom/jme3/shadow/SdsmFitter$SplitFitResult;
    .locals 4

    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter;->readyToYield:Lcom/jme3/shadow/SdsmFitter$SplitFitResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/jme3/shadow/SdsmFitter;->readyToYield:Lcom/jme3/shadow/SdsmFitter$SplitFitResult;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter;->resultHoldersInFlight:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->isReady(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v2}, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->extract()Lcom/jme3/shadow/SdsmFitter$SplitFitResult;

    move-result-object v1

    iget-object v3, p0, Lcom/jme3/shadow/SdsmFitter;->resultHoldersReady:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public setMaxFrameLag(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/shadow/SdsmFitter;->maxFrameLag:I

    return-void
.end method
