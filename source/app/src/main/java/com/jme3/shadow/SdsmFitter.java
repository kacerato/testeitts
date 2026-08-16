package com.jme3.shadow;

import com.jme3.asset.AssetManager;
import com.jme3.math.Matrix4f;
import com.jme3.math.Vector2f;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.RendererException;
import com.jme3.renderer.TextureUnitException;
import com.jme3.renderer.opengl.ComputeShader;
import com.jme3.renderer.opengl.GL4;
import com.jme3.renderer.opengl.GLFence;
import com.jme3.renderer.opengl.ShaderStorageBufferObject;
import com.jme3.texture.Texture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.eclipse.jdt.internal.core.JavaElement;

public class SdsmFitter {
    private static final String FIT_FRUSTUMS_SHADER = "Common/MatDefs/Shadow/Sdsm/FitLightFrustums.comp";
    private static final int[] FIT_FRUSTUM_INIT = new int[32];
    private static final String REDUCE_DEPTH_SHADER = "Common/MatDefs/Shadow/Sdsm/ReduceDepth.comp";
    private final AssetManager assetManager;
    private final GL4 gl4;
    private SplitFitResult readyToYield;
    private final Renderer renderer;
    private InternalShaders shadersMultisampling;
    private InternalShaders shadersNoMultisampling;
    private int maxFrameLag = 3;
    private final LinkedList<SdsmResultHolder> resultHoldersInFlight = new LinkedList<>();
    private final LinkedList<SdsmResultHolder> resultHoldersReady = new LinkedList<>();

    public static class FitParameters {
        public final float cameraFar;
        public final float cameraNear;
        public final Matrix4f cameraToLight;
        public final int splitCount;

        public FitParameters(Matrix4f matrix4f, int i10, float f10, float f11) {
            this.cameraToLight = matrix4f;
            this.splitCount = i10;
            this.cameraNear = f10;
            this.cameraFar = f11;
        }

        public String toString() {
            return "FitParameters{cameraToLight=" + ((Object) this.cameraToLight) + ", splitCount=" + this.splitCount + ", cameraNear=" + this.cameraNear + ", cameraFar=" + this.cameraFar + JavaElement.JEM_ANNOTATION;
        }
    }

    public class InternalShaders {
        public final ComputeShader depthReduceShader;
        public final ComputeShader fitFrustumsShader;

        public InternalShaders(AssetManager assetManager, boolean z10) {
            String str = (String) assetManager.loadAsset(SdsmFitter.REDUCE_DEPTH_SHADER);
            String str2 = (String) assetManager.loadAsset(SdsmFitter.FIT_FRUSTUMS_SHADER);
            this.depthReduceShader = buildShader(str, z10);
            this.fitFrustumsShader = buildShader(str2, z10);
        }

        private ComputeShader buildShader(String str, boolean z10) {
            ComputeShader computeShader = z10 ? new ComputeShader(SdsmFitter.this.gl4, str, new String[][]{new String[]{"RESOLVE_DEPTH_MS", "1"}}) : new ComputeShader(SdsmFitter.this.gl4, str);
            SdsmFitter.this.renderer.registerNativeObject(computeShader);
            return computeShader;
        }

        public void cleanup(Renderer renderer) {
            this.depthReduceShader.deleteObject(renderer);
            this.fitFrustumsShader.deleteObject(renderer);
        }
    }

    public class SdsmResultHolder {
        static final boolean $assertionsDisabled = false;
        GLFence fence;
        ShaderStorageBufferObject fitFrustumSsbo;
        ShaderStorageBufferObject minMaxDepthSsbo;
        FitParameters parameters;

        public SdsmResultHolder() {
            this.minMaxDepthSsbo = new ShaderStorageBufferObject(SdsmFitter.this.gl4);
            SdsmFitter.this.renderer.registerNativeObject(this.minMaxDepthSsbo);
            this.fitFrustumSsbo = new ShaderStorageBufferObject(SdsmFitter.this.gl4);
            SdsmFitter.this.renderer.registerNativeObject(this.fitFrustumSsbo);
        }

