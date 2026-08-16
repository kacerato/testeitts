.class public LJAVARuntime/GizmoElement;
.super LIc/m;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Debug"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/GizmoElement$RenderMode;
    }
.end annotation


# instance fields
.field private additiveMode:Z

.field private billboard:Z

.field private drawInFront:Z

.field private enableLight:Z

.field private final enableTransparency:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private fadeOutRange:F

.field private lightIntensity:F

.field private maxScaleBasedCameraSize:F

.field private pooling:Z

.field private transient userPointer:Ljava/lang/Object;

.field private visibleDistance:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LIc/m;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoElement;->enableTransparency:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, LJAVARuntime/GizmoElement;->visibleDistance:F

    iput v0, p0, LJAVARuntime/GizmoElement;->fadeOutRange:F

    iput v0, p0, LJAVARuntime/GizmoElement;->maxScaleBasedCameraSize:F

    const/4 v0, 0x0

    iput-boolean v0, p0, LJAVARuntime/GizmoElement;->enableLight:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, LJAVARuntime/GizmoElement;->lightIntensity:F

    iput-boolean v0, p0, LJAVARuntime/GizmoElement;->billboard:Z

    iput-boolean v0, p0, LJAVARuntime/GizmoElement;->pooling:Z

    const/4 v0, 0x0

    iput-object v0, p0, LJAVARuntime/GizmoElement;->userPointer:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getColor()LJAVARuntime/Color;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFadeOutRange()F
    .locals 1

    iget v0, p0, LJAVARuntime/GizmoElement;->fadeOutRange:F

    return v0
.end method

.method public getLightIntensity()F
    .locals 1

    iget v0, p0, LJAVARuntime/GizmoElement;->lightIntensity:F

    return v0
.end method

.method public getMatrix()[F
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxScaleBasedCameraSize()F
    .locals 1

    iget v0, p0, LJAVARuntime/GizmoElement;->maxScaleBasedCameraSize:F

    return v0
.end method

.method public getOutlineScale()F
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    return v0
.end method

.method public getRenderMode()LJAVARuntime/GizmoElement$RenderMode;
    .locals 1

    sget-object v0, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    return-object v0
.end method

.method public getTexture()LJAVARuntime/Texture;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserPointer()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LJAVARuntime/GizmoElement;->userPointer:Ljava/lang/Object;

    return-object v0
.end method

.method public getVertex()LJAVARuntime/Vertex;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisibleDistance()F
    .locals 1

    iget v0, p0, LJAVARuntime/GizmoElement;->visibleDistance:F

    return v0
.end method

.method public getWireFrameWidth()I
    .locals 1

    sget v0, LOb/a$b;->c:I

    return v0
.end method

.method public isAdditiveMode()Z
    .locals 1

    iget-boolean v0, p0, LJAVARuntime/GizmoElement;->additiveMode:Z

    return v0
.end method

.method public isBillboard()Z
    .locals 1

    iget-boolean v0, p0, LJAVARuntime/GizmoElement;->billboard:Z

    return v0
.end method

.method public isDeepDestroyVertexAfterCacheInvalidation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDrawInFront()Z
    .locals 1

    iget-boolean v0, p0, LJAVARuntime/GizmoElement;->drawInFront:Z

    return v0
.end method

.method public isDualFaceRender()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnableLight()Z
    .locals 1

    iget-boolean v0, p0, LJAVARuntime/GizmoElement;->enableLight:Z

    return v0
.end method

.method public isEnableTransparency()Z
    .locals 1

    iget-object v0, p0, LJAVARuntime/GizmoElement;->enableTransparency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPooling()Z
    .locals 1

    iget-boolean v0, p0, LJAVARuntime/GizmoElement;->pooling:Z

    return v0
.end method

.method public isScaleBasedCamera()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAdditiveMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "additiveMode"
        }
    .end annotation

    iput-boolean p1, p0, LJAVARuntime/GizmoElement;->additiveMode:Z

    return-void
.end method

.method public setBillboard(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "billboard"
        }
    .end annotation

    iput-boolean p1, p0, LJAVARuntime/GizmoElement;->billboard:Z

    return-void
.end method

.method public setDrawInFront(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawInFront"
        }
    .end annotation

    iput-boolean p1, p0, LJAVARuntime/GizmoElement;->drawInFront:Z

    return-void
.end method

.method public setEnableLight(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableLight"
        }
    .end annotation

    iput-boolean p1, p0, LJAVARuntime/GizmoElement;->enableLight:Z

    return-void
.end method

.method public setEnableTransparency(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableTransparency"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoElement;->enableTransparency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setFadeOutRange(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fadeOutRange"
        }
    .end annotation

    iput p1, p0, LJAVARuntime/GizmoElement;->fadeOutRange:F

    return-void
.end method

.method public setLightIntensity(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightIntensity"
        }
    .end annotation

    iput p1, p0, LJAVARuntime/GizmoElement;->lightIntensity:F

    return-void
.end method

.method public setMaxScaleBasedCameraSize(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxScaleBasedCameraSize"
        }
    .end annotation

    iput p1, p0, LJAVARuntime/GizmoElement;->maxScaleBasedCameraSize:F

    return-void
.end method

.method public setPooling(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pooling"
        }
    .end annotation

    iput-boolean p1, p0, LJAVARuntime/GizmoElement;->pooling:Z

    return-void
.end method

.method public setUserPointer(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "userPointer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPointer"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/GizmoElement;->userPointer:Ljava/lang/Object;

    return-void
.end method

.method public setVisibleDistance(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibleDistance"
        }
    .end annotation

    iput p1, p0, LJAVARuntime/GizmoElement;->visibleDistance:F

    return-void
.end method
