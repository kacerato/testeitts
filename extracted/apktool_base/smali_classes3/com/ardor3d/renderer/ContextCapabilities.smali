.class public Lcom/ardor3d/renderer/ContextCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _automaticMipMaps:Z

.field protected _displayRenderer:Ljava/lang/String;

.field protected _displayVendor:Ljava/lang/String;

.field protected _displayVersion:Ljava/lang/String;

.field protected _fboSupported:Z

.field protected _geometryShader4Supported:Z

.field protected _glslSupported:Z

.field protected _maxAnisotropic:F

.field protected _maxFBOColorAttachments:I

.field protected _maxFBOSamples:I

.field protected _maxGLSLVertexAttribs:I

.field protected _maxTextureLodBias:F

.field protected _maxTextureSize:I

.field protected _maxUserClipPlanes:I

.field protected _numAuxDrawBuffers:I

.field protected _numFixedTexUnits:I

.field protected _numFragmentTexCoordUnits:I

.field protected _numFragmentTexUnits:I

.field protected _numTotalTexUnits:I

.field protected _numVertexTexUnits:I

.field protected _pbufferSupported:Z

.field protected _shadingLanguageVersion:Ljava/lang/String;

.field protected _stencilWrapSupport:Z

.field protected _supportsAniso:Z

.field protected _supportsBorderClamp:Z

.field protected _supportsConstantColor:Z

.field protected _supportsDepthTexture:Z

.field protected _supportsEdgeClamp:Z

.field protected _supportsEnvCombine:Z

.field protected _supportsEnvDot3:Z

.field protected _supportsEq:Z

.field protected _supportsFogCoords:Z

.field protected _supportsFragmentProgram:Z

.field protected _supportsGL1_2:Z

.field protected _supportsGenericCompression:Z

.field protected _supportsLATCCompression:Z

.field protected _supportsMinMax:Z

.field protected _supportsMirrorBorderClamp:Z

.field protected _supportsMirrorClamp:Z

.field protected _supportsMirrorEdgeClamp:Z

.field protected _supportsMirroredRepeat:Z

.field protected _supportsMultiTexture:Z

.field protected _supportsMultisample:Z

.field protected _supportsNonPowerTwo:Z

.field protected _supportsPointParameters:Z

.field protected _supportsPointSprites:Z

.field protected _supportsRectangular:Z

.field protected _supportsS3TCCompression:Z

.field protected _supportsSeparateEq:Z

.field protected _supportsSeparateFunc:Z

.field protected _supportsShadow:Z

.field protected _supportsSubtract:Z

.field protected _supportsTexture3D:Z

.field protected _supportsTextureCubeMap:Z

.field protected _supportsTextureLodBias:Z

.field protected _supportsVBO:Z

.field protected _supportsVertexProgram:Z

.field protected _twoSidedStencilSupport:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsVBO:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsGL1_2:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsMultisample:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsConstantColor:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsEq:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsSeparateEq:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsSeparateFunc:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsMinMax:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsSubtract:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsFogCoords:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsPointSprites:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsPointParameters:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsTextureLodBias:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_maxTextureLodBias:F

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsFragmentProgram:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsVertexProgram:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_glslSupported:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_geometryShader4Supported:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_pbufferSupported:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_fboSupported:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_maxFBOColorAttachments:I

    iput v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_maxFBOSamples:I

    iput v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_maxUserClipPlanes:I

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_twoSidedStencilSupport:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_stencilWrapSupport:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_numAuxDrawBuffers:I

    iput v1, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_numTotalTexUnits:I

    iput v1, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_numFixedTexUnits:I

    iput v1, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_numVertexTexUnits:I

    iput v1, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_numFragmentTexUnits:I

    iput v1, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_numFragmentTexCoordUnits:I

    iput v1, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_maxTextureSize:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_maxAnisotropic:F

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsMultiTexture:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsEnvDot3:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsEnvCombine:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsAniso:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsNonPowerTwo:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsRectangular:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsS3TCCompression:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsLATCCompression:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsGenericCompression:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsTexture3D:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsTextureCubeMap:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_automaticMipMaps:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsDepthTexture:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsShadow:Z

    return-void
.end method


# virtual methods
.method public getDisplayRenderer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_displayRenderer:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_displayVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_displayVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAnisotropic()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_maxAnisotropic:F

    return v0
.end method

.method public getMaxFBOColorAttachments()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_maxFBOColorAttachments:I

    return v0
.end method

.method public getMaxFBOSamples()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_maxFBOSamples:I

    return v0
.end method

.method public getMaxGLSLVertexAttributes()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_maxGLSLVertexAttribs:I

    return v0
