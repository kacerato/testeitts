package com.jme3.renderer;

import com.jme3.shader.Shader;
import com.jme3.texture.FrameBuffer;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import java.net.HttpURLConnection;
import java.util.Collection;

public enum Caps {
    FrameBuffer,
    FrameBufferMRT,
    FrameBufferMultisample,
    TextureMultisample,
    OpenGL20,
    OpenGL21,
    OpenGL30,
    OpenGL31,
    OpenGL32,
    OpenGL33,
    OpenGL40,
    OpenGL41,
    OpenGL42,
    OpenGL43,
    OpenGL44,
    OpenGL45,
    Reserved0,
    GLSL100,
    GLSL110,
    GLSL120,
    GLSL130,
    GLSL140,
    GLSL150,
    GLSL330,
    GLSL400,
    GLSL410,
    GLSL420,
    GLSL430,
    GLSL440,
    GLSL450,
    VertexTextureFetch,
    GeometryShader,
    TesselationShader,
    TextureArray,
    TextureBuffer,
    FloatTexture,
    HalfFloatTexture,
    FloatTextureFilter,
    HalfFloatTextureFilter,
    FloatColorBufferRGB,
    FloatColorBufferR,
    FloatColorBufferRG,
    FloatColorBufferRGBA,
    HalfFloatColorBufferR,
    HalfFloatColorBufferRG,
    HalfFloatColorBufferRGB,
    HalfFloatColorBufferRGBA,
    IntegerTexture,
    FloatColorBuffer,
    FloatDepthBuffer,
    Depth32,
    PackedFloatTexture,
    SharedExponentTexture,
    PackedFloatColorBuffer,
    SharedExponentColorBuffer,
    Reserved1,
    NonPowerOfTwoTextures,
    MeshInstancing,
    VertexBufferArray,
    Multisample,
    PackedDepthStencilBuffer,
    Srgb,
    SrgbWriteControl,
    FrameBufferBlit,
    TextureCompressionS3TC,
    TextureFilterAnisotropic,
    TextureCompressionETC1,
    TextureCompressionETC2,
    TextureCompressionBPTC,
    TextureCompressionRGTC,
    OpenGLES20,
    WebGL,
    Rgba8,
    DepthTexture,
    IntegerIndexBuffer,
    PartialNonPowerOfTwoTextures,
    SeamlessCubemap,
    CoreProfile,
    BinaryShader,
    UniformBufferObject,
    ShaderStorageBufferObject,
    OpenGLES30,
    GLSL300,
    OpenGLES31,
    GLSL310,
    OpenGLES32,
    GLSL320,
    Depth24,
    UnpackRowLength,
    GLDebug;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$texture$Image$Format;

