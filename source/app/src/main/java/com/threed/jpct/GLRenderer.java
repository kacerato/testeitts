package com.threed.jpct;

import android.icu.text.DateFormat;
import android.text.Spanned;
import com.jme3.audio.openal.AL;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.microedition.khronos.opengles.GL10;
import javax.microedition.khronos.opengles.GL11;
import org.eclipse.jdt.core.compiler.IProblem;

public final class GLRenderer {
    private static final boolean AGGREGATE_BLITS = true;
    private static float COLOR_INV = 0.003921569f;
    private static final int VERTEX_ARRAY_SIZE = 600;
    private Texture blitBuffer;
    private int blitBufferHeight;
    private int blitBufferWidth;
    private int colPos;
    private int curPos;
    private int indexPos;
    private boolean init;
    private float lastFOV;
    private float lastFarPlane;
    private float lastNearPlane;
    private int lastTexture;
    int myID;
    private IntBuffer pixelBuffer;
    private int pixelBufferSize;
    private int stateChanges;
    private TextureManager texMan;
    private int texPos;
    private int vertPos;
    private static int[] stageMap = {33984, 33985, 33986, 33987};
    private static int[] modeMap = {8448, 8448, 260, 7681, 3042};
    private static int rendererID = 0;
    private boolean lastFOVMode = Config.autoMaintainAspectRatio;
    private World myWorld = null;
    private int currentRGBScaling = 1;
    private boolean wasTransparent = false;
    private int lastTransMode = 0;
    private boolean vertexArraysInitialized = false;
    private boolean disposed = false;
    private IPaintListener listener = null;
    private boolean listenerActive = true;
    private boolean[] stageInitialized = new boolean[4];
    int[] lastTextures = new int[4];
    private int maxStages = 0;
    private int[] lastMultiTextures = new int[4];
    private int[] lastMultiModes = new int[4];
    private int[] lastMode = new int[4];
    private int minDriverAndConfig = 0;
    private int lastCoords = 1;
    private int veryLastCoords = 1;
    private IntBuffer colors = null;
    private int[] colorArray = null;
    private IntBuffer vertices = null;
    private int[] vertexArray = null;
    private IntBuffer textures = null;
    private int[] textureArray = null;
    private ShortBuffer indices = null;
    private short[] indexArray = null;
    private Texture renderTarget = null;
    private int yTargetStart = 0;
    private int xViewStart = 0;
    private int yViewStart = 0;
    private int xViewEnd = 0;
    private int yViewEnd = 0;
    private Matrix textureScale = new Matrix();
    private boolean[] enabledStages = new boolean[4];
    private boolean singleTexturing = true;
    private int currentFogColor = -1;
    private boolean currentFoggingState = false;
    private float currentFogDistance = -1.0f;
    private IntBuffer[] smallBuffer = new IntBuffer[3];
    private SimpleVector blitCoords1 = new SimpleVector();
    private SimpleVector blitCoords2 = new SimpleVector();
    private boolean depthBuffer = false;
    private boolean blitMode = false;
    private boolean blitTrans = false;
    private boolean blitAdditive = false;
    private boolean scissorEnabled = false;
    private boolean scissorClearAll = true;
    private int blitScaling = 0;
    private HashSet<Texture> toUnload = new HashSet<>();
    protected HashMap<Object3D, float[]> matrixCache = new HashMap<>();
    GL10 gl10 = null;
    GL11 gl11 = null;
    boolean gl20 = false;
    private boolean blending = false;
    private float[] ambient = new float[4];
    private float[] cols = new float[4];
    protected float[] dumpy = new float[16];
    private List<Integer> vbos = new ArrayList();
    private boolean textureMatrixSet = false;
    private int lastActivatedStage = -1;
    private boolean hasToReEnable = false;
    private boolean mipmapsByGpu = false;
    private Set<Texture> uploadedTextures = new HashSet();
    private GL20Handler gl20Handler = null;
    private FloatBuffer fogColors = ByteBuffer.allocateDirect(16).order(ByteOrder.nativeOrder()).asFloatBuffer();
    private int lastWorldHash = 0;
    private Matrix tmpMat = new Matrix();
    private Matrix moMat = new Matrix();
    private float[] cameraMatrix = new float[16];
    private GLSLShader lineColorShader = null;
    float[] lineCol = new float[4];
    private String extensions = null;

    public GLRenderer() {
        this.init = false;
        this.stateChanges = 0;
        this.pixelBufferSize = 0;
        this.blitBufferWidth = 0;
        this.blitBufferHeight = 0;
        this.texMan = null;
        this.lastFarPlane = -999.0f;
        this.textureScale.setDump(new float[]{0.5f, 0.0f, 0.0f, 0.0f, 0.0f, 0.5f, 0.0f, 0.0f, 0.0f, 0.0f, 0.5f, 0.0f, 0.5f, 0.5f, 0.5f, 1.0f});
        resetStates();
        int i10 = rendererID;
        this.myID = i10;
        rendererID = i10 + 1;
        this.lastFOV = -999.0f;
        this.lastFarPlane = -999.0f;
        this.lastNearPlane = -999.0f;
        this.init = false;
        this.lastTexture = 0;
        this.stateChanges = 0;
        this.pixelBuffer = null;
        this.pixelBufferSize = 0;
        this.blitBuffer = null;
        this.blitBufferWidth = 0;
        this.blitBufferHeight = 0;
        this.texMan = TextureManager.getInstance();
        if (Logger.isDebugEnabled()) {
            Logger.log("GLRenderer created with id " + this.myID + " on " + ((Object) Thread.currentThread()), 3);
        }
    }

    private void activateStage(int i10) {
        if (this.lastActivatedStage != i10) {
            this.lastActivatedStage = i10;
            this.gl10.glActiveTexture(stageMap[i10]);
        }
    }