.end method

.method public getMaxLodBias()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_maxTextureLodBias:F

    return v0
.end method

.method public getMaxTextureSize()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_maxTextureSize:I

    return v0
.end method

.method public getMaxUserClipPlanes()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_maxUserClipPlanes:I

    return v0
.end method

.method public getNumberOfAuxiliaryDrawBuffers()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_numAuxDrawBuffers:I

    return v0
.end method

.method public getNumberOfFixedTextureUnits()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_numFixedTexUnits:I

    return v0
.end method

.method public getNumberOfFragmentTexCoordUnits()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_numFragmentTexCoordUnits:I

    return v0
.end method

.method public getNumberOfFragmentTextureUnits()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_numFragmentTexUnits:I

    return v0
.end method

.method public getNumberOfTotalTextureUnits()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_numTotalTexUnits:I

    return v0
.end method

.method public getNumberOfVertexUnits()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_numVertexTexUnits:I

    return v0
.end method

.method public getShadingLanguageVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_shadingLanguageVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalNumberOfUnits()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_numTotalTexUnits:I

    return v0
.end method

.method public isARBShadowSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsShadow:Z

    return v0
.end method

.method public isAnisoSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsAniso:Z

    return v0
.end method

.method public isAutomaticMipmapsSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_automaticMipMaps:Z

    return v0
.end method

.method public isBlendEquationSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsEq:Z

    return v0
.end method

.method public isConstantBlendColorSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsConstantColor:Z

    return v0
.end method

.method public isDepthTextureSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsDepthTexture:Z

    return v0
.end method

.method public isEnvCombineSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsEnvCombine:Z

    return v0
.end method

.method public isEnvDot3TextureCombineSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsEnvDot3:Z

    return v0
.end method

.method public isFBOSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_fboSupported:Z

    return v0
.end method

.method public isFogCoordinatesSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsFogCoords:Z

    return v0
.end method

.method public isFragmentProgramSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsFragmentProgram:Z

    return v0
.end method

.method public isGLSLSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_glslSupported:Z

    return v0
.end method

.method public isGenericTCSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsGenericCompression:Z

    return v0
.end method

.method public isGeometryShader4Supported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_geometryShader4Supported:Z

    return v0
.end method

.method public isLATCSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsLATCCompression:Z

    return v0
.end method

.method public isMinMaxBlendEquationsSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsMinMax:Z

    return v0
.end method

.method public isMultisampleSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsMultisample:Z

    return v0
.end method

.method public isMultitextureSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsMultiTexture:Z

    return v0
.end method

.method public isNonPowerOfTwoTextureSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsNonPowerTwo:Z

    return v0
.end method

.method public isOpenGL1_2Supported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsGL1_2:Z

    return v0
.end method

.method public isPbufferSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_pbufferSupported:Z

    return v0
.end method

.method public isPointParametersSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsPointParameters:Z

    return v0
.end method

.method public isPointSpritesSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsPointSprites:Z

    return v0
.end method

.method public isRectangularTextureSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsRectangular:Z

    return v0
.end method

.method public isS3TCSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsS3TCCompression:Z

    return v0
.end method

.method public isSeparateBlendEquationsSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsSeparateEq:Z

    return v0
.end method

.method public isSeparateBlendFunctionsSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsSeparateFunc:Z

    return v0
.end method

.method public isStencilWrapSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_stencilWrapSupport:Z

    return v0
.end method

.method public isSubtractBlendEquationsSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsSubtract:Z

    return v0
.end method

.method public isTexture3DSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsTexture3D:Z

    return v0
.end method

.method public isTextureBorderClampSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsBorderClamp:Z

    return v0
.end method

.method public isTextureCubeMapSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsTextureCubeMap:Z

    return v0
.end method

.method public isTextureEdgeClampSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsEdgeClamp:Z

    return v0
.end method

.method public isTextureLodBiasSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsTextureLodBias:Z

    return v0
.end method

.method public isTextureMirrorBorderClampSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsMirrorBorderClamp:Z

    return v0
.end method

.method public isTextureMirrorClampSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsMirrorClamp:Z

    return v0
.end method

.method public isTextureMirrorEdgeClampSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsMirrorClamp:Z

    return v0
.end method

.method public isTextureMirroredRepeatSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsMirroredRepeat:Z

    return v0
.end method

.method public isTwoSidedStencilSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_twoSidedStencilSupport:Z

    return v0
.end method

.method public isVBOSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsVBO:Z

    return v0
.end method

.method public isVertexProgramSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/ContextCapabilities;->_supportsVertexProgram:Z

    return v0
.end method
