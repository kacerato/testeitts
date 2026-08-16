package com.jme3.renderer.opengl;

import b3.s;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.math.FastMath;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.opencl.OpenCLObjectManager;
import com.jme3.renderer.Caps;
import com.jme3.renderer.IDList;
import com.jme3.renderer.Limits;
import com.jme3.renderer.RenderContext;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.RendererException;
import com.jme3.renderer.Statistics;
import com.jme3.renderer.TextureUnitException;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.shader.Attribute;
import com.jme3.shader.Shader;
import com.jme3.shader.ShaderBufferBlock;
import com.jme3.shader.Uniform;
import com.jme3.shader.VarType;
import com.jme3.shader.bufferobject.BufferObject;
import com.jme3.shader.bufferobject.BufferRegion;
import com.jme3.shader.bufferobject.DirtyRegionsIterator;
import com.jme3.system.JmeSystem;
import com.jme3.system.Platform;
import com.jme3.texture.FrameBuffer;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import com.jme3.texture.Texture2D;
import com.jme3.texture.TextureImage;
import com.jme3.texture.image.ColorSpace;
import com.jme3.texture.image.LastTextureState;
import com.jme3.util.BufferUtils;
import com.jme3.util.ListMap;
import com.jme3.util.MipMapGenerator;
import com.jme3.util.NativeObject;
import com.jme3.util.NativeObjectManager;
import gf.b;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class GLRenderer implements Renderer {
    static final boolean $assertionsDisabled = false;
    private static final boolean VALIDATE_SHADER = false;
    private int clipH;
    private int clipW;
    private int clipX;
    private int clipY;
    private HashSet<String> extensions;

    private final GL f81623gl;
    private final GL2 gl2;
    private final GL3 gl3;
    private final GL4 gl4;
    private final GLExt glext;
    private final GLFbo glfbo;
    private boolean linearizeSrgbImages;
    private boolean mainFrameBufferSrgb;
    private final TextureUtil texUtil;
    private int vpH;
    private int vpW;
    private int vpX;
    private int vpY;
    private static final Logger logger = Logger.getLogger(GLRenderer.class.getName());
    private static final Pattern GLVERSION_PATTERN = Pattern.compile(".*?(\\d+)\\.(\\d+).*");
    private final ByteBuffer nameBuf = BufferUtils.createByteBuffer(250);
    private final FloatBuffer floatBuf16 = BufferUtils.createFloatBuffer(16);
    private final StringBuilder stringBuf = new StringBuilder(250);
    private final IntBuffer intBuf1 = BufferUtils.createIntBuffer(1);
    private final IntBuffer intBuf16 = BufferUtils.createIntBuffer(16);
    private final RenderContext context = new RenderContext();
    private final NativeObjectManager objManager = new NativeObjectManager();
    private final EnumSet<Caps> caps = EnumSet.noneOf(Caps.class);
    private final EnumMap<Limits, Integer> limits = new EnumMap<>(Limits.class);
    private FrameBuffer mainFbOverride = null;
    private int defaultFBO = 0;
    private final Statistics statistics = new Statistics();
    private int defaultAnisotropicFilter = 1;
    private boolean generateMipmapsForFramebuffers = true;
    private boolean debug = false;
    private int debugGroupId = 0;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$material$RenderState$BlendEquation;
        static final int[] $SwitchMap$com$jme3$material$RenderState$BlendEquationAlpha;
        static final int[] $SwitchMap$com$jme3$material$RenderState$BlendFunc;
        static final int[] $SwitchMap$com$jme3$material$RenderState$BlendMode;
        static final int[] $SwitchMap$com$jme3$material$RenderState$FaceCullMode;
        static final int[] $SwitchMap$com$jme3$material$RenderState$StencilOperation;
        static final int[] $SwitchMap$com$jme3$material$RenderState$TestFunction;
        static final int[] $SwitchMap$com$jme3$scene$Mesh$Mode;
        static final int[] $SwitchMap$com$jme3$scene$VertexBuffer$Format;
        static final int[] $SwitchMap$com$jme3$scene$VertexBuffer$Usage;
        static final int[] $SwitchMap$com$jme3$shader$Shader$ShaderType;
        static final int[] $SwitchMap$com$jme3$shader$ShaderBufferBlock$BufferType;
        static final int[] $SwitchMap$com$jme3$shader$VarType;
        static final int[] $SwitchMap$com$jme3$shader$bufferobject$BufferObject$AccessHint;
        static final int[] $SwitchMap$com$jme3$shader$bufferobject$BufferObject$NatureHint;
        static final int[] $SwitchMap$com$jme3$texture$Texture$MagFilter;
        static final int[] $SwitchMap$com$jme3$texture$Texture$MinFilter;
        static final int[] $SwitchMap$com$jme3$texture$Texture$Type;
        static final int[] $SwitchMap$com$jme3$texture$Texture$WrapMode;

        static {
            int[] iArr = new int[Mesh.Mode.values().length];
            $SwitchMap$com$jme3$scene$Mesh$Mode = iArr;
            try {
                iArr[Mesh.Mode.Points.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.Lines.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.LineLoop.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.LineStrip.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.Triangles.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.TriangleFan.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.TriangleStrip.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.Patch.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[BufferObject.AccessHint.values().length];
            $SwitchMap$com$jme3$shader$bufferobject$BufferObject$AccessHint = iArr2;
            try {
                iArr2[BufferObject.AccessHint.Dynamic.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$jme3$shader$bufferobject$BufferObject$AccessHint[BufferObject.AccessHint.Stream.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$jme3$shader$bufferobject$BufferObject$AccessHint[BufferObject.AccessHint.Static.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            int[] iArr3 = new int[BufferObject.NatureHint.values().length];
            $SwitchMap$com$jme3$shader$bufferobject$BufferObject$NatureHint = iArr3;
            try {
                iArr3[BufferObject.NatureHint.Draw.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$jme3$shader$bufferobject$BufferObject$NatureHint[BufferObject.NatureHint.Read.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$jme3$shader$bufferobject$BufferObject$NatureHint[BufferObject.NatureHint.Copy.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
            int[] iArr4 = new int[VertexBuffer.Format.values().length];
            $SwitchMap$com$jme3$scene$VertexBuffer$Format = iArr4;
            try {
                iArr4[VertexBuffer.Format.Byte.ordinal()] = 1;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.UnsignedByte.ordinal()] = 2;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.Short.ordinal()] = 3;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.UnsignedShort.ordinal()] = 4;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.Int.ordinal()] = 5;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.UnsignedInt.ordinal()] = 6;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.Float.ordinal()] = 7;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.Double.ordinal()] = 8;
            } catch (NoSuchFieldError unused22) {
            }
            int[] iArr5 = new int[VertexBuffer.Usage.values().length];
            $SwitchMap$com$jme3$scene$VertexBuffer$Usage = iArr5;
            try {
                iArr5[VertexBuffer.Usage.Static.ordinal()] = 1;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Usage[VertexBuffer.Usage.Dynamic.ordinal()] = 2;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Usage[VertexBuffer.Usage.Stream.ordinal()] = 3;
            } catch (NoSuchFieldError unused25) {
            }
            int[] iArr6 = new int[Texture.WrapMode.values().length];
            $SwitchMap$com$jme3$texture$Texture$WrapMode = iArr6;
            try {
                iArr6[Texture.WrapMode.BorderClamp.ordinal()] = 1;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$WrapMode[Texture.WrapMode.Clamp.ordinal()] = 2;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$WrapMode[Texture.WrapMode.EdgeClamp.ordinal()] = 3;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$WrapMode[Texture.WrapMode.Repeat.ordinal()] = 4;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$WrapMode[Texture.WrapMode.MirroredRepeat.ordinal()] = 5;
            } catch (NoSuchFieldError unused30) {
            }
            int[] iArr7 = new int[Texture.MinFilter.values().length];
            $SwitchMap$com$jme3$texture$Texture$MinFilter = iArr7;
            try {
                iArr7[Texture.MinFilter.Trilinear.ordinal()] = 1;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$MinFilter[Texture.MinFilter.BilinearNearestMipMap.ordinal()] = 2;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$MinFilter[Texture.MinFilter.NearestLinearMipMap.ordinal()] = 3;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$MinFilter[Texture.MinFilter.NearestNearestMipMap.ordinal()] = 4;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$MinFilter[Texture.MinFilter.BilinearNoMipMaps.ordinal()] = 5;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$MinFilter[Texture.MinFilter.NearestNoMipMaps.ordinal()] = 6;
            } catch (NoSuchFieldError unused36) {
            }
            int[] iArr8 = new int[Texture.MagFilter.values().length];
            $SwitchMap$com$jme3$texture$Texture$MagFilter = iArr8;
            try {
                iArr8[Texture.MagFilter.Bilinear.ordinal()] = 1;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$MagFilter[Texture.MagFilter.Nearest.ordinal()] = 2;
            } catch (NoSuchFieldError unused38) {
            }
            int[] iArr9 = new int[Texture.Type.values().length];
            $SwitchMap$com$jme3$texture$Texture$Type = iArr9;
            try {
                iArr9[Texture.Type.TwoDimensional.ordinal()] = 1;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$Type[Texture.Type.TwoDimensionalArray.ordinal()] = 2;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$Type[Texture.Type.ThreeDimensional.ordinal()] = 3;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$Type[Texture.Type.CubeMap.ordinal()] = 4;
            } catch (NoSuchFieldError unused42) {
            }
            int[] iArr10 = new int[Shader.ShaderType.values().length];
            $SwitchMap$com$jme3$shader$Shader$ShaderType = iArr10;
            try {
                iArr10[Shader.ShaderType.Fragment.ordinal()] = 1;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                $SwitchMap$com$jme3$shader$Shader$ShaderType[Shader.ShaderType.Vertex.ordinal()] = 2;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                $SwitchMap$com$jme3$shader$Shader$ShaderType[Shader.ShaderType.Geometry.ordinal()] = 3;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                $SwitchMap$com$jme3$shader$Shader$ShaderType[Shader.ShaderType.TessellationControl.ordinal()] = 4;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                $SwitchMap$com$jme3$shader$Shader$ShaderType[Shader.ShaderType.TessellationEvaluation.ordinal()] = 5;
            } catch (NoSuchFieldError unused47) {
            }
            int[] iArr11 = new int[ShaderBufferBlock.BufferType.values().length];
            $SwitchMap$com$jme3$shader$ShaderBufferBlock$BufferType = iArr11;
            try {
                iArr11[ShaderBufferBlock.BufferType.UniformBufferObject.ordinal()] = 1;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                $SwitchMap$com$jme3$shader$ShaderBufferBlock$BufferType[ShaderBufferBlock.BufferType.ShaderStorageBufferObject.ordinal()] = 2;
            } catch (NoSuchFieldError unused49) {
            }
            int[] iArr12 = new int[VarType.values().length];
            $SwitchMap$com$jme3$shader$VarType = iArr12;
            try {
                iArr12[VarType.Float.ordinal()] = 1;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector2.ordinal()] = 2;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector3.ordinal()] = 3;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector4.ordinal()] = 4;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Boolean.ordinal()] = 5;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Matrix3.ordinal()] = 6;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Matrix4.ordinal()] = 7;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.IntArray.ordinal()] = 8;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.FloatArray.ordinal()] = 9;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector2Array.ordinal()] = 10;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector3Array.ordinal()] = 11;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector4Array.ordinal()] = 12;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Matrix4Array.ordinal()] = 13;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Int.ordinal()] = 14;
            } catch (NoSuchFieldError unused63) {
            }
            int[] iArr13 = new int[RenderState.TestFunction.values().length];
            $SwitchMap$com$jme3$material$RenderState$TestFunction = iArr13;
            try {
                iArr13[RenderState.TestFunction.Never.ordinal()] = 1;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$TestFunction[RenderState.TestFunction.Less.ordinal()] = 2;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$TestFunction[RenderState.TestFunction.LessOrEqual.ordinal()] = 3;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$TestFunction[RenderState.TestFunction.Greater.ordinal()] = 4;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$TestFunction[RenderState.TestFunction.GreaterOrEqual.ordinal()] = 5;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$TestFunction[RenderState.TestFunction.Equal.ordinal()] = 6;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$TestFunction[RenderState.TestFunction.NotEqual.ordinal()] = 7;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$TestFunction[RenderState.TestFunction.Always.ordinal()] = 8;
            } catch (NoSuchFieldError unused71) {
            }
            int[] iArr14 = new int[RenderState.StencilOperation.values().length];
            $SwitchMap$com$jme3$material$RenderState$StencilOperation = iArr14;
            try {
                iArr14[RenderState.StencilOperation.Keep.ordinal()] = 1;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$StencilOperation[RenderState.StencilOperation.Zero.ordinal()] = 2;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$StencilOperation[RenderState.StencilOperation.Replace.ordinal()] = 3;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$StencilOperation[RenderState.StencilOperation.Increment.ordinal()] = 4;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$StencilOperation[RenderState.StencilOperation.IncrementWrap.ordinal()] = 5;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$StencilOperation[RenderState.StencilOperation.Decrement.ordinal()] = 6;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$StencilOperation[RenderState.StencilOperation.DecrementWrap.ordinal()] = 7;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$StencilOperation[RenderState.StencilOperation.Invert.ordinal()] = 8;
            } catch (NoSuchFieldError unused79) {
            }
            int[] iArr15 = new int[RenderState.BlendFunc.values().length];
            $SwitchMap$com$jme3$material$RenderState$BlendFunc = iArr15;
            try {
                iArr15[RenderState.BlendFunc.Zero.ordinal()] = 1;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendFunc[RenderState.BlendFunc.One.ordinal()] = 2;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendFunc[RenderState.BlendFunc.Src_Color.ordinal()] = 3;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendFunc[RenderState.BlendFunc.One_Minus_Src_Color.ordinal()] = 4;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendFunc[RenderState.BlendFunc.Dst_Color.ordinal()] = 5;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendFunc[RenderState.BlendFunc.One_Minus_Dst_Color.ordinal()] = 6;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendFunc[RenderState.BlendFunc.Src_Alpha.ordinal()] = 7;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendFunc[RenderState.BlendFunc.One_Minus_Src_Alpha.ordinal()] = 8;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendFunc[RenderState.BlendFunc.Dst_Alpha.ordinal()] = 9;
            } catch (NoSuchFieldError unused88) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendFunc[RenderState.BlendFunc.One_Minus_Dst_Alpha.ordinal()] = 10;
            } catch (NoSuchFieldError unused89) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendFunc[RenderState.BlendFunc.Src_Alpha_Saturate.ordinal()] = 11;
            } catch (NoSuchFieldError unused90) {
            }
            int[] iArr16 = new int[RenderState.BlendEquationAlpha.values().length];
            $SwitchMap$com$jme3$material$RenderState$BlendEquationAlpha = iArr16;
            try {
                iArr16[RenderState.BlendEquationAlpha.Add.ordinal()] = 1;
            } catch (NoSuchFieldError unused91) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendEquationAlpha[RenderState.BlendEquationAlpha.Subtract.ordinal()] = 2;
            } catch (NoSuchFieldError unused92) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendEquationAlpha[RenderState.BlendEquationAlpha.ReverseSubtract.ordinal()] = 3;
            } catch (NoSuchFieldError unused93) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendEquationAlpha[RenderState.BlendEquationAlpha.Min.ordinal()] = 4;
            } catch (NoSuchFieldError unused94) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendEquationAlpha[RenderState.BlendEquationAlpha.Max.ordinal()] = 5;
            } catch (NoSuchFieldError unused95) {
            }
            int[] iArr17 = new int[RenderState.BlendEquation.values().length];
            $SwitchMap$com$jme3$material$RenderState$BlendEquation = iArr17;
            try {
                iArr17[RenderState.BlendEquation.Add.ordinal()] = 1;
            } catch (NoSuchFieldError unused96) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendEquation[RenderState.BlendEquation.Subtract.ordinal()] = 2;
            } catch (NoSuchFieldError unused97) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendEquation[RenderState.BlendEquation.ReverseSubtract.ordinal()] = 3;
            } catch (NoSuchFieldError unused98) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendEquation[RenderState.BlendEquation.Min.ordinal()] = 4;
            } catch (NoSuchFieldError unused99) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendEquation[RenderState.BlendEquation.Max.ordinal()] = 5;
            } catch (NoSuchFieldError unused100) {
            }
            int[] iArr18 = new int[RenderState.BlendMode.values().length];
            $SwitchMap$com$jme3$material$RenderState$BlendMode = iArr18;
            try {
                iArr18[RenderState.BlendMode.Off.ordinal()] = 1;
            } catch (NoSuchFieldError unused101) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendMode[RenderState.BlendMode.Additive.ordinal()] = 2;
            } catch (NoSuchFieldError unused102) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendMode[RenderState.BlendMode.AlphaAdditive.ordinal()] = 3;
            } catch (NoSuchFieldError unused103) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendMode[RenderState.BlendMode.Alpha.ordinal()] = 4;
            } catch (NoSuchFieldError unused104) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendMode[RenderState.BlendMode.AlphaSumA.ordinal()] = 5;
            } catch (NoSuchFieldError unused105) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendMode[RenderState.BlendMode.PremultAlpha.ordinal()] = 6;
            } catch (NoSuchFieldError unused106) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendMode[RenderState.BlendMode.Modulate.ordinal()] = 7;
            } catch (NoSuchFieldError unused107) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendMode[RenderState.BlendMode.ModulateX2.ordinal()] = 8;
            } catch (NoSuchFieldError unused108) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendMode[RenderState.BlendMode.Color.ordinal()] = 9;
            } catch (NoSuchFieldError unused109) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendMode[RenderState.BlendMode.Screen.ordinal()] = 10;
            } catch (NoSuchFieldError unused110) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$BlendMode[RenderState.BlendMode.Exclusion.ordinal()] = 11;
            } catch (NoSuchFieldError unused111) {
            }
            int[] iArr19 = new int[RenderState.FaceCullMode.values().length];
            $SwitchMap$com$jme3$material$RenderState$FaceCullMode = iArr19;
            try {
                iArr19[RenderState.FaceCullMode.Off.ordinal()] = 1;
            } catch (NoSuchFieldError unused112) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$FaceCullMode[RenderState.FaceCullMode.Back.ordinal()] = 2;
            } catch (NoSuchFieldError unused113) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$FaceCullMode[RenderState.FaceCullMode.Front.ordinal()] = 3;
            } catch (NoSuchFieldError unused114) {
            }
            try {
                $SwitchMap$com$jme3$material$RenderState$FaceCullMode[RenderState.FaceCullMode.FrontAndBack.ordinal()] = 4;
            } catch (NoSuchFieldError unused115) {
            }
        }
    }

    public GLRenderer(GL gl2, GLExt gLExt, GLFbo gLFbo) {
        this.f81623gl = gl2;
        GL2 gl22 = gl2 instanceof GL2 ? (GL2) gl2 : null;
        this.gl2 = gl22;
        this.gl3 = gl2 instanceof GL3 ? (GL3) gl2 : null;
        this.gl4 = gl2 instanceof GL4 ? (GL4) gl2 : null;
        this.glfbo = gLFbo;
        this.glext = gLExt;
        this.texUtil = new TextureUtil(gl2, gl22, gLExt);
    }

    private void bindFrameBuffer(FrameBuffer frameBuffer) {
        if (frameBuffer != null) {
            if (this.context.boundFBO == frameBuffer.getId()) {
                this.statistics.onFrameBufferUse(frameBuffer, false);
                return;
            }
            this.glfbo.glBindFramebufferEXT(36160, frameBuffer.getId());
            this.context.boundFBO = frameBuffer.getId();
            this.context.boundFB = frameBuffer;
            this.statistics.onFrameBufferUse(frameBuffer, true);
            return;
        }
        int i10 = this.context.boundFBO;
        int i11 = this.defaultFBO;
        if (i10 != i11) {
            this.glfbo.glBindFramebufferEXT(36160, i11);
            this.statistics.onFrameBufferUse(null, true);
            RenderContext renderContext = this.context;
            renderContext.boundFBO = this.defaultFBO;
            renderContext.boundFB = null;
        }
    }

    private void bindShaderStorageBlock(int i10, int i11, int i12) {
        GL4 gl4 = this.gl4;
        if (gl4 != null) {
            gl4.glShaderStorageBlockBinding(i10, i11, i12);
        } else {
            this.glext.glShaderStorageBlockBinding(i10, i11, i12);
        }
    }

    private void bindShaderStorageBufferBase(int i10, int i11) {
        GL4 gl4 = this.gl4;
        if (gl4 != null) {
            gl4.glBindBufferBase(37074, i10, i11);
        } else {
            this.glext.glBindBufferBase(37074, i10, i11);
        }
    }

    private void bindTextureAndUnit(int i10, Image image, int i11) {
        if (this.context.boundTextureUnit != i11) {
            this.f81623gl.glActiveTexture(33984 + i11);
            this.context.boundTextureUnit = i11;
        }
        WeakReference<Image> weakReference = this.context.boundTextures[i11];
        if (weakReference != null && weakReference.get() == image.getWeakRef().get()) {
            this.statistics.onTextureUse(image, false);
            return;
        }
        this.f81623gl.glBindTexture(i10, image.getId());
        this.context.boundTextures[i11] = image.getWeakRef();
        this.statistics.onTextureUse(image, true);
    }

    private void bindTextureOnly(int i10, Image image, int i11) {
        WeakReference<Image> weakReference = this.context.boundTextures[i11];
        if (weakReference != null && weakReference.get() == image.getWeakRef().get()) {
            this.statistics.onTextureUse(image, false);
            return;
        }
        if (this.context.boundTextureUnit != i11) {
            this.f81623gl.glActiveTexture(33984 + i11);
            this.context.boundTextureUnit = i11;
        }
        this.f81623gl.glBindTexture(i10, image.getId());
        this.context.boundTextures[i11] = image.getWeakRef();
        this.statistics.onTextureUse(image, true);
    }

    private void bindUniformBlock(int i10, int i11, int i12) {
        GL3 gl3 = this.gl3;
        if (gl3 != null) {
            gl3.glUniformBlockBinding(i10, i11, i12);
        } else {
            this.glext.glUniformBlockBinding(i10, i11, i12);
        }
    }

    private void bindUniformBufferBase(int i10, int i11) {
        GL3 gl3 = this.gl3;
        if (gl3 != null) {
            gl3.glBindBufferBase(35345, i10, i11);
        } else {
            this.glext.glBindBufferBase(35345, i10, i11);
        }
    }

    private void blendEquationSeparate(RenderState.BlendEquation blendEquation, RenderState.BlendEquationAlpha blendEquationAlpha) {
        RenderContext renderContext = this.context;
        if (blendEquation == renderContext.blendEquation && blendEquationAlpha == renderContext.blendEquationAlpha) {
            return;
        }
        int convertBlendEquation = convertBlendEquation(blendEquation);
        this.f81623gl.glBlendEquationSeparate(convertBlendEquation, blendEquationAlpha == RenderState.BlendEquationAlpha.InheritColor ? convertBlendEquation : convertBlendEquationAlpha(blendEquationAlpha));
        RenderContext renderContext2 = this.context;
        renderContext2.blendEquation = blendEquation;
        renderContext2.blendEquationAlpha = blendEquationAlpha;
    }

    private void blendFunc(RenderState.BlendFunc blendFunc, RenderState.BlendFunc blendFunc2) {
        RenderContext renderContext = this.context;
        if (blendFunc == renderContext.sfactorRGB && blendFunc2 == renderContext.dfactorRGB && blendFunc == renderContext.sfactorAlpha && blendFunc2 == renderContext.dfactorAlpha) {
            return;
        }
        this.f81623gl.glBlendFunc(convertBlendFunc(blendFunc), convertBlendFunc(blendFunc2));
        RenderContext renderContext2 = this.context;
        renderContext2.sfactorRGB = blendFunc;
        renderContext2.dfactorRGB = blendFunc2;
        renderContext2.sfactorAlpha = blendFunc;
        renderContext2.dfactorAlpha = blendFunc2;
    }

    private void blendFuncSeparate(RenderState.BlendFunc blendFunc, RenderState.BlendFunc blendFunc2, RenderState.BlendFunc blendFunc3, RenderState.BlendFunc blendFunc4) {
        RenderContext renderContext = this.context;
        if (blendFunc == renderContext.sfactorRGB && blendFunc2 == renderContext.dfactorRGB && blendFunc3 == renderContext.sfactorAlpha && blendFunc4 == renderContext.dfactorAlpha) {
            return;
        }
        this.f81623gl.glBlendFuncSeparate(convertBlendFunc(blendFunc), convertBlendFunc(blendFunc2), convertBlendFunc(blendFunc3), convertBlendFunc(blendFunc4));
        RenderContext renderContext2 = this.context;
        renderContext2.sfactorRGB = blendFunc;
        renderContext2.dfactorRGB = blendFunc2;
        renderContext2.sfactorAlpha = blendFunc3;
        renderContext2.dfactorAlpha = blendFunc4;
    }

    private void changeBlendMode(RenderState.BlendMode blendMode) {
        RenderState.BlendMode blendMode2 = this.context.blendMode;
        if (blendMode != blendMode2) {
            RenderState.BlendMode blendMode3 = RenderState.BlendMode.Off;
            if (blendMode == blendMode3) {
                this.f81623gl.glDisable(3042);
            } else if (blendMode2 == blendMode3) {
                this.f81623gl.glEnable(3042);
            }
            this.context.blendMode = blendMode;
        }
    }

    private void checkFrameBufferError() {
        int glCheckFramebufferStatusEXT = this.glfbo.glCheckFramebufferStatusEXT(36160);
        if (glCheckFramebufferStatusEXT == 36182) {
            throw new IllegalStateException("Incomplete multisample buffer.");
        }
        switch (glCheckFramebufferStatusEXT) {
            case 36053:
                return;
            case 36054:
                throw new IllegalStateException("Framebuffer has erroneous attachment.");
            case 36055:
                throw new IllegalStateException("Framebuffer doesn't have any renderbuffers attached.");
            default:
                switch (glCheckFramebufferStatusEXT) {
                    case 36057:
                        throw new IllegalStateException("Framebuffer attachments must have same dimensions.");
                    case 36058:
                        throw new IllegalStateException("Framebuffer attachments must have same formats.");
                    case 36059:
                        throw new IllegalStateException("Incomplete draw buffer.");
                    case 36060:
                        throw new IllegalStateException("Incomplete read buffer.");
                    case 36061:
                        throw new IllegalStateException("Framebuffer object format is unsupported by the video hardware.");
                    default:
                        throw new IllegalStateException("Some video driver error or programming error occurred. Framebuffer object status is invalid. ");
                }
        }
    }

    private void checkNonPowerOfTwo(Texture texture) {
        if (texture.getImage().isNPOT() && !this.caps.contains(Caps.NonPowerOfTwoTextures)) {
            if (!this.caps.contains(Caps.PartialNonPowerOfTwoTextures)) {
                throw new RendererException("non-power-of-2 textures are not supported by the video hardware");
            }
            if (texture.getMinFilter().usesMipMapLevels()) {
                throw new RendererException("non-power-of-2 textures with mip-maps are not supported by the video hardware");
            }
            int i10 = AnonymousClass1.$SwitchMap$com$jme3$texture$Texture$Type[texture.getType().ordinal()];
            if (i10 != 1 && i10 != 2) {
                if (i10 != 3 && i10 != 4) {
                    throw new UnsupportedOperationException("unrecognized texture type");
                }
                if (texture.getWrap(Texture.WrapAxis.R) != Texture.WrapMode.EdgeClamp) {
                    throw new RendererException("repeating non-power-of-2 textures are not supported by the video hardware");
                }
            }
            Texture.WrapMode wrap = texture.getWrap(Texture.WrapAxis.S);
            Texture.WrapMode wrapMode = Texture.WrapMode.EdgeClamp;
            if (wrap != wrapMode || texture.getWrap(Texture.WrapAxis.T) != wrapMode) {
                throw new RendererException("repeating non-power-of-2 textures are not supported by the video hardware");
            }
        }
    }

    private Image cloneImageForUpload(Image image, boolean z10) {
        if (z10) {
            return MipMapGenerator.resizeToPowerOf2(image);
        }
        ArrayList arrayList = new ArrayList(image.getData().size());
        for (ByteBuffer byteBuffer : image.getData()) {
            if (byteBuffer == null) {
                return null;
            }
            arrayList.add(byteBuffer.duplicate());
        }
        return new Image(image.getFormat(), image.getWidth(), image.getHeight(), image.getDepth(), arrayList, null, image.getColorSpace());
    }

    private int convertAttachmentSlot(int i10) {
        if (i10 == -100) {
            return 36096;
        }
        if (i10 == -101) {
            return 33306;
        }
        if (i10 >= 0 && i10 < 16) {
            return i10 + 36064;
        }
        throw new UnsupportedOperationException("Invalid FBO attachment slot: " + i10);
    }

    private int convertBlendEquation(RenderState.BlendEquation blendEquation) {
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$material$RenderState$BlendEquation[blendEquation.ordinal()];
        if (i10 == 1) {
            return 32774;
        }
        if (i10 == 2) {
            return 32778;
        }
        if (i10 == 3) {
            return 32779;
        }
        if (i10 == 4) {
            return 32775;
        }
        if (i10 == 5) {
            return 32776;
        }
        throw new UnsupportedOperationException("Unrecognized blend operation: " + ((Object) blendEquation));
    }

    private int convertBlendEquationAlpha(RenderState.BlendEquationAlpha blendEquationAlpha) {
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$material$RenderState$BlendEquationAlpha[blendEquationAlpha.ordinal()];
        if (i10 == 1) {
            return 32774;
        }
        if (i10 == 2) {
            return 32778;
        }
        if (i10 == 3) {
            return 32779;
        }
        if (i10 == 4) {
            return 32775;
        }
        if (i10 == 5) {
            return 32776;
        }
        throw new UnsupportedOperationException("Unrecognized alpha blend operation: " + ((Object) blendEquationAlpha));
    }

    private int convertBlendFunc(RenderState.BlendFunc blendFunc) {
        switch (AnonymousClass1.$SwitchMap$com$jme3$material$RenderState$BlendFunc[blendFunc.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 768;
            case 4:
                return 769;
            case 5:
                return 774;
            case 6:
                return 775;
            case 7:
                return 770;
            case 8:
                return 771;
            case 9:
                return 772;
            case 10:
                return 773;
            case 11:
                return 776;
            default:
                throw new UnsupportedOperationException("Unrecognized blend function operation: " + ((Object) blendFunc));
        }
    }

    private int convertFormat(VertexBuffer.Format format) {
        switch (AnonymousClass1.$SwitchMap$com$jme3$scene$VertexBuffer$Format[format.ordinal()]) {
            case 1:
                return 5120;
            case 2:
                return 5121;
            case 3:
                return 5122;
            case 4:
                return 5123;
            case 5:
                return 5124;
            case 6:
                return 5125;
            case 7:
                return 5126;
            case 8:
                return GL.GL_DOUBLE;
            default:
                throw new UnsupportedOperationException("Unknown buffer format.");
        }
    }

    private int convertMagFilter(Texture.MagFilter magFilter) {
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$texture$Texture$MagFilter[magFilter.ordinal()];
        if (i10 == 1) {
            return 9729;
        }
        if (i10 == 2) {
            return 9728;
        }
        throw new UnsupportedOperationException("Unknown mag filter: " + ((Object) magFilter));
    }

    private int convertMinFilter(Texture.MinFilter minFilter, boolean z10) {
        if (!z10) {
            switch (AnonymousClass1.$SwitchMap$com$jme3$texture$Texture$MinFilter[minFilter.ordinal()]) {
                case 1:
                case 2:
                case 5:
                    return 9729;
                case 3:
                case 4:
                case 6:
                    return 9728;
                default:
                    throw new UnsupportedOperationException("Unknown min filter: " + ((Object) minFilter));
            }
        }
        switch (AnonymousClass1.$SwitchMap$com$jme3$texture$Texture$MinFilter[minFilter.ordinal()]) {
            case 1:
                return 9987;
            case 2:
                return 9985;
            case 3:
                return 9986;
            case 4:
                return 9984;
            case 5:
                return 9729;
            case 6:
                return 9728;
            default:
                throw new UnsupportedOperationException("Unknown min filter: " + ((Object) minFilter));
        }
    }

    private int convertStencilOperation(RenderState.StencilOperation stencilOperation) {
        switch (AnonymousClass1.$SwitchMap$com$jme3$material$RenderState$StencilOperation[stencilOperation.ordinal()]) {
            case 1:
                return 7680;
            case 2:
                return 0;
            case 3:
                return 7681;
            case 4:
                return 7682;
            case 5:
                return 34055;
            case 6:
                return 7683;
            case 7:
                return 34056;
            case 8:
                return 5386;
            default:
                throw new UnsupportedOperationException("Unrecognized stencil operation: " + ((Object) stencilOperation));
        }
    }

    private int convertTestFunction(RenderState.TestFunction testFunction) {
        switch (AnonymousClass1.$SwitchMap$com$jme3$material$RenderState$TestFunction[testFunction.ordinal()]) {
            case 1:
                return 512;
            case 2:
                return 513;
            case 3:
                return 515;
            case 4:
                return 516;
            case 5:
                return 518;
            case 6:
                return 514;
            case 7:
                return 517;
            case 8:
                return 519;
            default:
                throw new UnsupportedOperationException("Unrecognized test function: " + ((Object) testFunction));
        }
    }

    private int convertTextureType(Texture.Type type, int i10, int i11) {
        if (i10 > 1 && !this.caps.contains(Caps.TextureMultisample)) {
            throw new RendererException("Multisample textures are not supported by the video hardware.");
        }
        int i12 = AnonymousClass1.$SwitchMap$com$jme3$texture$Texture$Type[type.ordinal()];
        if (i12 == 1) {
            return i10 > 1 ? 37120 : 3553;
        }
        if (i12 == 2) {
            if (this.caps.contains(Caps.TextureArray)) {
                return i10 > 1 ? 37122 : 35866;
            }
            throw new RendererException("Array textures are not supported by the video hardware.");
        }
        if (i12 == 3) {
            if (this.caps.contains(Caps.OpenGL20) || this.caps.contains(Caps.OpenGLES30)) {
                return 32879;
            }
            throw new RendererException("3D textures are not supported by the video hardware.");
        }
        if (i12 != 4) {
            throw new UnsupportedOperationException("Unknown texture type: " + ((Object) type));
        }
        if (i11 < 0) {
            return 34067;
        }
        if (i11 < 6) {
            return i11 + 34069;
        }
        throw new UnsupportedOperationException("Invalid cube map face index: " + i11);
    }

    private int convertUsage(VertexBuffer.Usage usage) {
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$scene$VertexBuffer$Usage[usage.ordinal()];
        if (i10 == 1) {
            return 35044;
        }
        if (i10 == 2) {
            return 35048;
        }
        if (i10 == 3) {
            return 35040;
        }
        throw new UnsupportedOperationException("Unknown usage type.");
    }

    private int convertWrapMode(Texture.WrapMode wrapMode) {
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$texture$Texture$WrapMode[wrapMode.ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            return 33071;
        }
        if (i10 == 4) {
            return 10497;
        }
        if (i10 == 5) {
            return 33648;
        }
        throw new UnsupportedOperationException("Unknown wrap mode: " + ((Object) wrapMode));
    }

    private void deleteRenderBuffer(FrameBuffer frameBuffer, FrameBuffer.RenderBuffer renderBuffer) {
        this.intBuf1.put(0, renderBuffer.getId());
        this.glfbo.glDeleteRenderbuffersEXT(this.intBuf1);
    }

    public static int extractVersion(String str) {
        if (str.startsWith("WebGL 2.0")) {
            return 300;
        }
        Matcher matcher = GLVERSION_PATTERN.matcher(str);
        if (!matcher.matches()) {
            return -1;
        }
        int parseInt = Integer.parseInt(matcher.group(1));
        int parseInt2 = Integer.parseInt(matcher.group(2));
        if (parseInt2 >= 10 && parseInt2 % 10 == 0) {
            parseInt2 /= 10;
        }
        return (parseInt * 100) + (parseInt2 * 10);
    }

    public static int generatedMipMaxLevel(int i10, int i11, int i12) {
        int max = Math.max(Math.max(i10, i11), Math.max(1, i12));
        int i13 = 0;
        while (max > 1) {
            max >>= 1;
            i13++;
        }
        return i13;
    }

    private boolean getBoolean(int i10) {
        this.f81623gl.glGetBoolean(i10, this.nameBuf);
        return this.nameBuf.get(0) != 0;
    }

    private int getInteger(int i10) {
        this.intBuf16.clear();
        this.f81623gl.glGetInteger(i10, this.intBuf16);
        return this.intBuf16.get(0);
    }

    private int getProgramResourceIndex(int i10, int i11, String str) {
        GL4 gl4 = this.gl4;
        return gl4 != null ? gl4.glGetProgramResourceIndex(i10, i11, str) : this.glext.glGetProgramResourceIndex(i10, i11, str);
    }

    private int getUniformBlockIndex(int i10, String str) {
        GL3 gl3 = this.gl3;
        return gl3 != null ? gl3.glGetUniformBlockIndex(i10, str) : this.glext.glGetUniformBlockIndex(i10, str);
    }

    private boolean hasAnyExtension(String... strArr) {
        for (String str : strArr) {
            if (hasExtension(str)) {
                return true;
            }
        }
        return false;
    }

    private boolean hasExtension(String str) {
        if (this.extensions.contains(str)) {
            return true;
        }
        if (str.startsWith("GL_")) {
            return this.extensions.contains(str.substring(3));
        }
        return this.extensions.contains("GL_" + str);
    }

    private boolean isMipmapGenerationSupported(Image.Format format, ColorSpace colorSpace) {
        GLImageFormat imageFormat = this.texUtil.getImageFormat(format, colorSpace == ColorSpace.sRGB);
        return imageFormat != null && imageFormat.colorRenderable && imageFormat.filterable;
    }

    private boolean isValidNumber(float f10) {
        return !Float.isNaN(f10);
    }

    public static boolean isWebGL(String str) {
        return str.contains("WebGL");
    }

    private void loadCapabilities() {
        if (this.gl2 == null || (this.f81623gl instanceof GLES_30)) {
            loadCapabilitiesES();
        } else {
            loadCapabilitiesGL2();
        }
        loadCapabilitiesCommon();
    }

    private void loadCapabilitiesCommon() {
        this.extensions = loadExtensions();
        EnumMap<Limits, Integer> enumMap = this.limits;
        Limits limits = Limits.VertexTextureUnits;
        enumMap.put((EnumMap<Limits, Integer>) limits, (Limits) Integer.valueOf(getInteger(35660)));
        if (this.limits.get(limits).intValue() > 0) {
            this.caps.add(Caps.VertexTextureFetch);
        }
        this.limits.put((EnumMap<Limits, Integer>) Limits.FragmentTextureUnits, (Limits) Integer.valueOf(getInteger(34930)));
        EnumSet<Caps> enumSet = this.caps;
        Caps caps = Caps.OpenGLES20;
        if (enumSet.contains(caps)) {
            this.limits.put((EnumMap<Limits, Integer>) Limits.FragmentUniformVectors, (Limits) Integer.valueOf(getInteger(36349)));
            this.limits.put((EnumMap<Limits, Integer>) Limits.VertexUniformVectors, (Limits) Integer.valueOf(getInteger(36347)));
        } else {
            this.limits.put((EnumMap<Limits, Integer>) Limits.FragmentUniformVectors, (Limits) Integer.valueOf(getInteger(35657) / 4));
            this.limits.put((EnumMap<Limits, Integer>) Limits.VertexUniformVectors, (Limits) Integer.valueOf(getInteger(35658) / 4));
        }
        this.limits.put((EnumMap<Limits, Integer>) Limits.VertexAttributes, (Limits) Integer.valueOf(getInteger(34921)));
        this.limits.put((EnumMap<Limits, Integer>) Limits.TextureSize, (Limits) Integer.valueOf(getInteger(3379)));
        this.limits.put((EnumMap<Limits, Integer>) Limits.CubemapSize, (Limits) Integer.valueOf(getInteger(34076)));
        if ((hasExtension("GL_ARB_draw_instanced") && hasExtension("GL_ARB_instanced_arrays")) || this.caps.contains(Caps.OpenGL33) || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL)) {
            this.caps.add(Caps.MeshInstancing);
        }
        if (hasExtension("GL_OES_element_index_uint") || this.gl2 != null || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL)) {
            this.caps.add(Caps.IntegerIndexBuffer);
        }
        if (hasAnyExtension("GL_OES_texture_buffer", "GL_EXT_texture_buffer") || this.caps.contains(Caps.OpenGL31) || this.caps.contains(Caps.OpenGLES32)) {
            this.caps.add(Caps.TextureBuffer);
        }
        EnumSet<Caps> enumSet2 = this.caps;
        Caps caps2 = Caps.OpenGL30;
        boolean z10 = enumSet2.contains(caps2) || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL);
        boolean hasExtension = hasExtension("GL_ARB_texture_float");
        boolean z11 = z10 || hasExtension || hasExtension("GL_OES_texture_float");
        boolean z12 = z10 || hasExtension("GL_OES_texture_half_float") || (hasExtension && hasExtension("GL_ARB_half_float_pixel"));
        if (z11) {
            this.caps.add(Caps.FloatTexture);
        }
        if (z12) {
            this.caps.add(Caps.HalfFloatTexture);
        }
        if (z11 && (this.caps.contains(caps2) || hasExtension("GL_OES_texture_float_linear"))) {
            this.caps.add(Caps.FloatTextureFilter);
        }
        if (z12 && (this.caps.contains(caps2) || hasExtension("GL_OES_texture_half_float_linear"))) {
            this.caps.add(Caps.HalfFloatTextureFilter);
        }
        if (hasExtension("GL_EXT_texture_integer") || this.caps.contains(caps2) || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL)) {
            this.caps.add(Caps.IntegerTexture);
        }
        if (hasExtension("GL_OES_depth_texture") || hasExtension("WEBGL_depth_texture") || this.gl2 != null || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL)) {
            this.caps.add(Caps.DepthTexture);
        }
        EnumSet<Caps> enumSet3 = this.caps;
        Caps caps3 = Caps.OpenGL20;
        if (enumSet3.contains(caps3) || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL) || hasExtension("GL_OES_depth24")) {
            this.caps.add(Caps.Depth24);
        }
        if (this.caps.contains(caps3) || hasExtension("GL_OES_depth32")) {
            this.caps.add(Caps.Depth32);
        }
        if (this.caps.contains(caps3) || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL) || hasExtension("GL_OES_rgb8_rgba8") || hasExtension("GL_ARM_rgba8") || hasExtension("GL_EXT_texture_format_BGRA8888")) {
            this.caps.add(Caps.Rgba8);
        }
        if (this.caps.contains(caps2) || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL) || hasAnyExtension("GL_OES_packed_depth_stencil", "GL_EXT_packed_depth_stencil")) {
            this.caps.add(Caps.PackedDepthStencilBuffer);
        }
        boolean z13 = (hasExtension("GL_ARB_color_buffer_float") && hasExtension("GL_ARB_texture_float") && hasExtension("GL_ARB_half_float_pixel")) || this.caps.contains(caps2);
        boolean hasExtension2 = hasExtension("GL_EXT_color_buffer_float");
        boolean hasExtension3 = hasExtension("GL_EXT_color_buffer_half_float");
        if (z13 || hasExtension2) {
            this.caps.add(Caps.FloatColorBuffer);
            this.caps.add(Caps.FloatColorBufferR);
            this.caps.add(Caps.FloatColorBufferRG);
            this.caps.add(Caps.FloatColorBufferRGBA);
            this.caps.add(Caps.HalfFloatColorBufferR);
            this.caps.add(Caps.HalfFloatColorBufferRG);
            this.caps.add(Caps.HalfFloatColorBufferRGBA);
        } else if (hasExtension3 && z12) {
            this.caps.add(Caps.HalfFloatColorBufferRGBA);
        }
        if (z13) {
            this.caps.add(Caps.FloatColorBufferRGB);
            this.caps.add(Caps.HalfFloatColorBufferRGB);
        }
        if (this.caps.contains(caps2) || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL) || hasExtension("GL_ARB_depth_buffer_float")) {
            this.caps.add(Caps.FloatDepthBuffer);
        }
        if ((hasExtension("GL_EXT_packed_float") && z11) || this.caps.contains(caps2) || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL)) {
            this.caps.add(Caps.PackedFloatTexture);
        }
        if ((hasExtension("GL_EXT_packed_float") && z13) || this.caps.contains(caps2) || hasExtension2) {
            this.caps.add(Caps.PackedFloatColorBuffer);
        }
        if (hasExtension("GL_EXT_texture_shared_exponent") || this.caps.contains(caps2) || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL)) {
            this.caps.add(Caps.SharedExponentTexture);
        }
        if (hasAnyExtension("GL_EXT_texture_compression_s3tc", "WEBGL_compressed_texture_s3tc", "WEBKIT_WEBGL_compressed_texture_s3tc", "MOZ_WEBGL_compressed_texture_s3tc")) {
            this.caps.add(Caps.TextureCompressionS3TC);
        }
        if (hasAnyExtension("GL_ARB_texture_compression_bptc", "EXT_texture_compression_bptc") || this.caps.contains(Caps.OpenGL42)) {
            this.caps.add(Caps.TextureCompressionBPTC);
        }
        if (hasExtension("GL_EXT_texture_compression_rgtc") || this.caps.contains(caps2)) {
            this.caps.add(Caps.TextureCompressionRGTC);
        }
        if (hasExtension("GL_ARB_ES3_compatibility") || this.caps.contains(Caps.OpenGL43) || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL) || hasExtension("WEBGL_compressed_texture_etc")) {
            this.caps.add(Caps.TextureCompressionETC2);
            this.caps.add(Caps.TextureCompressionETC1);
        } else if (hasAnyExtension("GL_OES_compressed_ETC1_RGB8_texture", "WEBGL_compressed_texture_etc1")) {
            this.caps.add(Caps.TextureCompressionETC1);
        }
        if (hasExtension("GL_ARB_vertex_array_object") || this.caps.contains(caps2) || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL)) {
            this.caps.add(Caps.VertexBufferArray);
        }
        if (hasExtension("GL_ARB_texture_non_power_of_two") || hasExtension("GL_OES_texture_npot") || this.caps.contains(caps3) || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL)) {
            this.caps.add(Caps.NonPowerOfTwoTextures);
        } else {
            logger.log(Level.WARNING, "Your graphics card does not support non-power-of-2 textures. Some features might not work.");
        }
        if (this.caps.contains(caps)) {
            this.caps.add(Caps.PartialNonPowerOfTwoTextures);
        }
        if (hasExtension("GL_EXT_texture_array") || this.caps.contains(caps2) || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL)) {
            this.caps.add(Caps.TextureArray);
        }
        if (hasExtension("GL_EXT_texture_filter_anisotropic")) {
            this.caps.add(Caps.TextureFilterAnisotropic);
            this.floatBuf16.clear();
            this.f81623gl.glGetFloat(34047, this.floatBuf16);
            this.limits.put((EnumMap<Limits, Integer>) Limits.TextureAnisotropy, (Limits) Integer.valueOf(Math.max(1, Math.round(this.floatBuf16.get(0)))));
        } else {
            this.limits.put((EnumMap<Limits, Integer>) Limits.TextureAnisotropy, (Limits) 1);
        }
        if (hasExtension("GL_EXT_framebuffer_object") || this.caps.contains(caps2) || this.caps.contains(caps)) {
            this.caps.add(Caps.FrameBuffer);
            this.limits.put((EnumMap<Limits, Integer>) Limits.RenderBufferSize, (Limits) Integer.valueOf(getInteger(34024)));
            this.limits.put((EnumMap<Limits, Integer>) Limits.FrameBufferAttachments, (Limits) Integer.valueOf(getInteger(36063)));
            if (hasExtension("GL_EXT_framebuffer_blit") || this.caps.contains(caps2) || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL)) {
                this.caps.add(Caps.FrameBufferBlit);
            }
            if (hasExtension("GL_EXT_framebuffer_multisample") || this.caps.contains(caps2) || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL)) {
                this.caps.add(Caps.FrameBufferMultisample);
                this.limits.put((EnumMap<Limits, Integer>) Limits.FrameBufferSamples, (Limits) Integer.valueOf(getInteger(36183)));
            }
            if (hasExtension("GL_ARB_texture_multisample") || this.caps.contains(Caps.OpenGL32) || this.caps.contains(Caps.OpenGLES31)) {
                this.caps.add(Caps.TextureMultisample);
                EnumMap<Limits, Integer> enumMap2 = this.limits;
                Limits limits2 = Limits.ColorTextureSamples;
                enumMap2.put((EnumMap<Limits, Integer>) limits2, (Limits) Integer.valueOf(getInteger(37134)));
                this.limits.put((EnumMap<Limits, Integer>) Limits.DepthTextureSamples, (Limits) Integer.valueOf(getInteger(37135)));
                EnumMap<Limits, Integer> enumMap3 = this.limits;
                Limits limits3 = Limits.FrameBufferSamples;
                if (!enumMap3.containsKey(limits3)) {
                    EnumMap<Limits, Integer> enumMap4 = this.limits;
                    enumMap4.put((EnumMap<Limits, Integer>) limits3, (Limits) enumMap4.get(limits2));
                }
            }
            if (hasExtension("GL_ARB_draw_buffers") || hasExtension("WEBGL_draw_buffers") || this.caps.contains(caps3) || this.caps.contains(caps2) || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL)) {
                EnumMap<Limits, Integer> enumMap5 = this.limits;
                Limits limits4 = Limits.FrameBufferMrtAttachments;
                enumMap5.put((EnumMap<Limits, Integer>) limits4, (Limits) Integer.valueOf(getInteger(34852)));
                if (this.limits.get(limits4).intValue() > 1) {
                    this.caps.add(Caps.FrameBufferMRT);
                }
            } else {
                this.limits.put((EnumMap<Limits, Integer>) Limits.FrameBufferMrtAttachments, (Limits) 1);
            }
        }
        if (hasExtension("GL_ARB_multisample") || this.caps.contains(caps3)) {
            boolean z14 = getInteger(32936) != 0;
            int integer = getInteger(32937);
            logger.log(Level.FINER, "Samples: {0}", Integer.valueOf(integer));
            boolean glIsEnabled = this.f81623gl.glIsEnabled(32925);
            if (integer > 0 && z14 && !glIsEnabled) {
                this.f81623gl.glEnable(32925);
            }
            this.caps.add(Caps.Multisample);
        }
        if ((hasExtension("GL_ARB_framebuffer_sRGB") && hasExtension("GL_EXT_texture_sRGB")) || hasExtension("GL_EXT_sRGB") || this.caps.contains(caps2) || this.caps.contains(Caps.OpenGLES30) || this.caps.contains(Caps.WebGL)) {
            this.caps.add(Caps.Srgb);
        }
        if (hasExtension("GL_ARB_framebuffer_sRGB") || this.caps.contains(caps2) || hasExtension("GL_EXT_sRGB_write_control")) {
            this.caps.add(Caps.SrgbWriteControl);
        }
        if (hasExtension("GL_ARB_seamless_cube_map") || this.caps.contains(Caps.OpenGL32)) {
            this.caps.add(Caps.SeamlessCubemap);
        }
        EnumSet<Caps> enumSet4 = this.caps;
        Caps caps4 = Caps.OpenGLES30;
        if ((enumSet4.contains(caps4) || this.caps.contains(Caps.WebGL) || this.caps.contains(Caps.OpenGL32)) && !hasExtension("GL_ARB_compatibility") && JmeSystem.getPlatform().getOs() != Platform.Os.iOS) {
            this.caps.add(Caps.CoreProfile);
        }
        if ((hasExtension("GL_ARB_get_program_binary") || this.caps.contains(Caps.OpenGL41)) && getInteger(34814) > 0) {
            this.caps.add(Caps.BinaryShader);
        }
        if (hasExtension("GL_OES_geometry_shader") || hasExtension("GL_EXT_geometry_shader")) {
            this.caps.add(Caps.GeometryShader);
        }
        if (hasExtension("GL_OES_tessellation_shader") || hasExtension("GL_EXT_tessellation_shader")) {
            this.caps.add(Caps.TesselationShader);
        }
        if (hasExtension("GL_ARB_shader_storage_buffer_object") || this.caps.contains(Caps.OpenGL43) || this.caps.contains(Caps.OpenGLES31)) {
            this.caps.add(Caps.ShaderStorageBufferObject);
            this.limits.put((EnumMap<Limits, Integer>) Limits.ShaderStorageBufferObjectMaxBlockSize, (Limits) Integer.valueOf(getInteger(37086)));
            if (this.caps.contains(Caps.GeometryShader)) {
                this.limits.put((EnumMap<Limits, Integer>) Limits.ShaderStorageBufferObjectMaxGeometryBlocks, (Limits) Integer.valueOf(getInteger(37079)));
            }
            this.limits.put((EnumMap<Limits, Integer>) Limits.ShaderStorageBufferObjectMaxFragmentBlocks, (Limits) Integer.valueOf(getInteger(37082)));
            this.limits.put((EnumMap<Limits, Integer>) Limits.ShaderStorageBufferObjectMaxVertexBlocks, (Limits) Integer.valueOf(getInteger(37078)));
            if (this.caps.contains(Caps.TesselationShader)) {
                this.limits.put((EnumMap<Limits, Integer>) Limits.ShaderStorageBufferObjectMaxTessControlBlocks, (Limits) Integer.valueOf(getInteger(37080)));
                this.limits.put((EnumMap<Limits, Integer>) Limits.ShaderStorageBufferObjectMaxTessEvaluationBlocks, (Limits) Integer.valueOf(getInteger(37081)));
            }
            this.limits.put((EnumMap<Limits, Integer>) Limits.ShaderStorageBufferObjectMaxCombineBlocks, (Limits) Integer.valueOf(getInteger(37084)));
        }
        if (hasExtension("GL_ARB_uniform_buffer_object") || this.caps.contains(Caps.OpenGL31) || this.caps.contains(Caps.WebGL) || (this.caps.contains(caps4) && JmeSystem.getPlatform().getOs() != Platform.Os.iOS)) {
            this.caps.add(Caps.UniformBufferObject);
            this.limits.put((EnumMap<Limits, Integer>) Limits.UniformBufferObjectMaxBlockSize, (Limits) Integer.valueOf(getInteger(35376)));
            if (this.caps.contains(Caps.GeometryShader)) {
                this.limits.put((EnumMap<Limits, Integer>) Limits.UniformBufferObjectMaxGeometryBlocks, (Limits) Integer.valueOf(getInteger(35372)));
            }
            this.limits.put((EnumMap<Limits, Integer>) Limits.UniformBufferObjectMaxFragmentBlocks, (Limits) Integer.valueOf(getInteger(35373)));
            this.limits.put((EnumMap<Limits, Integer>) Limits.UniformBufferObjectMaxVertexBlocks, (Limits) Integer.valueOf(getInteger(35371)));
        }
        if (this.caps.contains(caps3) || this.caps.contains(caps4) || this.caps.contains(Caps.WebGL)) {
            this.caps.add(Caps.UnpackRowLength);
        }
        if (this.caps.contains(Caps.OpenGL43) || hasExtension("GL_KHR_debug")) {
            this.caps.add(Caps.GLDebug);
        }
        Logger logger2 = logger;
        logger2.log(Level.INFO, "OpenGL Renderer Information\n * Vendor: {0}\n * Renderer: {1}\n * OpenGL Version: {2}\n * GLSL Version: {3}\n * Profile: {4}", new Object[]{this.f81623gl.glGetString(7936), this.f81623gl.glGetString(7937), this.f81623gl.glGetString(7938), this.f81623gl.glGetString(35724), this.caps.contains(Caps.CoreProfile) ? "Core" : "Compatibility"});
        if (logger2.isLoggable(Level.FINE)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Supported capabilities: \n");
            Iterator<E> it = this.caps.iterator();
            while (it.hasNext()) {
                Caps caps5 = (Caps) it.next();
                sb2.append("\t");
                sb2.append(caps5.toString());
                sb2.append("\n");
            }
            sb2.append("\nHardware limits: \n");
            for (Limits limits5 : Limits.values()) {
                Integer num = this.limits.get(limits5);
                if (num == null) {
                    num = 0;
                }
                sb2.append("\t");
                sb2.append(limits5.name());
                sb2.append(" = ");
                sb2.append((Object) num);
                sb2.append("\n");
            }
            logger.log(Level.FINE, sb2.toString());
        }
        this.texUtil.initialize(this.caps);
    }

    private void loadCapabilitiesES() {
        String glGetString = this.f81623gl.glGetString(7938);
        int extractVersion = extractVersion(glGetString);
        if (isWebGL(glGetString)) {
            this.caps.add(Caps.WebGL);
        }
        this.caps.add(Caps.GLSL100);
        this.caps.add(Caps.OpenGLES20);
        this.caps.add(Caps.Multisample);
        if (extractVersion >= 300) {
            this.caps.add(Caps.OpenGLES30);
            this.caps.add(Caps.GLSL300);
            this.caps.add(Caps.MeshInstancing);
        }
        if (extractVersion >= 310) {
            this.caps.add(Caps.OpenGLES31);
            this.caps.add(Caps.GLSL310);
        }
        if (extractVersion >= 320) {
            this.caps.add(Caps.OpenGLES32);
            this.caps.add(Caps.GLSL320);
            this.caps.add(Caps.GeometryShader);
            this.caps.add(Caps.TesselationShader);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ae, code lost:
    
        if (r0 < 400) goto L53;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void loadCapabilitiesGL2() {
        int extractVersion = extractVersion(this.f81623gl.glGetString(7938));
        if (extractVersion >= 200) {
            this.caps.add(Caps.OpenGL20);
            if (extractVersion >= 210) {
                this.caps.add(Caps.OpenGL21);
            }
            if (extractVersion >= 300) {
                this.caps.add(Caps.OpenGL30);
            }
            if (extractVersion >= 310) {
                this.caps.add(Caps.OpenGL31);
            }
            if (extractVersion >= 320) {
                this.caps.add(Caps.OpenGL32);
                this.caps.add(Caps.GeometryShader);
            }
            if (extractVersion >= 330) {
                this.caps.add(Caps.OpenGL33);
            }
            if (extractVersion >= 400) {
                this.caps.add(Caps.OpenGL40);
                this.caps.add(Caps.TesselationShader);
            }
            if (extractVersion >= 410) {
                this.caps.add(Caps.OpenGL41);
            }
            if (extractVersion >= 420) {
                this.caps.add(Caps.OpenGL42);
            }
            if (extractVersion >= 430) {
                this.caps.add(Caps.OpenGL43);
            }
            if (extractVersion >= 440) {
                this.caps.add(Caps.OpenGL44);
            }
            if (extractVersion >= 450) {
                this.caps.add(Caps.OpenGL45);
            }
        }
        int extractVersion2 = extractVersion(this.f81623gl.glGetString(35724));
        switch (extractVersion2) {
            case 450:
                this.caps.add(Caps.GLSL450);
            case 440:
                this.caps.add(Caps.GLSL440);
            case 430:
                this.caps.add(Caps.GLSL430);
            case 420:
                this.caps.add(Caps.GLSL420);
            case HttpURLConnection.HTTP_GONE:
                this.caps.add(Caps.GLSL410);
            case 400:
                this.caps.add(Caps.GLSL400);
            case 330:
                this.caps.add(Caps.GLSL330);
            case 150:
                this.caps.add(Caps.GLSL150);
            case 140:
                this.caps.add(Caps.GLSL140);
            case 130:
                this.caps.add(Caps.GLSL130);
            case 120:
                this.caps.add(Caps.GLSL120);
            case 110:
                this.caps.add(Caps.GLSL110);
            case 100:
                this.caps.add(Caps.GLSL100);
                break;
        }
        this.caps.add(Caps.GLSL110);
        this.caps.add(Caps.GLSL100);
        this.context.initialDrawBuf = getInteger(GL2.GL_DRAW_BUFFER);
        this.context.initialReadBuf = getInteger(3074);
    }

    private HashSet<String> loadExtensions() {
        HashSet<String> hashSet = new HashSet<>(64);
        if (this.caps.contains(Caps.OpenGL30)) {
            this.gl3.glGetInteger(33309, this.intBuf16);
            int i10 = this.intBuf16.get(0);
            for (int i11 = 0; i11 < i10; i11++) {
                hashSet.add(this.gl3.glGetString(7939, i11));
            }
        } else {
            hashSet.addAll(Arrays.asList(this.f81623gl.glGetString(7939).split(" ")));
        }
        return hashSet;
    }

    private boolean needsGeneratedMipmaps(Image image) {
        if (!image.isGeneratedMipmapsRequired() || image.isMipmapsGenerated()) {
            return false;
        }
        if (isMipmapGenerationSupported(image.getFormat(), this.linearizeSrgbImages ? image.getColorSpace() : ColorSpace.Linear)) {
            return true;
        }
        return image.getId() == -1 && MipMapGenerator.canGenerateMipmaps(image);
    }

    private void readFrameBufferWithGLFormat(FrameBuffer frameBuffer, ByteBuffer byteBuffer, int i10, int i11) {
        if (frameBuffer == null) {
            setFrameBuffer(null);
        } else {
            if (frameBuffer.getColorBuffer() == null) {
                throw new IllegalArgumentException("Specified framebuffer does not have a colorbuffer");
            }
            setFrameBuffer(frameBuffer);
        }
        this.f81623gl.glReadPixels(this.vpX, this.vpY, this.vpW, this.vpH, i10, i11, byteBuffer);
    }

    private void renderMeshDefault(Mesh mesh, int i10, int i11, VertexBuffer[] vertexBufferArr) {
        int max = Math.max(mesh.getInstanceCount(), i11);
        VertexBuffer buffer = mesh.getBuffer(VertexBuffer.Type.InterleavedData);
        if (buffer != null && buffer.isUpdateNeeded()) {
            updateBufferData(buffer);
        }
        VertexBuffer lodLevel = mesh.getNumLodLevels() > 0 ? mesh.getLodLevel(i10) : mesh.getBuffer(VertexBuffer.Type.Index);
        if (vertexBufferArr != null) {
            for (VertexBuffer vertexBuffer : vertexBufferArr) {
                setVertexAttrib(vertexBuffer, null);
            }
        }
        for (VertexBuffer vertexBuffer2 : mesh.getBufferList().getArray()) {
            if (vertexBuffer2.getBufferType() != VertexBuffer.Type.InterleavedData && vertexBuffer2.getUsage() != VertexBuffer.Usage.CpuOnly && vertexBuffer2.getBufferType() != VertexBuffer.Type.Index) {
                if (vertexBuffer2.getStride() == 0) {
                    setVertexAttrib(vertexBuffer2);
                } else {
                    setVertexAttrib(vertexBuffer2, buffer);
                }
            }
        }
        clearVertexAttribs();
        if (lodLevel != null) {
            drawTriangleList(lodLevel, mesh, max);
        } else {
            drawTriangleArray(mesh.getMode(), max, mesh.getVertexCount());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0046 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int resolveUsageHint(BufferObject.AccessHint accessHint, BufferObject.NatureHint natureHint) {
        int i10;
        int i11 = AnonymousClass1.$SwitchMap$com$jme3$shader$bufferobject$BufferObject$AccessHint[accessHint.ordinal()];
        if (i11 == 1) {
            int i12 = AnonymousClass1.$SwitchMap$com$jme3$shader$bufferobject$BufferObject$NatureHint[natureHint.ordinal()];
            if (i12 == 1) {
                return 35048;
            }
            if (i12 == 2) {
                return 35049;
            }
            if (i12 == 3) {
                return 35050;
            }
        } else if (i11 != 2) {
            if (i11 != 3) {
                return -1;
            }
            i10 = AnonymousClass1.$SwitchMap$com$jme3$shader$bufferobject$BufferObject$NatureHint[natureHint.ordinal()];
            if (i10 != 1) {
                return 35044;
            }
            if (i10 != 2) {
                return i10 != 3 ? -1 : 35046;
            }
            return 35045;
        }
        int i13 = AnonymousClass1.$SwitchMap$com$jme3$shader$bufferobject$BufferObject$NatureHint[natureHint.ordinal()];
        if (i13 == 1) {
            return 35040;
        }
        if (i13 == 2) {
            return 35041;
        }
        if (i13 == 3) {
            return 35042;
        }
        i10 = AnonymousClass1.$SwitchMap$com$jme3$shader$bufferobject$BufferObject$NatureHint[natureHint.ordinal()];
        if (i10 != 1) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0044, code lost:
    
        if (isMipmapGenerationSupported(r0.getFormat(), r9.linearizeSrgbImages ? r0.getColorSpace() : com.jme3.texture.image.ColorSpace.Linear) != false) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x009d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void setupTextureParams(int i10, Texture texture) {
        boolean z10;
        LastTextureState lastTextureState;
        int anisotropicFilter;
        int i11;
        Texture.WrapMode wrapMode;
        Texture.WrapAxis wrapAxis;
        Texture.WrapMode wrapMode2;
        Texture.WrapAxis wrapAxis2;
        Texture.ShadowCompareMode shadowCompareMode;
        Texture.WrapMode wrapMode3;
        Texture.WrapAxis wrapAxis3;
        Image image = texture.getImage();
        int multiSamples = image != null ? image.getMultiSamples() : 1;
        int convertTextureType = convertTextureType(texture.getType(), multiSamples, -1);
        if (multiSamples > 1) {
            bindTextureOnly(convertTextureType, image, i10);
            return;
        }
        if (image != null && !image.hasMipmaps() && !image.isMipmapsGenerated()) {
            if (image.isGeneratedMipmapsRequired()) {
            }
            z10 = false;
            lastTextureState = image.getLastTextureState();
            if (lastTextureState.magFilter != texture.getMagFilter()) {
                bindTextureAndUnit(convertTextureType, image, i10);
                this.f81623gl.glTexParameteri(convertTextureType, 10240, convertMagFilter(texture.getMagFilter()));
                lastTextureState.magFilter = texture.getMagFilter();
            }
            if (lastTextureState.minFilter == texture.getMinFilter() || lastTextureState.minFilterMipmapsAvailable != z10) {
                bindTextureAndUnit(convertTextureType, image, i10);
                this.f81623gl.glTexParameteri(convertTextureType, 10241, convertMinFilter(texture.getMinFilter(), z10));
                lastTextureState.minFilter = texture.getMinFilter();
                lastTextureState.minFilterMipmapsAvailable = z10;
            }
            anisotropicFilter = texture.getAnisotropicFilter() != 0 ? this.defaultAnisotropicFilter : texture.getAnisotropicFilter();
            if (this.caps.contains(Caps.TextureFilterAnisotropic) && lastTextureState.anisoFilter != anisotropicFilter) {
                bindTextureAndUnit(convertTextureType, image, i10);
                this.f81623gl.glTexParameterf(convertTextureType, 34046, anisotropicFilter);
                lastTextureState.anisoFilter = anisotropicFilter;
            }
            i11 = AnonymousClass1.$SwitchMap$com$jme3$texture$Texture$Type[texture.getType().ordinal()];
            if (i11 != 1 && i11 != 2) {
                if (i11 == 3 && i11 != 4) {
                    throw new UnsupportedOperationException("Unknown texture type: " + ((Object) texture.getType()));
                }
                if (this.gl2 != null && (this.caps.contains(Caps.OpenGL20) || this.caps.contains(Caps.OpenGLES30))) {
                    wrapMode3 = lastTextureState.rWrap;
                    wrapAxis3 = Texture.WrapAxis.R;
                    if (wrapMode3 != texture.getWrap(wrapAxis3)) {
                        bindTextureAndUnit(convertTextureType, image, i10);
                        this.f81623gl.glTexParameteri(convertTextureType, 32882, convertWrapMode(texture.getWrap(wrapAxis3)));
                        lastTextureState.rWrap = texture.getWrap(wrapAxis3);
                    }
                }
            }
            wrapMode = lastTextureState.tWrap;
            wrapAxis = Texture.WrapAxis.T;
            if (wrapMode != texture.getWrap(wrapAxis)) {
                bindTextureAndUnit(convertTextureType, image, i10);
                this.f81623gl.glTexParameteri(convertTextureType, 10243, convertWrapMode(texture.getWrap(wrapAxis)));
                image.getLastTextureState().tWrap = texture.getWrap(wrapAxis);
            }
            wrapMode2 = lastTextureState.sWrap;
            wrapAxis2 = Texture.WrapAxis.S;
            if (wrapMode2 != texture.getWrap(wrapAxis2)) {
                bindTextureAndUnit(convertTextureType, image, i10);
                this.f81623gl.glTexParameteri(convertTextureType, 10242, convertWrapMode(texture.getWrap(wrapAxis2)));
                lastTextureState.sWrap = texture.getWrap(wrapAxis2);
            }
            shadowCompareMode = texture.getShadowCompareMode();
            if ((this.gl2 == null || this.caps.contains(Caps.OpenGLES30)) && lastTextureState.shadowCompareMode != shadowCompareMode) {
                bindTextureAndUnit(convertTextureType, image, i10);
                if (shadowCompareMode == Texture.ShadowCompareMode.Off) {
                    this.f81623gl.glTexParameteri(convertTextureType, 34892, 34894);
                    if (shadowCompareMode == Texture.ShadowCompareMode.GreaterOrEqual) {
                        this.f81623gl.glTexParameteri(convertTextureType, 34893, 518);
                    } else {
                        this.f81623gl.glTexParameteri(convertTextureType, 34893, 515);
                    }
                } else {
                    this.f81623gl.glTexParameteri(convertTextureType, 34892, 0);
                }
                lastTextureState.shadowCompareMode = shadowCompareMode;
            }
            bindTextureOnly(convertTextureType, image, i10);
        }
        z10 = true;
        lastTextureState = image.getLastTextureState();
        if (lastTextureState.magFilter != texture.getMagFilter()) {
        }
        if (lastTextureState.minFilter == texture.getMinFilter()) {
        }
        bindTextureAndUnit(convertTextureType, image, i10);
        this.f81623gl.glTexParameteri(convertTextureType, 10241, convertMinFilter(texture.getMinFilter(), z10));
        lastTextureState.minFilter = texture.getMinFilter();
        lastTextureState.minFilterMipmapsAvailable = z10;
        if (texture.getAnisotropicFilter() != 0) {
        }
        if (this.caps.contains(Caps.TextureFilterAnisotropic)) {
            bindTextureAndUnit(convertTextureType, image, i10);
            this.f81623gl.glTexParameterf(convertTextureType, 34046, anisotropicFilter);
            lastTextureState.anisoFilter = anisotropicFilter;
        }
        i11 = AnonymousClass1.$SwitchMap$com$jme3$texture$Texture$Type[texture.getType().ordinal()];
        if (i11 != 1) {
            if (i11 == 3) {
            }
            if (this.gl2 != null) {
                wrapMode3 = lastTextureState.rWrap;
                wrapAxis3 = Texture.WrapAxis.R;
                if (wrapMode3 != texture.getWrap(wrapAxis3)) {
                }
            }
        }
        wrapMode = lastTextureState.tWrap;
        wrapAxis = Texture.WrapAxis.T;
        if (wrapMode != texture.getWrap(wrapAxis)) {
        }
        wrapMode2 = lastTextureState.sWrap;
        wrapAxis2 = Texture.WrapAxis.S;
        if (wrapMode2 != texture.getWrap(wrapAxis2)) {
        }
        shadowCompareMode = texture.getShadowCompareMode();
        if (this.gl2 == null) {
        }
        bindTextureAndUnit(convertTextureType, image, i10);
        if (shadowCompareMode == Texture.ShadowCompareMode.Off) {
        }
        lastTextureState.shadowCompareMode = shadowCompareMode;
        bindTextureOnly(convertTextureType, image, i10);
    }

    public static int textureMaxLevelForUpload(boolean z10, boolean z11, boolean z12, boolean z13, int[] iArr, int i10) {
        if (!z10) {
            return -1;
        }
        if (z11 && z12) {
            return i10;
        }
        if (z13) {
            return iArr.length - 1;
        }
        return 0;
    }

    private void toggleFramebufferSrgb(FrameBuffer frameBuffer) {
        boolean isSrgb = frameBuffer == null ? this.mainFrameBufferSrgb : frameBuffer.isSrgb();
        if (isSrgb != this.context.srgbWriteEnabled) {
            if (this.caps.contains(Caps.SrgbWriteControl) && this.caps.contains(Caps.Srgb)) {
                if (isSrgb) {
                    this.f81623gl.glEnable(GLExt.GL_FRAMEBUFFER_SRGB_EXT);
                } else {
                    this.f81623gl.glDisable(GLExt.GL_FRAMEBUFFER_SRGB_EXT);
                }
            }
            this.context.srgbWriteEnabled = isSrgb;
        }
    }

    private void updateRenderBuffer(FrameBuffer frameBuffer, FrameBuffer.RenderBuffer renderBuffer) {
        int id2 = renderBuffer.getId();
        if (id2 == -1) {
            this.glfbo.glGenRenderbuffersEXT(this.intBuf1);
            id2 = this.intBuf1.get(0);
            renderBuffer.setId(id2);
        }
        if (this.context.boundRB != id2) {
            this.glfbo.glBindRenderbufferEXT(36161, id2);
            this.context.boundRB = id2;
        }
        int intValue = this.limits.get(Limits.RenderBufferSize).intValue();
        if (frameBuffer.getWidth() > intValue || frameBuffer.getHeight() > intValue) {
            throw new RendererException("Resolution " + frameBuffer.getWidth() + s.f32937c + frameBuffer.getHeight() + " is not supported.");
        }
        GLImageFormat imageFormatWithError = this.texUtil.getImageFormatWithError(renderBuffer.getFormat(), frameBuffer.isSrgb());
        if (frameBuffer.getSamples() <= 1 || !this.caps.contains(Caps.FrameBufferMultisample)) {
            this.glfbo.glRenderbufferStorageEXT(36161, imageFormatWithError.internalFormat, frameBuffer.getWidth(), frameBuffer.getHeight());
            return;
        }
        int samples = frameBuffer.getSamples();
        int intValue2 = this.limits.get(Limits.FrameBufferSamples).intValue();
        this.glfbo.glRenderbufferStorageMultisampleEXT(36161, intValue2 < samples ? intValue2 : samples, imageFormatWithError.internalFormat, frameBuffer.getWidth(), frameBuffer.getHeight());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:92:0x0213. Please report as an issue. */
    @Override
    public void applyRenderState(RenderState renderState) {
        if (this.gl2 != null) {
            if (renderState.isWireframe() && !this.context.wireframe) {
                this.gl2.glPolygonMode(1032, GL2.GL_LINE);
                this.context.wireframe = true;
            } else if (!renderState.isWireframe() && this.context.wireframe) {
                this.gl2.glPolygonMode(1032, GL2.GL_FILL);
                this.context.wireframe = false;
            }
        }
        if (renderState.isDepthTest() && !this.context.depthTestEnabled) {
            this.f81623gl.glEnable(2929);
            this.context.depthTestEnabled = true;
        } else if (!renderState.isDepthTest() && this.context.depthTestEnabled) {
            this.f81623gl.glDisable(2929);
            this.context.depthTestEnabled = false;
        }
        if (renderState.isDepthTest() && renderState.getDepthFunc() != this.context.depthFunc) {
            this.f81623gl.glDepthFunc(convertTestFunction(renderState.getDepthFunc()));
            this.context.depthFunc = renderState.getDepthFunc();
        }
        if (renderState.isDepthWrite() && !this.context.depthWriteEnabled) {
            this.f81623gl.glDepthMask(true);
            this.context.depthWriteEnabled = true;
        } else if (!renderState.isDepthWrite() && this.context.depthWriteEnabled) {
            this.f81623gl.glDepthMask(false);
            this.context.depthWriteEnabled = false;
        }
        if (renderState.isColorWrite() && !this.context.colorWriteEnabled) {
            this.f81623gl.glColorMask(true, true, true, true);
            this.context.colorWriteEnabled = true;
        } else if (!renderState.isColorWrite() && this.context.colorWriteEnabled) {
            this.f81623gl.glColorMask(false, false, false, false);
            this.context.colorWriteEnabled = false;
        }
        if (renderState.isPolyOffset()) {
            if (!this.context.polyOffsetEnabled) {
                this.f81623gl.glEnable(32823);
                this.f81623gl.glPolygonOffset(renderState.getPolyOffsetFactor(), renderState.getPolyOffsetUnits());
                RenderContext renderContext = this.context;
                renderContext.polyOffsetEnabled = true;
                renderContext.polyOffsetFactor = renderState.getPolyOffsetFactor();
                this.context.polyOffsetUnits = renderState.getPolyOffsetUnits();
            } else if (renderState.getPolyOffsetFactor() != this.context.polyOffsetFactor || renderState.getPolyOffsetUnits() != this.context.polyOffsetUnits) {
                this.f81623gl.glPolygonOffset(renderState.getPolyOffsetFactor(), renderState.getPolyOffsetUnits());
                this.context.polyOffsetFactor = renderState.getPolyOffsetFactor();
                this.context.polyOffsetUnits = renderState.getPolyOffsetUnits();
            }
        } else if (this.context.polyOffsetEnabled) {
            this.f81623gl.glDisable(32823);
            RenderContext renderContext2 = this.context;
            renderContext2.polyOffsetEnabled = false;
            renderContext2.polyOffsetFactor = 0.0f;
            renderContext2.polyOffsetUnits = 0.0f;
        }
        if (renderState.getFaceCullMode() != this.context.cullMode) {
            if (renderState.getFaceCullMode() == RenderState.FaceCullMode.Off) {
                this.f81623gl.glDisable(2884);
            } else {
                this.f81623gl.glEnable(2884);
            }
            int i10 = AnonymousClass1.$SwitchMap$com$jme3$material$RenderState$FaceCullMode[renderState.getFaceCullMode().ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    this.f81623gl.glCullFace(1029);
                } else if (i10 == 3) {
                    this.f81623gl.glCullFace(1028);
                } else {
                    if (i10 != 4) {
                        throw new UnsupportedOperationException("Unrecognized face cull mode: " + ((Object) renderState.getFaceCullMode()));
                    }
                    this.f81623gl.glCullFace(1032);
                }
            }
            this.context.cullMode = renderState.getFaceCullMode();
        }
        RenderState.BlendMode blendMode = renderState.getBlendMode();
        RenderState.BlendMode blendMode2 = RenderState.BlendMode.Custom;
        if (blendMode == blendMode2) {
            changeBlendMode(blendMode2);
            blendFuncSeparate(renderState.getCustomSfactorRGB(), renderState.getCustomDfactorRGB(), renderState.getCustomSfactorAlpha(), renderState.getCustomDfactorAlpha());
            blendEquationSeparate(renderState.getBlendEquation(), renderState.getBlendEquationAlpha());
        } else if (renderState.getBlendMode() != this.context.blendMode) {
            changeBlendMode(renderState.getBlendMode());
            switch (AnonymousClass1.$SwitchMap$com$jme3$material$RenderState$BlendMode[renderState.getBlendMode().ordinal()]) {
                case 1:
                    blendEquationSeparate(RenderState.BlendEquation.Add, RenderState.BlendEquationAlpha.InheritColor);
                    break;
                case 2:
                    RenderState.BlendFunc blendFunc = RenderState.BlendFunc.One;
                    blendFunc(blendFunc, blendFunc);
                    blendEquationSeparate(RenderState.BlendEquation.Add, RenderState.BlendEquationAlpha.InheritColor);
                    break;
                case 3:
                    blendFunc(RenderState.BlendFunc.Src_Alpha, RenderState.BlendFunc.One);
                    blendEquationSeparate(RenderState.BlendEquation.Add, RenderState.BlendEquationAlpha.InheritColor);
                    break;
                case 4:
                    blendFunc(RenderState.BlendFunc.Src_Alpha, RenderState.BlendFunc.One_Minus_Src_Alpha);
                    blendEquationSeparate(RenderState.BlendEquation.Add, RenderState.BlendEquationAlpha.InheritColor);
                    break;
                case 5:
                    RenderState.BlendFunc blendFunc2 = RenderState.BlendFunc.Src_Alpha;
                    RenderState.BlendFunc blendFunc3 = RenderState.BlendFunc.One_Minus_Src_Alpha;
                    RenderState.BlendFunc blendFunc4 = RenderState.BlendFunc.One;
                    blendFuncSeparate(blendFunc2, blendFunc3, blendFunc4, blendFunc4);
                    blendEquationSeparate(RenderState.BlendEquation.Add, RenderState.BlendEquationAlpha.InheritColor);
                    break;
                case 6:
                    blendFunc(RenderState.BlendFunc.One, RenderState.BlendFunc.One_Minus_Src_Alpha);
                    blendEquationSeparate(RenderState.BlendEquation.Add, RenderState.BlendEquationAlpha.InheritColor);
                    break;
                case 7:
                    blendFunc(RenderState.BlendFunc.Dst_Color, RenderState.BlendFunc.Zero);
                    blendEquationSeparate(RenderState.BlendEquation.Add, RenderState.BlendEquationAlpha.InheritColor);
                    break;
                case 8:
                    blendFunc(RenderState.BlendFunc.Dst_Color, RenderState.BlendFunc.Src_Color);
                    blendEquationSeparate(RenderState.BlendEquation.Add, RenderState.BlendEquationAlpha.InheritColor);
                    break;
                case 9:
                case 10:
                    blendFunc(RenderState.BlendFunc.One, RenderState.BlendFunc.One_Minus_Src_Color);
                    blendEquationSeparate(RenderState.BlendEquation.Add, RenderState.BlendEquationAlpha.InheritColor);
                    break;
                case 11:
                    blendFunc(RenderState.BlendFunc.One_Minus_Dst_Color, RenderState.BlendFunc.One_Minus_Src_Color);
                    blendEquationSeparate(RenderState.BlendEquation.Add, RenderState.BlendEquationAlpha.InheritColor);
                    break;
                default:
                    throw new UnsupportedOperationException("Unrecognized blend mode: " + ((Object) renderState.getBlendMode()));
            }
        }
        if (this.context.stencilTest != renderState.isStencilTest() || this.context.frontStencilStencilFailOperation != renderState.getFrontStencilStencilFailOperation() || this.context.frontStencilDepthFailOperation != renderState.getFrontStencilDepthFailOperation() || this.context.frontStencilDepthPassOperation != renderState.getFrontStencilDepthPassOperation() || this.context.backStencilStencilFailOperation != renderState.getBackStencilStencilFailOperation() || this.context.backStencilDepthFailOperation != renderState.getBackStencilDepthFailOperation() || this.context.backStencilDepthPassOperation != renderState.getBackStencilDepthPassOperation() || this.context.frontStencilFunction != renderState.getFrontStencilFunction() || this.context.backStencilFunction != renderState.getBackStencilFunction()) {
            this.context.frontStencilStencilFailOperation = renderState.getFrontStencilStencilFailOperation();
            this.context.frontStencilDepthFailOperation = renderState.getFrontStencilDepthFailOperation();
            this.context.frontStencilDepthPassOperation = renderState.getFrontStencilDepthPassOperation();
            this.context.backStencilStencilFailOperation = renderState.getBackStencilStencilFailOperation();
            this.context.backStencilDepthFailOperation = renderState.getBackStencilDepthFailOperation();
            this.context.backStencilDepthPassOperation = renderState.getBackStencilDepthPassOperation();
            this.context.frontStencilFunction = renderState.getFrontStencilFunction();
            this.context.backStencilFunction = renderState.getBackStencilFunction();
            if (renderState.isStencilTest()) {
                this.f81623gl.glEnable(2960);
                this.f81623gl.glStencilOpSeparate(1028, convertStencilOperation(renderState.getFrontStencilStencilFailOperation()), convertStencilOperation(renderState.getFrontStencilDepthFailOperation()), convertStencilOperation(renderState.getFrontStencilDepthPassOperation()));
                this.f81623gl.glStencilOpSeparate(1029, convertStencilOperation(renderState.getBackStencilStencilFailOperation()), convertStencilOperation(renderState.getBackStencilDepthFailOperation()), convertStencilOperation(renderState.getBackStencilDepthPassOperation()));
                this.f81623gl.glStencilFuncSeparate(1028, convertTestFunction(renderState.getFrontStencilFunction()), renderState.getFrontStencilReference(), renderState.getFrontStencilMask());
                this.f81623gl.glStencilFuncSeparate(1029, convertTestFunction(renderState.getBackStencilFunction()), renderState.getBackStencilReference(), renderState.getBackStencilMask());
            } else {
                this.f81623gl.glDisable(2960);
            }
        }
        if (this.context.lineWidth != renderState.getLineWidth()) {
            this.f81623gl.glLineWidth(renderState.getLineWidth());
            this.context.lineWidth = renderState.getLineWidth();
        }
    }

    public void bindProgram(Shader shader) {
        int id2 = shader.getId();
        if (this.context.boundShaderProgram == id2) {
            this.statistics.onShaderUse(shader, false);
            return;
        }
        this.f81623gl.glUseProgram(id2);
        this.statistics.onShaderUse(shader, true);
        RenderContext renderContext = this.context;
        renderContext.boundShader = shader;
        renderContext.boundShaderProgram = id2;
    }

    @Override
    public void cleanup() {
        logger.log(Level.FINE, "Deleting objects and invalidating state");
        this.objManager.deleteAllObjects(this);
        OpenCLObjectManager.getInstance().deleteAllObjects();
        this.statistics.clearMemory();
        invalidateState();
    }

    @Override
    public void clearBuffers(boolean z10, boolean z11, boolean z12) {
        int i10;
        if (z10) {
            if (!this.context.colorWriteEnabled) {
                this.f81623gl.glColorMask(true, true, true, true);
                this.context.colorWriteEnabled = true;
            }
            i10 = 16384;
        } else {
            i10 = 0;
        }
        if (z11) {
            if (!this.context.depthWriteEnabled) {
                this.f81623gl.glDepthMask(true);
                this.context.depthWriteEnabled = true;
            }
            i10 |= 256;
        }
        if (z12) {
            i10 |= 1024;
        }
        if (i10 != 0) {
            this.f81623gl.glClear(i10);
        }
    }

    @Override
    public void clearClipRect() {
        if (this.context.clipRectEnabled) {
            this.f81623gl.glDisable(3089);
            this.context.clipRectEnabled = false;
            this.clipX = 0;
            this.clipY = 0;
            this.clipW = 0;
            this.clipH = 0;
        }
    }

    public void clearVertexAttribs() {
        IDList iDList = this.context.attribIndexList;
        for (int i10 = 0; i10 < iDList.oldLen; i10++) {
            int i11 = iDList.oldList[i10];
            this.f81623gl.glDisableVertexAttribArray(i11);
            WeakReference<VertexBuffer> weakReference = this.context.boundAttribs[i11];
            if (weakReference != null) {
                VertexBuffer vertexBuffer = weakReference.get();
                if (vertexBuffer != null && vertexBuffer.isInstanced()) {
                    this.glext.glVertexAttribDivisorARB(i11, 0);
                }
                this.context.boundAttribs[i11] = null;
            }
        }
        iDList.copyNewToOld();
    }

    public int convertElementMode(Mesh.Mode mode) {
        switch (AnonymousClass1.$SwitchMap$com$jme3$scene$Mesh$Mode[mode.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 6;
            case 7:
                return 5;
            case 8:
                return 14;
            default:
                throw new UnsupportedOperationException("Unrecognized mesh mode: " + ((Object) mode));
        }
    }

    public int convertShaderType(Shader.ShaderType shaderType) {
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$shader$Shader$ShaderType[shaderType.ordinal()];
        if (i10 == 1) {
            return 35632;
        }
        if (i10 == 2) {
            return 35633;
        }
        if (i10 == 3) {
            return 36313;
        }
        if (i10 == 4) {
            return 36488;
        }
        if (i10 == 5) {
            return 36487;
        }
        throw new UnsupportedOperationException("Unrecognized shader type.");
    }

    public void copyFrameBuffer(FrameBuffer frameBuffer, FrameBuffer frameBuffer2) {
        copyFrameBuffer(frameBuffer, frameBuffer2, true, true);
    }

    @Override
    public void deleteBuffer(VertexBuffer vertexBuffer) {
        int id2 = vertexBuffer.getId();
        if (id2 != -1) {
            this.intBuf1.put(0, id2);
            this.intBuf1.position(0).limit(1);
            this.f81623gl.glDeleteBuffers(this.intBuf1);
            vertexBuffer.resetObject();
        }
    }

    @Override
    public void deleteFence(GLFence gLFence) {
        if (this.gl4 == null || gLFence.getId() == -1) {
            return;
        }
        this.gl4.glDeleteSync(gLFence);
        gLFence.resetObject();
    }

    @Override
    public void deleteFrameBuffer(FrameBuffer frameBuffer) {
        if (frameBuffer.getId() != -1) {
            if (this.context.boundFBO == frameBuffer.getId()) {
                this.glfbo.glBindFramebufferEXT(36160, 0);
                this.context.boundFBO = 0;
            }
            if (frameBuffer.getDepthBuffer() != null) {
                deleteRenderBuffer(frameBuffer, frameBuffer.getDepthBuffer());
            }
            if (frameBuffer.getColorBuffer() != null) {
                deleteRenderBuffer(frameBuffer, frameBuffer.getColorBuffer());
            }
            this.intBuf1.put(0, frameBuffer.getId());
            this.glfbo.glDeleteFramebuffersEXT(this.intBuf1);
            frameBuffer.resetObject();
            this.statistics.onDeleteFrameBuffer();
        }
    }

    @Override
    public void deleteImage(Image image) {
        int id2 = image.getId();
        if (id2 != -1) {
            this.intBuf1.put(0, id2);
            this.intBuf1.position(0).limit(1);
            this.f81623gl.glDeleteTextures(this.intBuf1);
            image.resetObject();
            this.statistics.onDeleteTexture();
        }
    }

    @Override
    public void deleteShader(Shader shader) {
        if (shader.getId() == -1) {
            logger.warning("Shader is not uploaded to GPU, cannot delete.");
            return;
        }
        for (Shader.ShaderSource shaderSource : shader.getSources()) {
            if (shaderSource.getId() != -1) {
                this.f81623gl.glDetachShader(shader.getId(), shaderSource.getId());
                deleteShaderSource(shaderSource);
            }
        }
        this.f81623gl.glDeleteProgram(shader.getId());
        this.statistics.onDeleteShader();
        shader.resetObject();
    }

    @Override
    public void deleteShaderSource(Shader.ShaderSource shaderSource) {
        if (shaderSource.getId() < 0) {
            logger.warning("Shader source is not uploaded to GPU, cannot delete.");
            return;
        }
        shaderSource.clearUpdateNeeded();
        this.f81623gl.glDeleteShader(shaderSource.getId());
        shaderSource.resetObject();
    }

    public void drawTriangleArray(Mesh.Mode mode, int i10, int i11) {
        if (i10 <= 1 || !this.caps.contains(Caps.MeshInstancing)) {
            this.f81623gl.glDrawArrays(convertElementMode(mode), 0, i11);
        } else {
            this.glext.glDrawArraysInstancedARB(convertElementMode(mode), 0, i11, i10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawTriangleList(VertexBuffer vertexBuffer, Mesh mesh, int i10) {
        int i11;
        int convertElementMode;
        int i12;
        int i13;
        int i14;
        if (vertexBuffer.getBufferType() != VertexBuffer.Type.Index) {
            throw new IllegalArgumentException("Only index buffers are allowed as triangle lists.");
        }
        int i15 = AnonymousClass1.$SwitchMap$com$jme3$scene$VertexBuffer$Format[vertexBuffer.getFormat().ordinal()];
        if (i15 != 2 && i15 != 4) {
            if (i15 != 6) {
                throw new RendererException("Unexpected format for index buffer: " + ((Object) vertexBuffer.getFormat()));
            }
            if (!this.caps.contains(Caps.IntegerIndexBuffer)) {
                throw new RendererException("32-bit index buffers are not supported by the video hardware");
            }
        }
        if (vertexBuffer.isUpdateNeeded()) {
            updateBufferData(vertexBuffer);
        }
        int id2 = vertexBuffer.getId();
        if (this.context.boundElementArrayVBO != id2) {
            this.f81623gl.glBindBuffer(34963, id2);
            this.context.boundElementArrayVBO = id2;
        }
        int vertexCount = mesh.getVertexCount();
        int i16 = 0;
        boolean z10 = i10 > 1 && this.caps.contains(Caps.MeshInstancing);
        if (mesh.getMode() != Mesh.Mode.Hybrid) {
            if (z10) {
                this.glext.glDrawElementsInstancedARB(convertElementMode(mesh.getMode()), vertexBuffer.getData().limit(), convertFormat(vertexBuffer.getFormat()), 0L, i10);
                return;
            } else {
                this.f81623gl.glDrawRangeElements(convertElementMode(mesh.getMode()), 0, vertexCount, vertexBuffer.getData().limit(), convertFormat(vertexBuffer.getFormat()), 0L);
                return;
            }
        }
        int[] modeStart = mesh.getModeStart();
        int[] elementLengths = mesh.getElementLengths();
        int convertElementMode2 = convertElementMode(Mesh.Mode.Triangles);
        int convertFormat = convertFormat(vertexBuffer.getFormat());
        int componentSize = vertexBuffer.getFormat().getComponentSize();
        int i17 = modeStart[0];
        int i18 = modeStart[1];
        int i19 = modeStart[2];
        int i20 = 0;
        while (i16 < elementLengths.length) {
            if (i16 == i18) {
                convertElementMode = convertElementMode(Mesh.Mode.TriangleStrip);
            } else if (i16 == i19) {
                convertElementMode = convertElementMode(Mesh.Mode.TriangleFan);
            } else {
                i11 = convertElementMode2;
                int i21 = elementLengths[i16];
                if (z10) {
                    i12 = i19;
                    i13 = i20;
                    i14 = i18;
                    this.f81623gl.glDrawRangeElements(i11, 0, vertexCount, i21, convertFormat, i13);
                } else {
                    i12 = i19;
                    i13 = i20;
                    this.glext.glDrawElementsInstancedARB(i11, i21, convertFormat, i20, i10);
                    i14 = i18;
                }
                i20 = i13 + (i21 * componentSize);
                i16++;
                i19 = i12;
                convertElementMode2 = i11;
                i18 = i14;
            }
            i11 = convertElementMode;
            int i212 = elementLengths[i16];
            if (z10) {
            }
            i20 = i13 + (i212 * componentSize);
            i16++;
            i19 = i12;
            convertElementMode2 = i11;
            i18 = i14;
        }
    }

    @Override
    public int[] generateProfilingTasks(int i10) {
        IntBuffer createIntBuffer = BufferUtils.createIntBuffer(i10);
        this.f81623gl.glGenQueries(i10, createIntBuffer);
        return BufferUtils.getIntArray(createIntBuffer);
    }

    @Override
    public boolean getAlphaToCoverage() {
        if (this.caps.contains(Caps.Multisample)) {
            return this.f81623gl.glIsEnabled(32926);
        }
        return false;
    }

    @Override
    public EnumSet<Caps> getCaps() {
        return this.caps;
    }

    @Override
    public FrameBuffer getCurrentFrameBuffer() {
        FrameBuffer frameBuffer = this.mainFbOverride;
        return frameBuffer != null ? frameBuffer : this.context.boundFB;
    }

    @Override
    public int getDefaultAnisotropicFilter() {
        return this.defaultAnisotropicFilter;
    }

    public Vector2f[] getFrameBufferSamplePositions(FrameBuffer frameBuffer) {
        if (frameBuffer.getSamples() <= 1) {
            throw new IllegalArgumentException("Framebuffer must be multisampled");
        }
        if (!this.caps.contains(Caps.TextureMultisample)) {
            throw new RendererException("Multisampled textures are not supported");
        }
        setFrameBuffer(frameBuffer);
        int samples = frameBuffer.getSamples();
        Vector2f[] vector2fArr = new Vector2f[samples];
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(2);
        for (int i10 = 0; i10 < samples; i10++) {
            this.glext.glGetMultisample(36432, i10, createFloatBuffer);
            createFloatBuffer.clear();
            vector2fArr[i10] = new Vector2f(createFloatBuffer.get(0) - 0.5f, createFloatBuffer.get(1) - 0.5f);
        }
        return vector2fArr;
    }

    public GL4 getGl4() {
        return this.gl4;
    }

    @Override
    public EnumMap<Limits, Integer> getLimits() {
        return this.limits;
    }

    @Override
    public float getMaxLineWidth() {
        if (this.caps.contains(Caps.CoreProfile)) {
            return 1.0f;
        }
        this.floatBuf16.clear();
        this.f81623gl.glGetFloat(33902, this.floatBuf16);
        return this.floatBuf16.get(1);
    }

    @Override
    public long getProfilingTime(int i10) {
        return this.f81623gl.glGetQueryObjectui64(i10, 34918);
    }

    @Override
    public Statistics getStatistics() {
        return this.statistics;
    }

    @Override
    public void initialize() {
        loadCapabilities();
        this.f81623gl.glPixelStorei(3317, 1);
        if (this.caps.contains(Caps.SeamlessCubemap)) {
            this.f81623gl.glEnable(GLExt.GL_TEXTURE_CUBE_MAP_SEAMLESS);
        }
        EnumSet<Caps> enumSet = this.caps;
        Caps caps = Caps.CoreProfile;
        if (enumSet.contains(caps)) {
            GL3 gl3 = this.gl3;
            if (gl3 != null) {
                gl3.glGenVertexArrays(this.intBuf16);
                this.gl3.glBindVertexArray(this.intBuf16.get(0));
            } else {
                GL gl2 = this.f81623gl;
                if (!(gl2 instanceof GLES_30)) {
                    throw new UnsupportedOperationException("Core profile not supported");
                }
                ((GLES_30) gl2).glGenVertexArrays(this.intBuf16);
                ((GLES_30) this.f81623gl).glBindVertexArray(this.intBuf16.get(0));
            }
        }
        GL2 gl22 = this.gl2;
        if (gl22 != null && !(this.f81623gl instanceof GLES_30)) {
            gl22.glEnable(GL2.GL_VERTEX_PROGRAM_POINT_SIZE);
            if (!this.caps.contains(caps)) {
                this.gl2.glEnable(34913);
            }
        }
        IntBuffer createIntBuffer = BufferUtils.createIntBuffer(16);
        this.f81623gl.glGetInteger(36006, createIntBuffer);
        createIntBuffer.rewind();
        int i10 = createIntBuffer.get();
        if (i10 > 0) {
            this.defaultFBO = i10;
        }
    }

    @Override
    public void invalidateState() {
        this.context.reset();
        if (this.gl2 != null) {
            this.context.initialDrawBuf = getInteger(GL2.GL_DRAW_BUFFER);
            this.context.initialReadBuf = getInteger(3074);
        }
    }

    @Override
    public boolean isLinearizeSrgbImages() {
        return this.linearizeSrgbImages;
    }

    @Override
    public boolean isMainFrameBufferSrgb() {
        if (this.caps.contains(Caps.Srgb) && this.caps.contains(Caps.SrgbWriteControl)) {
            return this.mainFrameBufferSrgb;
        }
        return false;
    }

    @Override
    public boolean isTaskResultAvailable(int i10) {
        return this.f81623gl.glGetQueryObjectiv(i10, 34919) == 1;
    }

    @Override
    @Deprecated
    public void modifyTexture(Texture texture, Image image, int i10, int i11) {
        try {
            setTexture(0, texture);
            if (this.caps.contains(Caps.OpenGLES20) && image.getFormat() != texture.getImage().getFormat()) {
                logger.log(Level.WARNING, "Incompatible texture subimage");
            }
            this.texUtil.uploadSubTexture(convertTextureType(texture.getType(), image.getMultiSamples(), -1), image, 0, i10, i11, 0, 0, image.getWidth(), image.getHeight(), this.linearizeSrgbImages);
        } catch (TextureUnitException unused) {
            throw new RuntimeException("Renderer lacks texture units?");
        }
    }

    @Override
    public void popDebugGroup() {
        if (this.debug && this.caps.contains(Caps.GLDebug)) {
            this.glext.glPopDebugGroup();
            this.debugGroupId--;
        }
    }

    @Override
    public void postFrame() {
        this.objManager.deleteUnused(this);
        OpenCLObjectManager.getInstance().deleteUnusedObjects();
        this.f81623gl.resetStats();
    }

    @Override
    public void pushDebugGroup(String str) {
        if (this.debug && this.caps.contains(Caps.GLDebug)) {
            if (str == null) {
                str = "Group " + this.debugGroupId;
            }
            this.glext.glPushDebugGroup(33354, this.debugGroupId, str);
            this.debugGroupId++;
        }
    }

    @Override
    public void readFrameBuffer(FrameBuffer frameBuffer, ByteBuffer byteBuffer) {
        readFrameBufferWithGLFormat(frameBuffer, byteBuffer, 6408, 5121);
    }

    @Override
    public void readFrameBufferWithFormat(FrameBuffer frameBuffer, ByteBuffer byteBuffer, Image.Format format) {
        GLImageFormat imageFormatWithError = this.texUtil.getImageFormatWithError(format, false);
        readFrameBufferWithGLFormat(frameBuffer, byteBuffer, imageFormatWithError.format, imageFormatWithError.dataType);
    }

    @Override
    public void registerNativeObject(NativeObject nativeObject) {
        this.objManager.registerObject(nativeObject);
    }

    @Override
    public void renderMesh(Mesh mesh, int i10, int i11, VertexBuffer[] vertexBufferArr) {
        if (mesh.getVertexCount() == 0 || mesh.getTriangleCount() == 0 || i11 == 0) {
            return;
        }
        if (i11 > 1 && !this.caps.contains(Caps.MeshInstancing)) {
            throw new RendererException("Mesh instancing is not supported by the video hardware");
        }
        if (mesh.getLineWidth() != 1.0f && this.context.lineWidth != mesh.getLineWidth()) {
            this.f81623gl.glLineWidth(mesh.getLineWidth());
            this.context.lineWidth = mesh.getLineWidth();
        }
        if (this.gl4 != null && mesh.getMode().equals(Mesh.Mode.Patch)) {
            this.gl4.glPatchParameter(mesh.getPatchVertexCount());
        }
        this.statistics.onMeshDrawn(mesh, i10, i11);
        renderMeshDefault(mesh, i10, i11, vertexBufferArr);
    }

    @Override
    public void resetGLObjects() {
        logger.log(Level.FINE, "Resetting objects and invalidating state");
        this.objManager.resetObjects();
        this.statistics.clearMemory();
        invalidateState();
    }

    public void resetUniformLocations(Shader shader) {
        ListMap<String, Uniform> uniformMap = shader.getUniformMap();
        for (int i10 = 0; i10 < uniformMap.size(); i10++) {
            uniformMap.getValue(i10).reset();
        }
    }

    @Override
    public void setAlphaToCoverage(boolean z10) {
        if (this.caps.contains(Caps.Multisample)) {
            if (z10) {
                this.f81623gl.glEnable(32926);
            } else {
                this.f81623gl.glDisable(32926);
            }
        }
    }

    @Override
    public void setBackgroundColor(ColorRGBA colorRGBA) {
        if (this.context.clearColor.equals(colorRGBA)) {
            return;
        }
        this.f81623gl.glClearColor(colorRGBA.f81598r, colorRGBA.f81597g, colorRGBA.f81596b, colorRGBA.f81595a);
        this.context.clearColor.set(colorRGBA);
    }

    @Override
    public void setClipRect(int i10, int i11, int i12, int i13) {
        if (!this.context.clipRectEnabled) {
            this.f81623gl.glEnable(3089);
            this.context.clipRectEnabled = true;
        }
        if (this.clipX == i10 && this.clipY == i11 && this.clipW == i12 && this.clipH == i13) {
            return;
        }
        this.f81623gl.glScissor(i10, i11, i12, i13);
        this.clipX = i10;
        this.clipY = i11;
        this.clipW = i12;
        this.clipH = i13;
    }

    public void setDebugEnabled(boolean z10) {
        this.debug = z10;
    }

    @Override
    public void setDefaultAnisotropicFilter(int i10) {
        if (i10 < 1) {
            throw new IllegalArgumentException("level cannot be less than 1");
        }
        this.defaultAnisotropicFilter = i10;
    }

    @Override
    public void setDepthRange(float f10, float f11) {
        this.f81623gl.glDepthRange(f10, f11);
    }

    @Override
    public void setFrameBuffer(FrameBuffer frameBuffer) {
        FrameBuffer frameBuffer2;
        if (frameBuffer == null && (frameBuffer2 = this.mainFbOverride) != null) {
            frameBuffer = frameBuffer2;
        }
        if (this.context.boundFB == frameBuffer && (frameBuffer == null || !frameBuffer.isUpdateNeeded())) {
            toggleFramebufferSrgb(frameBuffer);
            return;
        }
        if (!this.caps.contains(Caps.FrameBuffer)) {
            throw new RendererException("Framebuffer objects are not supported by the video hardware");
        }
        FrameBuffer frameBuffer3 = this.context.boundFB;
        if (frameBuffer3 != null && (frameBuffer3.getMipMapsGenerationHint() == null ? this.generateMipmapsForFramebuffers : frameBuffer3.getMipMapsGenerationHint().booleanValue())) {
            for (int i10 = 0; i10 < frameBuffer3.getNumColorBuffers(); i10++) {
                FrameBuffer.RenderBuffer colorBuffer = frameBuffer3.getColorBuffer(i10);
                Texture texture = colorBuffer.getTexture();
                if (texture != null && texture.getMinFilter().usesMipMapLevels()) {
                    if (isMipmapGenerationSupported(texture.getImage().getFormat(), (this.linearizeSrgbImages && frameBuffer3.isSrgb()) ? ColorSpace.sRGB : ColorSpace.Linear)) {
                        try {
                            setTexture(0, colorBuffer.getTexture());
                            if (texture.getType() == Texture.Type.CubeMap) {
                                this.glfbo.glGenerateMipmapEXT(34067);
                            } else {
                                this.glfbo.glGenerateMipmapEXT(convertTextureType(texture.getType(), texture.getImage().getMultiSamples(), colorBuffer.getFace()));
                            }
                        } catch (TextureUnitException unused) {
                            throw new RuntimeException("Renderer lacks texture units?");
                        }
                    }
                }
                if (texture != null && texture.getMinFilter().usesMipMapLevels()) {
                    logger.warning("Cannot generate mipmaps for framebuffer texture: " + ((Object) texture) + " with image format: " + ((Object) texture.getImage().getFormat()));
                }
            }
        }
        if (frameBuffer == null) {
            bindFrameBuffer(null);
        } else {
            if (frameBuffer.isUpdateNeeded()) {
                updateFrameBuffer(frameBuffer);
            } else {
                bindFrameBuffer(frameBuffer);
            }
            setViewPort(0, 0, frameBuffer.getWidth(), frameBuffer.getHeight());
            this.context.boundFB = frameBuffer;
            if (this.debug && this.caps.contains(Caps.GLDebug) && frameBuffer.getName() != null) {
                this.glext.glObjectLabel(36160, frameBuffer.getId(), frameBuffer.getName());
            }
        }
        toggleFramebufferSrgb(frameBuffer);
    }

    public void setGenerateMipmapsForFrameBuffer(boolean z10) {
        this.generateMipmapsForFramebuffers = z10;
    }

    @Override
    public void setLinearizeSrgbImages(boolean z10) {
        if (this.caps.contains(Caps.Srgb)) {
            this.linearizeSrgbImages = z10;
        }
    }

    @Override
    public void setMainFrameBufferOverride(FrameBuffer frameBuffer) {
        this.mainFbOverride = null;
        if (this.context.boundFBO == 0) {
            setFrameBuffer(frameBuffer);
        }
        this.mainFbOverride = frameBuffer;
    }

    @Override
    public void setMainFrameBufferSrgb(boolean z10) {
        if (!(this.caps.contains(Caps.SrgbWriteControl) && this.caps.contains(Caps.Srgb)) && z10) {
            logger.warning("sRGB framebuffer is not supported by video hardware, but was requested.");
            this.mainFrameBufferSrgb = false;
        } else {
            this.mainFrameBufferSrgb = z10;
            if (this.context.boundFB == null) {
                toggleFramebufferSrgb(null);
            }
        }
    }

    public void setReadDrawBuffers(FrameBuffer frameBuffer) {
        if (this.gl2 == null || frameBuffer == null) {
            return;
        }
        if (frameBuffer.getNumColorBuffers() == 0) {
            this.gl2.glDrawBuffer(0);
            this.gl2.glReadBuffer(0);
            return;
        }
        if (frameBuffer.getNumColorBuffers() > this.limits.get(Limits.FrameBufferAttachments).intValue()) {
            throw new RendererException("Framebuffer has more color attachments than are supported by the video hardware!");
        }
        if (!frameBuffer.isMultiTarget()) {
            FrameBuffer.RenderBuffer colorBuffer = frameBuffer.getColorBuffer(frameBuffer.getTargetIndex());
            this.gl2.glDrawBuffer(colorBuffer.getSlot() + 36064);
            this.gl2.glReadBuffer(colorBuffer.getSlot() + 36064);
        } else {
            if (!this.caps.contains(Caps.FrameBufferMRT)) {
                throw new RendererException("Multiple render targets  are not supported by the video hardware");
            }
            if (frameBuffer.getNumColorBuffers() > this.limits.get(Limits.FrameBufferMrtAttachments).intValue()) {
                throw new RendererException("Framebuffer has more multi targets than are supported by the video hardware!");
            }
            this.intBuf16.clear();
            for (int i10 = 0; i10 < frameBuffer.getNumColorBuffers(); i10++) {
                this.intBuf16.put(i10 + 36064);
            }
            this.intBuf16.flip();
            this.glext.glDrawBuffers(this.intBuf16);
        }
    }

    @Override
    public void setShader(Shader shader) {
        if (shader == null) {
            throw new IllegalArgumentException("Shader cannot be null");
        }
        if (shader.isUpdateNeeded()) {
            updateShaderData(shader);
        }
        updateShaderUniforms(shader);
        updateShaderBufferBlocks(shader);
        bindProgram(shader);
    }

    @Override
    public void setShaderStorageBufferObject(int i10, BufferObject bufferObject) {
        if (bufferObject.isUpdateNeeded()) {
            updateShaderStorageBufferObjectData(bufferObject);
        }
        WeakReference<BufferObject> weakReference = this.context.boundBO[i10];
        if (weakReference == null || weakReference.get() != bufferObject) {
            bindShaderStorageBufferBase(i10, bufferObject.getId());
            bufferObject.setBinding(i10);
            this.context.boundBO[i10] = bufferObject.getWeakRef();
        }
        bufferObject.setBinding(i10);
        if (this.debug && this.caps.contains(Caps.GLDebug) && bufferObject.getName() != null) {
            this.glext.glObjectLabel(33504, bufferObject.getId(), bufferObject.getName());
        }
    }

    @Override
    public void setTexture(int i10, Texture texture) throws TextureUnitException {
        boolean z10;
        if (i10 < 0 || i10 >= 16) {
            throw new TextureUnitException();
        }
        Image image = texture.getImage();
        if (image.isUpdateNeeded() || needsGeneratedMipmaps(image)) {
            try {
                checkNonPowerOfTwo(texture);
                z10 = false;
            } catch (RendererException unused) {
                if (logger.isLoggable(Level.WARNING)) {
                    int nearestPowerOfTwo = FastMath.nearestPowerOfTwo(texture.getImage().getWidth());
                    int nearestPowerOfTwo2 = FastMath.nearestPowerOfTwo(texture.getImage().getHeight());
                    logger.log(Level.WARNING, "Non-power-of-2 textures are not supported! Scaling texture '" + texture.getName() + "' of size " + texture.getImage().getWidth() + "x" + texture.getImage().getHeight() + " to " + nearestPowerOfTwo + "x" + nearestPowerOfTwo2);
                }
                z10 = true;
            }
            updateTexImageData(image, texture.getType(), i10, z10);
        }
        image.getId();
        setupTextureParams(i10, texture);
        if (this.debug && this.caps.contains(Caps.GLDebug) && texture.getName() != null) {
            this.glext.glObjectLabel(5890, texture.getImage().getId(), texture.getName());
        }
    }

    @Override
    public void setTextureImage(int i10, TextureImage textureImage) throws TextureUnitException {
        if (i10 < 0 || i10 >= 16) {
            throw new TextureUnitException();
        }
        WeakReference<Image> weakReference = this.context.boundTextures[i10];
        boolean z10 = textureImage.clearUpdateNeeded() || weakReference == null || weakReference.get() != textureImage.getImage().getWeakRef().get();
        setTexture(i10, textureImage.getTexture());
        GL4 gl4 = this.gl4;
        if (gl4 == null || !z10) {
            return;
        }
        textureImage.bindImage(gl4, this.texUtil, i10);
    }

    @Override
    public void setUniformBufferObject(int i10, BufferObject bufferObject) {
        if (bufferObject.isUpdateNeeded()) {
            updateUniformBufferObjectData(bufferObject);
        }
        WeakReference<BufferObject> weakReference = this.context.boundBO[i10];
        if (weakReference == null || weakReference.get() != bufferObject) {
            bindUniformBufferBase(i10, bufferObject.getId());
            bufferObject.setBinding(i10);
            this.context.boundBO[i10] = bufferObject.getWeakRef();
        }
        bufferObject.setBinding(i10);
        if (this.debug && this.caps.contains(Caps.GLDebug) && bufferObject.getName() != null) {
            this.glext.glObjectLabel(33504, bufferObject.getId(), bufferObject.getName());
        }
    }

    public void setVertexAttrib(VertexBuffer vertexBuffer, VertexBuffer vertexBuffer2) {
        int i10;
        WeakReference<VertexBuffer> weakReference;
        WeakReference<VertexBuffer> weakReference2;
        if (vertexBuffer.getBufferType() != VertexBuffer.Type.Index) {
            RenderContext renderContext = this.context;
            if (renderContext.boundShaderProgram > 0) {
                Attribute attribute = renderContext.boundShader.getAttribute(vertexBuffer.getBufferType());
                int location = attribute.getLocation();
                if (location == -1) {
                    return;
                }
                if (location == -2) {
                    location = this.f81623gl.glGetAttribLocation(this.context.boundShaderProgram, "in" + vertexBuffer.getBufferType().name());
                    if (location < 0) {
                        attribute.setLocation(-1);
                        return;
                    }
                    attribute.setLocation(location);
                }
                if (vertexBuffer.isInstanced() && !this.caps.contains(Caps.MeshInstancing)) {
                    throw new RendererException("Instancing is required, but not supported by the graphics hardware");
                }
                if (vertexBuffer.getNumComponents() <= 4) {
                    i10 = 1;
                } else if (vertexBuffer.getNumComponents() % 4 == 0) {
                    i10 = vertexBuffer.getNumComponents() / 4;
                } else {
                    throw new RendererException("Number of components in multi-slot buffers must be divisible by 4");
                }
                if (vertexBuffer.isUpdateNeeded() && vertexBuffer2 == null) {
                    updateBufferData(vertexBuffer);
                }
                WeakReference<VertexBuffer>[] weakReferenceArr = this.context.boundAttribs;
                for (int i11 = 0; i11 < i10; i11++) {
                    int i12 = location + i11;
                    if (!this.context.attribIndexList.moveToNew(i12)) {
                        this.f81623gl.glEnableVertexAttribArray(i12);
                    }
                }
                WeakReference<VertexBuffer> weakReference3 = weakReferenceArr[location];
                if (weakReference3 == null || weakReference3.get() != vertexBuffer) {
                    int id2 = vertexBuffer2 != null ? vertexBuffer2.getId() : vertexBuffer.getId();
                    if (this.context.boundArrayVBO != id2) {
                        this.f81623gl.glBindBuffer(34962, id2);
                        this.context.boundArrayVBO = id2;
                    }
                    if (i10 == 1) {
                        this.f81623gl.glVertexAttribPointer(location, vertexBuffer.getNumComponents(), convertFormat(vertexBuffer.getFormat()), vertexBuffer.isNormalized(), vertexBuffer.getStride(), vertexBuffer.getOffset());
                    } else {
                        for (int i13 = 0; i13 < i10; i13++) {
                            this.f81623gl.glVertexAttribPointer(location + i13, 4, convertFormat(vertexBuffer.getFormat()), vertexBuffer.isNormalized(), i10 * 16, i13 * 16);
                        }
                    }
                    for (int i14 = 0; i14 < i10; i14++) {
                        int i15 = location + i14;
                        if (vertexBuffer.isInstanced() && ((weakReference2 = weakReferenceArr[i15]) == null || weakReference2.get() == null || !weakReferenceArr[i15].get().isInstanced())) {
                            this.glext.glVertexAttribDivisorARB(i15, vertexBuffer.getInstanceSpan());
                        } else if (!vertexBuffer.isInstanced() && (weakReference = weakReferenceArr[i15]) != null && weakReference.get() != null && weakReferenceArr[i15].get().isInstanced()) {
                            this.glext.glVertexAttribDivisorARB(i15, 0);
                        }
                        weakReferenceArr[i15] = vertexBuffer.getWeakRef();
                    }
                }
                if (this.debug && this.caps.contains(Caps.GLDebug) && vertexBuffer.getName() != null) {
                    this.glext.glObjectLabel(33504, vertexBuffer.getId(), vertexBuffer.getName());
                    return;
                }
                return;
            }
            throw new IllegalStateException("Cannot render mesh without shader bound");
        }
        throw new IllegalArgumentException("Index buffers not allowed to be set to vertex attrib");
    }

    @Override
    public void setViewPort(int i10, int i11, int i12, int i13) {
        if (i10 == this.vpX && this.vpY == i11 && this.vpW == i12 && this.vpH == i13) {
            return;
        }
        this.f81623gl.glViewport(i10, i11, i12, i13);
        this.vpX = i10;
        this.vpY = i11;
        this.vpW = i12;
        this.vpH = i13;
    }

    @Override
    public void startProfiling(int i10) {
        this.f81623gl.glBeginQuery(GL.GL_TIME_ELAPSED, i10);
    }

    @Override
    public void stopProfiling() {
        this.f81623gl.glEndQuery(GL.GL_TIME_ELAPSED);
    }

    @Override
    public void updateBufferData(VertexBuffer vertexBuffer) {
        int i10;
        int id2 = vertexBuffer.getId();
        if (id2 == -1) {
            this.f81623gl.glGenBuffers(this.intBuf1);
            id2 = this.intBuf1.get(0);
            vertexBuffer.setId(id2);
            this.objManager.registerObject(vertexBuffer);
        }
        if (vertexBuffer.getBufferType() == VertexBuffer.Type.Index) {
            i10 = 34963;
            if (this.context.boundElementArrayVBO != id2) {
                this.f81623gl.glBindBuffer(34963, id2);
                this.context.boundElementArrayVBO = id2;
            }
        } else {
            i10 = 34962;
            if (this.context.boundArrayVBO != id2) {
                this.f81623gl.glBindBuffer(34962, id2);
                this.context.boundArrayVBO = id2;
            }
        }
        int convertUsage = convertUsage(vertexBuffer.getUsage());
        vertexBuffer.getData().rewind();
        switch (AnonymousClass1.$SwitchMap$com$jme3$scene$VertexBuffer$Format[vertexBuffer.getFormat().ordinal()]) {
            case 1:
            case 2:
                this.f81623gl.glBufferData(i10, (ByteBuffer) vertexBuffer.getData(), convertUsage);
                break;
            case 3:
            case 4:
                this.f81623gl.glBufferData(i10, (ShortBuffer) vertexBuffer.getData(), convertUsage);
                break;
            case 5:
            case 6:
                this.glext.glBufferData(i10, (IntBuffer) vertexBuffer.getData(), convertUsage);
                break;
            case 7:
                this.f81623gl.glBufferData(i10, (FloatBuffer) vertexBuffer.getData(), convertUsage);
                break;
            default:
                throw new UnsupportedOperationException("Unknown buffer format.");
        }
        vertexBuffer.clearUpdateNeeded();
    }

    public void updateFrameBuffer(FrameBuffer frameBuffer) {
        if (frameBuffer.getNumColorBuffers() == 0 && frameBuffer.getDepthBuffer() == null) {
            throw new IllegalArgumentException("The framebuffer: " + ((Object) frameBuffer) + "\nDoesn't have any color/depth buffers");
        }
        if (frameBuffer.getId() == -1) {
            this.glfbo.glGenFramebuffersEXT(this.intBuf1);
            frameBuffer.setId(this.intBuf1.get(0));
            this.objManager.registerObject(frameBuffer);
            this.statistics.onNewFrameBuffer();
        }
        bindFrameBuffer(frameBuffer);
        FrameBuffer.RenderBuffer depthBuffer = frameBuffer.getDepthBuffer();
        if (depthBuffer != null) {
            updateFrameBufferAttachment(frameBuffer, depthBuffer);
        }
        for (int i10 = 0; i10 < frameBuffer.getNumColorBuffers(); i10++) {
            updateFrameBufferAttachment(frameBuffer, frameBuffer.getColorBuffer(i10));
        }
        setReadDrawBuffers(frameBuffer);
        checkFrameBufferError();
        frameBuffer.clearUpdateNeeded();
    }

    public void updateFrameBufferAttachment(FrameBuffer frameBuffer, FrameBuffer.RenderBuffer renderBuffer) {
        Image.Format format = renderBuffer.getFormat();
        boolean z10 = false;
        boolean z11 = renderBuffer.getSlot() == -100 || renderBuffer.getSlot() == -101;
        GLImageFormat imageFormatWithError = this.texUtil.getImageFormatWithError(format, !z11 && frameBuffer.isSrgb());
        if (!z11 && !imageFormatWithError.colorRenderable) {
            throw new RendererException("Framebuffer format " + ((Object) format) + " is not color-renderable and cannot be used as a color attachment.");
        }
        if (z11 && !imageFormatWithError.depthRenderable) {
            throw new RendererException("Framebuffer format " + ((Object) format) + " is not depth-renderable and cannot be used as a depth attachment.");
        }
        if (renderBuffer.getTexture() == null) {
            boolean z12 = renderBuffer.getId() == -1;
            updateRenderBuffer(frameBuffer, renderBuffer);
            z10 = z12;
        } else {
            updateRenderTexture(frameBuffer, renderBuffer);
        }
        if (z10) {
            this.glfbo.glFramebufferRenderbufferEXT(36160, convertAttachmentSlot(renderBuffer.getSlot()), 36161, renderBuffer.getId());
        }
    }

    public void updateRenderTexture(FrameBuffer frameBuffer, FrameBuffer.RenderBuffer renderBuffer) {
        Texture texture = renderBuffer.getTexture();
        Image image = texture.getImage();
        if (image.isUpdateNeeded()) {
            checkNonPowerOfTwo(texture);
            updateTexImageData(image, texture.getType(), 0, false, false);
            setupTextureParams(0, texture);
        }
        if (renderBuffer.getLayer() < 0) {
            this.glfbo.glFramebufferTexture2DEXT(36160, convertAttachmentSlot(renderBuffer.getSlot()), convertTextureType(texture.getType(), image.getMultiSamples(), renderBuffer.getFace()), image.getId(), renderBuffer.getLevel());
        } else {
            this.glfbo.glFramebufferTextureLayerEXT(36160, convertAttachmentSlot(renderBuffer.getSlot()), image.getId(), renderBuffer.getLevel(), renderBuffer.getLayer());
        }
    }

    public void updateShaderBufferBlock(Shader shader, ShaderBufferBlock shaderBufferBlock) {
        BufferObject bufferObject = shaderBufferBlock.getBufferObject();
        ShaderBufferBlock.BufferType type = shaderBufferBlock.getType();
        if (bufferObject.isUpdateNeeded()) {
            if (type == ShaderBufferBlock.BufferType.ShaderStorageBufferObject) {
                updateShaderStorageBufferObjectData(bufferObject);
            } else {
                updateUniformBufferObjectData(bufferObject);
            }
        }
        if (resolveUsageHint(bufferObject.getAccessHint(), bufferObject.getNatureHint()) == -1) {
            return;
        }
        bindProgram(shader);
        int id2 = shader.getId();
        int binding = bufferObject.getBinding();
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$shader$ShaderBufferBlock$BufferType[type.ordinal()];
        if (i10 == 1) {
            setUniformBufferObject(binding, bufferObject);
            if (shaderBufferBlock.isUpdateNeeded()) {
                if (shaderBufferBlock.getLocation() < 0) {
                    shaderBufferBlock.setLocation(getUniformBlockIndex(id2, shaderBufferBlock.getName()));
                }
                if (shaderBufferBlock.getLocation() != -1) {
                    bindUniformBlock(id2, shaderBufferBlock.getLocation(), binding);
                }
            }
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException("Doesn't support binding of " + ((Object) type));
            }
            setShaderStorageBufferObject(binding, bufferObject);
            if (shaderBufferBlock.isUpdateNeeded()) {
                if (shaderBufferBlock.getLocation() < 0) {
                    shaderBufferBlock.setLocation(getProgramResourceIndex(id2, 37606, shaderBufferBlock.getName()));
                }
                if (shaderBufferBlock.getLocation() != -1) {
                    bindShaderStorageBlock(id2, shaderBufferBlock.getLocation(), binding);
                }
            }
        }
        shaderBufferBlock.clearUpdateNeeded();
    }

    public void updateShaderBufferBlocks(Shader shader) {
        ListMap<String, ShaderBufferBlock> bufferBlockMap = shader.getBufferBlockMap();
        for (int i10 = 0; i10 < bufferBlockMap.size(); i10++) {
            updateShaderBufferBlock(shader, bufferBlockMap.getValue(i10));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateShaderData(Shader shader) {
        boolean z10;
        String str;
        int id2 = shader.getId();
        if (id2 == -1) {
            id2 = this.f81623gl.glCreateProgram();
            if (id2 == 0) {
                throw new RendererException("Invalid ID (" + id2 + ") received when trying to create shader program.");
            }
            shader.setId(id2);
            z10 = true;
        } else {
            z10 = false;
        }
        boolean z11 = false;
        for (Shader.ShaderSource shaderSource : shader.getSources()) {
            if (shaderSource.isUpdateNeeded()) {
                updateShaderSourceData(shaderSource);
            }
            if (shaderSource.getType() == Shader.ShaderType.Fragment && shaderSource.getLanguage().equals("GLSL150")) {
                z11 = true;
            }
            this.f81623gl.glAttachShader(id2, shaderSource.getId());
        }
        if (z11) {
            this.gl3.glBindFragDataLocation(id2, 0, "outFragColor");
            for (int i10 = 0; i10 < this.limits.get(Limits.FrameBufferMrtAttachments).intValue(); i10++) {
                this.gl3.glBindFragDataLocation(id2, i10, "outFragData[" + i10 + "]");
            }
        }
        this.f81623gl.glLinkProgram(id2);
        this.f81623gl.glGetProgram(id2, 35714, this.intBuf1);
        boolean z12 = this.intBuf1.get(0) == 1;
        if (!z12) {
            this.f81623gl.glGetProgram(id2, 35716, this.intBuf1);
            int i11 = this.intBuf1.get(0);
            if (i11 > 3) {
                str = this.f81623gl.glGetProgramInfoLog(id2, i11);
                if (!z12) {
                    if (str != null) {
                        logger.log(Level.WARNING, "Shader linked successfully. Linker warnings: \n{0}", str);
                    } else {
                        logger.fine("Shader linked successfully.");
                    }
                    shader.clearUpdateNeeded();
                    if (!z10) {
                        resetUniformLocations(shader);
                        return;
                    } else {
                        this.objManager.registerObject(shader);
                        this.statistics.onNewShader();
                        return;
                    }
                }
                if (str == null) {
                    throw new RendererException("Shader failed to link, shader:" + ((Object) shader) + "\ninfo: <not provided>");
                }
                throw new RendererException("Shader failed to link, shader:" + ((Object) shader) + "\n" + str);
            }
        }
        str = null;
        if (!z12) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x017c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateShaderSourceData(Shader.ShaderSource shaderSource) {
        String str;
        if (shaderSource.getId() != -1) {
            throw new RendererException("Cannot recompile shader source");
        }
        int glCreateShader = this.f81623gl.glCreateShader(convertShaderType(shaderSource.getType()));
        if (glCreateShader <= 0) {
            throw new RendererException("Invalid ID received when trying to create shader.");
        }
        shaderSource.setId(glCreateShader);
        if (this.debug && this.caps.contains(Caps.GLDebug) && shaderSource.getName() != null) {
            this.glext.glObjectLabel(33505, glCreateShader, shaderSource.getName());
        }
        boolean contains = this.caps.contains(Caps.OpenGLES30);
        boolean contains2 = this.caps.contains(Caps.OpenGLES20);
        String language = shaderSource.getLanguage();
        if (!contains && contains2 && !language.equals("GLSL100")) {
            throw new RendererException("This shader cannot run in OpenGL ES 2. Only GLSL 1.00 shaders are supported.");
        }
        this.stringBuf.setLength(0);
        int parseInt = Integer.parseInt(language.substring(4));
        if (language.startsWith("GLSL")) {
            if (parseInt > 100) {
                this.stringBuf.append("#version ");
                this.stringBuf.append(language.substring(4));
                if (parseInt >= 150) {
                    if (contains) {
                        this.stringBuf.append(" es");
                    } else {
                        this.stringBuf.append(" core");
                    }
                }
                this.stringBuf.append("\n");
            } else if (contains2 || contains) {
                this.stringBuf.append("#version 100\n");
            } else {
                this.stringBuf.append("#version 110\n");
            }
        }
        if (this.linearizeSrgbImages) {
            this.stringBuf.append("#define SRGB 1\n");
        }
        StringBuilder sb2 = this.stringBuf;
        sb2.append("#define ");
        sb2.append(shaderSource.getType().name().toUpperCase());
        sb2.append("_SHADER 1\n");
        this.stringBuf.append(shaderSource.getDefines());
        this.stringBuf.append(shaderSource.getSource());
        this.intBuf1.clear();
        this.intBuf1.put(0, this.stringBuf.length());
        this.f81623gl.glShaderSource(glCreateShader, new String[]{this.stringBuf.toString()}, this.intBuf1);
        this.f81623gl.glCompileShader(glCreateShader);
        this.f81623gl.glGetShader(glCreateShader, 35713, this.intBuf1);
        boolean z10 = this.intBuf1.get(0) == 1;
        if (!z10) {
            this.f81623gl.glGetShader(glCreateShader, 35716, this.intBuf1);
            int i10 = this.intBuf1.get(0);
            if (i10 > 3) {
                str = this.f81623gl.glGetShaderInfoLog(glCreateShader, i10);
                if (!z10) {
                    if (str != null) {
                        logger.log(Level.WARNING, "{0} compiled successfully, compiler warnings: \n{1}", new Object[]{shaderSource.getName(), str});
                    } else {
                        Logger logger2 = logger;
                        Level level = Level.FINE;
                        if (logger2.isLoggable(level)) {
                            logger2.log(level, "{0} compiled successfully.", shaderSource.getName());
                        }
                    }
                    shaderSource.clearUpdateNeeded();
                    return;
                }
                logger.log(Level.WARNING, "Bad compile of:\n{0}", new Object[]{b.a(this.stringBuf.toString())});
                if (str == null) {
                    throw new RendererException("compile error in: " + ((Object) shaderSource) + "\nerror: <not provided>");
                }
                throw new RendererException("compile error in: " + ((Object) shaderSource) + "\n" + str);
            }
        }
        str = null;
        if (!z10) {
        }
    }

    @Override
    public void updateShaderStorageBufferObjectData(BufferObject bufferObject) {
        if (!this.caps.contains(Caps.ShaderStorageBufferObject)) {
            throw new IllegalArgumentException("The current video hardware doesn't support shader storage buffer objects ");
        }
        updateBufferData(37074, bufferObject);
    }

    public void updateShaderUniforms(Shader shader) {
        ListMap<String, Uniform> uniformMap = shader.getUniformMap();
        for (int i10 = 0; i10 < uniformMap.size(); i10++) {
            Uniform value = uniformMap.getValue(i10);
            if (value.isUpdateNeeded()) {
                updateUniform(shader, value);
            }
        }
    }

    public void updateTexImageData(Image image, Texture.Type type, int i10, boolean z10) {
        updateTexImageData(image, type, i10, z10, true);
    }

    public void updateUniform(Shader shader, Uniform uniform) {
        shader.getId();
        bindProgram(shader);
        int location = uniform.getLocation();
        if (location == -1) {
            return;
        }
        if (location == -2) {
            updateUniformLocation(shader, uniform);
            if (uniform.getLocation() == -1) {
                uniform.clearUpdateNeeded();
                return;
            }
            location = uniform.getLocation();
        }
        int i10 = location;
        if (uniform.getVarType() == null) {
            return;
        }
        this.statistics.onUniformSet();
        uniform.clearUpdateNeeded();
        switch (AnonymousClass1.$SwitchMap$com$jme3$shader$VarType[uniform.getVarType().ordinal()]) {
            case 1:
                this.f81623gl.glUniform1f(i10, ((Float) uniform.getValue()).floatValue());
                return;
            case 2:
                Vector2f vector2f = (Vector2f) uniform.getValue();
                this.f81623gl.glUniform2f(i10, vector2f.getX(), vector2f.getY());
                return;
            case 3:
                Vector3f vector3f = (Vector3f) uniform.getValue();
                this.f81623gl.glUniform3f(i10, vector3f.getX(), vector3f.getY(), vector3f.getZ());
                return;
            case 4:
                Object value = uniform.getValue();
                if (value instanceof ColorRGBA) {
                    ColorRGBA colorRGBA = (ColorRGBA) value;
                    this.f81623gl.glUniform4f(i10, colorRGBA.f81598r, colorRGBA.f81597g, colorRGBA.f81596b, colorRGBA.f81595a);
                    return;
                } else if (value instanceof Vector4f) {
                    Vector4f vector4f = (Vector4f) value;
                    this.f81623gl.glUniform4f(i10, vector4f.f81615x, vector4f.f81616y, vector4f.f81617z, vector4f.f81614w);
                    return;
                } else {
                    Quaternion quaternion = (Quaternion) uniform.getValue();
                    this.f81623gl.glUniform4f(i10, quaternion.getX(), quaternion.getY(), quaternion.getZ(), quaternion.getW());
                    return;
                }
            case 5:
                this.f81623gl.glUniform1i(i10, ((Boolean) uniform.getValue()).booleanValue() ? 1 : 0);
                return;
            case 6:
                this.f81623gl.glUniformMatrix3(i10, false, uniform.getMultiData());
                return;
            case 7:
                this.f81623gl.glUniformMatrix4(i10, false, uniform.getMultiData());
                return;
            case 8:
                this.f81623gl.glUniform1(i10, (IntBuffer) uniform.getValue());
                return;
            case 9:
                this.f81623gl.glUniform1(i10, uniform.getMultiData());
                return;
            case 10:
                this.f81623gl.glUniform2(i10, uniform.getMultiData());
                return;
            case 11:
                this.f81623gl.glUniform3(i10, uniform.getMultiData());
                return;
            case 12:
                this.f81623gl.glUniform4(i10, uniform.getMultiData());
                return;
            case 13:
                this.f81623gl.glUniformMatrix4(i10, false, uniform.getMultiData());
                return;
            case 14:
                this.f81623gl.glUniform1i(i10, ((Integer) uniform.getValue()).intValue());
                return;
            default:
                throw new UnsupportedOperationException("Unsupported uniform type: " + ((Object) uniform.getVarType()) + " for " + ((Object) uniform.getBinding()));
        }
    }

    @Override
    public void updateUniformBufferObjectData(BufferObject bufferObject) {
        if (!this.caps.contains(Caps.UniformBufferObject)) {
            throw new IllegalArgumentException("The current video hardware doesn't support uniform buffer objects");
        }
        updateBufferData(35345, bufferObject);
    }

    public void updateUniformLocation(Shader shader, Uniform uniform) {
        int glGetUniformLocation = this.f81623gl.glGetUniformLocation(shader.getId(), uniform.getName());
        if (glGetUniformLocation >= 0) {
            uniform.setLocation(glGetUniformLocation);
            return;
        }
        uniform.setLocation(-1);
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Uniform {0} is not declared in shader {1}.", new Object[]{uniform.getName(), shader.getSources()});
        }
    }

    public void updateVertexArray(Mesh mesh, VertexBuffer vertexBuffer) {
        int id2 = mesh.getId();
        if (id2 == -1) {
            IntBuffer intBuffer = this.intBuf1;
            this.gl3.glGenVertexArrays(intBuffer);
            id2 = intBuffer.get(0);
            mesh.setId(id2);
        }
        if (this.context.boundVertexArray != id2) {
            this.gl3.glBindVertexArray(id2);
            this.context.boundVertexArray = id2;
        }
        VertexBuffer buffer = mesh.getBuffer(VertexBuffer.Type.InterleavedData);
        if (buffer != null && buffer.isUpdateNeeded()) {
            updateBufferData(buffer);
        }
        if (vertexBuffer != null) {
            setVertexAttrib(vertexBuffer, null);
        }
        for (VertexBuffer vertexBuffer2 : mesh.getBufferList().getArray()) {
            if (vertexBuffer2.getBufferType() != VertexBuffer.Type.InterleavedData && vertexBuffer2.getUsage() != VertexBuffer.Usage.CpuOnly && vertexBuffer2.getBufferType() != VertexBuffer.Type.Index) {
                if (vertexBuffer2.getStride() == 0) {
                    setVertexAttrib(vertexBuffer2);
                } else {
                    setVertexAttrib(vertexBuffer2, buffer);
                }
            }
        }
    }

    private boolean isValidNumber(FloatBuffer floatBuffer) {
        for (int i10 = 0; i10 < floatBuffer.limit(); i10++) {
            if (!isValidNumber(floatBuffer.get(i10))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x02be A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateTexImageData(Image image, Texture.Type type, int i10, boolean z10, boolean z11) {
        boolean z12;
        Image image2;
        boolean z13;
        int textureMaxLevelForUpload;
        GL2 gl2;
        RuntimeException runtimeException;
        boolean z14 = z10;
        int id2 = image.getId();
        boolean z15 = false;
        boolean z16 = id2 == -1;
        if (id2 == -1) {
            this.f81623gl.glGenTextures(this.intBuf1);
            image.setId(this.intBuf1.get(0));
            this.objManager.registerObject(image);
            this.statistics.onNewTexture();
        }
        int convertTextureType = convertTextureType(type, image.getMultiSamples(), -1);
        bindTextureAndUnit(convertTextureType, image, i10);
        int multiSamples = image.getMultiSamples();
        boolean z17 = image.hasMipmaps() && !z14;
        boolean z18 = !z17 && image.isGeneratedMipmapsRequired();
        if (z18) {
            if (isMipmapGenerationSupported(image.getFormat(), this.linearizeSrgbImages ? image.getColorSpace() : ColorSpace.Linear)) {
                z12 = true;
                if (multiSamples > 1) {
                    if (z18) {
                        if (!z12 && z11 && z16 && MipMapGenerator.canGenerateMipmaps(image)) {
                            try {
                                image2 = cloneImageForUpload(image, z14);
                                if (image2 != null) {
                                    MipMapGenerator.generateMipMaps(image2, this.linearizeSrgbImages, image.getColorSpace() == ColorSpace.sRGB);
                                    try {
                                        image.setMipmapsGenerated(true);
                                        z14 = false;
                                        z13 = true;
                                    } catch (RuntimeException e10) {
                                        runtimeException = e10;
                                        z14 = false;
                                        z13 = true;
                                        logger.log(Level.WARNING, "Texture " + ((Object) image) + " requires mipmaps, but hardware mipmap generation is not supported and CPU mipmap generation failed. Mipmaps will not be generated.", (Throwable) runtimeException);
                                        z15 = true;
                                        if (z12) {
                                            gl2.glTexParameteri(convertTextureType, 33169, 1);
                                            image.setMipmapsGenerated(true);
                                        }
                                        if (!z12) {
                                            logger.log(Level.WARNING, "Texture " + ((Object) image) + " requires mipmaps, but hardware mipmaps generation is not supported. Mipmaps will not be generated.");
                                        }
                                        if (this.caps.contains(Caps.OpenGL20)) {
                                        }
                                        if (z17) {
                                        }
                                        if (!z14) {
                                        }
                                        if (!z14) {
                                        }
                                        textureMaxLevelForUpload = textureMaxLevelForUpload(!this.caps.contains(Caps.OpenGL20) || this.caps.contains(Caps.OpenGLES30), z18, z12, !z17 || z13, !z13 ? image2.getMipMapSizes() : image.getMipMapSizes(), generatedMipMaxLevel(!z14 ? FastMath.nearestPowerOfTwo(image.getWidth()) : image2.getWidth(), !z14 ? FastMath.nearestPowerOfTwo(image.getHeight()) : image2.getHeight(), image2.getDepth()));
                                        if (textureMaxLevelForUpload >= 0) {
                                        }
                                        if (!image.getFormat().isDepthFormat()) {
                                        }
                                        if (convertTextureType == 34067) {
                                        }
                                        if (z14) {
                                        }
                                        if (convertTextureType == 34067) {
                                        }
                                        if (image.getMultiSamples() != multiSamples) {
                                        }
                                        if (z18) {
                                        }
                                        image.clearUpdateNeeded();
                                    }
                                } else {
                                    image2 = image;
                                    z13 = false;
                                }
                            } catch (RuntimeException e11) {
                                runtimeException = e11;
                                image2 = image;
                                z13 = false;
                            }
                        } else {
                            image2 = image;
                            z13 = false;
                            z15 = false;
                        }
                        if (z12 && !this.caps.contains(Caps.FrameBuffer) && (gl2 = this.gl2) != null) {
                            gl2.glTexParameteri(convertTextureType, 33169, 1);
                            image.setMipmapsGenerated(true);
                        }
                        if (!z12 && !z17 && !z13 && !z15) {
                            logger.log(Level.WARNING, "Texture " + ((Object) image) + " requires mipmaps, but hardware mipmaps generation is not supported. Mipmaps will not be generated.");
                        }
                    } else {
                        image2 = image;
                        z13 = false;
                    }
                    textureMaxLevelForUpload = textureMaxLevelForUpload(!this.caps.contains(Caps.OpenGL20) || this.caps.contains(Caps.OpenGLES30), z18, z12, !z17 || z13, !z13 ? image2.getMipMapSizes() : image.getMipMapSizes(), generatedMipMaxLevel(!z14 ? FastMath.nearestPowerOfTwo(image.getWidth()) : image2.getWidth(), !z14 ? FastMath.nearestPowerOfTwo(image.getHeight()) : image2.getHeight(), image2.getDepth()));
                    if (textureMaxLevelForUpload >= 0) {
                        this.f81623gl.glTexParameteri(convertTextureType, 33085, textureMaxLevelForUpload);
                    }
                } else if (this.caps.contains(Caps.TextureMultisample)) {
                    if (!image.isGeneratedMipmapsRequired() && !image.hasMipmaps()) {
                        if (image.getFormat().isDepthFormat()) {
                            image.setMultiSamples(Math.min(this.limits.get(Limits.DepthTextureSamples).intValue(), multiSamples));
                        } else {
                            image.setMultiSamples(Math.min(this.limits.get(Limits.ColorTextureSamples).intValue(), multiSamples));
                        }
                        image2 = image;
                        z14 = false;
                    } else {
                        throw new RendererException("Multisample textures do not support mipmaps");
                    }
                } else {
                    throw new RendererException("Multisample textures are not supported by the video hardware");
                }
                if (!image.getFormat().isDepthFormat() && !this.caps.contains(Caps.DepthTexture)) {
                    throw new RendererException("Depth textures are not supported by the video hardware");
                }
                if (convertTextureType == 34067) {
                    int intValue = this.limits.get(Limits.CubemapSize).intValue();
                    if (image.getWidth() <= intValue && image.getHeight() <= intValue) {
                        if (image.getWidth() != image.getHeight()) {
                            throw new RendererException("Cubemaps must have square dimensions");
                        }
                    } else {
                        throw new RendererException("Cannot upload cubemap " + ((Object) image) + ". The maximum supported cubemap resolution is " + intValue);
                    }
                } else {
                    int intValue2 = this.limits.get(Limits.TextureSize).intValue();
                    if (image.getWidth() > intValue2 || image.getHeight() > intValue2) {
                        throw new RendererException("Cannot upload texture " + ((Object) image) + ". The maximum supported texture resolution is " + intValue2);
                    }
                }
                if (z14) {
                    image2 = MipMapGenerator.resizeToPowerOf2(image);
                }
                if (convertTextureType == 34067) {
                    if (image2.getData().size() != 6) {
                        logger.log(Level.WARNING, "Invalid texture: {0}\nCubemap textures must contain 6 data units.", image);
                        return;
                    }
                    for (int i11 = 0; i11 < 6; i11++) {
                        this.texUtil.uploadTexture(image2, 34069 + i11, i11, this.linearizeSrgbImages);
                    }
                } else if (convertTextureType == 35866) {
                    if (this.caps.contains(Caps.TextureArray)) {
                        List<ByteBuffer> data = image2.getData();
                        this.texUtil.uploadTexture(image2, convertTextureType, -1, this.linearizeSrgbImages);
                        for (int i12 = 0; i12 < data.size(); i12++) {
                            this.texUtil.uploadTexture(image2, convertTextureType, i12, this.linearizeSrgbImages);
                        }
                    } else {
                        throw new RendererException("Texture arrays not supported by graphics hardware");
                    }
                } else {
                    this.texUtil.uploadTexture(image2, convertTextureType, 0, this.linearizeSrgbImages);
                }
                if (image.getMultiSamples() != multiSamples) {
                    image.setMultiSamples(multiSamples);
                }
                if (z18 && z12 && ((this.caps.contains(Caps.FrameBuffer) || this.gl2 == null) && image.getData(0) != null && !image.isMipmapsGenerated())) {
                    this.glfbo.glGenerateMipmapEXT(convertTextureType);
                    image.setMipmapsGenerated(true);
                }
                image.clearUpdateNeeded();
            }
        }
        z12 = false;
        if (multiSamples > 1) {
        }
        if (!image.getFormat().isDepthFormat()) {
        }
        if (convertTextureType == 34067) {
        }
        if (z14) {
        }
        if (convertTextureType == 34067) {
        }
        if (image.getMultiSamples() != multiSamples) {
        }
        if (z18) {
            this.glfbo.glGenerateMipmapEXT(convertTextureType);
            image.setMipmapsGenerated(true);
        }
        image.clearUpdateNeeded();
    }

    @Override
    public void copyFrameBuffer(FrameBuffer frameBuffer, FrameBuffer frameBuffer2, boolean z10) {
        copyFrameBuffer(frameBuffer, frameBuffer2, true, z10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001c, code lost:
    
        if (r22 == null) goto L13;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void copyFrameBuffer(FrameBuffer frameBuffer, FrameBuffer frameBuffer2, boolean z10, boolean z11) {
        FrameBuffer frameBuffer3;
        int width;
        int height;
        int i10;
        int i11;
        int width2;
        int height2;
        int i12;
        int i13;
        if (this.caps.contains(Caps.FrameBufferBlit)) {
            RenderContext renderContext = this.context;
            int i14 = renderContext.boundFBO;
            FrameBuffer frameBuffer4 = renderContext.boundFB;
            FrameBuffer frameBuffer5 = this.mainFbOverride;
            if (frameBuffer5 != null) {
                frameBuffer3 = frameBuffer == null ? frameBuffer5 : frameBuffer;
            } else {
                frameBuffer3 = frameBuffer;
            }
            frameBuffer5 = frameBuffer2;
            if (frameBuffer3 != null && frameBuffer3.isUpdateNeeded()) {
                updateFrameBuffer(frameBuffer3);
            }
            if (frameBuffer5 != null && frameBuffer5.isUpdateNeeded()) {
                updateFrameBuffer(frameBuffer5);
            }
            if (frameBuffer3 == null) {
                this.glfbo.glBindFramebufferEXT(36008, 0);
                int i15 = this.vpX;
                int i16 = this.vpY;
                width = this.vpW + i15;
                height = this.vpH + i16;
                i10 = i15;
                i11 = i16;
            } else {
                this.glfbo.glBindFramebufferEXT(36008, frameBuffer3.getId());
                width = frameBuffer3.getWidth();
                height = frameBuffer3.getHeight();
                i10 = 0;
                i11 = 0;
            }
            int i17 = width;
            int i18 = height;
            if (frameBuffer5 == null) {
                this.glfbo.glBindFramebufferEXT(36009, 0);
                int i19 = this.vpX;
                int i20 = this.vpY;
                i12 = i19;
                i13 = i20;
                width2 = this.vpW + i19;
                height2 = this.vpH + i20;
            } else {
                this.glfbo.glBindFramebufferEXT(36009, frameBuffer5.getId());
                width2 = frameBuffer5.getWidth();
                height2 = frameBuffer5.getHeight();
                i12 = 0;
                i13 = 0;
            }
            toggleFramebufferSrgb(frameBuffer5);
            int i21 = z10 ? 16384 : 0;
            this.glfbo.glBlitFramebufferEXT(i10, i11, i17, i18, i12, i13, width2, height2, z11 ? i21 | 256 : i21, 9728);
            this.glfbo.glBindFramebufferEXT(36160, i14);
            RenderContext renderContext2 = this.context;
            renderContext2.boundFBO = i14;
            renderContext2.boundFB = frameBuffer4;
            toggleFramebufferSrgb(frameBuffer4);
            return;
        }
        throw new RendererException("Framebuffer blitting not supported by the video hardware");
    }

    private boolean isValidNumber(Vector2f vector2f) {
        return isValidNumber(vector2f.f81609x) && isValidNumber(vector2f.f81610y);
    }

    private boolean isValidNumber(Vector3f vector3f) {
        return isValidNumber(vector3f.f81611x) && isValidNumber(vector3f.f81612y) && isValidNumber(vector3f.f81613z);
    }

    private boolean isValidNumber(Quaternion quaternion) {
        return isValidNumber(quaternion.getX()) && isValidNumber(quaternion.getY()) && isValidNumber(quaternion.getZ()) && isValidNumber(quaternion.getW());
    }

    @Override
    public void deleteBuffer(BufferObject bufferObject) {
        int id2 = bufferObject.getId();
        if (id2 == -1) {
            return;
        }
        this.intBuf1.clear();
        this.intBuf1.put(id2);
        this.intBuf1.flip();
        this.f81623gl.glDeleteBuffers(this.intBuf1);
        bufferObject.resetObject();
    }

    private boolean isValidNumber(ColorRGBA colorRGBA) {
        return isValidNumber(colorRGBA.f81598r) && isValidNumber(colorRGBA.f81597g) && isValidNumber(colorRGBA.f81596b) && isValidNumber(colorRGBA.f81595a);
    }

    private boolean isValidNumber(Vector4f vector4f) {
        return isValidNumber(vector4f.f81615x) && isValidNumber(vector4f.f81616y) && isValidNumber(vector4f.f81617z) && isValidNumber(vector4f.f81614w);
    }

    public void modifyTexture(Texture2D texture2D, Image image, int i10, int i11, int i12, int i13, int i14, int i15) {
        try {
            setTexture(0, texture2D);
            if (this.caps.contains(Caps.OpenGLES20) && image.getFormat() != texture2D.getImage().getFormat()) {
                logger.log(Level.WARNING, "Incompatible texture subimage");
            }
            this.texUtil.uploadSubTexture(convertTextureType(texture2D.getType(), image.getMultiSamples(), -1), image, 0, i10, i11, i12, i13, i14, i15, this.linearizeSrgbImages);
        } catch (TextureUnitException unused) {
            throw new RuntimeException("Renderer lacks texture units?");
        }
    }

    private void updateBufferData(int i10, BufferObject bufferObject) {
        int id2 = bufferObject.getId();
        int resolveUsageHint = resolveUsageHint(bufferObject.getAccessHint(), bufferObject.getNatureHint());
        if (resolveUsageHint == -1) {
            deleteBuffer(bufferObject);
            return;
        }
        if (id2 == -1) {
            this.intBuf1.clear();
            this.f81623gl.glGenBuffers(this.intBuf1);
            id2 = this.intBuf1.get(0);
            bufferObject.setId(id2);
            this.objManager.registerObject(bufferObject);
        }
        DirtyRegionsIterator dirtyRegions = bufferObject.getDirtyRegions();
        while (true) {
            BufferRegion next = dirtyRegions.next();
            if (next == null) {
                break;
            }
            this.f81623gl.glBindBuffer(i10, id2);
            if (next.isFullBufferRegion()) {
                ByteBuffer data = bufferObject.getData();
                Logger logger2 = logger;
                Level level = Level.FINER;
                if (logger2.isLoggable(level)) {
                    logger2.log(level, "Update full buffer {0} with {1} bytes", new Object[]{bufferObject, Integer.valueOf(data.remaining())});
                }
                this.f81623gl.glBufferData(i10, data, resolveUsageHint);
                this.f81623gl.glBindBuffer(i10, 0);
                next.clearDirty();
            } else {
                Logger logger3 = logger;
                Level level2 = Level.FINER;
                if (logger3.isLoggable(level2)) {
                    logger3.log(level2, "Update region {0} of {1}", new Object[]{next, bufferObject});
                }
                this.f81623gl.glBufferSubData(i10, next.getStart(), next.getData());
                this.f81623gl.glBindBuffer(i10, 0);
                next.clearDirty();
            }
        }
        bufferObject.clearUpdateNeeded();
    }

    public void setVertexAttrib(VertexBuffer vertexBuffer) {
        setVertexAttrib(vertexBuffer, null);
    }
}