        static {
            int[] iArr = new int[Image.Format.values().length];
            $SwitchMap$com$jme3$texture$Image$Format = iArr;
            try {
                iArr[Image.Format.Depth24Stencil8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.Depth32F.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.Depth32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.Depth24.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.RGB16F_to_RGB111110F.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.RGB111110F.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.RGB16F_to_RGB9E5.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.RGB9E5.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.Luminance16F.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.Luminance16FAlpha16F.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.RGB16F.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.RGBA16F.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.R16F.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.RG16F.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.Luminance32F.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.RGB32F.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.RGBA32F.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.R32F.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.RG32F.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    public static boolean supports(Collection<Caps> collection, Texture texture) {
        if (texture.getType() == Texture.Type.TwoDimensionalArray && !collection.contains(TextureArray)) {
            return false;
        }
        Image image = texture.getImage();
        if (image == null) {
            return true;
        }
        Image.Format format = image.getFormat();
        switch (AnonymousClass1.$SwitchMap$com$jme3$texture$Image$Format[format.ordinal()]) {
            case 1:
                return collection.contains(PackedDepthStencilBuffer);
            case 2:
                return collection.contains(FloatDepthBuffer);
            case 3:
                return collection.contains(Depth32);
            case 4:
                return collection.contains(Depth24);
            case 5:
                return collection.contains(HalfFloatTexture) && collection.contains(PackedFloatTexture);
            case 6:
                return collection.contains(PackedFloatTexture);
            case 7:
                return collection.contains(HalfFloatTexture) && collection.contains(SharedExponentTexture);
            case 8:
                return collection.contains(SharedExponentTexture);
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
                return collection.contains(HalfFloatTexture);
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                return collection.contains(FloatTexture);
            default:
                if (format.isFloatingPont()) {
                    return collection.contains(FloatTexture) || collection.contains(HalfFloatTexture);
                }
                return true;
        }
    }

    private static boolean supportsColorBuffer(Collection<Caps> collection, FrameBuffer.RenderBuffer renderBuffer) {
        Image.Format format = renderBuffer.getFormat();
        if (format.isDepthFormat() || format.isCompressed()) {
            return false;
        }
        switch (AnonymousClass1.$SwitchMap$com$jme3$texture$Image$Format[format.ordinal()]) {
            case 5:
            case 7:
            case 8:
                return false;
            case 6:
                return collection.contains(PackedFloatColorBuffer);
            case 9:
            case 13:
                return collection.contains(HalfFloatColorBufferR);
            case 10:
            case 14:
                return collection.contains(HalfFloatColorBufferRG);
            case 11:
                return collection.contains(HalfFloatColorBufferRGB);
            case 12:
                return collection.contains(HalfFloatColorBufferRGBA);
            case 15:
            case 18:
                return collection.contains(FloatColorBufferR);
            case 16:
                return collection.contains(FloatColorBufferRGB);
            case 17:
                return collection.contains(FloatColorBufferRGBA);
            case 19:
                return collection.contains(FloatColorBufferRG);
            default:
                return !format.isFloatingPont();
        }
    }

    public static boolean supports(Collection<Caps> collection, FrameBuffer frameBuffer) {
        if (!collection.contains(FrameBuffer)) {
            return false;
        }
        if (frameBuffer.getSamples() > 1 && !collection.contains(FrameBufferMultisample)) {
            return false;
        }
        FrameBuffer.RenderBuffer depthBuffer = frameBuffer.getDepthBuffer();
        if (depthBuffer != null) {
            Image.Format format = depthBuffer.getFormat();
            if (!format.isDepthFormat()) {
                return false;
            }
            if (format == Image.Format.Depth32F && !collection.contains(FloatDepthBuffer)) {
                return false;
            }
            if (format == Image.Format.Depth24Stencil8 && !collection.contains(PackedDepthStencilBuffer)) {
                return false;
            }
            if (format == Image.Format.Depth32 && !collection.contains(Depth32)) {
                return false;
            }
            if (format == Image.Format.Depth24 && !collection.contains(Depth24)) {
                return false;
            }
        }
        for (int i10 = 0; i10 < frameBuffer.getNumColorBuffers(); i10++) {
            if (!supportsColorBuffer(collection, frameBuffer.getColorBuffer(i10))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x002e. Please report as an issue. */
    public static boolean supports(Collection<Caps> collection, Shader shader) {
        for (Shader.ShaderSource shaderSource : shader.getSources()) {
            if (shaderSource.getLanguage().startsWith("GLSL")) {
                switch (Integer.parseInt(shaderSource.getLanguage().substring(4))) {
                    case 100:
                        if (!collection.contains(GLSL100)) {
                            return false;
                        }
                    case 110:
                        if (!collection.contains(GLSL110)) {
                            return false;
                        }
                    case 120:
                        if (!collection.contains(GLSL120)) {
                            return false;
                        }
                    case 130:
                        if (!collection.contains(GLSL130)) {
                            return false;
                        }
                    case 140:
                        if (!collection.contains(GLSL140)) {
                            return false;
                        }
                    case 150:
                        if (!collection.contains(GLSL150)) {
                            return false;
                        }
                    case 330:
                        if (!collection.contains(GLSL330)) {
                            return false;
                        }
                    case 400:
                        if (!collection.contains(GLSL400)) {
                            return false;
                        }
                    case HttpURLConnection.HTTP_GONE:
                        if (!collection.contains(GLSL410)) {
                            return false;
                        }
                    case 420:
                        if (!collection.contains(GLSL420)) {
                            return false;
                        }
                    case 430:
                        if (!collection.contains(GLSL430)) {
                            return false;
                        }
                    case 440:
                        if (!collection.contains(GLSL440)) {
                            return false;
                        }
                    case 450:
                        collection.contains(GLSL450);
                        return false;
                    default:
                        return false;
                }
            }
        }
        return true;
    }
}