        private SplitFit extractFit() {
            FitParameters fitParameters;
            if (this.fitFrustumSsbo.isUpdateNeeded()) {
                return null;
            }
            int[] read = this.fitFrustumSsbo.read(32);
            float[] fArr = new float[32];
            for (int i10 = 0; i10 < 32; i10++) {
                fArr[i10] = SdsmFitter.uintFlip(read[i10]);
            }
            float f10 = fArr[24];
            if (f10 == Float.POSITIVE_INFINITY) {
                return null;
            }
            float f11 = fArr[25];
            if (f11 == 0.0f) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int i11 = 0;
            while (true) {
                fitParameters = this.parameters;
                if (i11 >= fitParameters.splitCount) {
                    break;
                }
                int i12 = i11 * 4;
                int i13 = i11 * 2;
                SplitBounds splitBounds = new SplitBounds(fArr[i12], fArr[i12 + 1], fArr[i12 + 2], fArr[i12 + 3], fArr[i13 + 16], fArr[i13 + 17]);
                arrayList.add(splitBounds.isValid() ? splitBounds : null);
                i11++;
            }
            float projectionToViewZ = SdsmFitter.getProjectionToViewZ(fitParameters.cameraNear, fitParameters.cameraFar, f10);
            FitParameters fitParameters2 = this.parameters;
            float projectionToViewZ2 = SdsmFitter.getProjectionToViewZ(fitParameters2.cameraNear, fitParameters2.cameraFar, f11);
            ArrayList arrayList2 = new ArrayList();
            for (int i14 = 0; i14 < this.parameters.splitCount - 1; i14++) {
                int i15 = i14 * 2;
                arrayList2.add(new SplitInfo(fArr[i15 + 26], fArr[i15 + 27]));
            }
            return new SplitFit(arrayList, projectionToViewZ, projectionToViewZ2, arrayList2);
        }

        public void cleanup() {
            this.minMaxDepthSsbo.deleteObject(SdsmFitter.this.renderer);
            this.fitFrustumSsbo.deleteObject(SdsmFitter.this.renderer);
            this.fence = null;
        }

        public SplitFitResult extract() {
            this.fence = null;
            return new SplitFitResult(this.parameters, extractFit());
        }

        public boolean isReady(boolean z10) {
            GLFence gLFence = this.fence;
            if (gLFence == null || gLFence.isUpdateNeeded()) {
                return true;
            }
            int glClientWaitSync = SdsmFitter.this.gl4.glClientWaitSync(this.fence, 0, z10 ? -1L : 0L);
            return glClientWaitSync == 37146 || glClientWaitSync == 37148;
        }
    }

    public static class SplitBounds {
        public final float maxX;
        public final float maxY;
        public final float maxZ;
        public final float minX;
        public final float minY;
        public final float minZ;

        public SplitBounds(float f10, float f11, float f12, float f13, float f14, float f15) {
            this.minX = f10;
            this.minY = f11;
            this.maxX = f12;
            this.maxY = f13;
            this.minZ = f14;
            this.maxZ = f15;
        }

        public boolean isValid() {
            return (this.minX == Float.POSITIVE_INFINITY || this.minY == Float.POSITIVE_INFINITY || this.minZ == Float.POSITIVE_INFINITY || this.maxX == Float.NEGATIVE_INFINITY || this.maxY == Float.NEGATIVE_INFINITY || this.maxZ == Float.NEGATIVE_INFINITY) ? false : true;
        }

        public String toString() {
            return "SplitBounds{minX=" + this.minX + ", minY=" + this.minY + ", maxX=" + this.maxX + ", maxY=" + this.maxY + ", minZ=" + this.minZ + ", maxZ=" + this.maxZ + JavaElement.JEM_ANNOTATION;
        }
    }

    public static class SplitFit {
        public final List<SplitInfo> cascadeStarts;
        public final float maxDepth;
        public final float minDepth;
        public final List<SplitBounds> splits;

