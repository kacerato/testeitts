.class final Lcom/threed/jpct/GLRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AGGREGATE_BLITS:Z = true

.field private static COLOR_INV:F = 0.003921569f

.field private static final VERTEX_ARRAY_SIZE:I = 0x258

.field private static modeMap:[I

.field private static rendererID:I

.field private static stageMap:[I


# instance fields
.field private ambient:[F

.field private blending:Z

.field private blitAdditive:Z

.field private blitBuffer:Lcom/threed/jpct/Texture;

.field private blitBufferHeight:I

.field private blitBufferWidth:I

.field private blitCoords1:Lcom/threed/jpct/SimpleVector;

.field private blitCoords2:Lcom/threed/jpct/SimpleVector;

.field private blitMode:Z

.field private blitScaling:I

.field private blitTrans:Z

.field private cameraMatrix:[F

.field private colPos:I

.field private colorArray:[I

.field private colors:Ljava/nio/IntBuffer;

.field private cols:[F

.field private curPos:I

.field private currentFogColor:I

.field private currentFogDistance:F

.field private currentFoggingState:Z

.field private currentRGBScaling:I

.field private depthBuffer:Z

.field private disposed:Z

.field protected dumpy:[F

.field private enabledStages:[Z

.field private extensions:Ljava/lang/String;

.field private fogColors:Ljava/nio/FloatBuffer;

.field gl10:Ljavax/microedition/khronos/opengles/GL10;

.field gl11:Ljavax/microedition/khronos/opengles/GL11;

.field gl20:Z

.field private gl20Handler:Lcom/threed/jpct/GL20Handler;

.field private hasToReEnable:Z

.field private indexArray:[S

.field private indexPos:I

.field private indices:Ljava/nio/ShortBuffer;

.field private init:Z

.field private lastActivatedStage:I

.field private lastCoords:I

.field private lastFOV:F

.field private lastFOVMode:Z

.field private lastFarPlane:F

.field private lastMode:[I

.field private lastMultiModes:[I

.field private lastMultiTextures:[I

.field private lastNearPlane:F

.field private lastTexture:I

.field lastTextures:[I

.field private lastTransMode:I

.field private lastWorldHash:I

.field lineCol:[F

.field private lineColorShader:Lcom/threed/jpct/GLSLShader;

.field private listener:Lcom/threed/jpct/IPaintListener;

.field private listenerActive:Z

.field protected matrixCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/threed/jpct/Object3D;",
            "[F>;"
        }
    .end annotation
.end field

.field private maxStages:I

.field private minDriverAndConfig:I

.field private mipmapsByGpu:Z

.field private moMat:Lcom/threed/jpct/Matrix;

.field myID:I

.field private myWorld:Lcom/threed/jpct/World;

.field private pixelBuffer:Ljava/nio/IntBuffer;

.field private pixelBufferSize:I

.field private renderTarget:Lcom/threed/jpct/Texture;

.field private scissorClearAll:Z

.field private scissorEnabled:Z

.field private singleTexturing:Z

.field private smallBuffer:[Ljava/nio/IntBuffer;

.field private stageInitialized:[Z

.field private stateChanges:I

.field private texMan:Lcom/threed/jpct/TextureManager;

.field private texPos:I

.field private textureArray:[I

.field private textureMatrixSet:Z

.field private textureScale:Lcom/threed/jpct/Matrix;

.field private textures:Ljava/nio/IntBuffer;

.field private tmpMat:Lcom/threed/jpct/Matrix;

.field private toUnload:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/threed/jpct/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private uploadedTextures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/threed/jpct/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private vbos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vertPos:I

.field private vertexArray:[I

.field private vertexArraysInitialized:Z

.field private vertices:Ljava/nio/IntBuffer;

.field private veryLastCoords:I

.field private wasTransparent:Z

.field private xViewEnd:I

.field private xViewStart:I

.field private yTargetStart:I

.field private yViewEnd:I

.field private yViewStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x84c2

    const v1, 0x84c3

    const v2, 0x84c0

    const v3, 0x84c1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/threed/jpct/GLRenderer;->stageMap:[I

    const/16 v0, 0x1e01

    const/16 v1, 0xbe2

    const/16 v2, 0x2100

    const/16 v3, 0x104

    filled-new-array {v2, v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/threed/jpct/GLRenderer;->modeMap:[I

    const/4 v0, 0x0

    sput v0, Lcom/threed/jpct/GLRenderer;->rendererID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/threed/jpct/Config;->autoMaintainAspectRatio:Z

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->lastFOVMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->init:Z

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->stateChanges:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->pixelBufferSize:I

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->blitBufferWidth:I

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->blitBufferHeight:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/threed/jpct/GLRenderer;->currentRGBScaling:I

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->texMan:Lcom/threed/jpct/TextureManager;

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->wasTransparent:Z

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->lastTransMode:I

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->vertexArraysInitialized:Z

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->disposed:Z

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->listener:Lcom/threed/jpct/IPaintListener;

    iput-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->listenerActive:Z

    const/4 v3, 0x4

    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->stageInitialized:[Z

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->maxStages:I

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->lastMultiTextures:[I

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->lastMultiModes:[I

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->lastMode:[I

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    iput v2, p0, Lcom/threed/jpct/GLRenderer;->lastCoords:I

    iput v2, p0, Lcom/threed/jpct/GLRenderer;->veryLastCoords:I

    const v4, -0x3b864000    # -999.0f

    iput v4, p0, Lcom/threed/jpct/GLRenderer;->lastFarPlane:F

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->colors:Ljava/nio/IntBuffer;

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->colorArray:[I

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->vertices:Ljava/nio/IntBuffer;

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->vertexArray:[I

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->textures:Ljava/nio/IntBuffer;

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->textureArray:[I

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->indices:Ljava/nio/ShortBuffer;

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->indexArray:[S

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->yTargetStart:I

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->xViewStart:I

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->yViewStart:I

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->xViewEnd:I

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->yViewEnd:I

    new-instance v5, Lcom/threed/jpct/Matrix;

    invoke-direct {v5}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v5, p0, Lcom/threed/jpct/GLRenderer;->textureScale:Lcom/threed/jpct/Matrix;

    new-array v5, v3, [Z

    iput-object v5, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    iput-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->singleTexturing:Z

    const/4 v5, -0x1

    iput v5, p0, Lcom/threed/jpct/GLRenderer;->currentFogColor:I

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->currentFoggingState:Z

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, p0, Lcom/threed/jpct/GLRenderer;->currentFogDistance:F

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/nio/IntBuffer;

    iput-object v7, p0, Lcom/threed/jpct/GLRenderer;->smallBuffer:[Ljava/nio/IntBuffer;

    new-instance v7, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v7}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v7, p0, Lcom/threed/jpct/GLRenderer;->blitCoords1:Lcom/threed/jpct/SimpleVector;

    new-instance v7, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v7}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v7, p0, Lcom/threed/jpct/GLRenderer;->blitCoords2:Lcom/threed/jpct/SimpleVector;

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->depthBuffer:Z

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->blitMode:Z

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->blitTrans:Z

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->blitAdditive:Z

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    iput-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->scissorClearAll:Z

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->blitScaling:I

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/threed/jpct/GLRenderer;->toUnload:Ljava/util/HashSet;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/threed/jpct/GLRenderer;->matrixCache:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->blending:Z

    new-array v7, v3, [F

    iput-object v7, p0, Lcom/threed/jpct/GLRenderer;->ambient:[F

    new-array v7, v3, [F

    iput-object v7, p0, Lcom/threed/jpct/GLRenderer;->cols:[F

    const/16 v7, 0x10

    new-array v8, v7, [F

    iput-object v8, p0, Lcom/threed/jpct/GLRenderer;->dumpy:[F

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/threed/jpct/GLRenderer;->vbos:Ljava/util/List;

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->textureMatrixSet:Z

    iput v5, p0, Lcom/threed/jpct/GLRenderer;->lastActivatedStage:I

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->hasToReEnable:Z

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->mipmapsByGpu:Z

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/threed/jpct/GLRenderer;->uploadedTextures:Ljava/util/Set;

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/threed/jpct/GLRenderer;->fogColors:Ljava/nio/FloatBuffer;

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->lastWorldHash:I

    new-instance v5, Lcom/threed/jpct/Matrix;

    invoke-direct {v5}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v5, p0, Lcom/threed/jpct/GLRenderer;->tmpMat:Lcom/threed/jpct/Matrix;

    new-instance v5, Lcom/threed/jpct/Matrix;

    invoke-direct {v5}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v5, p0, Lcom/threed/jpct/GLRenderer;->moMat:Lcom/threed/jpct/Matrix;

    new-array v5, v7, [F

    iput-object v5, p0, Lcom/threed/jpct/GLRenderer;->cameraMatrix:[F

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->lineColorShader:Lcom/threed/jpct/GLSLShader;

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/threed/jpct/GLRenderer;->lineCol:[F

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->extensions:Ljava/lang/String;

    new-array v3, v7, [F

    fill-array-data v3, :array_0

    iget-object v5, p0, Lcom/threed/jpct/GLRenderer;->textureScale:Lcom/threed/jpct/Matrix;

    invoke-virtual {v5, v3}, Lcom/threed/jpct/Matrix;->setDump([F)V

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->resetStates()V

    sget v3, Lcom/threed/jpct/GLRenderer;->rendererID:I

    iput v3, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    add-int/2addr v3, v2

    sput v3, Lcom/threed/jpct/GLRenderer;->rendererID:I

    iput v4, p0, Lcom/threed/jpct/GLRenderer;->lastFOV:F

    iput v4, p0, Lcom/threed/jpct/GLRenderer;->lastFarPlane:F

    iput v4, p0, Lcom/threed/jpct/GLRenderer;->lastNearPlane:F

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->init:Z

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->lastTexture:I

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->stateChanges:I

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->pixelBuffer:Ljava/nio/IntBuffer;

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->pixelBufferSize:I

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->blitBufferWidth:I

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->blitBufferHeight:I

    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->texMan:Lcom/threed/jpct/TextureManager;

    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLRenderer created with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private activateStage(I)V
    .locals 2

    iget v0, p0, Lcom/threed/jpct/GLRenderer;->lastActivatedStage:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/threed/jpct/GLRenderer;->lastActivatedStage:I

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    sget-object v1, Lcom/threed/jpct/GLRenderer;->stageMap:[I

    aget p1, v1, p1

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    :cond_0
    return-void
.end method

.method private bindAndProject(ILcom/threed/jpct/Texture;)V
    .locals 1

    iget v0, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {p2, v0}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result p2

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    aget v0, v0, p1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/threed/jpct/GLRenderer;->enableStage(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blit(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;FFIIIIZIIIIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lcom/threed/jpct/GLRenderer;->init:Z

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v2

    iget v3, v2, Lcom/threed/jpct/Camera;->scaleX:F

    iget v2, v2, Lcom/threed/jpct/Camera;->scaleY:F

    iget-boolean v4, v0, Lcom/threed/jpct/GLRenderer;->vertexArraysInitialized:Z

    if-nez v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->initializeVertexArrays()V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->disableUnusedStages()V

    sget-object v4, Lcom/threed/jpct/GLRenderer;->modeMap:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-direct {v0, v5, v4}, Lcom/threed/jpct/GLRenderer;->switchTextureMode(II)V

    sget-boolean v4, Lcom/threed/jpct/Config;->glIgnoreNearPlane:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v4, :cond_2

    sget v4, Lcom/threed/jpct/Config;->nearPlane:F

    cmpg-float v7, v4, v6

    if-gez v7, :cond_2

    neg-float v4, v4

    const v7, 0x3951b717    # 2.0E-4f

    sub-float/2addr v4, v7

    goto :goto_0

    :cond_2
    const v4, -0x407fff58    # -1.00002f

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v1, v9}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v9

    if-eqz v9, :cond_3

    iget v10, v0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v1, v10}, Lcom/threed/jpct/Texture;->getMarker(I)I

    move-result v10

    sget v11, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    if-ne v10, v11, :cond_5

    :cond_3
    iget v10, v0, Lcom/threed/jpct/GLRenderer;->myID:I

    sget v11, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    invoke-virtual {v1, v10, v11}, Lcom/threed/jpct/Texture;->setMarker(II)V

    if-eqz v9, :cond_4

    const/4 v10, 0x2

    invoke-direct {v0, v10}, Lcom/threed/jpct/GLRenderer;->getSmallBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    iget-object v9, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v11, 0x1

    invoke-interface {v9, v11, v10}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    :cond_4
    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLRenderer;->convertTexture(Lcom/threed/jpct/Texture;)V

    iget v9, v0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v1, v9}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v9

    :cond_5
    iget-object v1, v0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    aget v1, v1, v5

    if-eq v9, v1, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->executeBufferedBlits()V

    invoke-virtual {v0, v5, v9}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    :cond_6
    if-eqz p9, :cond_8

    sget v1, Lcom/threed/jpct/Config;->glTransparencyOffset:F

    move/from16 v5, p12

    int-to-float v5, v5

    sget v9, Lcom/threed/jpct/Config;->glTransparencyMul:F

    mul-float/2addr v5, v9

    add-float/2addr v1, v5

    cmpl-float v5, v1, v6

    if-lez v5, :cond_7

    move/from16 v1, p10

    move/from16 v5, p11

    move/from16 v9, p13

    move/from16 v10, p14

    move/from16 v11, p15

    move v12, v6

    goto :goto_1

    :cond_7
    move/from16 v5, p11

    move/from16 v9, p13

    move/from16 v10, p14

    move/from16 v11, p15

    move v12, v1

    move/from16 v1, p10

    goto :goto_1

    :cond_8
    const/16 v1, 0xff

    move/from16 v5, p6

    move v9, v1

    move v10, v9

    move v11, v10

    move v12, v6

    move/from16 v1, p5

    :goto_1
    div-float v8, v6, v8

    div-float/2addr v6, v7

    mul-float v7, v8, p3

    mul-float v13, v6, p4

    move/from16 v14, p5

    int-to-float v14, v14

    add-float v14, v14, p3

    mul-float/2addr v8, v14

    move/from16 v14, p6

    int-to-float v14, v14

    add-float v14, v14, p4

    mul-float/2addr v6, v14

    iget-object v14, v0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    if-eqz v14, :cond_a

    if-eqz p1, :cond_a

    const/high16 v14, 0x3f800000    # 1.0f

    iget-object v15, v0, Lcom/threed/jpct/GLRenderer;->blitCoords1:Lcom/threed/jpct/SimpleVector;

    move/from16 p9, v3

    move/from16 p10, v2

    move-object/from16 p11, p1

    move/from16 p12, p7

    move/from16 p13, p8

    move/from16 p14, v14

    move-object/from16 p15, v15

    invoke-static/range {p9 .. p15}, Lcom/threed/jpct/Interact2D;->reproject2D3DBlit(FFLcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    add-int v1, p7, v1

    add-int v5, p8, v5

    iget-object v15, v0, Lcom/threed/jpct/GLRenderer;->blitCoords2:Lcom/threed/jpct/SimpleVector;

    move/from16 p2, v3

    move/from16 p3, v2

    move-object/from16 p4, p1

    move/from16 p5, v1

    move/from16 p6, v5

    move/from16 p7, v14

    move-object/from16 p8, v15

    invoke-static/range {p2 .. p8}, Lcom/threed/jpct/Interact2D;->reproject2D3DBlit(FFLcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    iget v1, v0, Lcom/threed/jpct/GLRenderer;->curPos:I

    const/16 v2, 0x252

    if-lt v1, v2, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->executeBufferedBlits()V

    :cond_9
    iget-object v1, v0, Lcom/threed/jpct/GLRenderer;->colorArray:[I

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->vertexArray:[I

    iget-object v3, v0, Lcom/threed/jpct/GLRenderer;->textureArray:[I

    iget-object v5, v0, Lcom/threed/jpct/GLRenderer;->indexArray:[S

    shl-int/lit8 v9, v9, 0x8

    shl-int/lit8 v10, v10, 0x8

    shl-int/lit8 v11, v11, 0x8

    const/high16 v14, 0x47800000    # 65536.0f

    mul-float/2addr v12, v14

    float-to-int v12, v12

    iget v15, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    add-int/lit8 v14, v15, 0x1

    iput v14, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v9, v1, v15

    move-object/from16 p2, v5

    add-int/lit8 v5, v15, 0x2

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v10, v1, v14

    add-int/lit8 v14, v15, 0x3

    iput v14, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v11, v1, v5

    add-int/lit8 v5, v15, 0x4

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v12, v1, v14

    add-int/lit8 v14, v15, 0x5

    iput v14, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v9, v1, v5

    add-int/lit8 v5, v15, 0x6

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v10, v1, v14

    add-int/lit8 v14, v15, 0x7

    iput v14, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v11, v1, v5

    add-int/lit8 v5, v15, 0x8

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v12, v1, v14

    add-int/lit8 v14, v15, 0x9

    iput v14, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v9, v1, v5

    add-int/lit8 v5, v15, 0xa

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v10, v1, v14

    add-int/lit8 v14, v15, 0xb

    iput v14, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v11, v1, v5

    add-int/lit8 v5, v15, 0xc

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v12, v1, v14

    add-int/lit8 v14, v15, 0xd

    iput v14, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v9, v1, v5

    add-int/lit8 v5, v15, 0xe

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v10, v1, v14

    add-int/lit8 v9, v15, 0xf

    iput v9, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v11, v1, v5

    add-int/lit8 v15, v15, 0x10

    iput v15, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v12, v1, v9

    iget-object v1, v0, Lcom/threed/jpct/GLRenderer;->blitCoords1:Lcom/threed/jpct/SimpleVector;

    iget v5, v1, Lcom/threed/jpct/SimpleVector;->x:F

    const/high16 v9, 0x47800000    # 65536.0f

    mul-float/2addr v5, v9

    float-to-int v5, v5

    iget-object v10, v0, Lcom/threed/jpct/GLRenderer;->blitCoords2:Lcom/threed/jpct/SimpleVector;

    iget v11, v10, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v11, v9

    float-to-int v11, v11

    iget v1, v1, Lcom/threed/jpct/SimpleVector;->y:F

    neg-float v1, v1

    mul-float/2addr v1, v9

    float-to-int v1, v1

    iget v10, v10, Lcom/threed/jpct/SimpleVector;->y:F

    neg-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v10, v10

    mul-float/2addr v4, v9

    float-to-int v4, v4

    iget v9, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v5, v2, v9

    add-int/lit8 v14, v9, 0x2

    iput v14, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v10, v2, v12

    add-int/lit8 v12, v9, 0x3

    iput v12, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v4, v2, v14

    add-int/lit8 v14, v9, 0x4

    iput v14, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v11, v2, v12

    add-int/lit8 v12, v9, 0x5

    iput v12, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v10, v2, v14

    add-int/lit8 v10, v9, 0x6

    iput v10, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v4, v2, v12

    add-int/lit8 v12, v9, 0x7

    iput v12, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v5, v2, v10

    add-int/lit8 v5, v9, 0x8

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v1, v2, v12

    add-int/lit8 v10, v9, 0x9

    iput v10, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v4, v2, v5

    add-int/lit8 v5, v9, 0xa

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v11, v2, v10

    add-int/lit8 v10, v9, 0xb

    iput v10, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v1, v2, v5

    add-int/lit8 v1, v9, 0xc

    iput v1, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v4, v2, v10

    const/high16 v1, 0x47800000    # 65536.0f

    mul-float/2addr v7, v1

    float-to-int v2, v7

    mul-float/2addr v8, v1

    float-to-int v4, v8

    mul-float/2addr v13, v1

    float-to-int v5, v13

    mul-float/2addr v6, v1

    float-to-int v1, v6

    iget v6, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    aput v2, v3, v6

    add-int/lit8 v8, v6, 0x2

    iput v8, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    aput v1, v3, v7

    add-int/lit8 v7, v6, 0x3

    iput v7, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    aput v4, v3, v8

    add-int/lit8 v8, v6, 0x4

    iput v8, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    aput v1, v3, v7

    add-int/lit8 v1, v6, 0x5

    iput v1, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    aput v2, v3, v8

    add-int/lit8 v2, v6, 0x6

    iput v2, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    aput v5, v3, v1

    add-int/lit8 v1, v6, 0x7

    iput v1, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    aput v4, v3, v2

    add-int/lit8 v6, v6, 0x8

    iput v6, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    aput v5, v3, v1

    div-int/lit8 v9, v9, 0x3

    int-to-short v1, v9

    iget v2, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    aput-short v1, p2, v2

    add-int/lit8 v4, v2, 0x2

    iput v4, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    add-int/lit8 v5, v1, 0x1

    int-to-short v5, v5

    aput-short v5, p2, v3

    add-int/lit8 v3, v2, 0x3

    iput v3, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    add-int/lit8 v6, v1, 0x2

    int-to-short v6, v6

    aput-short v6, p2, v4

    add-int/lit8 v4, v2, 0x4

    iput v4, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    aput-short v6, p2, v3

    add-int/lit8 v3, v2, 0x5

    iput v3, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    add-int/lit8 v1, v1, 0x3

    int-to-short v1, v1

    aput-short v1, p2, v4

    add-int/lit8 v2, v2, 0x6

    iput v2, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    aput-short v5, p2, v3

    iget v1, v0, Lcom/threed/jpct/GLRenderer;->curPos:I

    add-int/lit8 v1, v1, 0x6

    iput v1, v0, Lcom/threed/jpct/GLRenderer;->curPos:I

    :cond_a
    return-void
.end method

.method private buildMipmap(Ljavax/microedition/khronos/opengles/GL10;Lcom/threed/jpct/Texture;II[I)V
    .locals 9

    invoke-virtual {p2}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result p1

    const/4 p3, 0x1

    shr-int/2addr p1, p3

    invoke-virtual {p2}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v0

    shr-int/2addr v0, p3

    move v8, p3

    :goto_0
    if-ge v0, p3, :cond_0

    if-ge p1, p3, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p2, Lcom/threed/jpct/Texture;->convertTo4444:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p2, Lcom/threed/jpct/Texture;->alpha:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {p5, p1, v0, v1}, Lcom/threed/jpct/GLRenderer;->rescale16([IIIZ)[I

    move-result-object p5

    goto :goto_1

    :cond_1
    invoke-static {p5, p1, v0, p3}, Lcom/threed/jpct/GLRenderer;->rescale16([IIIZ)[I

    move-result-object p5

    goto :goto_1

    :cond_2
    invoke-static {p5, p1, v0}, Lcom/threed/jpct/GLRenderer;->rescale32([III)[I

    move-result-object p5

    :goto_1
    array-length v1, p5

    shl-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-object v1, p0

    move v2, p1

    move v3, v0

    move v4, p4

    move v5, v8

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/threed/jpct/GLRenderer;->uploadInternal(IIIILjava/nio/ByteBuffer;Lcom/threed/jpct/Texture;)V

    add-int/2addr v8, p3

    shr-int/lit8 v0, v0, 0x1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private disableAllHigherStages()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/threed/jpct/GLRenderer;->maxStages:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->disableStage(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final disableCompiledPipeline()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb50

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xba1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    return-void
.end method

.method private final disableDepthBuffer()V
    .locals 2

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->depthBuffer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->depthBuffer:Z

    :cond_0
    return-void
.end method

.method private final disableFogging()V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb60

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->currentFoggingState:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->currentFogColor:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->currentFogDistance:F

    return-void
.end method

.method private disableScissor()V
    .locals 2

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xc11

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    :cond_0
    return-void
.end method

.method private final disableStage(I)V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->singleTexturing:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/threed/jpct/GLRenderer;->activateStage(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/threed/jpct/GLRenderer;->singleTexturing:Z

    :goto_0
    iget v0, p0, Lcom/threed/jpct/GLRenderer;->maxStages:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->singleTexturing:Z

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private final disableUnusedStages()V
    .locals 5

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->singleTexturing:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/threed/jpct/GLRenderer;->maxStages:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    invoke-direct {p0, v3}, Lcom/threed/jpct/GLRenderer;->enableStage(I)V

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->singleTexturing:Z

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/threed/jpct/GLRenderer;->activateStage(I)V

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v4, 0xde1

    invoke-interface {v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    aput-boolean v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private doPostProcessing(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/IPostProcessor;)V
    .locals 4

    invoke-interface {p2}, Lcom/threed/jpct/IPostProcessor;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p1}, Lcom/threed/jpct/IPostProcessor;->init(Lcom/threed/jpct/FrameBuffer;)V

    :cond_0
    iget v0, p0, Lcom/threed/jpct/GLRenderer;->currentRGBScaling:I

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableAllHigherStages()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/threed/jpct/GLRenderer;->enableStage(I)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/threed/jpct/GLRenderer;->setRGBScaling(I)V

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/threed/jpct/GLRenderer;->resetViewport(Lcom/threed/jpct/FrameBuffer;)V

    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    sget-object v2, Lcom/threed/jpct/GLRenderer;->modeMap:[I

    aget v2, v2, v1

    invoke-direct {p0, v1, v2}, Lcom/threed/jpct/GLRenderer;->switchTextureMode(II)V

    invoke-interface {p2}, Lcom/threed/jpct/IPostProcessor;->process()V

    iget-object p2, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/threed/jpct/GLRenderer;->setViewport(Lcom/threed/jpct/FrameBuffer;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->setRGBScaling(I)V

    return-void
.end method

.method private enableBlitting(Lcom/threed/jpct/FrameBuffer;ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    if-nez v0, :cond_0

    new-instance v0, Lcom/threed/jpct/World;

    invoke-direct {v0}, Lcom/threed/jpct/World;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    invoke-virtual {v2}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/threed/jpct/Camera;->calcFOV(II)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    invoke-direct {p0, v0, p1}, Lcom/threed/jpct/GLRenderer;->setFrustum(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;)V

    :cond_0
    const/4 p1, 0x1

    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->blitMode:Z

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->blitTrans:Z

    if-nez v1, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->executeBufferedBlits()V

    :cond_2
    iput-boolean p3, p0, Lcom/threed/jpct/GLRenderer;->blitAdditive:Z

    invoke-direct {p0, p3}, Lcom/threed/jpct/GLRenderer;->setBlendingMode(I)V

    iput-boolean p1, p0, Lcom/threed/jpct/GLRenderer;->blitTrans:Z

    :cond_3
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->blitMode:Z

    if-nez v0, :cond_5

    iget p2, p0, Lcom/threed/jpct/GLRenderer;->currentRGBScaling:I

    iput p2, p0, Lcom/threed/jpct/GLRenderer;->blitScaling:I

    iget-object p2, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/threed/jpct/GLRenderer;->setRGBScaling(I)V

    :cond_4
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableDepthBuffer()V

    iput-boolean p1, p0, Lcom/threed/jpct/GLRenderer;->blitMode:Z

    goto :goto_0

    :cond_5
    iget-boolean p1, p0, Lcom/threed/jpct/GLRenderer;->blitTrans:Z

    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->executeBufferedBlits()V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/threed/jpct/GLRenderer;->blitTrans:Z

    :cond_6
    iget-boolean p1, p0, Lcom/threed/jpct/GLRenderer;->blitTrans:Z

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    iget-boolean p1, p0, Lcom/threed/jpct/GLRenderer;->blitAdditive:Z

    if-eq p3, p1, :cond_7

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->executeBufferedBlits()V

    iput-boolean p3, p0, Lcom/threed/jpct/GLRenderer;->blitAdditive:Z

    invoke-direct {p0, p3}, Lcom/threed/jpct/GLRenderer;->setBlendingMode(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method private enableColorArray()V
    .locals 5

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->colors:Ljava/nio/IntBuffer;

    const/4 v3, 0x4

    const/16 v4, 0x140c

    invoke-interface {v0, v3, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    return-void
.end method

.method private final enableCompiledPipeline()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xba1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb50

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    return-void
.end method

.method private final enableDepthBuffer()V
    .locals 2

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->depthBuffer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->depthBuffer:Z

    :cond_0
    return-void
.end method

.method private final enableFogging(FFFFF)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    const/high16 v2, 0x437f0000    # 255.0f

    if-gez v1, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    cmpl-float v1, p3, v2

    if-lez v1, :cond_1

    move p3, v2

    :cond_1
    :goto_0
    cmpg-float v1, p4, v0

    if-gez v1, :cond_2

    move p4, v0

    goto :goto_1

    :cond_2
    cmpl-float v1, p4, v2

    if-lez v1, :cond_3

    move p4, v2

    :cond_3
    :goto_1
    cmpg-float v1, p5, v0

    if-gez v1, :cond_4

    move p5, v0

    goto :goto_2

    :cond_4
    cmpl-float v0, p5, v2

    if-lez v0, :cond_5

    move p5, v2

    :cond_5
    :goto_2
    float-to-int v0, p3

    shl-int/lit8 v0, v0, 0x10

    float-to-int v1, p4

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    float-to-int v1, p5

    or-int/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/GLRenderer;->currentFogDistance:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_6

    iget v1, p0, Lcom/threed/jpct/GLRenderer;->currentFogColor:I

    if-eq v0, v1, :cond_8

    :cond_6
    iget-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->currentFoggingState:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableFogging()V

    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->currentFoggingState:Z

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->fogColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->fogColors:Ljava/nio/FloatBuffer;

    div-float/2addr p3, v2

    invoke-virtual {v1, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object p3, p0, Lcom/threed/jpct/GLRenderer;->fogColors:Ljava/nio/FloatBuffer;

    div-float/2addr p4, v2

    invoke-virtual {p3, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object p3, p0, Lcom/threed/jpct/GLRenderer;->fogColors:Ljava/nio/FloatBuffer;

    div-float/2addr p5, v2

    invoke-virtual {p3, p5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object p3, p0, Lcom/threed/jpct/GLRenderer;->fogColors:Ljava/nio/FloatBuffer;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p3, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object p3, p0, Lcom/threed/jpct/GLRenderer;->fogColors:Ljava/nio/FloatBuffer;

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    iget-object p3, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p5, 0xb60

    invoke-interface {p3, p5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object p3, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p5, 0xb63

    invoke-interface {p3, p5, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p3, 0xb64

    invoke-interface {p1, p3, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p3, 0xb65

    const/16 p5, 0x2601

    invoke-interface {p1, p3, p5}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p3, 0xb66

    iget-object p5, p0, Lcom/threed/jpct/GLRenderer;->fogColors:Ljava/nio/FloatBuffer;

    invoke-interface {p1, p3, p5}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p3, 0xb62

    invoke-interface {p1, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->currentFogColor:I

    iput p2, p0, Lcom/threed/jpct/GLRenderer;->currentFogDistance:F

    :cond_8
    return-void
.end method

.method private enableScissor(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;IIII)V
    .locals 5

    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    iput-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    move v4, p3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eq p4, v3, :cond_1

    iput-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    add-int/2addr p1, p4

    :cond_1
    if-eq p5, v3, :cond_2

    iput-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    add-int/2addr p3, p5

    sub-int/2addr v0, p3

    :cond_2
    if-eq p6, v3, :cond_3

    iput-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    add-int/2addr p4, p6

    sub-int/2addr p2, p4

    :cond_3
    iget-boolean p3, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p4, 0xc11

    invoke-interface {p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    if-gez v4, :cond_4

    move v4, v2

    :cond_4
    if-gez v0, :cond_5

    move v0, v2

    :cond_5
    if-gez p1, :cond_6

    move p1, v2

    :cond_6
    if-gez p2, :cond_7

    goto :goto_1

    :cond_7
    move v2, p2

    :goto_1
    iget-object p2, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p2, v4, p1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    :cond_8
    return-void
.end method

.method private final enableStage(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/threed/jpct/GLRenderer;->activateStage(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/threed/jpct/GLRenderer;->singleTexturing:Z

    :cond_0
    return-void
.end method

.method private executeBufferedBlits()V
    .locals 7

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->colors:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->colors:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->colorArray:[I

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->colPos:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->colors:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->vertices:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->vertexArray:[I

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->textures:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->textures:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->textureArray:[I

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->texPos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->textures:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->indices:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->indexArray:[S

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->clearShader()V

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->closeShader()V

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->currentFoggingState:Z

    const/16 v1, 0xb60

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->initShader()Lcom/threed/jpct/GLSLShader;

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->renableVertexArrays()V

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->enableColorArray()V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    const/16 v4, 0x1403

    iget-object v5, p0, Lcom/threed/jpct/GLRenderer;->indices:Ljava/nio/ShortBuffer;

    const/4 v6, 0x4

    invoke-interface {v0, v6, v2, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->clearShader()V

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->closeShader()V

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->currentFoggingState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_2
    iput v3, p0, Lcom/threed/jpct/GLRenderer;->curPos:I

    iput v3, p0, Lcom/threed/jpct/GLRenderer;->colPos:I

    iput v3, p0, Lcom/threed/jpct/GLRenderer;->texPos:I

    iput v3, p0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    iput v3, p0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    :cond_3
    :goto_0
    return-void
.end method

.method private final getSmallBuffer(I)Ljava/nio/IntBuffer;
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->smallBuffer:[Ljava/nio/IntBuffer;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->smallBuffer:[Ljava/nio/IntBuffer;

    aput-object v0, v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    return-object v0
.end method

.method private final getTextureStages()I
    .locals 3

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0x84e2

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private hasExtension(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->extensions:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1f03

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->extensions:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->extensions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private final init(Ljavax/microedition/khronos/opengles/GL10;IIZ)V
    .locals 2

    if-eqz p4, :cond_0

    .line 2
    :try_start_0
    const-string v0, "com.threed.jpct.GL20"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    :goto_0
    instance-of v0, p1, Lcom/threed/jpct/GL20Handler;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 6
    iput-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/threed/jpct/GL20Handler;

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    .line 8
    :cond_1
    sget v0, Lcom/threed/jpct/Config;->glDebugLevel:I

    if-eqz v0, :cond_2

    .line 9
    invoke-static {p1}, Lcom/threed/jpct/GLDebug;->create(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object p1

    check-cast p1, Ljavax/microedition/khronos/opengles/GL10;

    .line 10
    :cond_2
    iput-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    .line 11
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v0, :cond_3

    .line 12
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    .line 13
    :cond_3
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    .line 14
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 15
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 16
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p2, 0x1701

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 17
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 18
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p2, 0x1700

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 19
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 20
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p2, 0x1d01

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 21
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 22
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->enableDepthBuffer()V

    .line 23
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p2, 0x203

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 24
    sget-boolean p1, Lcom/threed/jpct/Config;->glDither:Z

    const/16 p2, 0xbd0

    if-eqz p1, :cond_4

    .line 25
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto :goto_1

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 27
    :goto_1
    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->initTextureStage(I)V

    const p1, -0x3b864000    # -999.0f

    .line 28
    iput p1, p0, Lcom/threed/jpct/GLRenderer;->lastFOV:F

    .line 29
    iput p1, p0, Lcom/threed/jpct/GLRenderer;->lastFarPlane:F

    .line 30
    iput p1, p0, Lcom/threed/jpct/GLRenderer;->lastNearPlane:F

    if-nez p4, :cond_5

    .line 31
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->getTextureStages()I

    move-result p1

    sget p2, Lcom/threed/jpct/Config;->maxTextureLayers:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    goto :goto_2

    :cond_5
    const/4 p1, 0x4

    .line 32
    sget p2, Lcom/threed/jpct/Config;->maxTextureLayers:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    .line 33
    :goto_2
    iget p1, p0, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    sput p1, Lcom/threed/jpct/Config;->glStageCount:I

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "OpenGL vendor:     "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p3, 0x1f00

    invoke-interface {p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "OpenGL renderer:   "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p4, 0x1f01

    invoke-interface {p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "OpenGL version:    "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p4, 0x1f02

    invoke-interface {p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "OpenGL renderer initialized (using "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " texture stages)"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 38
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2, p2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 39
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p2, 0x4100

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 40
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p2, 0x1f03

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "generate_mipmap"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, p4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "1.1"

    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p2, :cond_6

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->mipmapsByGpu:Z

    .line 41
    iput-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->init:Z

    return-void
.end method

.method private final initTextureStage(I)V
    .locals 2

    .line 3
    sget-object v0, Lcom/threed/jpct/GLRenderer;->modeMap:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/threed/jpct/GLRenderer;->initTextureStage(II)V

    return-void
.end method

.method private final initTextureStage(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/GLRenderer;->switchTextureMode(II)V

    .line 2
    iget-object p2, p0, Lcom/threed/jpct/GLRenderer;->stageInitialized:[Z

    const/4 v0, 0x1

    aput-boolean v0, p2, p1

    return-void
.end method

.method private final initializeVertexArrays()V
    .locals 5

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->init:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2580

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->colors:Ljava/nio/IntBuffer;

    const/16 v0, 0x1c20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->vertices:Ljava/nio/IntBuffer;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->colors:Ljava/nio/IntBuffer;

    const/4 v3, 0x4

    const/16 v4, 0x140c

    invoke-interface {v0, v3, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->vertices:Ljava/nio/IntBuffer;

    const/4 v3, 0x3

    invoke-interface {v0, v3, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8074

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/16 v0, 0x12c0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->textures:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v2, 0x2

    const/16 v3, 0x8

    invoke-interface {v1, v2, v4, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const/16 v0, 0x960

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->indices:Ljava/nio/ShortBuffer;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->vertexArraysInitialized:Z

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->colorArray:[I

    const/16 v0, 0x708

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->vertexArray:[I

    const/16 v0, 0x4b0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->textureArray:[I

    const/16 v0, 0x258

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->indexArray:[S

    :cond_0
    return-void
.end method

.method private prepareForBlitting([III)V
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v0, v2}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v0

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->blitBufferWidth:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->blitBufferHeight:I

    if-ne v2, p3, :cond_0

    sget-boolean v1, Lcom/threed/jpct/Config;->glUseIgnorantBlits:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    invoke-virtual {v1, p1, p2, p3}, Lcom/threed/jpct/Texture;->refill([III)V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    iget v1, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    sget v2, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-virtual {p1, v1, v2}, Lcom/threed/jpct/Texture;->setMarker(II)V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    iget v1, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {p1, v1, v0}, Lcom/threed/jpct/Texture;->setOpenGLID(II)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    invoke-virtual {p0, v2}, Lcom/threed/jpct/GLRenderer;->removeTexture(Lcom/threed/jpct/Texture;)V

    new-instance v2, Lcom/threed/jpct/Texture;

    invoke-direct {v2, p1, p2, p3, v1}, Lcom/threed/jpct/Texture;-><init>([IIIZ)V

    iput-object v2, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    iget p1, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    sget v1, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-virtual {v2, p1, v1}, Lcom/threed/jpct/Texture;->setMarker(II)V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    iget v1, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {p1, v1, v0}, Lcom/threed/jpct/Texture;->setOpenGLID(II)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/threed/jpct/Texture;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/threed/jpct/Texture;-><init>([IIIZ)V

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    :cond_2
    :goto_0
    iput p2, p0, Lcom/threed/jpct/GLRenderer;->blitBufferWidth:I

    iput p3, p0, Lcom/threed/jpct/GLRenderer;->blitBufferHeight:I

    return-void
.end method

.method private final renableVertexArrays()V
    .locals 6

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->hasToReEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->vertices:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v2, 0x3

    const/16 v3, 0xc

    const/16 v4, 0x140c

    invoke-interface {v1, v2, v4, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8074

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8075

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->clearStageFlag()V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    sget-object v1, Lcom/threed/jpct/GLRenderer;->stageMap:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x8

    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->textures:Ljava/nio/IntBuffer;

    const/4 v5, 0x2

    invoke-interface {v0, v5, v4, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    iput-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->hasToReEnable:Z

    :cond_0
    return-void
.end method

.method private renderToTarget()Z
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-boolean v1, v0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/threed/jpct/Config;->useFBO:Z

    if-eqz v1, :cond_1

    return v3

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->disableUnusedStages()V

    sget-object v1, Lcom/threed/jpct/GLRenderer;->modeMap:[I

    aget v1, v1, v2

    invoke-direct {v0, v2, v1}, Lcom/threed/jpct/GLRenderer;->switchTextureMode(II)V

    iget v1, v0, Lcom/threed/jpct/GLRenderer;->currentRGBScaling:I

    invoke-direct {v0, v3}, Lcom/threed/jpct/GLRenderer;->setRGBScaling(I)V

    iget-object v4, v0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    iget v5, v0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v4, v5}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    iget v5, v0, Lcom/threed/jpct/GLRenderer;->myID:I

    sget v6, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    invoke-virtual {v4, v5, v6}, Lcom/threed/jpct/Texture;->setMarker(II)V

    iget-object v4, v0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-virtual {v0, v4}, Lcom/threed/jpct/GLRenderer;->convertTexture(Lcom/threed/jpct/Texture;)V

    iget-object v4, v0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    const/4 v5, -0x1

    aput v5, v4, v2

    :cond_2
    iget-object v4, v0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    iget v5, v0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v4, v5}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v2

    const/4 v4, 0x3

    if-eqz v2, :cond_3

    const-string v2, "Copy data from framebuffer into render target..."

    invoke-static {v2, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_3
    sget-boolean v2, Lcom/threed/jpct/Config;->renderTargetsAsSubImages:Z

    if-eqz v2, :cond_4

    iget-object v5, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    iget v11, v0, Lcom/threed/jpct/GLRenderer;->yTargetStart:I

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-virtual {v2}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v12

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-virtual {v2}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v13

    const/16 v6, 0xde1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v13}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    goto :goto_0

    :cond_4
    iget-object v14, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    iget v2, v0, Lcom/threed/jpct/GLRenderer;->yTargetStart:I

    iget-object v5, v0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-virtual {v5}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v20

    iget-object v5, v0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-virtual {v5}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v21

    const/16 v22, 0x0

    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x1907

    const/16 v18, 0x0

    move/from16 v19, v2

    invoke-interface/range {v14 .. v22}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    :goto_0
    invoke-direct {v0, v1}, Lcom/threed/jpct/GLRenderer;->setRGBScaling(I)V

    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "...success!"

    invoke-static {v1, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_5
    return v3
.end method

.method private static rescale16([IIIZ)[I
    .locals 21

    move/from16 v0, p1

    move/from16 v1, p2

    mul-int v2, v0, v1

    const/4 v3, 0x1

    shr-int/2addr v2, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v1, :cond_0

    return-object v2

    :cond_0
    shr-int/lit8 v6, v0, 0x1

    mul-int/2addr v6, v5

    shl-int/lit8 v7, v5, 0x1

    mul-int/2addr v7, v0

    move v8, v4

    :goto_1
    if-lt v8, v0, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    shr-int/lit8 v9, v8, 0x1

    add-int/2addr v9, v6

    add-int v10, v7, v8

    const/high16 v11, -0x10000

    const v12, 0xffff

    if-nez p3, :cond_3

    aget v13, p0, v10

    and-int v14, v13, v12

    and-int v15, v13, v11

    shr-int/lit8 v16, v15, 0x10

    add-int/2addr v10, v0

    aget v10, p0, v10

    and-int/2addr v12, v10

    and-int/2addr v11, v10

    shr-int/lit8 v17, v11, 0x10

    ushr-int/lit8 v18, v14, 0xc

    and-int/lit8 v18, v18, 0xf

    ushr-int/lit8 v19, v16, 0xc

    and-int/lit8 v19, v19, 0xf

    add-int v18, v18, v19

    ushr-int/lit8 v19, v12, 0xc

    and-int/lit8 v19, v19, 0xf

    add-int v18, v18, v19

    ushr-int/lit8 v19, v17, 0xc

    and-int/lit8 v19, v19, 0xf

    add-int v18, v18, v19

    shr-int/lit8 v18, v18, 0x2

    and-int/lit8 v18, v18, 0xf

    shl-int/lit8 v18, v18, 0xc

    shr-int/lit8 v19, v14, 0x8

    and-int/lit8 v19, v19, 0xf

    shr-int/lit8 v20, v15, 0x18

    and-int/lit8 v20, v20, 0xf

    add-int v19, v19, v20

    shr-int/lit8 v20, v12, 0x8

    and-int/lit8 v20, v20, 0xf

    add-int v19, v19, v20

    shr-int/lit8 v20, v11, 0x18

    and-int/lit8 v20, v20, 0xf

    add-int v19, v19, v20

    shr-int/lit8 v19, v19, 0x2

    and-int/lit8 v19, v19, 0xf

    shl-int/lit8 v19, v19, 0x8

    shr-int/lit8 v14, v14, 0x4

    and-int/lit8 v14, v14, 0xf

    shr-int/lit8 v15, v15, 0x14

    and-int/lit8 v15, v15, 0xf

    add-int/2addr v14, v15

    shr-int/lit8 v12, v12, 0x4

    and-int/lit8 v12, v12, 0xf

    add-int/2addr v14, v12

    shr-int/lit8 v11, v11, 0x14

    and-int/lit8 v11, v11, 0xf

    add-int/2addr v14, v11

    shr-int/lit8 v11, v14, 0x2

    and-int/lit8 v11, v11, 0xf

    shl-int/lit8 v11, v11, 0x4

    and-int/lit8 v12, v13, 0xf

    and-int/lit8 v13, v16, 0xf

    add-int/2addr v12, v13

    and-int/lit8 v10, v10, 0xf

    add-int/2addr v12, v10

    and-int/lit8 v10, v17, 0xf

    add-int/2addr v12, v10

    shr-int/lit8 v10, v12, 0x2

    and-int/lit8 v10, v10, 0xf

    and-int/lit8 v12, v8, 0x1

    if-nez v12, :cond_2

    or-int v10, v10, v18

    or-int v10, v10, v19

    or-int/2addr v10, v11

    aput v10, v2, v9

    goto/16 :goto_2

    :cond_2
    aget v12, v2, v9

    or-int v10, v10, v18

    or-int v10, v10, v19

    or-int/2addr v10, v11

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v10, v12

    aput v10, v2, v9

    goto/16 :goto_2

    :cond_3
    aget v13, p0, v10

    and-int v14, v13, v12

    and-int v15, v13, v11

    shr-int/lit8 v16, v15, 0x10

    add-int/2addr v10, v0

    aget v10, p0, v10

    and-int/2addr v12, v10

    and-int/2addr v11, v10

    shr-int/lit8 v17, v11, 0x10

    ushr-int/lit8 v18, v14, 0xb

    and-int/lit8 v18, v18, 0x1f

    ushr-int/lit8 v19, v16, 0xb

    and-int/lit8 v19, v19, 0x1f

    add-int v18, v18, v19

    ushr-int/lit8 v19, v12, 0xb

    and-int/lit8 v19, v19, 0x1f

    add-int v18, v18, v19

    ushr-int/lit8 v19, v17, 0xb

    and-int/lit8 v19, v19, 0x1f

    add-int v18, v18, v19

    shr-int/lit8 v18, v18, 0x2

    and-int/lit8 v18, v18, 0x1f

    shl-int/lit8 v18, v18, 0xb

    shr-int/lit8 v19, v14, 0x6

    and-int/lit8 v19, v19, 0x1f

    shr-int/lit8 v20, v15, 0x16

    and-int/lit8 v20, v20, 0x1f

    add-int v19, v19, v20

    shr-int/lit8 v20, v12, 0x6

    and-int/lit8 v20, v20, 0x1f

    add-int v19, v19, v20

    shr-int/lit8 v20, v11, 0x16

    and-int/lit8 v20, v20, 0x1f

    add-int v19, v19, v20

    shr-int/lit8 v19, v19, 0x2

    and-int/lit8 v19, v19, 0x1f

    shl-int/lit8 v19, v19, 0x6

    shr-int/2addr v14, v3

    and-int/lit8 v14, v14, 0x1f

    shr-int/lit8 v15, v15, 0x11

    and-int/lit8 v15, v15, 0x1f

    add-int/2addr v14, v15

    shr-int/2addr v12, v3

    and-int/lit8 v12, v12, 0x1f

    add-int/2addr v14, v12

    shr-int/lit8 v11, v11, 0x11

    and-int/lit8 v11, v11, 0x1f

    add-int/2addr v14, v11

    shr-int/lit8 v11, v14, 0x2

    and-int/lit8 v11, v11, 0x1f

    shl-int/2addr v11, v3

    and-int/lit8 v12, v13, 0x1

    and-int/lit8 v13, v16, 0x1

    add-int/2addr v12, v13

    and-int/2addr v10, v3

    add-int/2addr v12, v10

    and-int/lit8 v10, v17, 0x1

    add-int/2addr v12, v10

    shr-int/lit8 v10, v12, 0x2

    and-int/2addr v10, v3

    and-int/lit8 v12, v8, 0x1

    if-nez v12, :cond_4

    or-int v10, v10, v18

    or-int v10, v10, v19

    or-int/2addr v10, v11

    aput v10, v2, v9

    goto :goto_2

    :cond_4
    aget v12, v2, v9

    or-int v10, v10, v18

    or-int v10, v10, v19

    or-int/2addr v10, v11

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v10, v12

    aput v10, v2, v9

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method

.method private static rescale32([III)[I
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    mul-int v2, v0, v1

    new-array v2, v2, [I

    shl-int/lit8 v3, v0, 0x1

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v1, :cond_0

    return-object v2

    :cond_0
    mul-int v6, v5, v0

    shl-int/lit8 v7, v5, 0x1

    mul-int/2addr v7, v3

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v0, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    add-int v9, v6, v8

    shl-int/lit8 v10, v8, 0x1

    add-int/2addr v10, v7

    aget v11, p0, v10

    add-int/lit8 v12, v10, 0x1

    aget v13, p0, v12

    add-int/2addr v10, v3

    aget v10, p0, v10

    add-int/2addr v12, v3

    aget v12, p0, v12

    ushr-int/lit8 v14, v11, 0x18

    and-int/lit16 v14, v14, 0xff

    ushr-int/lit8 v15, v13, 0x18

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v14, v15

    ushr-int/lit8 v15, v10, 0x18

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v14, v15

    ushr-int/lit8 v15, v12, 0x18

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v14, v15

    shr-int/lit8 v14, v14, 0x2

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x18

    shr-int/lit8 v15, v11, 0x10

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v4, v13, 0x10

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v15, v4

    shr-int/lit8 v4, v10, 0x10

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v15, v4

    shr-int/lit8 v4, v12, 0x10

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v15, v4

    shr-int/lit8 v4, v15, 0x2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    shr-int/lit8 v15, v11, 0x8

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v0, v13, 0x8

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v15, v0

    shr-int/lit8 v0, v10, 0x8

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v15, v0

    shr-int/lit8 v0, v12, 0x8

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v15, v0

    shr-int/lit8 v0, v15, 0x2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v11, v11, 0xff

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v11, v13

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v11, v10

    and-int/lit16 v10, v12, 0xff

    add-int/2addr v11, v10

    shr-int/lit8 v10, v11, 0x2

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v4, v14

    or-int/2addr v0, v4

    or-int/2addr v0, v10

    aput v0, v2, v9

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p1

    goto :goto_1
.end method

.method private resetStates()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->stageInitialized:[Z

    aput-boolean v0, v2, v1

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    aput-boolean v0, v2, v1

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    aput v0, v2, v1

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->lastMultiTextures:[I

    aput v0, v2, v1

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->lastMultiModes:[I

    aput v0, v2, v1

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->lastMode:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private resetTextureStates()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setBlendingMode(I)V
    .locals 3

    const/16 v0, 0x302

    const/16 v1, 0xbe2

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    :goto_0
    return-void
.end method

.method private setDepthBuffer()V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    :cond_0
    return-void
.end method

.method private setFrustum(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;)V
    .locals 9

    invoke-virtual {p1}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/threed/jpct/Camera;->getFOV()F

    move-result v0

    iget v1, p0, Lcom/threed/jpct/GLRenderer;->lastFOV:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    sget v1, Lcom/threed/jpct/Config;->farPlane:F

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->lastFarPlane:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/threed/jpct/Config;->glIgnoreNearPlane:Z

    if-nez v1, :cond_0

    sget v1, Lcom/threed/jpct/Config;->nearPlane:F

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->lastNearPlane:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    sget-boolean v1, Lcom/threed/jpct/Config;->autoMaintainAspectRatio:Z

    iget-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->lastFOVMode:Z

    if-eq v1, v2, :cond_7

    :cond_1
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0x1701

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-virtual {p2}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p2, Lcom/threed/jpct/FrameBuffer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eqz v3, :cond_3

    iget v1, p2, Lcom/threed/jpct/FrameBuffer;->virtualHeight:I

    if-lez v1, :cond_2

    iget p2, p2, Lcom/threed/jpct/FrameBuffer;->virtualWidth:I

    if-lez p2, :cond_2

    int-to-float v1, v1

    :goto_0
    int-to-float v2, p2

    goto :goto_1

    :cond_2
    iget p2, v3, Lcom/threed/jpct/Texture;->height:I

    int-to-float v1, p2

    iget p2, v3, Lcom/threed/jpct/Texture;->width:I

    goto :goto_0

    :cond_3
    :goto_1
    sget-boolean p2, Lcom/threed/jpct/Config;->autoMaintainAspectRatio:Z

    if-eqz p2, :cond_4

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    invoke-virtual {p1}, Lcom/threed/jpct/Camera;->getYFOV()F

    move-result p2

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float p2, p2, v2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/threed/jpct/Camera;->getYFOV()F

    move-result v1

    :cond_5
    sget v8, Lcom/threed/jpct/Config;->farPlane:F

    sget-boolean p1, Lcom/threed/jpct/Config;->glIgnoreNearPlane:Z

    if-nez p1, :cond_6

    sget p1, Lcom/threed/jpct/Config;->nearPlane:F

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    :goto_3
    move v7, p1

    goto :goto_4

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_3

    :goto_4
    const/high16 p1, 0x3f000000    # 0.5f

    mul-float v6, v1, p1

    neg-float p2, v1

    mul-float v5, p2, p1

    neg-float p2, v0

    mul-float v3, p2, p1

    mul-float v4, v0, p1

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface/range {v2 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->lastFOV:F

    sget p1, Lcom/threed/jpct/Config;->farPlane:F

    iput p1, p0, Lcom/threed/jpct/GLRenderer;->lastFarPlane:F

    sget p1, Lcom/threed/jpct/Config;->nearPlane:F

    iput p1, p0, Lcom/threed/jpct/GLRenderer;->lastNearPlane:F

    sget-boolean p1, Lcom/threed/jpct/Config;->autoMaintainAspectRatio:Z

    iput-boolean p1, p0, Lcom/threed/jpct/GLRenderer;->lastFOVMode:Z

    :cond_7
    return-void
.end method

.method private setLightsAndFog(Lcom/threed/jpct/World;)V
    .locals 9

    iget-object v0, p1, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    iget v0, v0, Lcom/threed/jpct/Lights;->rgbScale:I

    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->setRGBScaling(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/threed/jpct/GLRenderer;->lastWorldHash:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-boolean v1, p1, Lcom/threed/jpct/World;->useFogging:Z

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->lastWorldHash:I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v0, p1, Lcom/threed/jpct/World;->fogModeChanged:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableFogging()V

    iput v2, p1, Lcom/threed/jpct/World;->fogModeChanged:I

    goto :goto_2

    :cond_2
    :goto_1
    iget v4, p1, Lcom/threed/jpct/World;->fogStart:F

    iget v5, p1, Lcom/threed/jpct/World;->fogDistance:F

    iget v6, p1, Lcom/threed/jpct/World;->fogColorR:F

    iget v7, p1, Lcom/threed/jpct/World;->fogColorG:F

    iget v8, p1, Lcom/threed/jpct/World;->fogColorB:F

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/threed/jpct/GLRenderer;->enableFogging(FFFFF)V

    iput v2, p1, Lcom/threed/jpct/World;->fogModeChanged:I

    :cond_3
    :goto_2
    return-void
.end method

.method private setLineColor(Lcom/threed/jpct/RGBColor;)V
    .locals 4

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedRed()F

    move-result v1

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedGreen()F

    move-result v2

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedBlue()F

    move-result v3

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedAlpha()F

    move-result p1

    invoke-interface {v0, v1, v2, v3, p1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lineCol:[F

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedRed()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lineCol:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedGreen()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lineCol:[F

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedBlue()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lineCol:[F

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedAlpha()F

    move-result p1

    aput p1, v0, v1

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->lineColorShader:Lcom/threed/jpct/GLSLShader;

    const-string v0, "color"

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->lineCol:[F

    invoke-virtual {p1, v0, v1}, Lcom/threed/jpct/GLSLShader;->setUniform(Ljava/lang/String;[F)V

    return-void
.end method

.method private setLineShader()V
    .locals 3

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lineColorShader:Lcom/threed/jpct/GLSLShader;

    if-nez v0, :cond_1

    new-instance v0, Lcom/threed/jpct/GLSLShader;

    const-string v1, "uniform mat4 modelViewProjectionMatrix; uniform vec4 color; attribute vec4 position; varying vec4 col; void main() {\tcol=color; gl_Position = modelViewProjectionMatrix * position; }"

    const-string v2, "precision lowp float; varying vec4 col; void main() { gl_FragColor=col; }"

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->lineColorShader:Lcom/threed/jpct/GLSLShader;

    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lineColorShader:Lcom/threed/jpct/GLSLShader;

    invoke-virtual {p0, v0}, Lcom/threed/jpct/GLRenderer;->setShader(Lcom/threed/jpct/GLSLShader;)V

    return-void
.end method

.method private final setRGBScaling(I)V
    .locals 4

    iget v0, p0, Lcom/threed/jpct/GLRenderer;->currentRGBScaling:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->enableStage(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x2200

    const v2, 0x8570

    const/16 v3, 0x2300

    invoke-interface {v0, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8571

    const/16 v2, 0x2100

    invoke-interface {v0, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8573

    invoke-interface {v0, v3, v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iput p1, p0, Lcom/threed/jpct/GLRenderer;->currentRGBScaling:I

    :cond_0
    return-void
.end method

.method private setTextureMatrix(Lcom/threed/jpct/Matrix;)V
    .locals 3

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->textureMatrixSet:Z

    const/16 v1, 0x1702

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/threed/jpct/GLRenderer;->activateStage(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    iput-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->textureMatrixSet:Z

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcom/threed/jpct/GLRenderer;->activateStage(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->dumpy:[F

    invoke-virtual {p1, v0}, Lcom/threed/jpct/Matrix;->fillDump([F)[F

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->dumpy:[F

    invoke-interface {p1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/threed/jpct/GLRenderer;->textureMatrixSet:Z

    return-void
.end method

.method private setTextures(Lcom/threed/jpct/Object3D;IILcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/World;)Lcom/threed/jpct/Texture;
    .locals 6

    iget-boolean p4, p1, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    move p2, p5

    :cond_0
    iget-object p4, p0, Lcom/threed/jpct/GLRenderer;->texMan:Lcom/threed/jpct/TextureManager;

    iget-object p4, p4, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    iget-object v0, p1, Lcom/threed/jpct/Object3D;->texture:[I

    aget v0, v0, p2

    aget-object p4, p4, v0

    iget v0, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {p4, v0}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {p4, v0}, Lcom/threed/jpct/Texture;->getMarker(I)I

    move-result v0

    sget v2, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    if-ne v0, v2, :cond_4

    :cond_1
    iget v0, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    sget v2, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    invoke-virtual {p4, v0, v2}, Lcom/threed/jpct/Texture;->setMarker(II)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eq p4, v0, :cond_3

    iget v0, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {p4, v0}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p4}, Lcom/threed/jpct/GLRenderer;->removeTexture(Lcom/threed/jpct/Texture;)V

    :cond_2
    invoke-virtual {p0, p4}, Lcom/threed/jpct/GLRenderer;->convertTexture(Lcom/threed/jpct/Texture;)V

    :cond_3
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    aput v1, v0, p5

    :cond_4
    iget-object v0, p1, Lcom/threed/jpct/Object3D;->textureMatrix:Lcom/threed/jpct/Matrix;

    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->setTextureMatrix(Lcom/threed/jpct/Matrix;)V

    invoke-direct {p0, p5, p4}, Lcom/threed/jpct/GLRenderer;->bindAndProject(ILcom/threed/jpct/Texture;)V

    iget-boolean p5, p1, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    if-eqz p5, :cond_10

    iget p5, p0, Lcom/threed/jpct/GLRenderer;->maxStages:I

    iget v0, p1, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    if-ge p5, v0, :cond_5

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->maxStages:I

    iget p5, p0, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    if-le v0, p5, :cond_5

    iput p5, p0, Lcom/threed/jpct/GLRenderer;->maxStages:I

    :cond_5
    iget-object p5, p1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length p5, p5

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/threed/jpct/GLRenderer;->maxStages:I

    if-lt v0, v2, :cond_6

    goto/16 :goto_4

    :cond_6
    add-int/lit8 v2, v0, -0x1

    if-lt v2, p5, :cond_7

    move v3, v1

    goto :goto_1

    :cond_7
    iget-object v3, p1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v3, v3, v2

    aget v3, v3, p2

    :goto_1
    if-eq v3, v1, :cond_f

    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->texMan:Lcom/threed/jpct/TextureManager;

    iget-object v4, v4, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aget-object v3, v4, v3

    iget-boolean v4, v3, Lcom/threed/jpct/Texture;->enabled:Z

    if-eqz v4, :cond_e

    sget-object v4, Lcom/threed/jpct/GLRenderer;->modeMap:[I

    iget-object v5, p1, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v2, v5, v2

    aget v2, v2, p3

    aget v2, v4, v2

    sget-boolean v4, Lcom/threed/jpct/Config;->glRevertADDtoMODULATE:Z

    if-eqz v4, :cond_8

    const/16 v4, 0x104

    if-ne v2, v4, :cond_8

    const/16 v2, 0x2100

    :cond_8
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->stageInitialized:[Z

    aget-boolean v4, v4, v0

    if-nez v4, :cond_9

    invoke-direct {p0, v0, v2}, Lcom/threed/jpct/GLRenderer;->initTextureStage(II)V

    goto :goto_2

    :cond_9
    invoke-direct {p0, v0, v2}, Lcom/threed/jpct/GLRenderer;->switchTextureMode(II)V

    :goto_2
    iget v2, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v3, v2}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v3, v2}, Lcom/threed/jpct/Texture;->getMarker(I)I

    move-result v2

    sget v4, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    if-ne v2, v4, :cond_d

    :cond_a
    iget v2, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    sget v4, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    invoke-virtual {v3, v2, v4}, Lcom/threed/jpct/Texture;->setMarker(II)V

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eq v3, v2, :cond_c

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v3, v2}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0, v3}, Lcom/threed/jpct/GLRenderer;->removeTexture(Lcom/threed/jpct/Texture;)V

    :cond_b
    invoke-virtual {p0, v3}, Lcom/threed/jpct/GLRenderer;->convertTexture(Lcom/threed/jpct/Texture;)V

    :cond_c
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    aput v1, v2, v0

    :cond_d
    invoke-direct {p0, v0, v3}, Lcom/threed/jpct/GLRenderer;->bindAndProject(ILcom/threed/jpct/Texture;)V

    goto :goto_3

    :cond_e
    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->disableStage(I)V

    goto :goto_3

    :cond_f
    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->disableStage(I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_10
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableUnusedStages()V

    :goto_4
    return-object p4
.end method

.method private setViewport(Lcom/threed/jpct/FrameBuffer;)V
    .locals 4

    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-virtual {v0}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/threed/jpct/GLRenderer;->yTargetStart:I

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-virtual {v1}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-virtual {v2}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    return-void
.end method

.method private final switchTextureMode(II)V
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lastMode:[I

    aget v0, v0, p1

    if-eq v0, p2, :cond_0

    invoke-direct {p0, p1}, Lcom/threed/jpct/GLRenderer;->enableStage(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    invoke-interface {v0, v1, v2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lastMode:[I

    aput p2, v0, p1

    :cond_0
    return-void
.end method

.method private unloadTextures()V
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->toUnload:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->toUnload:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->toUnload:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threed/jpct/Texture;

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v1, v2}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Lcom/threed/jpct/GL20Handler;->unloadRenderTarget(Lcom/threed/jpct/Texture;)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/threed/jpct/GLRenderer;->removeTexture(Lcom/threed/jpct/Texture;)V

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v1, v2}, Lcom/threed/jpct/Texture;->clearIDs(I)V

    goto :goto_0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method private unsetBlendingMode()V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    return-void
.end method

.method private uploadInternal(IIIILjava/nio/ByteBuffer;Lcom/threed/jpct/Texture;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p6

    iget-boolean v2, v1, Lcom/threed/jpct/Texture;->etc1:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    iget-boolean v8, v1, Lcom/threed/jpct/Texture;->convertTo4444:Z

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p5

    invoke-interface/range {v3 .. v9}, Lcom/threed/jpct/GL20Handler;->uploadTexture(IIIIZLjava/nio/ByteBuffer;)Z

    move-result v2

    :cond_1
    if-nez v2, :cond_2

    iget-object v3, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v4, 0xde1

    const/16 v6, 0x1908

    move/from16 v5, p4

    move v7, p1

    move v8, p2

    move/from16 v11, p3

    move-object/from16 v12, p5

    invoke-interface/range {v3 .. v12}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addForUnload(Lcom/threed/jpct/Texture;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->toUnload:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-boolean p1, Lcom/threed/jpct/Config;->unloadImmediately:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->unloadTextures()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bindTexture(II)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/threed/jpct/GLRenderer;->enableStage(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    iget v0, p0, Lcom/threed/jpct/GLRenderer;->stateChanges:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->stateChanges:I

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    aput p2, v0, p1

    return-void
.end method

.method public blitIntArray([ILcom/threed/jpct/FrameBuffer;IIIIIIZII)V
    .locals 17

    move-object/from16 v15, p0

    const/4 v0, 0x0

    move-object/from16 v1, p2

    move/from16 v2, p9

    invoke-direct {v15, v1, v2, v0}, Lcom/threed/jpct/GLRenderer;->enableBlitting(Lcom/threed/jpct/FrameBuffer;ZZ)V

    move-object/from16 v0, p1

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-direct {v15, v0, v2, v3}, Lcom/threed/jpct/GLRenderer;->prepareForBlitting([III)V

    iget-object v2, v15, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/threed/jpct/GLRenderer;->blit(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;FFIIIIZIIIIII)V

    return-void
.end method

.method public blitTexture(Lcom/threed/jpct/Texture;Lcom/threed/jpct/FrameBuffer;IIIIIIZ)V
    .locals 17

    const/4 v0, 0x0

    move-object/from16 v15, p0

    move-object/from16 v2, p2

    move/from16 v1, p9

    .line 1
    invoke-direct {v15, v2, v1, v0}, Lcom/threed/jpct/GLRenderer;->enableBlitting(Lcom/threed/jpct/FrameBuffer;ZZ)V

    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, p4

    int-to-float v5, v0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p5

    move/from16 v9, p6

    move v15, v0

    .line 2
    invoke-direct/range {v1 .. v16}, Lcom/threed/jpct/GLRenderer;->blit(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;FFIIIIZIIIIII)V

    return-void
.end method

.method public blitTexture(Lcom/threed/jpct/Texture;Lcom/threed/jpct/FrameBuffer;IIIIIIZZIIIIII)V
    .locals 17

    const/4 v0, -0x1

    move/from16 v13, p13

    if-le v13, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move-object/from16 v15, p0

    move-object/from16 v2, p2

    move/from16 v1, p9

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :goto_1
    invoke-direct {v15, v2, v0, v1}, Lcom/threed/jpct/GLRenderer;->enableBlitting(Lcom/threed/jpct/FrameBuffer;ZZ)V

    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, p4

    int-to-float v5, v0

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    .line 4
    invoke-direct/range {v1 .. v16}, Lcom/threed/jpct/GLRenderer;->blit(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;FFIIIIZIIIIII)V

    return-void
.end method

.method public clear(Lcom/threed/jpct/RGBColor;)V
    .locals 6

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    const/16 v1, 0xc11

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->scissorClearAll:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_0
    sget v0, Lcom/threed/jpct/Config;->aaMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const v0, 0xc100

    goto :goto_0

    :cond_1
    const/16 v0, 0x4100

    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedRed()F

    move-result v3

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedGreen()F

    move-result v4

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedBlue()F

    move-result v5

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedAlpha()F

    move-result p1

    invoke-interface {v2, v3, v4, v5, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    :goto_1
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    iget-boolean p1, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/threed/jpct/GLRenderer;->scissorClearAll:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_3
    return-void
.end method

.method public clearColorBufferOnly(Lcom/threed/jpct/RGBColor;)V
    .locals 6

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    const/16 v1, 0xc11

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->scissorClearAll:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_0
    sget v0, Lcom/threed/jpct/Config;->aaMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const v0, 0xc000

    goto :goto_0

    :cond_1
    const/16 v0, 0x4000

    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedRed()F

    move-result v3

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedGreen()F

    move-result v4

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedBlue()F

    move-result v5

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedAlpha()F

    move-result p1

    invoke-interface {v2, v3, v4, v5, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    :goto_1
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    iget-boolean p1, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/threed/jpct/GLRenderer;->scissorClearAll:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_3
    return-void
.end method

.method public clearShader()V
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0}, Lcom/threed/jpct/GL20Handler;->clearShader()V

    :cond_0
    return-void
.end method

.method public clearStageFlag()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->lastActivatedStage:I

    return-void
.end method

.method public clearTangents()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0}, Lcom/threed/jpct/GL20Handler;->clearTangents()V

    :cond_0
    return-void
.end method

.method public clearTangents(I)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0, p1}, Lcom/threed/jpct/GL20Handler;->clearTangents(I)V

    :cond_0
    return-void
.end method

.method public clearZBufferOnly()V
    .locals 3

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    const/16 v1, 0xc11

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->scissorClearAll:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0x100

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->scissorClearAll:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_1
    return-void
.end method

.method public closeShader()V
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0}, Lcom/threed/jpct/GL20Handler;->resetShaderData()V

    :cond_0
    return-void
.end method

.method public final convertTexture(Lcom/threed/jpct/Texture;)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v8, Lcom/threed/jpct/Texture;->texels:[I

    const/4 v1, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_0

    iget-object v0, v8, Lcom/threed/jpct/Texture;->zippedTexels:[B

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/threed/jpct/GLRenderer;->texMan:Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0}, Lcom/threed/jpct/TextureManager;->getVirtualizer()Lcom/threed/jpct/Virtualizer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v8}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/Texture;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v10, v1

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    iget-boolean v0, v8, Lcom/threed/jpct/Texture;->nPot:Z

    if-eqz v0, :cond_1

    const-string v0, "npot"

    invoke-direct {v7, v0}, Lcom/threed/jpct/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "This device doesn\'t support nPot-textures!"

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, v8, Lcom/threed/jpct/Texture;->texels:[I

    if-nez v0, :cond_2

    iget-object v2, v8, Lcom/threed/jpct/Texture;->zippedTexels:[B

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/threed/jpct/ZipHelper;->unzip([B)[I

    move-result-object v0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v15

    const-string v3, "/"

    if-eq v2, v15, :cond_3

    iget-object v4, v7, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v4, v4, Lcom/threed/jpct/GL20Handler;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Texture\'s size is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", but textures should be square for OpenGL ES2.0! This may result in a black texture!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_3
    mul-int v4, v2, v15

    shl-int/lit8 v5, v4, 0x2

    iget-boolean v6, v8, Lcom/threed/jpct/Texture;->etc1:Z

    if-eqz v6, :cond_4

    iput-boolean v9, v8, Lcom/threed/jpct/Texture;->convertTo4444:Z

    :cond_4
    iget-boolean v6, v8, Lcom/threed/jpct/Texture;->convertTo4444:Z

    if-eqz v6, :cond_5

    shr-int/lit8 v5, v5, 0x1

    :cond_5
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v6

    const/4 v14, 0x3

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Allocating native memory for "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "*"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " texture("

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v8, Lcom/threed/jpct/Texture;->bilinear:Z

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v8, Lcom/threed/jpct/Texture;->etc1:Z

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/threed/jpct/Texture;->zippedTexels:[B

    if-eqz v11, :cond_6

    move v11, v1

    goto :goto_1

    :cond_6
    move v11, v9

    :goto_1
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v8, Lcom/threed/jpct/Texture;->isUnicolor:Z

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes!"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_7
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v20

    iget-boolean v3, v8, Lcom/threed/jpct/Texture;->convertTo4444:Z

    const v5, 0xf0f0f0

    const/high16 v6, -0x1000000

    const/high16 v11, 0xff0000

    const v12, 0xff00

    if-eqz v3, :cond_e

    if-eqz v0, :cond_12

    shr-int/lit8 v3, v4, 0x1

    new-array v3, v3, [I

    iget-boolean v13, v8, Lcom/threed/jpct/Texture;->alpha:Z

    if-eqz v13, :cond_a

    move v5, v9

    :goto_2
    if-lt v5, v4, :cond_8

    const v5, 0x8033

    goto :goto_5

    :cond_8
    aget v13, v0, v5

    and-int v16, v13, v12

    shr-int/lit8 v16, v16, 0xc

    shl-int/lit8 v16, v16, 0x4

    and-int/lit16 v9, v13, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int v9, v16, v9

    and-int v16, v13, v11

    shr-int/lit8 v16, v16, 0x14

    shl-int/lit8 v16, v16, 0x8

    or-int v9, v9, v16

    shl-int/lit8 v9, v9, 0x4

    and-int/2addr v13, v6

    ushr-int/lit8 v13, v13, 0x1c

    or-int/2addr v9, v13

    and-int/lit8 v13, v5, 0x1

    if-nez v13, :cond_9

    shr-int/lit8 v13, v5, 0x1

    aput v9, v3, v13

    goto :goto_3

    :cond_9
    shr-int/lit8 v13, v5, 0x1

    aget v16, v3, v13

    shl-int/lit8 v9, v9, 0x10

    or-int v9, v16, v9

    aput v9, v3, v13

    :goto_3
    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_a
    const/4 v6, 0x0

    :goto_4
    if-lt v6, v4, :cond_b

    const v5, 0x8034

    :goto_5
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-object v9, v3

    move/from16 v19, v5

    goto/16 :goto_a

    :cond_b
    aget v9, v0, v6

    and-int v13, v9, v12

    shr-int/lit8 v13, v13, 0xb

    shl-int/lit8 v13, v13, 0x5

    and-int/lit16 v12, v9, 0xff

    shr-int/2addr v12, v14

    or-int/2addr v12, v13

    and-int v13, v9, v11

    shr-int/lit8 v13, v13, 0x13

    shl-int/lit8 v13, v13, 0xa

    or-int/2addr v12, v13

    shl-int/2addr v12, v1

    and-int/2addr v9, v5

    if-eqz v9, :cond_c

    or-int/lit8 v12, v12, 0x1

    :cond_c
    and-int/lit8 v9, v6, 0x1

    if-nez v9, :cond_d

    shr-int/lit8 v9, v6, 0x1

    aput v12, v3, v9

    goto :goto_6

    :cond_d
    shr-int/lit8 v9, v6, 0x1

    aget v13, v3, v9

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v12, v13

    aput v12, v3, v9

    :goto_6
    add-int/lit8 v6, v6, 0x1

    const v12, 0xff00

    goto :goto_4

    :cond_e
    if-eqz v0, :cond_12

    new-array v3, v4, [I

    const/4 v9, 0x0

    :goto_7
    if-lt v9, v4, :cond_f

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    :goto_8
    move-object v9, v3

    const/16 v19, 0x1401

    goto :goto_a

    :cond_f
    aget v12, v0, v9

    const v16, 0xff00

    and-int v17, v12, v16

    and-int/lit16 v13, v12, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int v13, v17, v13

    and-int v17, v12, v11

    shr-int/lit8 v17, v17, 0x10

    or-int v13, v13, v17

    iget-boolean v11, v8, Lcom/threed/jpct/Texture;->alpha:Z

    if-nez v11, :cond_10

    and-int v11, v12, v5

    if-eqz v11, :cond_11

    or-int/2addr v13, v6

    goto :goto_9

    :cond_10
    and-int v11, v12, v6

    or-int/2addr v13, v11

    :cond_11
    :goto_9
    aput v13, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/high16 v11, 0xff0000

    goto :goto_7

    :cond_12
    const/4 v3, 0x0

    goto :goto_8

    :goto_a
    if-nez v0, :cond_14

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iget-boolean v3, v8, Lcom/threed/jpct/Texture;->convertTo4444:Z

    if-eqz v3, :cond_13

    shr-int/lit8 v4, v4, 0x1

    :cond_13
    new-array v3, v4, [I

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    :cond_14
    invoke-direct {v7, v1}, Lcom/threed/jpct/GLRenderer;->getSmallBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iget-object v3, v7, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v3, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v13

    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New texture\'s id is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_15
    if-nez v13, :cond_16

    const-string v0, "Failed to upload texture!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_b

    :cond_16
    const/4 v1, 0x0

    :goto_b
    iget-object v0, v7, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    aget v12, v0, v1

    invoke-virtual {v7, v1, v13}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    iget-boolean v0, v8, Lcom/threed/jpct/Texture;->nPot:Z

    const/16 v1, 0x2601

    if-nez v0, :cond_18

    iget-boolean v0, v8, Lcom/threed/jpct/Texture;->mipmap:Z

    if-eqz v0, :cond_17

    const/16 v3, 0x2701

    goto :goto_c

    :cond_17
    move v3, v1

    :goto_c
    sget-boolean v4, Lcom/threed/jpct/Config;->glTrilinear:Z

    if-eqz v4, :cond_19

    iget-boolean v4, v8, Lcom/threed/jpct/Texture;->etc1:Z

    if-nez v4, :cond_19

    if-eqz v0, :cond_19

    const/16 v3, 0x2703

    goto :goto_d

    :cond_18
    move v3, v1

    :cond_19
    :goto_d
    iget-object v0, v7, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v4, 0x2801

    const/16 v5, 0xde1

    invoke-interface {v0, v5, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    iget-boolean v0, v8, Lcom/threed/jpct/Texture;->bilinear:Z

    const/16 v4, 0x2800

    if-eqz v0, :cond_1a

    iget-object v0, v7, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v5, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    goto :goto_e

    :cond_1a
    iget-object v0, v7, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0x2600

    invoke-interface {v0, v5, v4, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    :goto_e
    iget-boolean v0, v8, Lcom/threed/jpct/Texture;->repeat:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, v8, Lcom/threed/jpct/Texture;->nPot:Z

    if-eqz v0, :cond_1b

    goto :goto_f

    :cond_1b
    const/16 v0, 0x2901

    goto :goto_10

    :cond_1c
    :goto_f
    const v0, 0x812f

    :goto_10
    iget-object v4, v7, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0x2802

    invoke-interface {v4, v5, v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    iget-object v4, v7, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0x2803

    invoke-interface {v4, v5, v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    if-eq v3, v1, :cond_20

    iget-object v0, v7, Lcom/threed/jpct/GLRenderer;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v0, :cond_20

    iget-boolean v0, v8, Lcom/threed/jpct/Texture;->isShadowMap:Z

    if-nez v0, :cond_20

    iget-boolean v0, v8, Lcom/threed/jpct/Texture;->nPot:Z

    if-eqz v0, :cond_1d

    goto/16 :goto_12

    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget-boolean v0, v7, Lcom/threed/jpct/GLRenderer;->mipmapsByGpu:Z

    const-string v11, "ms"

    if-eqz v0, :cond_1f

    sget-boolean v0, Lcom/threed/jpct/Config;->internalMipmapCreation:Z

    if-nez v0, :cond_1f

    iget-boolean v0, v8, Lcom/threed/jpct/Texture;->etc1:Z

    if-nez v0, :cond_1f

    iget-object v0, v7, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8191

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v5, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/threed/jpct/GLRenderer;->uploadInternal(IIIILjava/nio/ByteBuffer;Lcom/threed/jpct/Texture;)V

    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mipmaps generated by the GPU in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_1e
    :goto_11
    move v4, v12

    move v0, v13

    move v1, v14

    goto :goto_13

    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/threed/jpct/GLRenderer;->uploadInternal(IIIILjava/nio/ByteBuffer;Lcom/threed/jpct/Texture;)V

    iget-object v1, v7, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    move-object/from16 v2, p1

    move v3, v13

    move/from16 v4, v19

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/GLRenderer;->buildMipmap(Ljavax/microedition/khronos/opengles/GL10;Lcom/threed/jpct/Texture;II[I)V

    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mipmaps generated by the CPU in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_11

    :cond_20
    :goto_12
    iget-object v11, v7, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v17, 0x0

    const/16 v18, 0x1908

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v3, 0x1908

    move v4, v12

    move v12, v0

    move v0, v13

    move v13, v1

    move v1, v14

    move v14, v3

    move/from16 v16, v2

    invoke-interface/range {v11 .. v20}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_13
    iget v2, v7, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v8, v2, v0}, Lcom/threed/jpct/Texture;->setOpenGLID(II)V

    if-eqz v4, :cond_21

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v4}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    :cond_21
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "New texture uploaded: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in thread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_22
    iget-object v0, v7, Lcom/threed/jpct/GLRenderer;->uploadedTextures:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_23

    iget-object v0, v7, Lcom/threed/jpct/GLRenderer;->texMan:Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0}, Lcom/threed/jpct/TextureManager;->getVirtualizer()Lcom/threed/jpct/Virtualizer;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/threed/jpct/Virtualizer;->freeHandles(Lcom/threed/jpct/Texture;)V

    :cond_23
    return-void
.end method

.method public deleteBuffer(I)V
    .locals 4

    if-eqz p1, :cond_0

    filled-new-array {p1}, [I

    move-result-object v0

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    invoke-virtual {p0, p1}, Lcom/threed/jpct/GLRenderer;->unregisterVBO(I)V

    :cond_0
    return-void
.end method

.method public disableBlitting()V
    .locals 3

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->blitMode:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->executeBufferedBlits()V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/GLRenderer;->blitScaling:I

    iget v1, p0, Lcom/threed/jpct/GLRenderer;->currentRGBScaling:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->setRGBScaling(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->blitTrans:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0xbe2

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iput-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->blitTrans:Z

    :cond_1
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->enableDepthBuffer()V

    iput-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->blitMode:Z

    :cond_2
    return-void
.end method

.method public disableLineMode()V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->clearShader()V

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->closeShader()V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->initShader()Lcom/threed/jpct/GLSLShader;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->hasToReEnable:Z

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->renableVertexArrays()V

    return-void
.end method

.method public dispose()V
    .locals 3

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->disposed:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->disposed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->init:Z

    const v1, -0x3b864000    # -999.0f

    iput v1, p0, Lcom/threed/jpct/GLRenderer;->lastFOV:F

    iput v1, p0, Lcom/threed/jpct/GLRenderer;->lastFarPlane:F

    iput v1, p0, Lcom/threed/jpct/GLRenderer;->lastNearPlane:F

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->lastTexture:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->pixelBuffer:Ljava/nio/IntBuffer;

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->listener:Lcom/threed/jpct/IPaintListener;

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v1

    iget-object v1, v1, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->unloadKnownTextures()V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->texMan:Lcom/threed/jpct/TextureManager;

    iget v1, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->flushOpenGLIDs(I)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/threed/jpct/Config;->useVBO:Z

    if-eqz v0, :cond_1

    const-string v0, "Disposing VBOs!"

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->vbos:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-enter p0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->vbos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/threed/jpct/GLRenderer;->deleteBuffer(I)V

    goto :goto_1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_3
    const-string v0, "Renderer disposed!"

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLRenderer disposed with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_4

    :cond_2
    :try_start_2
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/threed/jpct/GLRenderer;->removeTexture(Lcom/threed/jpct/Texture;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_4
    return-void
.end method

.method public disposeProcessor(Lcom/threed/jpct/IPostProcessor;)V
    .locals 0

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    invoke-interface {p1}, Lcom/threed/jpct/IPostProcessor;->dispose()V

    return-void
.end method

.method public drawLine(Lcom/threed/jpct/Polyline;)V
    .locals 7

    invoke-virtual {p1}, Lcom/threed/jpct/Polyline;->getData()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1}, Lcom/threed/jpct/Polyline;->getColor()Lcom/threed/jpct/RGBColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->setLineColor(Lcom/threed/jpct/RGBColor;)V

    iget v1, v0, Lcom/threed/jpct/RGBColor;->alpha:I

    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/threed/jpct/Polyline;->getTransparencyMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/threed/jpct/GLRenderer;->setBlendingMode(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->initShader()Lcom/threed/jpct/GLSLShader;

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lcom/threed/jpct/Polyline;->getWidth()F

    move-result v3

    invoke-interface {v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xc

    invoke-virtual {p1}, Lcom/threed/jpct/Polyline;->getData()Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x3

    const/16 v6, 0x1406

    invoke-interface {v1, v5, v6, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/threed/jpct/Polyline;->getLength()I

    move-result p1

    invoke-interface {v1, v5, v3, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    iget p1, v0, Lcom/threed/jpct/RGBColor;->alpha:I

    if-ge p1, v2, :cond_1

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->unsetBlendingMode()V

    :cond_1
    return-void
.end method

.method public drawVertexArray(Lcom/threed/jpct/VisList;IILcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/World;)V
    .locals 24

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    move-object/from16 v12, p5

    const/4 v13, 0x0

    sput-object v13, Lcom/threed/jpct/CompiledInstance;->lastObj:Lcom/threed/jpct/Object3D;

    const/4 v14, -0x1

    iput v14, v9, Lcom/threed/jpct/GLRenderer;->lastActivatedStage:I

    const/4 v15, 0x1

    iput-boolean v15, v9, Lcom/threed/jpct/GLRenderer;->hasToReEnable:Z

    iget-boolean v0, v9, Lcom/threed/jpct/GLRenderer;->init:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->resetShader()V

    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->enableCompiledPipeline()V

    iget-object v8, v9, Lcom/threed/jpct/GLRenderer;->lastMultiTextures:[I

    iget-object v7, v9, Lcom/threed/jpct/GLRenderer;->lastMultiModes:[I

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    iget v1, v9, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    const/16 v5, -0x270f

    if-lt v0, v1, :cond_23

    iput-boolean v6, v9, Lcom/threed/jpct/GLRenderer;->wasTransparent:Z

    iput v6, v9, Lcom/threed/jpct/GLRenderer;->lastTransMode:I

    iput v5, v9, Lcom/threed/jpct/GLRenderer;->lastTexture:I

    iget-object v0, v9, Lcom/threed/jpct/GLRenderer;->ambient:[F

    invoke-virtual {v12, v0}, Lcom/threed/jpct/World;->fillAmbientLight([F)V

    move v0, v6

    :goto_1
    const/4 v4, 0x3

    if-lt v0, v4, :cond_21

    iget-object v0, v9, Lcom/threed/jpct/GLRenderer;->ambient:[F

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v0, v4

    iput-boolean v6, v9, Lcom/threed/jpct/GLRenderer;->blending:Z

    iget-object v0, v9, Lcom/threed/jpct/GLRenderer;->texMan:Lcom/threed/jpct/TextureManager;

    iget-object v3, v0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    move/from16 v2, p2

    move/from16 v17, v5

    move-object v1, v13

    :goto_2
    if-le v2, v11, :cond_1

    invoke-direct {v9, v13}, Lcom/threed/jpct/GLRenderer;->setTextureMatrix(Lcom/threed/jpct/Matrix;)V

    iget-object v0, v9, Lcom/threed/jpct/GLRenderer;->matrixCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->disableCompiledPipeline()V

    sput-object v13, Lcom/threed/jpct/CompiledInstance;->lastObj:Lcom/threed/jpct/Object3D;

    :cond_0
    move v0, v14

    goto/16 :goto_1a

    :cond_1
    iget-object v0, v10, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aget-object v0, v0, v2

    iget-object v4, v10, Lcom/threed/jpct/VisList;->vnum:[I

    aget v18, v4, v2

    iget-boolean v4, v0, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    if-eqz v4, :cond_2

    move v4, v6

    move/from16 v19, v4

    goto :goto_3

    :cond_2
    move/from16 v4, v17

    move/from16 v19, v18

    :goto_3
    iget v13, v0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    iget v5, v9, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    if-le v13, v5, :cond_3

    move v13, v5

    :cond_3
    iget-object v5, v0, Lcom/threed/jpct/Object3D;->texture:[I

    aget v5, v5, v19

    aget-object v5, v3, v5

    iget-boolean v15, v0, Lcom/threed/jpct/Object3D;->isTrans:Z

    if-eqz v15, :cond_4

    iget-boolean v15, v0, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    if-nez v15, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :cond_4
    move v15, v6

    :goto_4
    iget-boolean v14, v0, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    move-object/from16 v21, v3

    if-eqz v14, :cond_5

    iget-object v3, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v3, v3, v6

    aget v3, v3, v19

    const/4 v6, -0x1

    if-ne v3, v6, :cond_5

    const/4 v14, 0x0

    :cond_5
    iget v3, v9, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v5, v3}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v3

    iget v6, v9, Lcom/threed/jpct/GLRenderer;->lastTexture:I

    if-eq v3, v6, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    iget v12, v9, Lcom/threed/jpct/GLRenderer;->lastCoords:I

    iput v12, v9, Lcom/threed/jpct/GLRenderer;->veryLastCoords:I

    const/4 v12, 0x1

    iput v12, v9, Lcom/threed/jpct/GLRenderer;->lastCoords:I

    if-eqz v14, :cond_8

    const/4 v12, 0x1

    :goto_6
    if-lt v12, v13, :cond_7

    goto :goto_7

    :cond_7
    iget-object v10, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    add-int/lit8 v23, v12, -0x1

    aget-object v10, v10, v23

    aget v10, v10, v19

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    iget v10, v9, Lcom/threed/jpct/GLRenderer;->lastCoords:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    iput v10, v9, Lcom/threed/jpct/GLRenderer;->lastCoords:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v10, p1

    move/from16 v11, p3

    goto :goto_6

    :cond_8
    :goto_7
    if-nez v6, :cond_c

    if-eqz v3, :cond_9

    iget v3, v9, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v5, v3}, Lcom/threed/jpct/Texture;->getMarker(I)I

    move-result v3

    sget v10, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    if-eq v3, v10, :cond_9

    const/4 v3, 0x0

    goto :goto_8

    :cond_9
    const/4 v3, 0x1

    :goto_8
    or-int/2addr v3, v6

    iget v6, v9, Lcom/threed/jpct/GLRenderer;->lastCoords:I

    iget v10, v9, Lcom/threed/jpct/GLRenderer;->veryLastCoords:I

    if-eq v6, v10, :cond_a

    const/4 v6, 0x1

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    :goto_9
    or-int/2addr v3, v6

    if-eqz v1, :cond_b

    iget v6, v0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    iget v10, v1, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    if-eq v6, v10, :cond_b

    const/4 v6, 0x1

    goto :goto_a

    :cond_b
    const/4 v6, 0x0

    :goto_a
    or-int/2addr v3, v6

    goto :goto_b

    :cond_c
    move v3, v6

    :goto_b
    if-nez v3, :cond_10

    if-eqz v14, :cond_10

    const/4 v6, 0x1

    :goto_c
    if-lt v6, v13, :cond_d

    goto :goto_e

    :cond_d
    iget-object v10, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    add-int/lit8 v11, v6, -0x1

    aget-object v10, v10, v11

    aget v10, v10, v19

    const/4 v12, -0x1

    if-eq v10, v12, :cond_11

    iget-object v12, v9, Lcom/threed/jpct/GLRenderer;->texMan:Lcom/threed/jpct/TextureManager;

    iget-object v12, v12, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aget-object v10, v12, v10

    iget v12, v9, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v10, v12}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v12

    iget-boolean v14, v10, Lcom/threed/jpct/Texture;->enabled:Z

    if-eqz v14, :cond_e

    aget v14, v8, v6

    if-ne v12, v14, :cond_f

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v11, v14, v11

    aget v11, v11, v18

    aget v14, v7, v6

    if-ne v11, v14, :cond_f

    if-eqz v12, :cond_f

    iget v11, v9, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v10, v11}, Lcom/threed/jpct/Texture;->getMarker(I)I

    move-result v10

    sget v11, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    if-ne v10, v11, :cond_e

    goto :goto_d

    :cond_e
    const/16 v11, -0x270f

    goto :goto_f

    :cond_f
    :goto_d
    const/4 v3, 0x1

    :cond_10
    :goto_e
    const/16 v11, -0x270f

    goto :goto_10

    :cond_11
    aget v10, v8, v6

    const/4 v11, -0x1

    if-eq v10, v11, :cond_e

    const/16 v11, -0x270f

    if-eq v10, v11, :cond_12

    const/4 v3, 0x1

    goto :goto_10

    :cond_12
    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :goto_10
    iget-boolean v6, v9, Lcom/threed/jpct/GLRenderer;->wasTransparent:Z

    if-ne v15, v6, :cond_13

    iget v10, v0, Lcom/threed/jpct/Object3D;->transMode:I

    iget v12, v9, Lcom/threed/jpct/GLRenderer;->lastTransMode:I

    if-ne v10, v12, :cond_13

    if-eqz v3, :cond_14

    :cond_13
    move/from16 v10, p2

    goto :goto_11

    :cond_14
    move/from16 v10, p2

    move-object v12, v0

    move v14, v2

    move-object/from16 v20, v21

    const/4 v6, 0x0

    const/16 v17, 0x3

    goto :goto_15

    :goto_11
    if-eq v2, v10, :cond_16

    if-eqz v6, :cond_15

    iget v3, v9, Lcom/threed/jpct/GLRenderer;->lastTransMode:I

    invoke-direct {v9, v3}, Lcom/threed/jpct/GLRenderer;->setBlendingMode(I)V

    move-object v12, v0

    const/4 v6, 0x1

    goto :goto_12

    :cond_15
    move-object v12, v0

    const/4 v6, 0x0

    :goto_12
    move-object/from16 v0, p0

    move v14, v2

    move v2, v4

    move-object/from16 v20, v21

    move/from16 v3, v17

    const/16 v17, 0x3

    move-object/from16 v4, p4

    move-object v11, v5

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/GLRenderer;->setTextures(Lcom/threed/jpct/Object3D;IILcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/World;)Lcom/threed/jpct/Texture;

    goto :goto_13

    :cond_16
    move-object v12, v0

    move v14, v2

    move-object v11, v5

    move-object/from16 v20, v21

    const/16 v17, 0x3

    const/4 v6, 0x0

    :goto_13
    iput-boolean v15, v9, Lcom/threed/jpct/GLRenderer;->wasTransparent:Z

    iget v0, v12, Lcom/threed/jpct/Object3D;->transMode:I

    iput v0, v9, Lcom/threed/jpct/GLRenderer;->lastTransMode:I

    iget v0, v9, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v11, v0}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v0

    iput v0, v9, Lcom/threed/jpct/GLRenderer;->lastTexture:I

    const/4 v0, 0x1

    :goto_14
    if-lt v0, v13, :cond_1f

    :goto_15
    if-eqz v6, :cond_17

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/threed/jpct/GLRenderer;->blending:Z

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->unsetBlendingMode()V

    iget-object v0, v9, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    const/4 v6, 0x0

    :cond_17
    iget-boolean v0, v12, Lcom/threed/jpct/Object3D;->isTrans:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, v9, Lcom/threed/jpct/GLRenderer;->blending:Z

    if-nez v0, :cond_18

    iget v0, v12, Lcom/threed/jpct/Object3D;->transMode:I

    invoke-direct {v9, v0}, Lcom/threed/jpct/GLRenderer;->setBlendingMode(I)V

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->setDepthBuffer()V

    :cond_18
    move/from16 v11, p3

    move-object/from16 v13, p1

    if-ge v14, v11, :cond_19

    iget-object v0, v13, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    add-int/lit8 v2, v14, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->isCompiled()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-boolean v1, v0, Lcom/threed/jpct/Object3D;->isTrans:Z

    iget-boolean v2, v12, Lcom/threed/jpct/Object3D;->isTrans:Z

    if-ne v1, v2, :cond_19

    iget v0, v0, Lcom/threed/jpct/Object3D;->transMode:I

    iget v1, v12, Lcom/threed/jpct/Object3D;->transMode:I

    if-ne v0, v1, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/threed/jpct/GLRenderer;->blending:Z

    const/16 v21, 0x0

    goto :goto_16

    :cond_19
    const/16 v21, 0x1

    goto :goto_16

    :cond_1a
    move-object/from16 v13, p1

    move/from16 v11, p3

    move/from16 v21, v6

    :goto_16
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v19

    move/from16 v3, v18

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/GLRenderer;->setTextures(Lcom/threed/jpct/Object3D;IILcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/World;)Lcom/threed/jpct/Texture;

    invoke-virtual {v12}, Lcom/threed/jpct/Object3D;->getAdditionalColor()Lcom/threed/jpct/RGBColor;

    move-result-object v0

    iget-object v1, v9, Lcom/threed/jpct/GLRenderer;->cols:[F

    invoke-virtual {v0}, Lcom/threed/jpct/RGBColor;->getNormalizedRed()F

    move-result v2

    const/4 v6, 0x0

    aput v2, v1, v6

    iget-object v1, v9, Lcom/threed/jpct/GLRenderer;->cols:[F

    invoke-virtual {v0}, Lcom/threed/jpct/RGBColor;->getNormalizedGreen()F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v1, v9, Lcom/threed/jpct/GLRenderer;->cols:[F

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/threed/jpct/RGBColor;->getNormalizedBlue()F

    move-result v0

    aput v0, v1, v2

    if-eqz v15, :cond_1b

    sget v0, Lcom/threed/jpct/Config;->glTransparencyOffset:F

    iget v1, v12, Lcom/threed/jpct/Object3D;->transValue:I

    int-to-float v1, v1

    sget v2, Lcom/threed/jpct/Config;->glTransparencyMul:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    cmpl-float v1, v0, v16

    if-lez v1, :cond_1c

    :cond_1b
    move/from16 v0, v16

    :cond_1c
    iget-object v1, v9, Lcom/threed/jpct/GLRenderer;->cols:[F

    aput v0, v1, v17

    iget-object v0, v12, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    iget-object v1, v13, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aget v1, v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/CompiledInstance;

    iget v1, v9, Lcom/threed/jpct/GLRenderer;->myID:I

    iget-object v3, v9, Lcom/threed/jpct/GLRenderer;->ambient:[F

    iget-object v4, v9, Lcom/threed/jpct/GLRenderer;->cols:[F

    iget-object v2, v9, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    move-object/from16 v15, p5

    if-eqz v2, :cond_1d

    const/4 v5, 0x1

    goto :goto_17

    :cond_1d
    move v5, v6

    :goto_17
    iget-object v2, v15, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    move-object/from16 v22, v7

    iget-object v7, v12, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    const/16 v19, 0x0

    move-object/from16 v23, v2

    move-object/from16 v2, p0

    move-object/from16 v6, v23

    move-object/from16 v23, v8

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Lcom/threed/jpct/CompiledInstance;->render(ILcom/threed/jpct/GLRenderer;[F[FZLcom/threed/jpct/Camera;[[FZ)V

    const/4 v1, 0x0

    if-eqz v21, :cond_1e

    iput-boolean v1, v9, Lcom/threed/jpct/GLRenderer;->blending:Z

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->unsetBlendingMode()V

    iget-object v0, v9, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    goto :goto_18

    :cond_1e
    const/4 v2, 0x1

    :goto_18
    add-int/lit8 v0, v14, 0x1

    move v6, v1

    move-object v1, v12

    move-object v10, v13

    move-object v12, v15

    move/from16 v4, v17

    move/from16 v17, v18

    move-object/from16 v3, v20

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    const/16 v5, -0x270f

    const/4 v13, 0x0

    const/4 v14, -0x1

    move v15, v2

    move v2, v0

    goto/16 :goto_2

    :cond_1f
    move/from16 v11, p3

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, v12, Lcom/threed/jpct/Object3D;->multiTex:[[I

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    aget v3, v3, v19

    const/4 v5, -0x1

    if-eq v3, v5, :cond_20

    iget-object v5, v9, Lcom/threed/jpct/GLRenderer;->texMan:Lcom/threed/jpct/TextureManager;

    iget-object v5, v5, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aget-object v3, v5, v3

    iget v5, v9, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v3, v5}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v3

    aput v3, v23, v0

    iget-object v3, v12, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v3, v3, v4

    aget v3, v3, v18

    aput v3, v22, v0

    goto :goto_19

    :cond_20
    const/16 v3, -0x270f

    aput v3, v23, v0

    aput v3, v22, v0

    :goto_19
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    goto/16 :goto_14

    :cond_21
    move/from16 v10, p2

    move v1, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move v2, v15

    iget-object v3, v9, Lcom/threed/jpct/GLRenderer;->ambient:[F

    aget v4, v3, v0

    sget v5, Lcom/threed/jpct/GLRenderer;->COLOR_INV:F

    mul-float/2addr v4, v5

    aput v4, v3, v0

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_22

    aput v5, v3, v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, p1

    move-object/from16 v12, p5

    move v6, v1

    move v15, v2

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    const/16 v5, -0x270f

    const/4 v13, 0x0

    const/4 v14, -0x1

    goto/16 :goto_1

    :cond_23
    move/from16 v10, p2

    move v3, v5

    move v1, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move v2, v15

    aput v3, v23, v0

    aput v3, v22, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, p1

    move-object/from16 v12, p5

    const/4 v13, 0x0

    const/4 v14, -0x1

    goto/16 :goto_0

    :goto_1a
    iput v0, v9, Lcom/threed/jpct/GLRenderer;->lastActivatedStage:I

    return-void
.end method

.method public drawWireframe(Lcom/threed/jpct/VisList;IILcom/threed/jpct/FrameBuffer;)V
    .locals 0

    iget-boolean p1, p0, Lcom/threed/jpct/GLRenderer;->init:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Wireframe rendering isn\'t supported ATM!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enableLineMode(Lcom/threed/jpct/World;)V
    .locals 3

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->clearShader()V

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->closeShader()V

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableCompiledPipeline()V

    invoke-virtual {p1}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object p1

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->tmpMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {p1}, Lcom/threed/jpct/Camera;->getBack()Lcom/threed/jpct/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->tmpMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->transformToGL()V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->moMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->setIdentity()V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->moMat:Lcom/threed/jpct/Matrix;

    iget v1, p1, Lcom/threed/jpct/Camera;->backBx:F

    neg-float v1, v1

    iget v2, p1, Lcom/threed/jpct/Camera;->backBy:F

    neg-float v2, v2

    iget p1, p1, Lcom/threed/jpct/Camera;->backBz:F

    neg-float p1, p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->moMat:Lcom/threed/jpct/Matrix;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->tmpMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {p1, v0}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->setLineShader()V

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->renableVertexArrays()V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->moMat:Lcom/threed/jpct/Matrix;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->cameraMatrix:[F

    invoke-virtual {p1, v0}, Lcom/threed/jpct/Matrix;->fillDump([F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/threed/jpct/GLRenderer;->cameraMatrix:[F

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->cameraMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    iget-boolean p1, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_0
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v0, 0x8075

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableUnusedStages()V

    return-void
.end method

.method public endPainting()V
    .locals 2

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->resetTextureStates()V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->listener:Lcom/threed/jpct/IPaintListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->listenerActive:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/threed/jpct/IPaintListener;->finishedPainting()V

    :cond_0
    return-void
.end method

.method public endState()V
    .locals 0

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    return-void
.end method

.method public grabScreen(Lcom/threed/jpct/FrameBuffer;[I)V
    .locals 11

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result p1

    mul-int v9, v8, p1

    shl-int/lit8 v0, v9, 0x2

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->pixelBuffer:Ljava/nio/IntBuffer;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->pixelBufferSize:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->pixelBuffer:Ljava/nio/IntBuffer;

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->pixelBufferSize:I

    :cond_1
    move-object v10, v1

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v8

    move v4, p1

    move-object v7, v10

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v9, :cond_4

    move v2, v0

    :goto_2
    shr-int/lit8 v1, p1, 0x1

    if-lt v2, v1, :cond_2

    return-void

    :cond_2
    mul-int v3, v2, v8

    add-int/lit8 v1, p1, -0x1

    sub-int/2addr v1, v2

    mul-int v4, v1, v8

    move v1, v0

    :goto_3
    if-lt v1, v8, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int v5, v1, v3

    add-int v6, v4, v1

    aget v7, p2, v5

    aget v9, p2, v6

    aput v9, p2, v5

    aput v7, p2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v10, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final init(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/threed/jpct/GLRenderer;->init(Ljavax/microedition/khronos/opengles/GL10;IIZ)V

    return-void
.end method

.method public initShader()Lcom/threed/jpct/GLSLShader;
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0}, Lcom/threed/jpct/GL20Handler;->updateShaderData()Lcom/threed/jpct/GLSLShader;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->init:Z

    return v0
.end method

.method public postProcess(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/IPostProcessor;)V
    .locals 0

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/GLRenderer;->doPostProcessing(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/IPostProcessor;)V

    return-void
.end method

.method public final registerVBO(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->vbos:Ljava/util/List;

    invoke-static {p1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final removeTexture(Lcom/threed/jpct/Texture;)V
    .locals 5

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {p1, v0}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->getSmallBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iget v1, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {p1, v1}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v3, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to unload texture due to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unloaded texture: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->uploadedTextures:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetShader()V
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0}, Lcom/threed/jpct/GL20Handler;->reset()V

    :cond_0
    return-void
.end method

.method public resetViewport(Lcom/threed/jpct/FrameBuffer;)V
    .locals 4

    iget v0, p0, Lcom/threed/jpct/GLRenderer;->xViewStart:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/GLRenderer;->xViewEnd:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->xViewStart:I

    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLRenderer;->xViewEnd:I

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->yViewStart:I

    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/threed/jpct/GLRenderer;->yViewEnd:I

    :cond_0
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    iget v0, p0, Lcom/threed/jpct/GLRenderer;->xViewStart:I

    iget v1, p0, Lcom/threed/jpct/GLRenderer;->yViewStart:I

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->xViewEnd:I

    iget v3, p0, Lcom/threed/jpct/GLRenderer;->yViewEnd:I

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    return-void
.end method

.method public setBufferViewport(IIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    :cond_0
    return-void
.end method

.method public setFrustumAndFog(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    iput-object p1, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/GLRenderer;->setFrustum(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;)V

    if-eq p1, v0, :cond_1

    iget-boolean p2, p1, Lcom/threed/jpct/World;->useFogging:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    iput p2, p1, Lcom/threed/jpct/World;->fogModeChanged:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    iput p2, p1, Lcom/threed/jpct/World;->fogModeChanged:I

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/threed/jpct/GLRenderer;->setLightsAndFog(Lcom/threed/jpct/World;)V

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->unloadTextures()V

    return-void
.end method

.method public final setPaintListener(Lcom/threed/jpct/IPaintListener;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/GLRenderer;->listener:Lcom/threed/jpct/IPaintListener;

    return-void
.end method

.method public setRenderTarget(Lcom/threed/jpct/Texture;Lcom/threed/jpct/FrameBuffer;IIIIZ)V
    .locals 7

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    iput-object p1, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eqz p1, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/threed/jpct/GLRenderer;->enableScissor(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;IIII)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableScissor()V

    :goto_0
    iget-boolean p1, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/threed/jpct/Config;->useFBO:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    iget-object p3, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-interface {p1, p3, p0, p2}, Lcom/threed/jpct/GL20Handler;->setRenderTarget(Lcom/threed/jpct/Texture;Lcom/threed/jpct/GLRenderer;Lcom/threed/jpct/FrameBuffer;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-nez p1, :cond_3

    invoke-virtual {p0, p2}, Lcom/threed/jpct/GLRenderer;->resetViewport(Lcom/threed/jpct/FrameBuffer;)V

    iget-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p2, 0x1

    invoke-interface {p1, p2, p2, p2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, p2}, Lcom/threed/jpct/GLRenderer;->setViewport(Lcom/threed/jpct/FrameBuffer;)V

    :goto_2
    return-void
.end method

.method public setShader(Lcom/threed/jpct/GLSLShader;)V
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0, p1}, Lcom/threed/jpct/GL20Handler;->setShader(Lcom/threed/jpct/GLSLShader;)V

    :cond_0
    return-void
.end method

.method public setTangents(I)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0, p1}, Lcom/threed/jpct/GL20Handler;->setTangents(I)V

    :cond_0
    return-void
.end method

.method public setTangents(Ljava/nio/Buffer;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0, p1}, Lcom/threed/jpct/GL20Handler;->setTangents(Ljava/nio/Buffer;)V

    :cond_0
    return-void
.end method

.method public startPainting()V
    .locals 2

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->listener:Lcom/threed/jpct/IPaintListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->listenerActive:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/threed/jpct/IPaintListener;->startPainting()V

    :cond_0
    return-void
.end method

.method public swapBuffers()V
    .locals 1

    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->renderToTarget()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->hasToReEnable:Z

    return-void
.end method

.method public sync()V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    return-void
.end method

.method public unloadKnownTextures()V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->toUnload:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->uploadedTextures:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->unloadTextures()V

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->uploadedTextures:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const-string v0, "All texture data unloaded from gpu!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final unregisterVBO(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->vbos:Ljava/util/List;

    invoke-static {p1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public upload(Lcom/threed/jpct/Texture;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {p1, v0}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    sget v1, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    invoke-virtual {p1, v0, v1}, Lcom/threed/jpct/Texture;->setMarker(II)V

    invoke-virtual {p0, p1}, Lcom/threed/jpct/GLRenderer;->convertTexture(Lcom/threed/jpct/Texture;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
