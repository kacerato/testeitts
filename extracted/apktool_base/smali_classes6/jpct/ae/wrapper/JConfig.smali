.class public Ljpct/ae/wrapper/JConfig;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/Config;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static aaMode()I
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->aaMode:I

    return v0
.end method

.method public static aggressiveStripping()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->aggressiveStripping:Z

    return v0
.end method

.method public static autoMaintainAspectRatio()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->autoMaintainAspectRatio:Z

    return v0
.end method

.method public static cacheCompressedTextures()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->cacheCompressedTextures:Z

    return v0
.end method

.method public static collideEdgeMul()F
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->collideEdgeMul:F

    return v0
.end method

.method public static collideEllipsoidThreshold()F
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->collideEllipsoidThreshold:F

    return v0
.end method

.method public static collideOffset()F
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->collideOffset:F

    return v0
.end method

.method public static collideSectorOffset()F
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->collideSectorOffset:F

    return v0
.end method

.method public static defaultCameraFOV()F
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->defaultCameraFOV:F

    return v0
.end method

.method public static disableNativeBufferCopies()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->disableNativeBufferCopies:Z

    return v0
.end method

.method public static farPlane()F
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->farPlane:F

    return v0
.end method

.method public static flashSortThreshold()I
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->flashSortThreshold:I

    return v0
.end method

.method public static getParameterNames()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/threed/jpct/Config;->getParameterNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getParameterValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/threed/jpct/Config;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/threed/jpct/Config;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static glBatchSize()I
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->glBatchSize:I

    return v0
.end method

.method public static glDebugLevel()I
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->glDebugLevel:I

    return v0
.end method

.method public static glDither()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->glDither:Z

    return v0
.end method

.method public static glForceEnvMapToSecondStage()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    return v0
.end method

.method public static glForceHighPrecision()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->glForceHighPrecision:Z

    return v0
.end method

.method public static glIgnoreNearPlane()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->glIgnoreNearPlane:Z

    return v0
.end method

.method public static glRevertADDtoMODULATE()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->glRevertADDtoMODULATE:Z

    return v0
.end method

.method public static glTransparencyMul()F
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->glTransparencyMul:F

    return v0
.end method

.method public static glTransparencyOffset()F
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->glTransparencyOffset:F

    return v0
.end method

.method public static glTriangleStrips()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->glTriangleStrips:Z

    return v0
.end method

.method public static glTrilinear()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->glTrilinear:Z

    return v0
.end method

.method public static glUseIgnorantBlits()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->glUseIgnorantBlits:Z

    return v0
.end method

.method public static internalMipmapCreation()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->internalMipmapCreation:Z

    return v0
.end method

.method public static maxAnimationSubSequences()I
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->maxAnimationSubSequences:I

    return v0
.end method

.method public static maxLights()I
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->maxLights:I

    return v0
.end method

.method public static maxParentObjects()I
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->maxParentObjects:I

    return v0
.end method

.method public static maxPolysVisible()I
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->maxPolysVisible:I

    return v0
.end method

.method public static maxTextureLayers()I
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    return v0
.end method

.method public static maxTextures()I
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->maxTextures:I

    return v0
.end method

.method public static nearPlane()F
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->nearPlane:F

    return v0
.end method

.method public static oldStyle3DSLoader()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->oldStyle3DSLoader:Z

    return v0
.end method

.method public static polygonIDLimit()I
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->polygonIDLimit:I

    return v0
.end method

.method public static renderTargetsAsSubImages()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->renderTargetsAsSubImages:Z

    return v0
.end method

.method public static setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/threed/jpct/Config;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static specPow()F
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->specPow:F

    return v0
.end method

.method public static specTerm()F
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->specTerm:F

    return v0
.end method

.method public static stateOrientedSorting()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->stateOrientedSorting:Z

    return v0
.end method

.method public static unloadImmediately()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->unloadImmediately:Z

    return v0
.end method

.method public static useNormalsFromOBJ()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->useNormalsFromOBJ:Z

    return v0
.end method

.method public static useRotationPivotFrom3DS()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->useRotationPivotFrom3DS:Z

    return v0
.end method

.method public static useVBO()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/Config;->useVBO:Z

    return v0
.end method

.method public static vectorCacheSize()I
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->vectorCacheSize:I

    return v0
.end method

.method public static vertexBufferSize()I
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->vertexBufferSize:I

    return v0
.end method

.method public static viewportOffsetX()F
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->viewportOffsetX:F

    return v0
.end method

.method public static viewportOffsetY()F
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->viewportOffsetY:F

    return v0
.end method
