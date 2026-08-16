.class Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/shadow/SdsmFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SdsmResultHolder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field fence:Lcom/jme3/renderer/opengl/GLFence;

.field fitFrustumSsbo:Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

.field minMaxDepthSsbo:Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

.field parameters:Lcom/jme3/shadow/SdsmFitter$FitParameters;

.field final synthetic this$0:Lcom/jme3/shadow/SdsmFitter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/jme3/shadow/SdsmFitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->this$0:Lcom/jme3/shadow/SdsmFitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

    invoke-static {p1}, Lcom/jme3/shadow/SdsmFitter;->access$000(Lcom/jme3/shadow/SdsmFitter;)Lcom/jme3/renderer/opengl/GL4;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;-><init>(Lcom/jme3/renderer/opengl/GL4;)V

    iput-object v0, p0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->minMaxDepthSsbo:Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

    invoke-static {p1}, Lcom/jme3/shadow/SdsmFitter;->access$100(Lcom/jme3/shadow/SdsmFitter;)Lcom/jme3/renderer/Renderer;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->minMaxDepthSsbo:Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

    invoke-interface {v0, v1}, Lcom/jme3/renderer/Renderer;->registerNativeObject(Lcom/jme3/util/NativeObject;)V

    new-instance v0, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

    invoke-static {p1}, Lcom/jme3/shadow/SdsmFitter;->access$000(Lcom/jme3/shadow/SdsmFitter;)Lcom/jme3/renderer/opengl/GL4;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;-><init>(Lcom/jme3/renderer/opengl/GL4;)V

    iput-object v0, p0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->fitFrustumSsbo:Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

    invoke-static {p1}, Lcom/jme3/shadow/SdsmFitter;->access$100(Lcom/jme3/shadow/SdsmFitter;)Lcom/jme3/renderer/Renderer;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->fitFrustumSsbo:Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

    invoke-interface {p1, v0}, Lcom/jme3/renderer/Renderer;->registerNativeObject(Lcom/jme3/util/NativeObject;)V

    return-void
.end method

