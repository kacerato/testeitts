package com.ardor3d.renderer;

public class ContextCapabilities {
    protected String _displayRenderer;
    protected String _displayVendor;
    protected String _displayVersion;
    protected int _maxGLSLVertexAttribs;
    protected String _shadingLanguageVersion;
    protected boolean _supportsBorderClamp;
    protected boolean _supportsEdgeClamp;
    protected boolean _supportsMirrorBorderClamp;
    protected boolean _supportsMirrorClamp;
    protected boolean _supportsMirrorEdgeClamp;
    protected boolean _supportsMirroredRepeat;
    protected boolean _supportsVBO = false;
    protected boolean _supportsGL1_2 = false;
    protected boolean _supportsMultisample = false;
    protected boolean _supportsConstantColor = false;
    protected boolean _supportsEq = false;
    protected boolean _supportsSeparateEq = false;
    protected boolean _supportsSeparateFunc = false;
    protected boolean _supportsMinMax = false;
    protected boolean _supportsSubtract = false;
    protected boolean _supportsFogCoords = false;
    protected boolean _supportsPointSprites = false;
    protected boolean _supportsPointParameters = false;
    protected boolean _supportsTextureLodBias = false;
    protected float _maxTextureLodBias = 0.0f;
    protected boolean _supportsFragmentProgram = false;
    protected boolean _supportsVertexProgram = false;
    protected boolean _glslSupported = false;
    protected boolean _geometryShader4Supported = false;
    protected boolean _pbufferSupported = false;
    protected boolean _fboSupported = false;
    protected int _maxFBOColorAttachments = 1;
    protected int _maxFBOSamples = 0;
    protected int _maxUserClipPlanes = 0;
    protected boolean _twoSidedStencilSupport = false;
    protected boolean _stencilWrapSupport = false;
    protected int _numAuxDrawBuffers = -1;
    protected int _numTotalTexUnits = -1;
    protected int _numFixedTexUnits = -1;
    protected int _numVertexTexUnits = -1;
    protected int _numFragmentTexUnits = -1;
    protected int _numFragmentTexCoordUnits = -1;
    protected int _maxTextureSize = -1;
    protected float _maxAnisotropic = -1.0f;
    protected boolean _supportsMultiTexture = false;
    protected boolean _supportsEnvDot3 = false;
    protected boolean _supportsEnvCombine = false;
    protected boolean _supportsAniso = false;
    protected boolean _supportsNonPowerTwo = false;
    protected boolean _supportsRectangular = false;
    protected boolean _supportsS3TCCompression = false;
    protected boolean _supportsLATCCompression = false;
    protected boolean _supportsGenericCompression = false;
    protected boolean _supportsTexture3D = false;
    protected boolean _supportsTextureCubeMap = false;
    protected boolean _automaticMipMaps = false;
    protected boolean _supportsDepthTexture = false;
    protected boolean _supportsShadow = false;

    public String getDisplayRenderer() {
        return this._displayRenderer;
    }

    public String getDisplayVendor() {
        return this._displayVendor;
    }

    public String getDisplayVersion() {
        return this._displayVersion;
    }

    public float getMaxAnisotropic() {
        return this._maxAnisotropic;
    }

    public int getMaxFBOColorAttachments() {
        return this._maxFBOColorAttachments;
    }

    public int getMaxFBOSamples() {
        return this._maxFBOSamples;
    }

    public int getMaxGLSLVertexAttributes() {
        return this._maxGLSLVertexAttribs;
    }

    public float getMaxLodBias() {
        return this._maxTextureLodBias;
    }

    public int getMaxTextureSize() {
        return this._maxTextureSize;
    }

    public int getMaxUserClipPlanes() {
        return this._maxUserClipPlanes;
    }

    public int getNumberOfAuxiliaryDrawBuffers() {
        return this._numAuxDrawBuffers;
    }

    public int getNumberOfFixedTextureUnits() {
        return this._numFixedTexUnits;
    }

    public int getNumberOfFragmentTexCoordUnits() {
        return this._numFragmentTexCoordUnits;
    }

    public int getNumberOfFragmentTextureUnits() {
        return this._numFragmentTexUnits;
    }