        public SplitFit(List<SplitBounds> list, float f10, float f11, List<SplitInfo> list2) {
            this.splits = list;
            this.minDepth = f10;
            this.maxDepth = f11;
            this.cascadeStarts = list2;
        }

        public String toString() {
            return "SplitFit{splits=" + ((Object) this.splits) + ", minDepth=" + this.minDepth + ", maxDepth=" + this.maxDepth + ", cascadeStarts=" + ((Object) this.cascadeStarts) + JavaElement.JEM_ANNOTATION;
        }
    }

    public static class SplitFitResult {
        public final FitParameters parameters;
        public final SplitFit result;

        public SplitFitResult(FitParameters fitParameters, SplitFit splitFit) {
            this.parameters = fitParameters;
            this.result = splitFit;
        }

        public String toString() {
            return "SplitFitResult{parameters=" + ((Object) this.parameters) + ", result=" + ((Object) this.result) + JavaElement.JEM_ANNOTATION;
        }
    }

    public static class SplitInfo {
        public final float end;
        public final float start;

        public SplitInfo(float f10, float f11) {
            this.start = f10;
            this.end = f11;
        }

        public String toString() {
            return "SplitInfo{start=" + this.start + ", end=" + this.end + JavaElement.JEM_ANNOTATION;
        }
    }

    static {
        for (int i10 = 0; i10 < 4; i10++) {
            int[] iArr = FIT_FRUSTUM_INIT;
            int i11 = i10 * 4;
            iArr[i11] = -1;
            iArr[i11 + 1] = -1;
            iArr[i11 + 2] = 0;
            iArr[i11 + 3] = 0;
        }
        for (int i12 = 0; i12 < 4; i12++) {
            int[] iArr2 = FIT_FRUSTUM_INIT;
            int i13 = i12 * 2;
            iArr2[i13 + 16] = -1;
            iArr2[i13 + 17] = 0;
        }
        int[] iArr3 = FIT_FRUSTUM_INIT;
        iArr3[24] = -1;
        iArr3[25] = 0;
        for (int i14 = 0; i14 < 6; i14++) {
            FIT_FRUSTUM_INIT[i14 + 26] = 0;
        }
    }

    public SdsmFitter(GL4 gl4, Renderer renderer, AssetManager assetManager) {
        this.gl4 = gl4;
        this.renderer = renderer;
        this.assetManager = assetManager;
    }

    private static int divRoundUp(int i10, int i11) {
        return ((i10 + i11) - 1) / i11;
    }

    public static float getProjectionToViewZ(float f10, float f11, float f12) {
        return ((f11 * f10) / (f10 - f11)) / (f12 - (f11 / (f11 - f10)));
    }

    private SdsmResultHolder getResultHolderForUse() {
        if (!this.resultHoldersReady.isEmpty()) {
            return this.resultHoldersReady.removeFirst();
        }
        if (this.resultHoldersInFlight.size() <= this.maxFrameLag) {
            return new SdsmResultHolder();
        }
        SdsmResultHolder removeFirst = this.resultHoldersInFlight.removeFirst();
        removeFirst.isReady(true);
        this.readyToYield = removeFirst.extract();
        return removeFirst;
    }

    private InternalShaders initShaders(Texture texture) {
        if (texture.getImage().getMultiSamples() > 1) {
            if (this.shadersMultisampling == null) {
                this.shadersMultisampling = new InternalShaders(this.assetManager, true);
            }
            return this.shadersMultisampling;
        }
        if (this.shadersNoMultisampling == null) {
            this.shadersNoMultisampling = new InternalShaders(this.assetManager, false);
        }
        return this.shadersNoMultisampling;
    }

    public static float uintFlip(int i10) {
        return Float.intBitsToFloat((i10 & Integer.MIN_VALUE) != 0 ? i10 ^ Integer.MIN_VALUE : ~i10);
    }