.method private extractFit()Lcom/jme3/shadow/SdsmFitter$SplitFit;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->fitFrustumSsbo:Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

    invoke-virtual {v1}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, v0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->fitFrustumSsbo:Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->read(I)[I

    move-result-object v1

    new-array v4, v3, [F

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_1

    aget v7, v1, v6

    invoke-static {v7}, Lcom/jme3/shadow/SdsmFitter;->access$200(I)F

    move-result v7

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x18

    aget v1, v4, v1

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v3, v1, v3

    if-nez v3, :cond_2

    return-object v2

    :cond_2
    const/16 v3, 0x19

    aget v3, v4, v3

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-nez v6, :cond_3

    return-object v2

    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v5

    :goto_1
    iget-object v8, v0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->parameters:Lcom/jme3/shadow/SdsmFitter$FitParameters;

    iget v9, v8, Lcom/jme3/shadow/SdsmFitter$FitParameters;->splitCount:I

    if-ge v7, v9, :cond_5

    mul-int/lit8 v8, v7, 0x4

    mul-int/lit8 v9, v7, 0x2

    add-int/lit8 v10, v9, 0x10

    new-instance v18, Lcom/jme3/shadow/SdsmFitter$SplitBounds;

    aget v12, v4, v8

    add-int/lit8 v11, v8, 0x1

    aget v13, v4, v11

    add-int/lit8 v11, v8, 0x2

    aget v14, v4, v11

    add-int/lit8 v8, v8, 0x3

    aget v15, v4, v8

    aget v16, v4, v10

    add-int/lit8 v9, v9, 0x11

    aget v17, v4, v9

    move-object/from16 v11, v18

    invoke-direct/range {v11 .. v17}, Lcom/jme3/shadow/SdsmFitter$SplitBounds;-><init>(FFFFFF)V

    invoke-virtual/range {v18 .. v18}, Lcom/jme3/shadow/SdsmFitter$SplitBounds;->isValid()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object/from16 v8, v18

    goto :goto_2

    :cond_4
    move-object v8, v2

    :goto_2
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    iget v2, v8, Lcom/jme3/shadow/SdsmFitter$FitParameters;->cameraNear:F

    iget v7, v8, Lcom/jme3/shadow/SdsmFitter$FitParameters;->cameraFar:F

    invoke-static {v2, v7, v1}, Lcom/jme3/shadow/SdsmFitter;->access$300(FFF)F

    move-result v1

    iget-object v2, v0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->parameters:Lcom/jme3/shadow/SdsmFitter$FitParameters;

    iget v7, v2, Lcom/jme3/shadow/SdsmFitter$FitParameters;->cameraNear:F

    iget v2, v2, Lcom/jme3/shadow/SdsmFitter$FitParameters;->cameraFar:F

    invoke-static {v7, v2, v3}, Lcom/jme3/shadow/SdsmFitter;->access$300(FFF)F

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    iget-object v7, v0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->parameters:Lcom/jme3/shadow/SdsmFitter$FitParameters;

    iget v7, v7, Lcom/jme3/shadow/SdsmFitter$FitParameters;->splitCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_6

    mul-int/lit8 v7, v5, 0x2

    add-int/lit8 v8, v7, 0x1a

    aget v8, v4, v8

    add-int/lit8 v7, v7, 0x1b

    aget v7, v4, v7

    new-instance v9, Lcom/jme3/shadow/SdsmFitter$SplitInfo;

    invoke-direct {v9, v8, v7}, Lcom/jme3/shadow/SdsmFitter$SplitInfo;-><init>(FF)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    new-instance v4, Lcom/jme3/shadow/SdsmFitter$SplitFit;

    invoke-direct {v4, v6, v1, v2, v3}, Lcom/jme3/shadow/SdsmFitter$SplitFit;-><init>(Ljava/util/List;FFLjava/util/List;)V

    return-object v4
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->minMaxDepthSsbo:Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

    iget-object v1, p0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->this$0:Lcom/jme3/shadow/SdsmFitter;

    invoke-static {v1}, Lcom/jme3/shadow/SdsmFitter;->access$100(Lcom/jme3/shadow/SdsmFitter;)Lcom/jme3/renderer/Renderer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->deleteObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->fitFrustumSsbo:Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;

    iget-object v1, p0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->this$0:Lcom/jme3/shadow/SdsmFitter;

    invoke-static {v1}, Lcom/jme3/shadow/SdsmFitter;->access$100(Lcom/jme3/shadow/SdsmFitter;)Lcom/jme3/renderer/Renderer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/opengl/ShaderStorageBufferObject;->deleteObject(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->fence:Lcom/jme3/renderer/opengl/GLFence;

    return-void
.end method

.method public extract()Lcom/jme3/shadow/SdsmFitter$SplitFitResult;
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->fence:Lcom/jme3/renderer/opengl/GLFence;

    invoke-direct {p0}, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->extractFit()Lcom/jme3/shadow/SdsmFitter$SplitFit;

    move-result-object v0

    new-instance v1, Lcom/jme3/shadow/SdsmFitter$SplitFitResult;

    iget-object v2, p0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->parameters:Lcom/jme3/shadow/SdsmFitter$FitParameters;

    invoke-direct {v1, v2, v0}, Lcom/jme3/shadow/SdsmFitter$SplitFitResult;-><init>(Lcom/jme3/shadow/SdsmFitter$FitParameters;Lcom/jme3/shadow/SdsmFitter$SplitFit;)V

    return-object v1
.end method

.method public isReady(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->fence:Lcom/jme3/renderer/opengl/GLFence;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->this$0:Lcom/jme3/shadow/SdsmFitter;

    invoke-static {v0}, Lcom/jme3/shadow/SdsmFitter;->access$000(Lcom/jme3/shadow/SdsmFitter;)Lcom/jme3/renderer/opengl/GL4;

    move-result-object v0

    iget-object v2, p0, Lcom/jme3/shadow/SdsmFitter$SdsmResultHolder;->fence:Lcom/jme3/renderer/opengl/GLFence;

    if-eqz p1, :cond_2

    const-wide/16 v3, -0x1

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x0

    :goto_0
    const/4 p1, 0x0

    invoke-interface {v0, v2, p1, v3, v4}, Lcom/jme3/renderer/opengl/GL4;->glClientWaitSync(Lcom/jme3/renderer/opengl/GLFence;IJ)I

    move-result v0

    const v2, 0x911a

    if-eq v0, v2, :cond_4

    const v2, 0x911c

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, p1

    :cond_4
    :goto_1
    return v1
.end method