    private void bindAndProject(int i10, Texture texture) {
        int openGLID = texture.getOpenGLID(this.myID);
        if (openGLID != this.lastTextures[i10]) {
            bindTexture(i10, openGLID);
        } else if (i10 != 0) {
            enableStage(i10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void blit(FrameBuffer frameBuffer, Texture texture, float f10, float f11, int i10, int i11, int i12, int i13, boolean z10, int i14, int i15, int i16, int i17, int i18, int i19) {
        World world;
        float f12;
        int openGLID;
        int i20;
        int i21;
        int i22;
        int i23;
        float f13;
        int i24;
        if (!this.init || (world = this.myWorld) == null) {
            return;
        }
        Camera camera = world.getCamera();
        float f14 = camera.scaleX;
        float f15 = camera.scaleY;
        if (!this.vertexArraysInitialized) {
            initializeVertexArrays();
        }
        disableUnusedStages();
        switchTextureMode(0, modeMap[0]);
        if (!Config.glIgnoreNearPlane) {
            float f16 = Config.nearPlane;
            if (f16 < 1.0f) {
                f12 = (-f16) - 2.0E-4f;
                float height = texture.getHeight();
                float width = texture.getWidth();
                openGLID = texture.getOpenGLID(this.myID);
                if (openGLID != 0 || texture.getMarker(this.myID) == Texture.MARKER_DELETE_AND_UPLOAD) {
                    texture.setMarker(this.myID, Texture.MARKER_NOTHING);
                    if (openGLID != 0) {
                        IntBuffer smallBuffer = getSmallBuffer(2);
                        smallBuffer.put(openGLID);
                        smallBuffer.flip();
                        this.gl10.glDeleteTextures(1, smallBuffer);
                    }
                    convertTexture(texture);
                    openGLID = texture.getOpenGLID(this.myID);
                }
                if (openGLID != this.lastTextures[0]) {
                    executeBufferedBlits();
                    bindTexture(0, openGLID);
                }
                if (z10) {
                    i20 = i11;
                    i21 = 255;
                    i22 = 255;
                    i23 = 255;
                    f13 = 1.0f;
                    i24 = i10;
                } else {
                    float f17 = Config.glTransparencyOffset + (i16 * Config.glTransparencyMul);
                    if (f17 > 1.0f) {
                        i24 = i14;
                        i20 = i15;
                        i21 = i17;
                        i22 = i18;
                        i23 = i19;
                        f13 = 1.0f;
                    } else {
                        i20 = i15;
                        i21 = i17;
                        i22 = i18;
                        i23 = i19;
                        f13 = f17;
                        i24 = i14;
                    }
                }
                float f18 = 1.0f / width;
                float f19 = 1.0f / height;
                float f20 = f18 * f10;
                float f21 = f19 * f11;
                float f22 = f18 * (i10 + f10);
                float f23 = f19 * (i11 + f11);
                if (this.myWorld != null || frameBuffer == null) {
                }
                Interact2D.reproject2D3DBlit(f14, f15, frameBuffer, i12, i13, 1.0f, this.blitCoords1);
                Interact2D.reproject2D3DBlit(f14, f15, frameBuffer, i12 + i24, i13 + i20, 1.0f, this.blitCoords2);
                if (this.curPos >= 594) {
                    executeBufferedBlits();
                }
                int[] iArr = this.colorArray;
                int[] iArr2 = this.vertexArray;
                int[] iArr3 = this.textureArray;
                short[] sArr = this.indexArray;
                int i25 = i21 << 8;
                int i26 = i22 << 8;
                int i27 = i23 << 8;
                int i28 = (int) (f13 * 65536.0f);
                int i29 = this.colPos;
                int i30 = i29 + 1;
                this.colPos = i30;
                iArr[i29] = i25;
                int i31 = i29 + 2;
                this.colPos = i31;
                iArr[i30] = i26;
                int i32 = i29 + 3;
                this.colPos = i32;
                iArr[i31] = i27;
                int i33 = i29 + 4;
                this.colPos = i33;
                iArr[i32] = i28;
                int i34 = i29 + 5;
                this.colPos = i34;
                iArr[i33] = i25;
                int i35 = i29 + 6;
                this.colPos = i35;
                iArr[i34] = i26;
                int i36 = i29 + 7;
                this.colPos = i36;
                iArr[i35] = i27;
                int i37 = i29 + 8;
                this.colPos = i37;
                iArr[i36] = i28;
                int i38 = i29 + 9;
                this.colPos = i38;
                iArr[i37] = i25;
                int i39 = i29 + 10;
                this.colPos = i39;
                iArr[i38] = i26;
                int i40 = i29 + 11;
                this.colPos = i40;
                iArr[i39] = i27;
                int i41 = i29 + 12;
                this.colPos = i41;
                iArr[i40] = i28;
                int i42 = i29 + 13;
                this.colPos = i42;
                iArr[i41] = i25;
                int i43 = i29 + 14;
                this.colPos = i43;
                iArr[i42] = i26;
                int i44 = i29 + 15;
                this.colPos = i44;
                iArr[i43] = i27;
                this.colPos = i29 + 16;
                iArr[i44] = i28;
                SimpleVector simpleVector = this.blitCoords1;
                int i45 = (int) (simpleVector.f83625x * 65536.0f);
                SimpleVector simpleVector2 = this.blitCoords2;
                int i46 = (int) (simpleVector2.f83625x * 65536.0f);
                int i47 = (int) ((-simpleVector.f83626y) * 65536.0f);
                int i48 = (int) ((-simpleVector2.f83626y) * 65536.0f);
                int i49 = (int) (f12 * 65536.0f);
                int i50 = this.vertPos;
                int i51 = i50 + 1;
                this.vertPos = i51;
                iArr2[i50] = i45;
                int i52 = i50 + 2;
                this.vertPos = i52;
                iArr2[i51] = i48;
                int i53 = i50 + 3;
                this.vertPos = i53;
                iArr2[i52] = i49;
                int i54 = i50 + 4;
                this.vertPos = i54;
                iArr2[i53] = i46;
                int i55 = i50 + 5;
                this.vertPos = i55;
                iArr2[i54] = i48;
                int i56 = i50 + 6;
                this.vertPos = i56;
                iArr2[i55] = i49;
                int i57 = i50 + 7;
                this.vertPos = i57;
                iArr2[i56] = i45;
                int i58 = i50 + 8;
                this.vertPos = i58;
                iArr2[i57] = i47;
                int i59 = i50 + 9;
                this.vertPos = i59;
                iArr2[i58] = i49;
                int i60 = i50 + 10;
                this.vertPos = i60;
                iArr2[i59] = i46;
                int i61 = i50 + 11;
                this.vertPos = i61;
                iArr2[i60] = i47;
                this.vertPos = i50 + 12;
                iArr2[i61] = i49;
                int i62 = (int) (f20 * 65536.0f);
                int i63 = (int) (f22 * 65536.0f);
                int i64 = (int) (f21 * 65536.0f);
                int i65 = (int) (f23 * 65536.0f);
                int i66 = this.texPos;
                int i67 = i66 + 1;
                this.texPos = i67;
                iArr3[i66] = i62;
                int i68 = i66 + 2;
                this.texPos = i68;
                iArr3[i67] = i65;
                int i69 = i66 + 3;
                this.texPos = i69;
                iArr3[i68] = i63;
                int i70 = i66 + 4;
                this.texPos = i70;
                iArr3[i69] = i65;
                int i71 = i66 + 5;
                this.texPos = i71;
                iArr3[i70] = i62;
                int i72 = i66 + 6;
                this.texPos = i72;
                iArr3[i71] = i64;
                int i73 = i66 + 7;
                this.texPos = i73;
                iArr3[i72] = i63;
                this.texPos = i66 + 8;
                iArr3[i73] = i64;
                short s10 = (short) (i50 / 3);
                int i74 = this.indexPos;
                int i75 = i74 + 1;
                this.indexPos = i75;
                sArr[i74] = s10;
                int i76 = i74 + 2;
                this.indexPos = i76;
                short s11 = (short) (s10 + 1);
                sArr[i75] = s11;
                int i77 = i74 + 3;
                this.indexPos = i77;
                short s12 = (short) (s10 + 2);
                sArr[i76] = s12;
                int i78 = i74 + 4;
                this.indexPos = i78;
                sArr[i77] = s12;
                int i79 = i74 + 5;
                this.indexPos = i79;
                sArr[i78] = (short) (s10 + 3);
                this.indexPos = i74 + 6;
                sArr[i79] = s11;
                this.curPos += 6;
                return;
            }
        }
        f12 = -1.00002f;
        float height2 = texture.getHeight();
        float width2 = texture.getWidth();
        openGLID = texture.getOpenGLID(this.myID);
        if (openGLID != 0) {
        }
        texture.setMarker(this.myID, Texture.MARKER_NOTHING);
        if (openGLID != 0) {
        }
        convertTexture(texture);
        openGLID = texture.getOpenGLID(this.myID);
        if (openGLID != this.lastTextures[0]) {
        }
        if (z10) {
        }
        float f182 = 1.0f / width2;
        float f192 = 1.0f / height2;
        float f202 = f182 * f10;
        float f212 = f192 * f11;
        float f222 = f182 * (i10 + f10);
        float f232 = f192 * (i11 + f11);
        if (this.myWorld != null) {
        }
    }

    private void buildMipmap(GL10 gl10, Texture texture, int i10, int i11, int[] iArr) {
        int width = texture.getWidth() >> 1;
        int height = texture.getHeight() >> 1;
        int i12 = 1;
        while (true) {
            if (height < 1 && width < 1) {
                return;
            }
            iArr = texture.convertTo4444 ? texture.alpha ? rescale16(iArr, width, height, false) : rescale16(iArr, width, height, true) : rescale32(iArr, width, height);
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(iArr.length << 2);
            allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
            allocateDirect.rewind();
            allocateDirect.asIntBuffer().put(iArr);
            uploadInternal(width, height, i11, i12, allocateDirect, texture);
            i12++;
            height >>= 1;
            width >>= 1;
        }
    }

    private void disableAllHigherStages() {
        for (int i10 = 1; i10 < this.maxStages; i10++) {
            disableStage(i10);
        }
    }

    private final void disableCompiledPipeline() {
        CompiledInstance.lastVertexBuffer = null;
        this.gl10.glDisable(2884);
        this.gl10.glDisable(2896);
        this.gl10.glDisable(2977);
    }

    private final void disableDepthBuffer() {
        if (this.depthBuffer) {
            this.gl10.glDisable(2929);
            this.depthBuffer = false;
        }
    }

    private final void disableFogging() {
        this.gl10.glDisable(2912);
        this.currentFoggingState = false;
        this.currentFogColor = -1;
        this.currentFogDistance = -1.0f;
    }

    private void disableScissor() {
        if (this.scissorEnabled) {
            this.gl10.glDisable(3089);
            this.scissorEnabled = false;
        }
    }

    private final void disableStage(int i10) {
        if (!this.enabledStages[i10] || this.singleTexturing) {
            return;
        }
        activateStage(i10);
        this.gl10.glDisable(3553);
        this.enabledStages[i10] = false;
        this.singleTexturing = true;
        for (int i11 = 1; i11 < this.maxStages; i11++) {
            if (this.enabledStages[i11]) {
                this.singleTexturing = false;
                return;
            }
        }
    }

    private final void disableUnusedStages() {
        if (this.singleTexturing) {
            return;
        }
        for (int i10 = 1; i10 < this.maxStages; i10++) {
            if (this.enabledStages[i10]) {
                activateStage(i10);
                this.gl10.glDisable(3553);
                this.enabledStages[i10] = false;
            }
        }
        enableStage(0);
        this.singleTexturing = true;
    }

    private void doPostProcessing(FrameBuffer frameBuffer, IPostProcessor iPostProcessor) {
        if (!iPostProcessor.isInitialized()) {
            iPostProcessor.init(frameBuffer);
        }
        int i10 = this.currentRGBScaling;
        disableAllHigherStages();
        enableStage(0);
        setRGBScaling(1);
        if (this.renderTarget != null) {
            resetViewport(frameBuffer);
        }
        this.lastTextures[0] = -1;
        switchTextureMode(0, modeMap[0]);
        iPostProcessor.process();
        if (this.renderTarget != null) {
            setViewport(frameBuffer);
        }
        setRGBScaling(i10);
    }

    private void enableBlitting(FrameBuffer frameBuffer, boolean z10, boolean z11) {
        boolean z12;
        if (this.myWorld == null) {
            this.myWorld = new World();
            this.myWorld.getCamera().calcFOV(frameBuffer.getWidth(), frameBuffer.getHeight());
            setFrustum(this.myWorld, frameBuffer);
        }
        if (z10 && (!(z12 = this.blitMode) || !this.blitTrans)) {
            if (z12) {
                executeBufferedBlits();
            }
            this.blitAdditive = z11;
            setBlendingMode(z11 ? 1 : 0);
            this.blitTrans = true;
        }
        if (!this.blitMode) {
            this.blitScaling = this.currentRGBScaling;
            if (this.myWorld != null) {
                setRGBScaling(1);
            }
            disableDepthBuffer();
            this.blitMode = true;
            return;
        }
        if (this.blitTrans && !z10) {
            executeBufferedBlits();
            this.gl10.glDisable(3042);
            this.blitTrans = false;
        }
        if (this.blitTrans && z10 && z11 != this.blitAdditive) {
            executeBufferedBlits();
            this.blitAdditive = z11;
            setBlendingMode(z11 ? 1 : 0);
        }
    }

    private void enableColorArray() {
        this.gl10.glColorPointer(4, 5132, 16, this.colors);
        this.gl10.glEnableClientState(32886);
    }

    private final void enableCompiledPipeline() {
        CompiledInstance.lastVertexBuffer = null;
        this.gl10.glEnable(2977);
        this.gl10.glEnable(2896);
        this.gl10.glEnable(2884);
    }

    private final void enableDepthBuffer() {
        if (this.depthBuffer) {
            return;
        }
        this.gl10.glEnable(2929);
        this.depthBuffer = true;
    }

    private final void enableFogging(float f10, float f11, float f12, float f13, float f14) {
        if (f12 < 0.0f) {
            f12 = 0.0f;
        } else if (f12 > 255.0f) {
            f12 = 255.0f;
        }
        if (f13 < 0.0f) {
            f13 = 0.0f;
        } else if (f13 > 255.0f) {
            f13 = 255.0f;
        }
        if (f14 < 0.0f) {
            f14 = 0.0f;
        } else if (f14 > 255.0f) {
            f14 = 255.0f;
        }
        int i10 = (((int) f12) << 16) | (((int) f13) << 8) | ((int) f14);
        if (f11 == this.currentFogDistance && i10 == this.currentFogColor) {
            return;
        }
        if (this.currentFoggingState) {
            disableFogging();
        }
        this.currentFoggingState = true;
        this.fogColors.rewind();
        this.fogColors.put(f12 / 255.0f);
        this.fogColors.put(f13 / 255.0f);
        this.fogColors.put(f14 / 255.0f);
        this.fogColors.put(1.0f);
        this.fogColors.flip();
        this.gl10.glEnable(2912);
        this.gl10.glFogf(2915, f10);
        this.gl10.glFogf(2916, f11);
        this.gl10.glFogx(2917, 9729);
        this.gl10.glFogfv(2918, this.fogColors);
        this.gl10.glFogf(2914, 1.0f);
        this.currentFogColor = i10;
        this.currentFogDistance = f11;
    }

    private void enableScissor(FrameBuffer frameBuffer, Texture texture, int i10, int i11, int i12, int i13) {
        int i14;
        int height = frameBuffer.getHeight() - texture.getHeight();
        int width = texture.getWidth();
        int height2 = texture.getHeight();
        if (i10 != -1) {
            this.scissorEnabled = true;
            i14 = i10;
        } else {
            i14 = 0;
        }
        if (i11 != -1) {
            this.scissorEnabled = true;
            height += i11;
        }
        if (i12 != -1) {
            this.scissorEnabled = true;
            width -= i10 + i12;
        }
        if (i13 != -1) {
            this.scissorEnabled = true;
            height2 -= i11 + i13;
        }
        if (this.scissorEnabled) {
            this.gl10.glEnable(3089);
            if (i14 < 0) {
                i14 = 0;
            }
            if (width < 0) {
                width = 0;
            }
            if (height < 0) {
                height = 0;
            }
            this.gl10.glScissor(i14, height, width, height2 >= 0 ? height2 : 0);
        }
    }

    private final void enableStage(int i10) {
        activateStage(i10);
        if (this.enabledStages[i10]) {
            return;
        }
        this.gl10.glEnable(3553);
        this.enabledStages[i10] = true;
        if (i10 > 0) {
            this.singleTexturing = false;
        }
    }

    private void executeBufferedBlits() {
        IntBuffer intBuffer = this.colors;
        if (intBuffer == null || this.indexPos == 0) {
            return;
        }
        intBuffer.rewind();
        this.colors.put(this.colorArray, 0, this.colPos);
        this.colors.rewind();
        this.vertices.rewind();
        this.vertices.put(this.vertexArray, 0, this.vertPos);
        this.vertices.rewind();
        this.textures.rewind();
        this.textures.put(this.textureArray, 0, this.texPos);
        this.textures.rewind();
        this.indices.rewind();
        this.indices.put(this.indexArray, 0, this.indexPos);
        this.indices.rewind();
        clearShader();
        closeShader();
        if (this.currentFoggingState) {
            this.gl10.glDisable(2912);
        }
        initShader();
        renableVertexArrays();
        enableColorArray();
        this.gl10.glDrawElements(4, this.indexPos, 5123, this.indices);
        clearShader();
        closeShader();
        if (this.currentFoggingState) {
            this.gl10.glEnable(2912);
        }
        this.curPos = 0;
        this.colPos = 0;
        this.texPos = 0;
        this.vertPos = 0;
        this.indexPos = 0;
    }

    private final IntBuffer getSmallBuffer(int i10) {
        IntBuffer intBuffer = this.smallBuffer[i10];
        if (intBuffer != null) {
            intBuffer.clear();
            return intBuffer;
        }
        IntBuffer asIntBuffer = ByteBuffer.allocateDirect(4).order(ByteOrder.nativeOrder()).asIntBuffer();
        this.smallBuffer[i10] = asIntBuffer;
        return asIntBuffer;
    }

    private final int getTextureStages() {
        IntBuffer asIntBuffer = ByteBuffer.allocateDirect(64).order(ByteOrder.nativeOrder()).asIntBuffer();
        this.gl10.glGetIntegerv(34018, asIntBuffer);
        int i10 = asIntBuffer.get(0);
        if (i10 > 4) {
            return 4;
        }
        return i10;
    }

    private boolean hasExtension(String str) {
        if (this.extensions == null) {
            this.extensions = this.gl10.glGetString(7939).toLowerCase();
        }
        return this.extensions.contains(str);
    }

    private final void initTextureStage(int i10, int i11) {
        switchTextureMode(i10, i11);
        this.stageInitialized[i10] = true;
    }

    private final void initializeVertexArrays() {
        if (this.init) {
            this.colors = ByteBuffer.allocateDirect(9600).order(ByteOrder.nativeOrder()).asIntBuffer();
            this.vertices = ByteBuffer.allocateDirect(7200).order(ByteOrder.nativeOrder()).asIntBuffer();
            this.gl10.glColorPointer(4, 5132, 16, this.colors);
            this.gl10.glVertexPointer(3, 5132, 12, this.vertices);
            this.gl10.glEnableClientState(32886);
            this.gl10.glEnableClientState(32884);
            this.gl10.glEnableClientState(32888);
            IntBuffer asIntBuffer = ByteBuffer.allocateDirect(4800).order(ByteOrder.nativeOrder()).asIntBuffer();
            this.textures = asIntBuffer;
            this.gl10.glTexCoordPointer(2, 5132, 8, asIntBuffer);
            this.indices = ByteBuffer.allocateDirect(2400).order(ByteOrder.nativeOrder()).asShortBuffer();
            this.vertexArraysInitialized = true;
            this.colorArray = new int[2400];
            this.vertexArray = new int[1800];
            this.textureArray = new int[IProblem.UnlikelyCollectionMethodArgumentType];
            this.indexArray = new short[600];
        }
    }

    private void prepareForBlitting(int[] iArr, int i10, int i11) {
        Texture texture = this.blitBuffer;
        if (texture != null) {
            int openGLID = texture.getOpenGLID(this.myID);
            if (this.blitBufferWidth != i10 || this.blitBufferHeight != i11) {
                removeTexture(this.blitBuffer);
                Texture texture2 = new Texture(iArr, i10, i11, true);
                this.blitBuffer = texture2;
                texture2.setMarker(this.myID, Texture.MARKER_DELETE_AND_UPLOAD);
                this.blitBuffer.setOpenGLID(this.myID, openGLID);
            } else if (!Config.glUseIgnorantBlits) {
                this.blitBuffer.refill(iArr, i10, i11);
                this.blitBuffer.setMarker(this.myID, Texture.MARKER_DELETE_AND_UPLOAD);
                this.blitBuffer.setOpenGLID(this.myID, openGLID);
            }
        } else {
            this.blitBuffer = new Texture(iArr, i10, i11, true);
        }
        this.blitBufferWidth = i10;
        this.blitBufferHeight = i11;
    }

    private final void renableVertexArrays() {
        IntBuffer intBuffer;
        if (!this.hasToReEnable || (intBuffer = this.vertices) == null) {
            return;
        }
        this.gl10.glVertexPointer(3, 5132, 12, intBuffer);
        this.gl10.glEnableClientState(32884);
        this.gl10.glDisableClientState(32885);
        clearStageFlag();
        this.gl10.glClientActiveTexture(stageMap[0]);
        this.gl10.glEnableClientState(32888);
        this.gl10.glTexCoordPointer(2, 5132, 8, this.textures);
        this.hasToReEnable = false;
    }

    private boolean renderToTarget() {
        if (this.renderTarget == null) {
            return false;
        }
        if (this.gl20 && Config.useFBO) {
            return true;
        }
        disableUnusedStages();
        switchTextureMode(0, modeMap[0]);
        int i10 = this.currentRGBScaling;
        setRGBScaling(1);
        if (this.renderTarget.getOpenGLID(this.myID) == 0) {
            this.renderTarget.setMarker(this.myID, Texture.MARKER_NOTHING);
            convertTexture(this.renderTarget);
            this.lastTextures[0] = -1;
        }
        bindTexture(0, this.renderTarget.getOpenGLID(this.myID));
        if (Logger.isDebugEnabled()) {
            Logger.log("Copy data from framebuffer into render target...", 3);
        }
        if (Config.renderTargetsAsSubImages) {
            this.gl10.glCopyTexSubImage2D(3553, 0, 0, 0, 0, this.yTargetStart, this.renderTarget.getWidth(), this.renderTarget.getHeight());
        } else {
            this.gl10.glCopyTexImage2D(3553, 0, 6407, 0, this.yTargetStart, this.renderTarget.getWidth(), this.renderTarget.getHeight(), 0);
        }
        setRGBScaling(i10);
        if (Logger.isDebugEnabled()) {
            Logger.log("...success!", 3);
        }
        return true;
    }

    private static int[] rescale16(int[] iArr, int i10, int i11, boolean z10) {
        int[] iArr2 = new int[Math.max(1, (i10 * i11) >> 1)];
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = (i10 >> 1) * i12;
            int i14 = (i12 << 1) * i10;
            for (int i15 = 0; i15 < i10; i15++) {
                int i16 = (i15 >> 1) + i13;
                int i17 = i14 + i15;
                if (z10) {
                    int i18 = iArr[i17];
                    int i19 = i18 & 65535;
                    int i20 = i18 & (-65536);
                    int i21 = i20 >> 16;
                    int i22 = iArr[i17 + i10];
                    int i23 = 65535 & i22;
                    int i24 = (-65536) & i22;
                    int i25 = i24 >> 16;
                    int i26 = (((((((i19 >>> 11) & 31) + ((i21 >>> 11) & 31)) + ((i23 >>> 11) & 31)) + ((i25 >>> 11) & 31)) >> 2) & 31) << 11;
                    int i27 = (((((((i19 >> 6) & 31) + ((i20 >> 22) & 31)) + ((i23 >> 6) & 31)) + ((i24 >> 22) & 31)) >> 2) & 31) << 6;
                    int i28 = (((((((i19 >> 1) & 31) + ((i20 >> 17) & 31)) + ((i23 >> 1) & 31)) + ((i24 >> 17) & 31)) >> 2) & 31) << 1;
                    int i29 = (((((i18 & 1) + (i21 & 1)) + (i22 & 1)) + (i25 & 1)) >> 2) & 1;
                    if ((i15 & 1) == 0) {
                        iArr2[i16] = i29 | i26 | i27 | i28;
                    } else {
                        iArr2[i16] = ((((i29 | i26) | i27) | i28) << 16) | iArr2[i16];
                    }
                } else {
                    int i30 = iArr[i17];
                    int i31 = i30 & 65535;
                    int i32 = i30 & (-65536);
                    int i33 = i32 >> 16;
                    int i34 = iArr[i17 + i10];
                    int i35 = 65535 & i34;
                    int i36 = (-65536) & i34;
                    int i37 = i36 >> 16;
                    int i38 = (((((((i31 >>> 12) & 15) + ((i33 >>> 12) & 15)) + ((i35 >>> 12) & 15)) + ((i37 >>> 12) & 15)) >> 2) & 15) << 12;
                    int i39 = (((((((i31 >> 8) & 15) + ((i32 >> 24) & 15)) + ((i35 >> 8) & 15)) + ((i36 >> 24) & 15)) >> 2) & 15) << 8;
                    int i40 = (((((((i31 >> 4) & 15) + ((i32 >> 20) & 15)) + ((i35 >> 4) & 15)) + ((i36 >> 20) & 15)) >> 2) & 15) << 4;
                    int i41 = (((((i30 & 15) + (i33 & 15)) + (i34 & 15)) + (i37 & 15)) >> 2) & 15;
                    if ((i15 & 1) == 0) {
                        iArr2[i16] = i41 | i38 | i39 | i40;
                    } else {
                        iArr2[i16] = ((((i41 | i38) | i39) | i40) << 16) | iArr2[i16];
                    }
                }
            }
        }
        return iArr2;
    }

    private static int[] rescale32(int[] iArr, int i10, int i11) {
        int i12 = i10;
        int[] iArr2 = new int[i12 * i11];
        int i13 = i12 << 1;
        for (int i14 = 0; i14 < i11; i14++) {
            int i15 = i14 * i12;
            int i16 = (i14 << 1) * i13;
            int i17 = 0;
            while (i17 < i12) {
                int i18 = (i17 << 1) + i16;
                int i19 = iArr[i18];
                int i20 = i18 + 1;
                int i21 = iArr[i20];
                int i22 = iArr[i18 + i13];
                int i23 = iArr[i20 + i13];
                int i24 = (((((((i19 >> 16) & 255) + ((i21 >> 16) & 255)) + ((i22 >> 16) & 255)) + ((i23 >> 16) & 255)) >> 2) & 255) << 16;
                int i25 = (((((((i19 >> 8) & 255) + ((i21 >> 8) & 255)) + ((i22 >> 8) & 255)) + ((i23 >> 8) & 255)) >> 2) & 255) << 8;
                iArr2[i15 + i17] = i25 | i24 | ((((((((i19 >>> 24) & 255) + ((i21 >>> 24) & 255)) + ((i22 >>> 24) & 255)) + ((i23 >>> 24) & 255)) >> 2) & 255) << 24) | ((((((i19 & 255) + (i21 & 255)) + (i22 & 255)) + (i23 & 255)) >> 2) & 255);
                i17++;
                i12 = i10;
            }
        }
        return iArr2;
    }

    private void resetStates() {
        for (int i10 = 0; i10 < 4; i10++) {
            this.stageInitialized[i10] = false;
            this.enabledStages[i10] = false;
            this.lastTextures[i10] = 0;
            this.lastMultiTextures[i10] = 0;
            this.lastMultiModes[i10] = 0;
            this.lastMode[i10] = -1;
        }
    }

    private void resetTextureStates() {
        for (int i10 = 0; i10 < 4; i10++) {
            this.lastTextures[i10] = -1;
        }
    }

    private void setBlendingMode(int i10) {
        if (i10 == 0) {
            this.gl10.glEnable(3042);
            this.gl10.glBlendFunc(770, 771);
        } else {
            if (i10 != 1) {
                return;
            }
            this.gl10.glEnable(3042);
            this.gl10.glBlendFunc(770, 1);
        }
    }

    private void setDepthBuffer() {
        if (this.renderTarget == null) {
            this.gl10.glDepthMask(false);
        }
    }

    private void setFrustum(World world, FrameBuffer frameBuffer) {
        float f10;
        int i10;
        Camera camera = world.getCamera();
        float fov = camera.getFOV();
        if (fov == this.lastFOV && Config.farPlane == this.lastFarPlane && ((Config.glIgnoreNearPlane || Config.nearPlane == this.lastNearPlane) && Config.autoMaintainAspectRatio == this.lastFOVMode)) {
            return;
        }
        this.gl10.glMatrixMode(5889);
        this.gl10.glLoadIdentity();
        float height = frameBuffer.getHeight();
        float width = frameBuffer.getWidth();
        Texture texture = frameBuffer.renderTarget;
        if (texture != null) {
            int i11 = frameBuffer.virtualHeight;
            if (i11 <= 0 || (i10 = frameBuffer.virtualWidth) <= 0) {
                height = texture.height;
                i10 = texture.width;
            } else {
                height = i11;
            }
            width = i10;
        }
        float f11 = Config.autoMaintainAspectRatio ? (height / width) * fov : fov;
        if (camera.getYFOV() != -1.0f) {
            f11 = camera.getYFOV();
        }
        float f12 = Config.farPlane;
        if (Config.glIgnoreNearPlane) {
            f10 = 1.0f;
        } else {
            f10 = Config.nearPlane;
            fov *= f10;
            f11 *= f10;
        }
        this.gl10.glFrustumf((-fov) * 0.5f, fov * 0.5f, (-f11) * 0.5f, f11 * 0.5f, f10, f12);
        this.lastFOV = fov + (f11 * 100.0f);
        this.lastFarPlane = Config.farPlane;
        this.lastNearPlane = Config.nearPlane;
        this.lastFOVMode = Config.autoMaintainAspectRatio;
    }

    private void setLightsAndFog(World world) {
        boolean z10;
        setRGBScaling(world.lights.rgbScale);
        int hashCode = world.hashCode();
        if (hashCode != this.lastWorldHash) {
            z10 = world.useFogging;
            this.lastWorldHash = hashCode;
        } else {
            z10 = false;
        }
        int i10 = world.fogModeChanged;
        if (i10 == 1 || z10) {
            enableFogging(world.fogStart, world.fogDistance, world.fogColorR, world.fogColorG, world.fogColorB);
            world.fogModeChanged = 0;
        } else if (i10 == 2) {
            disableFogging();
            world.fogModeChanged = 0;
        }
    }

    private void setLineColor(RGBColor rGBColor) {
        if (!this.gl20) {
            this.gl10.glColor4f(rGBColor.getNormalizedRed(), rGBColor.getNormalizedGreen(), rGBColor.getNormalizedBlue(), rGBColor.getNormalizedAlpha());
            return;
        }
        this.lineCol[0] = rGBColor.getNormalizedRed();
        this.lineCol[1] = rGBColor.getNormalizedGreen();
        this.lineCol[2] = rGBColor.getNormalizedBlue();
        this.lineCol[3] = rGBColor.getNormalizedAlpha();
        this.lineColorShader.setUniform("color", this.lineCol);
    }

    private void setLineShader() {
        if (this.gl20) {
            if (this.lineColorShader == null) {
                this.lineColorShader = new GLSLShader("uniform mat4 modelViewProjectionMatrix; uniform vec4 color; attribute vec4 position; varying vec4 col; void main() {\tcol=color; gl_Position = modelViewProjectionMatrix * position; }", "precision lowp float; varying vec4 col; void main() { gl_FragColor=col; }");
            }
            setShader(this.lineColorShader);
        }
    }

    private final void setRGBScaling(int i10) {
        if (i10 != this.currentRGBScaling) {
            enableStage(0);
            this.gl10.glTexEnvx(8960, 8704, 34160);
            this.gl10.glTexEnvx(8960, 34161, 8448);
            this.gl10.glTexEnvx(8960, 34163, i10);
            this.currentRGBScaling = i10;
        }
    }

    private void setTextureMatrix(Matrix matrix) {
        if (this.textureMatrixSet) {
            activateStage(0);
            this.gl10.glMatrixMode(5890);
            this.gl10.glPopMatrix();
            this.textureMatrixSet = false;
        }
        if (matrix == null) {
            return;
        }
        activateStage(0);
        this.gl10.glMatrixMode(5890);
        this.gl10.glPushMatrix();
        matrix.fillDump(this.dumpy);
        this.gl10.glLoadMatrixf(this.dumpy, 0);
        this.textureMatrixSet = true;
    }

    private Texture setTextures(Object3D object3D, int i10, int i11, FrameBuffer frameBuffer, World world) {
        if (object3D.oneTextureSet) {
            i10 = 0;
        }
        Texture texture = this.texMan.textures[object3D.texture[i10]];
        if (texture.getOpenGLID(this.myID) == 0 || texture.getMarker(this.myID) == Texture.MARKER_DELETE_AND_UPLOAD) {
            texture.setMarker(this.myID, Texture.MARKER_NOTHING);
            if (texture != this.renderTarget) {
                if (texture.getOpenGLID(this.myID) != 0) {
                    removeTexture(texture);
                }
                convertTexture(texture);
            }
            this.lastTextures[0] = -1;
        }
        setTextureMatrix(object3D.textureMatrix);
        bindAndProject(0, texture);
        if (object3D.usesMultiTexturing) {
            int i12 = this.maxStages;
            int i13 = object3D.maxStagesUsed;
            if (i12 < i13) {
                this.maxStages = i13;
                int i14 = this.minDriverAndConfig;
                if (i13 > i14) {
                    this.maxStages = i14;
                }
            }
            int length = object3D.multiTex.length;
            for (int i15 = 1; i15 < this.maxStages; i15++) {
                int i16 = i15 - 1;
                int i17 = i16 >= length ? -1 : object3D.multiTex[i16][i10];
                if (i17 != -1) {
                    Texture texture2 = this.texMan.textures[i17];
                    if (texture2.enabled) {
                        int i18 = modeMap[object3D.multiMode[i16][i11]];
                        if (Config.glRevertADDtoMODULATE && i18 == 260) {
                            i18 = 8448;
                        }
                        if (this.stageInitialized[i15]) {
                            switchTextureMode(i15, i18);
                        } else {
                            initTextureStage(i15, i18);
                        }
                        if (texture2.getOpenGLID(this.myID) == 0 || texture2.getMarker(this.myID) == Texture.MARKER_DELETE_AND_UPLOAD) {
                            texture2.setMarker(this.myID, Texture.MARKER_NOTHING);
                            if (texture2 != this.renderTarget) {
                                if (texture2.getOpenGLID(this.myID) != 0) {
                                    removeTexture(texture2);
                                }
                                convertTexture(texture2);
                            }
                            this.lastTextures[i15] = -1;
                        }
                        bindAndProject(i15, texture2);
                    } else {
                        disableStage(i15);
                    }
                } else {
                    disableStage(i15);
                }
            }
        } else {
            disableUnusedStages();
        }
        return texture;
    }

    private void setViewport(FrameBuffer frameBuffer) {
        int height = frameBuffer.getHeight() - this.renderTarget.getHeight();
        this.yTargetStart = height;
        this.gl10.glViewport(0, height, this.renderTarget.getWidth(), this.renderTarget.getHeight());
    }

    private final void switchTextureMode(int i10, int i11) {
        if (this.lastMode[i10] != i11) {
            enableStage(i10);
            this.gl10.glTexEnvx(8960, 8704, i11);
            this.lastMode[i10] = i11;
        }
    }

    private void unloadTextures() {
        if (this.toUnload.size() > 0) {
            synchronized (this) {
                try {
                    Iterator<Texture> it = this.toUnload.iterator();
                    while (it.hasNext()) {
                        Texture next = it.next();
                        if (next.getOpenGLID(this.myID) != 0) {
                            GL20Handler gL20Handler = this.gl20Handler;
                            if (gL20Handler != null) {
                                gL20Handler.unloadRenderTarget(next);
                            }
                            removeTexture(next);
                            next.clearIDs(this.myID);
                        }
                    }
                    this.toUnload.clear();
                } finally {
                }
            }
        }
    }

    private void unsetBlendingMode() {
        this.gl10.glDisable(3042);
    }

    private void uploadInternal(int i10, int i11, int i12, int i13, ByteBuffer byteBuffer, Texture texture) {
        boolean z10 = texture.etc1 && this.gl20;
        if (z10) {
            z10 = this.gl20Handler.uploadTexture(i10, i11, i12, i13, texture.convertTo4444, byteBuffer);
        }
        if (z10) {
            return;
        }
        this.gl10.glTexImage2D(3553, i13, 6408, i10, i11, 0, 6408, i12, byteBuffer);
    }

    public void addForUnload(Texture texture) {
        synchronized (this) {
            try {
                this.toUnload.add(texture);
                if (Config.unloadImmediately) {
                    unloadTextures();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void bindTexture(int i10, int i11) {
        enableStage(i10);
        this.gl10.glBindTexture(3553, i11);
        this.stateChanges++;
        this.lastTextures[i10] = i11;
    }

    public void blitIntArray(int[] iArr, FrameBuffer frameBuffer, int i10, int i11, int i12, int i13, int i14, int i15, boolean z10, int i16, int i17) {
        enableBlitting(frameBuffer, z10, false);
        prepareForBlitting(iArr, i16, i17);
        blit(frameBuffer, this.blitBuffer, i10, i11, i14, i15, i12, i13, false, 0, 0, 0, 0, 0, 0);
    }

    public void blitTexture(Texture texture, FrameBuffer frameBuffer, int i10, int i11, int i12, int i13, int i14, int i15, boolean z10) {
        enableBlitting(frameBuffer, z10, false);
        blit(frameBuffer, texture, i10, i11, i14, i15, i12, i13, false, 0, 0, 0, 0, 0, 0);
    }

    public void clear(RGBColor rGBColor) {
        disableBlitting();
        if (this.scissorEnabled && this.scissorClearAll) {
            this.gl10.glDisable(3089);
        }
        int i10 = Config.aaMode == 2 ? 49408 : 16640;
        if (rGBColor != null) {
            this.gl10.glClearColor(rGBColor.getNormalizedRed(), rGBColor.getNormalizedGreen(), rGBColor.getNormalizedBlue(), rGBColor.getNormalizedAlpha());
        } else {
            this.gl10.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        }
        this.gl10.glClear(i10);
        if (this.scissorEnabled && this.scissorClearAll) {
            this.gl10.glEnable(3089);
        }
    }

    public void clearColorBufferOnly(RGBColor rGBColor) {
        disableBlitting();
        if (this.scissorEnabled && this.scissorClearAll) {
            this.gl10.glDisable(3089);
        }
        int i10 = Config.aaMode == 2 ? AL.AL_DOPPLER_FACTOR : 16384;
        if (rGBColor != null) {
            this.gl10.glClearColor(rGBColor.getNormalizedRed(), rGBColor.getNormalizedGreen(), rGBColor.getNormalizedBlue(), rGBColor.getNormalizedAlpha());
        } else {
            this.gl10.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        }
        this.gl10.glClear(i10);
        if (this.scissorEnabled && this.scissorClearAll) {
            this.gl10.glEnable(3089);
        }
    }

    public void clearShader() {
        if (this.gl20) {
            this.gl20Handler.clearShader();
        }
    }

    public void clearStageFlag() {
        this.lastActivatedStage = -1;
    }

    public void clearTangents() {
        if (this.gl20) {
            this.gl20Handler.clearTangents();
        }
    }

    public void clearZBufferOnly() {
        disableBlitting();
        if (this.scissorEnabled && this.scissorClearAll) {
            this.gl10.glDisable(3089);
        }
        this.gl10.glClear(256);
        if (this.scissorEnabled && this.scissorClearAll) {
            this.gl10.glEnable(3089);
        }
    }

    public void closeShader() {
        if (this.gl20) {
            this.gl20Handler.resetShaderData();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:113:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0252  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void convertTexture(Texture texture) {
        int[] iArr;
        int[] iArr2;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        byte[] bArr;
        Virtualizer virtualizer;
        boolean z10 = texture.texels == null && texture.zippedTexels == null && (virtualizer = this.texMan.getVirtualizer()) != null && virtualizer.restore(texture);
        if (texture.nPot && !hasExtension("npot")) {
            Logger.log("This device doesn't support nPot-textures!", 1);
        }
        int[] iArr3 = texture.texels;
        if (iArr3 == null && (bArr = texture.zippedTexels) != null) {
            iArr3 = ZipHelper.unzip(bArr);
        }
        int height = texture.getHeight();
        int width = texture.getWidth();
        if (height != width && (this.gl10 instanceof GL20Handler)) {
            Logger.log("Texture's size is " + width + "/" + height + ", but textures should be square for OpenGL ES2.0! This may result in a black texture!", 1);
        }
        int i19 = height * width;
        int i20 = i19 << 2;
        if (texture.etc1) {
            texture.convertTo4444 = false;
        }
        if (texture.convertTo4444) {
            i20 >>= 1;
        }
        if (Logger.isDebugEnabled()) {
            StringBuilder sb2 = new StringBuilder("Allocating native memory for ");
            sb2.append(width);
            sb2.append("*");
            sb2.append(height);
            sb2.append(" texture(");
            sb2.append(texture.bilinear);
            sb2.append("/");
            sb2.append(texture.etc1);
            sb2.append("/");
            sb2.append(texture.zippedTexels != null);
            sb2.append("/");
            sb2.append(texture.isUnicolor);
            sb2.append("/");
            sb2.append("): ");
            sb2.append(i20);
            sb2.append(" bytes!");
            Logger.log(sb2.toString(), 3);
        }
        ByteBuffer order = ByteBuffer.allocateDirect(i20).order(ByteOrder.LITTLE_ENDIAN);
        boolean z11 = texture.convertTo4444;
        int i21 = Spanned.SPAN_PRIORITY;
        int i22 = 65280;
        if (z11) {
            if (iArr3 != null) {
                int[] iArr4 = new int[i19 >> 1];
                if (texture.alpha) {
                    for (int i23 = 0; i23 < i19; i23++) {
                        int i24 = iArr3[i23];
                        int i25 = ((((((i24 & 65280) >> 12) << 4) | ((i24 & 255) >> 4)) | (((i24 & Spanned.SPAN_PRIORITY) >> 20) << 8)) << 4) | ((i24 & (-16777216)) >>> 28);
                        if ((i23 & 1) == 0) {
                            iArr4[i23 >> 1] = i25;
                        } else {
                            int i26 = i23 >> 1;
                            iArr4[i26] = iArr4[i26] | (i25 << 16);
                        }
                    }
                    i18 = 32819;
                } else {
                    int i27 = 0;
                    while (i27 < i19) {
                        int i28 = iArr3[i27];
                        int i29 = ((((i28 & 255) >> 3) | (((i28 & i22) >> 11) << 5)) | (((i28 & Spanned.SPAN_PRIORITY) >> 19) << 10)) << 1;
                        if ((i28 & 15790320) != 0) {
                            i29 |= 1;
                        }
                        if ((i27 & 1) == 0) {
                            iArr4[i27 >> 1] = i29;
                        } else {
                            int i30 = i27 >> 1;
                            iArr4[i30] = (i29 << 16) | iArr4[i30];
                        }
                        i27++;
                        i22 = 65280;
                    }
                    i18 = 32820;
                }
                order.rewind();
                order.asIntBuffer().put(iArr4);
                iArr2 = iArr4;
                i10 = i18;
                if (iArr3 == null) {
                    order.rewind();
                    IntBuffer asIntBuffer = order.asIntBuffer();
                    if (texture.convertTo4444) {
                        i19 >>= 1;
                    }
                    asIntBuffer.put(new int[i19]);
                }
                IntBuffer smallBuffer = getSmallBuffer(1);
                this.gl10.glGenTextures(1, smallBuffer);
                i11 = smallBuffer.get(0);
                if (Logger.isDebugEnabled()) {
                    Logger.log("New texture's id is: " + i11, 3);
                }
                if (i11 == 0) {
                    i12 = 0;
                    Logger.log("Failed to upload texture!", 0);
                } else {
                    i12 = 0;
                }
                i13 = this.lastTextures[i12];
                bindTexture(i12, i11);
                if (texture.nPot) {
                    i14 = 9729;
                } else {
                    boolean z12 = texture.mipmap;
                    i14 = z12 ? 9985 : 9729;
                    if (Config.glTrilinear && !texture.etc1 && z12) {
                        i14 = 9987;
                    }
                }
                this.gl10.glTexParameterx(3553, 10241, i14);
                if (texture.bilinear) {
                    this.gl10.glTexParameterx(3553, 10240, 9729);
                } else {
                    this.gl10.glTexParameterx(3553, 10240, 9728);
                }
                int i31 = (texture.repeat || texture.nPot) ? 33071 : 10497;
                this.gl10.glTexParameterx(3553, 10242, i31);
                this.gl10.glTexParameterx(3553, 10243, i31);
                if (i14 != 9729 || this.gl11 == null || texture.isShadowMap || texture.nPot) {
                    i15 = i13;
                    i16 = i11;
                    i17 = 3;
                    this.gl10.glTexImage2D(3553, 0, 6408, width, height, 0, 6408, i10, order);
                } else {
                    long currentTimeMillis = System.currentTimeMillis();
                    if (!this.mipmapsByGpu || Config.internalMipmapCreation || texture.etc1) {
                        uploadInternal(width, height, i10, 0, order, texture);
                        buildMipmap(this.gl10, texture, i11, i10, iArr2);
                        if (Logger.isDebugEnabled()) {
                            Logger.log("Mipmaps generated by the CPU in " + (System.currentTimeMillis() - currentTimeMillis) + DateFormat.MINUTE_SECOND, 3);
                        }
                    } else {
                        this.gl10.glTexParameterf(3553, 33169, 1.0f);
                        uploadInternal(width, height, i10, 0, order, texture);
                        if (Logger.isDebugEnabled()) {
                            Logger.log("Mipmaps generated by the GPU in " + (System.currentTimeMillis() - currentTimeMillis) + DateFormat.MINUTE_SECOND, 3);
                        }
                    }
                    i15 = i13;
                    i16 = i11;
                    i17 = 3;
                }
                texture.setOpenGLID(this.myID, i16);
                if (i15 != 0) {
                    bindTexture(0, i15);
                }
                if (Logger.isDebugEnabled()) {
                    Logger.log("New texture uploaded: " + ((Object) texture) + " in thread " + ((Object) Thread.currentThread()), i17);
                }
                this.uploadedTextures.add(texture);
                if (z10) {
                    this.texMan.getVirtualizer().freeHandles(texture);
                    return;
                }
                return;
            }
        } else if (iArr3 != null) {
            iArr = new int[i19];
            int i32 = 0;
            while (i32 < i19) {
                int i33 = iArr3[i32];
                int i34 = (i33 & 65280) | ((i33 & 255) << 16) | ((i33 & i21) >> 16);
                if (texture.alpha) {
                    i34 |= i33 & (-16777216);
                } else if ((i33 & 15790320) != 0) {
                    i34 |= -16777216;
                }
                iArr[i32] = i34;
                i32++;
                i21 = Spanned.SPAN_PRIORITY;
            }
            order.rewind();
            order.asIntBuffer().put(iArr);
            iArr2 = iArr;
            i10 = 5121;
            if (iArr3 == null) {
            }
            IntBuffer smallBuffer2 = getSmallBuffer(1);
            this.gl10.glGenTextures(1, smallBuffer2);
            i11 = smallBuffer2.get(0);
            if (Logger.isDebugEnabled()) {
            }
            if (i11 == 0) {
            }
            i13 = this.lastTextures[i12];
            bindTexture(i12, i11);
            if (texture.nPot) {
            }
            this.gl10.glTexParameterx(3553, 10241, i14);
            if (texture.bilinear) {
            }
            if (texture.repeat) {
            }
            this.gl10.glTexParameterx(3553, 10242, i31);
            this.gl10.glTexParameterx(3553, 10243, i31);
            if (i14 != 9729) {
            }
            i15 = i13;
            i16 = i11;
            i17 = 3;
            this.gl10.glTexImage2D(3553, 0, 6408, width, height, 0, 6408, i10, order);
            texture.setOpenGLID(this.myID, i16);
            if (i15 != 0) {
            }
            if (Logger.isDebugEnabled()) {
            }
            this.uploadedTextures.add(texture);
            if (z10) {
            }
        }
        iArr = null;
        iArr2 = iArr;
        i10 = 5121;
        if (iArr3 == null) {
        }
        IntBuffer smallBuffer22 = getSmallBuffer(1);
        this.gl10.glGenTextures(1, smallBuffer22);
        i11 = smallBuffer22.get(0);
        if (Logger.isDebugEnabled()) {
        }
        if (i11 == 0) {
        }
        i13 = this.lastTextures[i12];
        bindTexture(i12, i11);
        if (texture.nPot) {
        }
        this.gl10.glTexParameterx(3553, 10241, i14);
        if (texture.bilinear) {
        }
        if (texture.repeat) {
        }
        this.gl10.glTexParameterx(3553, 10242, i31);
        this.gl10.glTexParameterx(3553, 10243, i31);
        if (i14 != 9729) {
        }
        i15 = i13;
        i16 = i11;
        i17 = 3;
        this.gl10.glTexImage2D(3553, 0, 6408, width, height, 0, 6408, i10, order);
        texture.setOpenGLID(this.myID, i16);
        if (i15 != 0) {
        }
        if (Logger.isDebugEnabled()) {
        }
        this.uploadedTextures.add(texture);
        if (z10) {
        }
    }

    public void deleteBuffer(int i10) {
        if (i10 != 0) {
            this.gl11.glDeleteBuffers(1, new int[]{i10}, 0);
            unregisterVBO(i10);
        }
    }

    public void disableBlitting() {
        int i10;
        if (this.blitMode) {
            executeBufferedBlits();
            if (this.myWorld != null && (i10 = this.blitScaling) != this.currentRGBScaling) {
                setRGBScaling(i10);
            }
            if (this.blitTrans) {
                this.gl10.glDisable(3042);
                this.blitTrans = false;
            }
            enableDepthBuffer();
            this.blitMode = false;
        }
    }

    public void disableLineMode() {
        this.gl10.glLineWidth(1.0f);
        clearShader();
        closeShader();
        this.gl10.glMatrixMode(5888);
        this.gl10.glPopMatrix();
        if (!this.gl20) {
            this.gl10.glEnable(3553);
        }
        initShader();
        this.hasToReEnable = true;
        renableVertexArrays();
    }

    public void dispose() {
        if (this.disposed) {
            return;
        }
        this.disposed = true;
        this.init = false;
        this.lastFOV = -999.0f;
        this.lastFarPlane = -999.0f;
        this.lastNearPlane = -999.0f;
        this.lastTexture = 0;
        this.pixelBuffer = null;
        this.blitBuffer = null;
        this.listener = null;
        this.myWorld = null;
        for (Texture texture : TextureManager.getInstance().textures) {
            try {
                removeTexture(texture);
            } catch (Exception unused) {
            }
        }
        unloadKnownTextures();
        this.texMan.flushOpenGLIDs(this.myID);
        if (this.gl11 != null && Config.useVBO) {
            Logger.log("Disposing VBOs!", 2);
            ArrayList arrayList = new ArrayList(this.vbos);
            synchronized (this) {
                Iterator<E> it = arrayList.iterator();
                while (it.hasNext()) {
                    deleteBuffer(((Integer) it.next()).intValue());
                }
            }
            this.vbos.clear();
        }
        Logger.log("Renderer disposed!", 2);
        if (Logger.isDebugEnabled()) {
            Logger.log("GLRenderer disposed with id " + this.myID + " on " + ((Object) Thread.currentThread()), 3);
        }
    }

    public void disposeProcessor(IPostProcessor iPostProcessor) {
        disableBlitting();
        iPostProcessor.dispose();
    }

    public void drawLine(Polyline polyline) {
        polyline.getData().rewind();
        RGBColor color = polyline.getColor();
        setLineColor(color);
        if (color.alpha < 255) {
            setBlendingMode(polyline.getTransparencyMode());
        }
        initShader();
        this.gl10.glLineWidth(polyline.getWidth());
        this.gl10.glVertexPointer(3, 5126, 12, polyline.getData());
        this.gl10.glDrawArrays(3, 0, polyline.getLength());
        if (color.alpha < 255) {
            unsetBlendingMode();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:116:0x0220, code lost:
    
        if (r0 > 1.0f) goto L125;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v3, types: [com.threed.jpct.Object3D, com.threed.jpct.Matrix] */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r24v0, types: [com.threed.jpct.GLRenderer] */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v34 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawVertexArray(VisList visList, int i10, int i11, FrameBuffer frameBuffer, World world) {
        int i12;
        int i13;
        int i14;
        Object3D object3D;
        int i15;
        Texture texture;
        Texture[] textureArr;
        char c10;
        boolean z10;
        VisList visList2;
        boolean z11;
        float f10;
        boolean z12;
        VisList visList3 = visList;
        int i16 = i11;
        World world2 = world;
        Object3D object3D2 = null;
        CompiledInstance.lastObj = null;
        int i17 = -1;
        this.lastActivatedStage = -1;
        boolean z13 = true;
        this.hasToReEnable = true;
        if (this.init) {
            resetShader();
            disableBlitting();
            enableCompiledPipeline();
            int[] iArr = this.lastMultiTextures;
            int[] iArr2 = this.lastMultiModes;
            boolean z14 = false;
            int i18 = 0;
            while (true) {
                i12 = -9999;
                if (i18 >= this.minDriverAndConfig) {
                    break;
                }
                iArr[i18] = -9999;
                iArr2[i18] = -9999;
                i18++;
                visList3 = visList;
                world2 = world;
                object3D2 = null;
                i17 = -1;
            }
            this.wasTransparent = false;
            this.lastTransMode = 0;
            this.lastTexture = -9999;
            world2.fillAmbientLight(this.ambient);
            int i19 = 0;
            Object3D object3D3 = object3D2;
            while (i19 < 3) {
                boolean z15 = z14 ? 1 : 0;
                int[] iArr3 = iArr2;
                int[] iArr4 = iArr;
                boolean z16 = z13;
                float[] fArr = this.ambient;
                float f11 = fArr[i19] * COLOR_INV;
                fArr[i19] = f11;
                if (f11 < 0.0f) {
                    fArr[i19] = 0.0f;
                }
                i19++;
                visList3 = visList;
                z14 = z15;
                z13 = z16;
                iArr2 = iArr3;
                iArr = iArr4;
                i12 = -9999;
                object3D3 = null;
                i17 = -1;
            }
            this.ambient[3] = 1.0f;
            this.blending = z14;
            Texture[] textureArr2 = this.texMan.textures;
            int i20 = i10;
            int i21 = i12;
            Object3D object3D4 = object3D3;
            ?? r62 = z14;
            ?? r13 = object3D3;
            while (i20 <= i16) {
                Object3D object3D5 = visList3.vorg[i20];
                int i22 = visList3.vnum[i20];
                if (object3D5.oneTextureSet) {
                    i13 = r62;
                    i14 = i13;
                } else {
                    i13 = i21;
                    i14 = i22;
                }
                int i23 = object3D5.maxStagesUsed;
                int i24 = this.minDriverAndConfig;
                if (i23 > i24) {
                    i23 = i24;
                }
                Texture texture2 = textureArr2[object3D5.texture[i14]];
                boolean z17 = (!object3D5.isTrans || object3D5.isEnvmapped) ? r62 : true;
                boolean z18 = object3D5.usesMultiTexturing;
                Texture[] textureArr3 = textureArr2;
                if (z18 && object3D5.multiTex[r62][i14] == -1) {
                    z18 = false;
                }
                int openGLID = texture2.getOpenGLID(this.myID);
                boolean z19 = openGLID != this.lastTexture;
                this.veryLastCoords = this.lastCoords;
                this.lastCoords = 1;
                if (z18) {
                    for (int i25 = 1; i25 < i23 && object3D5.multiTex[i25 - 1][i14] != -1; i25++) {
                        this.lastCoords++;
                    }
                }
                boolean z20 = z19 ? z19 : (openGLID == 0 || texture2.getMarker(this.myID) == Texture.MARKER_DELETE_AND_UPLOAD) | z19 | (this.lastCoords != this.veryLastCoords) | ((object3D4 == null || object3D5.maxStagesUsed == object3D4.maxStagesUsed) ? false : true);
                if (!z20 && z18) {
                    for (int i26 = 1; i26 < i23; i26++) {
                        int i27 = i26 - 1;
                        int i28 = object3D5.multiTex[i27][i14];
                        if (i28 != -1) {
                            Texture texture3 = this.texMan.textures[i28];
                            int openGLID2 = texture3.getOpenGLID(this.myID);
                            if (texture3.enabled && (openGLID2 != iArr[i26] || object3D5.multiMode[i27][i22] != iArr2[i26] || openGLID2 == 0 || texture3.getMarker(this.myID) == Texture.MARKER_DELETE_AND_UPLOAD)) {
                                z20 = true;
                                break;
                            }
                        } else {
                            int i29 = iArr[i26];
                            if (i29 != -1) {
                                if (i29 != -9999) {
                                    z20 = true;
                                    break;
                                }
                            }
                        }
                    }
                }
                boolean z21 = this.wasTransparent;
                if (z17 == z21 && object3D5.transMode == this.lastTransMode && !z20) {
                    object3D = object3D5;
                    i15 = i20;
                    textureArr = textureArr3;
                    z10 = false;
                    c10 = 3;
                } else {
                    if (i20 != i10) {
                        if (z21) {
                            setBlendingMode(this.lastTransMode);
                            object3D = object3D5;
                            z10 = true;
                        } else {
                            object3D = object3D5;
                            z10 = false;
                        }
                        i15 = i20;
                        textureArr = textureArr3;
                        int i30 = i21;
                        c10 = 3;
                        texture = texture2;
                        setTextures(object3D4, i13, i30, frameBuffer, world);
                    } else {
                        object3D = object3D5;
                        i15 = i20;
                        texture = texture2;
                        textureArr = textureArr3;
                        c10 = 3;
                        z10 = false;
                    }
                    this.wasTransparent = z17;
                    this.lastTransMode = object3D.transMode;
                    this.lastTexture = texture.getOpenGLID(this.myID);
                    int i31 = 1;
                    while (i31 < i23) {
                        int[] iArr5 = iArr2;
                        int[] iArr6 = iArr;
                        int i32 = i31 - 1;
                        int i33 = object3D.multiTex[i32][i14];
                        if (i33 != -1) {
                            iArr6[i31] = this.texMan.textures[i33].getOpenGLID(this.myID);
                            iArr5[i31] = object3D.multiMode[i32][i22];
                        } else {
                            iArr6[i31] = -9999;
                            iArr5[i31] = -9999;
                        }
                        i31++;
                        iArr2 = iArr5;
                        iArr = iArr6;
                    }
                }
                if (z10) {
                    this.blending = false;
                    unsetBlendingMode();
                    this.gl10.glDepthMask(true);
                    z10 = false;
                }
                if (object3D.isTrans) {
                    if (!this.blending) {
                        setBlendingMode(object3D.transMode);
                        setDepthBuffer();
                    }
                    i16 = i11;
                    visList2 = visList;
                    if (i15 < i16) {
                        Object3D object3D6 = visList2.vorg[i15 + 1];
                        if (object3D6.isCompiled() && object3D6.isTrans == object3D.isTrans && object3D6.transMode == object3D.transMode) {
                            this.blending = true;
                            z11 = false;
                        }
                    }
                    z11 = true;
                } else {
                    visList2 = visList;
                    i16 = i11;
                    z11 = z10;
                }
                setTextures(object3D, i14, i22, frameBuffer, world);
                RGBColor additionalColor = object3D.getAdditionalColor();
                this.cols[0] = additionalColor.getNormalizedRed();
                this.cols[1] = additionalColor.getNormalizedGreen();
                this.cols[2] = additionalColor.getNormalizedBlue();
                if (z17) {
                    f10 = Config.glTransparencyOffset + (object3D.transValue * Config.glTransparencyMul);
                }
                f10 = 1.0f;
                this.cols[c10] = f10;
                int[] iArr7 = iArr2;
                int[] iArr8 = iArr;
                object3D.compiled.get(visList2.vertexIndex[i15]).render(this.myID, this, this.ambient, this.cols, this.renderTarget != null, world.camera, object3D.nearestLights, false);
                if (z11) {
                    this.blending = false;
                    unsetBlendingMode();
                    z12 = true;
                    this.gl10.glDepthMask(true);
                } else {
                    z12 = true;
                }
                int i34 = i15 + 1;
                r62 = 0;
                object3D4 = object3D;
                visList3 = visList2;
                i21 = i22;
                textureArr2 = textureArr;
                iArr2 = iArr7;
                iArr = iArr8;
                r13 = 0;
                i17 = -1;
                i20 = i34;
            }
            setTextureMatrix(r13);
            this.matrixCache.clear();
            disableCompiledPipeline();
            CompiledInstance.lastObj = r13;
        }
        this.lastActivatedStage = i17;
    }

    public void drawWireframe(VisList visList, int i10, int i11, FrameBuffer frameBuffer) {
        if (this.init) {
            throw new RuntimeException("Wireframe rendering isn't supported ATM!");
        }
    }

    public void enableLineMode(World world) {
        disableBlitting();
        clearShader();
        closeShader();
        disableCompiledPipeline();
        Camera camera = world.getCamera();
        this.tmpMat.setTo(camera.getBack());
        this.tmpMat.transformToGL();
        this.moMat.setIdentity();
        this.moMat.translate(-camera.backBx, -camera.backBy, -camera.backBz);
        this.moMat.matMul(this.tmpMat);
        setLineShader();
        renableVertexArrays();
        this.cameraMatrix = this.moMat.fillDump(this.cameraMatrix);
        this.gl10.glMatrixMode(5888);
        this.gl10.glPushMatrix();
        this.gl10.glLoadIdentity();
        this.gl10.glLoadMatrixf(this.cameraMatrix, 0);
        if (!this.gl20) {
            this.gl10.glDisable(3553);
        }
        this.gl10.glEnableClientState(32884);
        this.gl10.glDisableClientState(32888);
        this.gl10.glDisableClientState(32885);
        disableUnusedStages();
    }

    public void endPainting() {
        disableBlitting();
        resetTextureStates();
        IPaintListener iPaintListener = this.listener;
        if (iPaintListener == null || !this.listenerActive) {
            return;
        }
        iPaintListener.finishedPainting();
    }

    public void endState() {
        disableBlitting();
    }

    public void flush() {
        this.gl10.glFlush();
    }

    public void grabScreen(FrameBuffer frameBuffer, int[] iArr) {
        disableBlitting();
        int width = frameBuffer.getWidth();
        int height = frameBuffer.getHeight();
        int i10 = width * height;
        int i11 = i10 << 2;
        IntBuffer intBuffer = this.pixelBuffer;
        if (intBuffer == null || i11 != this.pixelBufferSize) {
            intBuffer = null;
        }
        if (intBuffer == null) {
            intBuffer = ByteBuffer.allocateDirect(i11).order(ByteOrder.nativeOrder()).asIntBuffer();
            this.pixelBuffer = intBuffer;
            this.pixelBufferSize = i11;
        }
        IntBuffer intBuffer2 = intBuffer;
        this.gl10.glReadPixels(0, 0, width, height, 6408, 5121, intBuffer2);
        for (int i12 = 0; i12 < i10; i12++) {
            iArr[i12] = intBuffer2.get(i12);
        }
        for (int i13 = 0; i13 < (height >> 1); i13++) {
            int i14 = i13 * width;
            int i15 = ((height - 1) - i13) * width;
            for (int i16 = 0; i16 < width; i16++) {
                int i17 = i16 + i14;
                int i18 = i15 + i16;
                int i19 = iArr[i17];
                iArr[i17] = iArr[i18];
                iArr[i18] = i19;
            }
        }
    }

    public final void init(GL10 gl10, int i10, int i11) {
        init(gl10, i10, i11, gl10 == null);
    }

    public GLSLShader initShader() {
        if (this.gl20) {
            return this.gl20Handler.updateShaderData();
        }
        return null;
    }

    public final boolean isInitialized() {
        return this.init;
    }

    public void postProcess(FrameBuffer frameBuffer, IPostProcessor iPostProcessor) {
        disableBlitting();
        doPostProcessing(frameBuffer, iPostProcessor);
    }

    public final void registerVBO(int i10) {
        synchronized (this) {
            this.vbos.add(IntegerC.valueOf(i10));
        }
    }

    public final void removeTexture(Texture texture) {
        if (texture != null && texture.getOpenGLID(this.myID) != 0) {
            IntBuffer smallBuffer = getSmallBuffer(0);
            int openGLID = texture.getOpenGLID(this.myID);
            smallBuffer.put(openGLID);
            smallBuffer.flip();
            try {
                this.gl10.glDeleteTextures(1, smallBuffer);
            } catch (Throwable th2) {
                Logger.log("Failed to unload texture due to: " + th2.getMessage(), 1);
            }
            if (Logger.isDebugEnabled()) {
                Logger.log("Unloaded texture: " + openGLID, 3);
            }
        }
        this.uploadedTextures.remove(texture);
    }

    public void resetShader() {
        if (this.gl20) {
            this.gl20Handler.reset();
        }
    }

    public void resetViewport(FrameBuffer frameBuffer) {
        if (this.xViewStart == 0 && this.xViewEnd == 0) {
            this.xViewStart = 0;
            this.xViewEnd = frameBuffer.getWidth();
            this.yViewStart = 0;
            this.yViewEnd = frameBuffer.getHeight();
        }
        this.gl10.glViewport(this.xViewStart, this.yViewStart, this.xViewEnd, this.yViewEnd);
    }

    public void setBufferViewport(int i10, int i11, int i12, int i13) {
        disableBlitting();
        if (this.renderTarget == null) {
            this.gl10.glViewport(i10, i11, i12, i13);
        }
    }

    public void setFrustumAndFog(World world, FrameBuffer frameBuffer) {
        World world2 = this.myWorld;
        this.myWorld = world;
        setFrustum(world, frameBuffer);
        if (world != world2) {
            if (world.useFogging) {
                world.fogModeChanged = 1;
            } else {
                world.fogModeChanged = 2;
            }
        }
        setLightsAndFog(world);
        unloadTextures();
    }

    public final void setPaintListener(IPaintListener iPaintListener) {
        this.listener = iPaintListener;
    }

    public void setRenderTarget(Texture texture, FrameBuffer frameBuffer, int i10, int i11, int i12, int i13, boolean z10) {
        disableBlitting();
        this.renderTarget = texture;
        if (texture != null) {
            enableScissor(frameBuffer, texture, i10, i11, i12, i13);
        } else {
            disableScissor();
        }
        if (this.gl20 && Config.useFBO) {
            this.gl20Handler.setRenderTarget(this.renderTarget, this, frameBuffer);
        } else if (this.renderTarget != null) {
            setViewport(frameBuffer);
        } else {
            resetViewport(frameBuffer);
            this.gl10.glColorMask(true, true, true, true);
        }
    }

    public void setShader(GLSLShader gLSLShader) {
        if (this.gl20) {
            this.gl20Handler.setShader(gLSLShader);
        }
    }

    public void setTangents(Buffer buffer) {
        if (this.gl20) {
            this.gl20Handler.setTangents(buffer);
        }
    }

    public void startPainting() {
        disableBlitting();
        IPaintListener iPaintListener = this.listener;
        if (iPaintListener == null || !this.listenerActive) {
            return;
        }
        iPaintListener.startPainting();
    }

    public void swapBuffers() {
        disableBlitting();
        renderToTarget();
        this.hasToReEnable = true;
    }

    public void sync() {
        this.gl10.glFlush();
        this.gl10.glFinish();
    }

    public void unloadKnownTextures() {
        this.toUnload.addAll(this.uploadedTextures);
        unloadTextures();
        this.uploadedTextures.clear();
        Logger.log("All texture data unloaded from gpu!");
    }

    public final void unregisterVBO(int i10) {
        synchronized (this) {
            this.vbos.remove(IntegerC.valueOf(i10));
        }
    }

    public void upload(Texture texture) {
        synchronized (this) {
            try {
                if (texture.getOpenGLID(this.myID) == 0 && texture != this.renderTarget) {
                    texture.setMarker(this.myID, Texture.MARKER_NOTHING);
                    convertTexture(texture);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void init(GL10 gl10, int i10, int i11, boolean z10) {
        if (z10) {
            try {
                gl10 = (GL10) Class.forName("com.threed.jpct.GL20").newInstance();
            } catch (Exception e10) {
                Logger.log(e10);
            }
        }
        if (gl10 instanceof GL20Handler) {
            this.gl20 = true;
            this.gl20Handler = (GL20Handler) gl10;
        }
        if (Config.glDebugLevel != 0) {
            gl10 = (GL10) GLDebug.create(gl10);
        }
        this.gl10 = gl10;
        if (gl10 instanceof GL11) {
            this.gl11 = (GL11) gl10;
        }
        gl10.glFinish();
        this.gl10.glFlush();
        this.gl10.glViewport(0, 0, i10, i11);
        this.gl10.glMatrixMode(5889);
        this.gl10.glLoadIdentity();
        this.gl10.glMatrixMode(5888);
        this.gl10.glLoadIdentity();
        this.gl10.glShadeModel(7425);
        this.gl10.glClearDepthf(1.0f);
        enableDepthBuffer();
        this.gl10.glDepthFunc(515);
        if (Config.glDither) {
            this.gl10.glEnable(3024);
        } else {
            this.gl10.glDisable(3024);
        }
        initTextureStage(0);
        this.lastFOV = -999.0f;
        this.lastFarPlane = -999.0f;
        this.lastNearPlane = -999.0f;
        if (!z10) {
            this.minDriverAndConfig = Math.min(getTextureStages(), Config.maxTextureLayers);
        } else {
            this.minDriverAndConfig = Math.min(4, Config.maxTextureLayers);
        }
        Config.glStageCount = this.minDriverAndConfig;
        Logger.log("OpenGL vendor:     " + this.gl10.glGetString(7936), 2);
        Logger.log("OpenGL renderer:   " + this.gl10.glGetString(7937), 2);
        Logger.log("OpenGL version:    " + this.gl10.glGetString(7938), 2);
        Logger.log("OpenGL renderer initialized (using " + this.minDriverAndConfig + " texture stages)", 2);
        this.gl10.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        this.gl10.glClear(16640);
        this.mipmapsByGpu = (this.gl10.glGetString(7939).indexOf("generate_mipmap") == -1 && this.gl10.glGetString(7938).indexOf("1.1") == -1) ? false : true;
        this.init = true;
    }

    private final void initTextureStage(int i10) {
        initTextureStage(i10, modeMap[0]);
    }

    public void blitTexture(Texture texture, FrameBuffer frameBuffer, int i10, int i11, int i12, int i13, int i14, int i15, boolean z10, boolean z11, int i16, int i17, int i18, int i19, int i20, int i21) {
        enableBlitting(frameBuffer, i18 > -1, z10);
        blit(frameBuffer, texture, i10, i11, i14, i15, i12, i13, true, i16, i17, i18, i19, i20, i21);
    }

    public void clearTangents(int i10) {
        if (this.gl20) {
            this.gl20Handler.clearTangents(i10);
        }
    }

    public void setTangents(int i10) {
        if (this.gl20) {
            this.gl20Handler.setTangents(i10);
        }
    }
}