    public void cleanup() {
        Iterator<SdsmResultHolder> it = this.resultHoldersInFlight.iterator();
        while (it.hasNext()) {
            it.next().cleanup();
        }
        this.resultHoldersInFlight.clear();
        Iterator<SdsmResultHolder> it2 = this.resultHoldersReady.iterator();
        while (it2.hasNext()) {
            it2.next().cleanup();
        }
        this.resultHoldersReady.clear();
        InternalShaders internalShaders = this.shadersMultisampling;
        if (internalShaders != null) {
            internalShaders.cleanup(this.renderer);
        }
        InternalShaders internalShaders2 = this.shadersNoMultisampling;
        if (internalShaders2 != null) {
            internalShaders2.cleanup(this.renderer);
        }
    }

    public void fit(Texture texture, int i10, Matrix4f matrix4f, float f10, float f11) {
        int multiSamples = texture.getImage().getMultiSamples();
        InternalShaders initShaders = initShaders(texture);
        ComputeShader computeShader = initShaders.depthReduceShader;
        ComputeShader computeShader2 = initShaders.fitFrustumsShader;
        SdsmResultHolder resultHolderForUse = getResultHolderForUse();
        resultHolderForUse.parameters = new FitParameters(matrix4f, i10, f10, f11);
        this.gl4.glMemoryBarrier(8);
        int width = texture.getImage().getWidth();
        int height = texture.getImage().getHeight();
        int divRoundUp = divRoundUp(width, 32);
        int divRoundUp2 = divRoundUp(height, 32);
        if (divRoundUp < 2) {
            throw new RendererException("Depth texture too small for SDSM fit");
        }
        resultHolderForUse.minMaxDepthSsbo.initialize(new int[]{-1, 0});
        computeShader.makeActive();
        try {
            this.renderer.setTexture(0, texture);
            computeShader.setUniform(computeShader.getUniformLocation("m_NumSamplesDepth"), multiSamples);
            computeShader.bindShaderStorageBuffer(1, resultHolderForUse.minMaxDepthSsbo);
            computeShader.dispatch(divRoundUp, divRoundUp2, 1);
            this.gl4.glMemoryBarrier(8192);
            resultHolderForUse.fitFrustumSsbo.initialize(FIT_FRUSTUM_INIT);
            computeShader2.makeActive();
            try {
                this.renderer.setTexture(0, texture);
                computeShader2.setUniform(computeShader2.getUniformLocation("m_NumSamplesDepth"), multiSamples);
                computeShader2.bindShaderStorageBuffer(1, resultHolderForUse.minMaxDepthSsbo);
                computeShader2.bindShaderStorageBuffer(2, resultHolderForUse.fitFrustumSsbo);
                computeShader2.setUniform(3, matrix4f);
                computeShader2.setUniform(4, i10);
                computeShader2.setUniform(5, new Vector2f(f10, f11));
                computeShader2.setUniform(6, 0.05f);
                computeShader2.dispatch(divRoundUp, divRoundUp2, 1);
                this.gl4.glMemoryBarrier(8192);
                GLFence glFenceSync = this.gl4.glFenceSync(37143, 0);
                this.renderer.registerNativeObject(glFenceSync);
                resultHolderForUse.fence = glFenceSync;
                this.resultHoldersInFlight.add(resultHolderForUse);
            } catch (TextureUnitException e10) {
                throw new RendererException(e10);
            }
        } catch (TextureUnitException e11) {
            throw new RendererException(e11);
        }
    }

    public SplitFitResult getResult(boolean z10) {
        SplitFitResult splitFitResult = this.readyToYield;
        SplitFitResult splitFitResult2 = null;
        if (splitFitResult != null) {
            this.readyToYield = null;
            return splitFitResult;
        }
        Iterator<SdsmResultHolder> it = this.resultHoldersInFlight.iterator();
        while (it.hasNext()) {
            SdsmResultHolder next = it.next();
            if (!next.isReady(splitFitResult2 == null && z10)) {
                break;
            }
            it.remove();
            splitFitResult2 = next.extract();
            this.resultHoldersReady.add(next);
        }
        if (z10 && splitFitResult2 == null) {
            throw new IllegalStateException();
        }
        return splitFitResult2;
    }

    public void setMaxFrameLag(int i10) {
        this.maxFrameLag = i10;
    }
}