    public int getNumberOfTotalTextureUnits() {
        return this._numTotalTexUnits;
    }

    public int getNumberOfVertexUnits() {
        return this._numVertexTexUnits;
    }

    public String getShadingLanguageVersion() {
        return this._shadingLanguageVersion;
    }

    public int getTotalNumberOfUnits() {
        return this._numTotalTexUnits;
    }

    public boolean isARBShadowSupported() {
        return this._supportsShadow;
    }

    public boolean isAnisoSupported() {
        return this._supportsAniso;
    }

    public boolean isAutomaticMipmapsSupported() {
        return this._automaticMipMaps;
    }

    public boolean isBlendEquationSupported() {
        return this._supportsEq;
    }

    public boolean isConstantBlendColorSupported() {
        return this._supportsConstantColor;
    }

    public boolean isDepthTextureSupported() {
        return this._supportsDepthTexture;
    }

    public boolean isEnvCombineSupported() {
        return this._supportsEnvCombine;
    }

    public boolean isEnvDot3TextureCombineSupported() {
        return this._supportsEnvDot3;
    }

    public boolean isFBOSupported() {
        return this._fboSupported;
    }

    public boolean isFogCoordinatesSupported() {
        return this._supportsFogCoords;
    }

    public boolean isFragmentProgramSupported() {
        return this._supportsFragmentProgram;
    }

    public boolean isGLSLSupported() {
        return this._glslSupported;
    }

    public boolean isGenericTCSupported() {
        return this._supportsGenericCompression;
    }

    public boolean isGeometryShader4Supported() {
        return this._geometryShader4Supported;
    }

    public boolean isLATCSupported() {
        return this._supportsLATCCompression;
    }

    public boolean isMinMaxBlendEquationsSupported() {
        return this._supportsMinMax;
    }

    public boolean isMultisampleSupported() {
        return this._supportsMultisample;
    }

    public boolean isMultitextureSupported() {
        return this._supportsMultiTexture;
    }

    public boolean isNonPowerOfTwoTextureSupported() {
        return this._supportsNonPowerTwo;
    }

    public boolean isOpenGL1_2Supported() {
        return this._supportsGL1_2;
    }

    public boolean isPbufferSupported() {
        return this._pbufferSupported;
    }

    public boolean isPointParametersSupported() {
        return this._supportsPointParameters;
    }

    public boolean isPointSpritesSupported() {
        return this._supportsPointSprites;
    }

    public boolean isRectangularTextureSupported() {
        return this._supportsRectangular;
    }

    public boolean isS3TCSupported() {
        return this._supportsS3TCCompression;
    }

    public boolean isSeparateBlendEquationsSupported() {
        return this._supportsSeparateEq;
    }

    public boolean isSeparateBlendFunctionsSupported() {
        return this._supportsSeparateFunc;
    }

    public boolean isStencilWrapSupported() {
        return this._stencilWrapSupport;
    }

    public boolean isSubtractBlendEquationsSupported() {
        return this._supportsSubtract;
    }

    public boolean isTexture3DSupported() {
        return this._supportsTexture3D;
    }

    public boolean isTextureBorderClampSupported() {
        return this._supportsBorderClamp;
    }

    public boolean isTextureCubeMapSupported() {
        return this._supportsTextureCubeMap;
    }

    public boolean isTextureEdgeClampSupported() {
        return this._supportsEdgeClamp;
    }

    public boolean isTextureLodBiasSupported() {
        return this._supportsTextureLodBias;
    }

    public boolean isTextureMirrorBorderClampSupported() {
        return this._supportsMirrorBorderClamp;
    }

    public boolean isTextureMirrorClampSupported() {
        return this._supportsMirrorClamp;
    }

    public boolean isTextureMirrorEdgeClampSupported() {
        return this._supportsMirrorClamp;
    }

    public boolean isTextureMirroredRepeatSupported() {
        return this._supportsMirroredRepeat;
    }

    public boolean isTwoSidedStencilSupported() {
        return this._twoSidedStencilSupport;
    }

    public boolean isVBOSupported() {
        return this._supportsVBO;
    }

    public boolean isVertexProgramSupported() {
        return this._supportsVertexProgram;
    }
}
