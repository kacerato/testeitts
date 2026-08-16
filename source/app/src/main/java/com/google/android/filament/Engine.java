package com.google.android.filament;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.filament.ColorGrading;
import com.google.android.filament.Material;
import com.google.android.filament.proguard.UsedByReflection;

public class Engine {

    public static final a[] f59919g = a.values();

    public static final d[] f59920h = d.values();

    public long f59921a;

    public c f59922b;

    @NonNull
    public final TransformManager f59923c;

    @NonNull
    public final LightManager f59924d;

    @NonNull
    public final RenderableManager f59925e;

    @NonNull
    public final EntityManager f59926f;

    public enum a {
        DEFAULT,
        OPENGL,
        VULKAN,
        METAL,
        WEBGPU,
        NOOP
    }

    public static class b {

        public final a f59927a;

        public final long f59928b;

        public c f59929c;

        public static class a {

            public final long f59930a;

            public a(long j10) {
                this.f59930a = j10;
            }

            public void finalize() {
                try {
                    super.finalize();
                } catch (Throwable unused) {
                }
                Engine.nDestroyBuilder(this.f59930a);
            }
        }

        public b() {
            long b10 = Engine.b();
            this.f59928b = b10;
            this.f59927a = new a(b10);
        }

        public b a(a aVar) {
            Engine.nSetBuilderBackend(this.f59928b, aVar.ordinal());
            return this;
        }

        public Engine b() {
            long nBuilderBuild = Engine.nBuilderBuild(this.f59928b);
            if (nBuilderBuild != 0) {
                return new Engine(nBuilderBuild, this.f59929c);
            }
            throw new IllegalStateException("Couldn't create Engine");
        }

        @NonNull
        public b c(@NonNull ColorGrading.a aVar) {
            Engine.nSetBuilderColorGrading(this.f59928b, aVar.k());
            return this;
        }

        public b d(c cVar) {
            this.f59929c = cVar;
            Engine.nSetBuilderConfig(this.f59928b, cVar.f59935a, cVar.f59936b, cVar.f59937c, cVar.f59938d, cVar.f59939e, cVar.f59940f, cVar.f59942h, cVar.f59943i.ordinal(), cVar.f59944j, cVar.f59945k, cVar.f59946l, cVar.f59947m, cVar.f59948n.ordinal(), cVar.f59949o, cVar.f59950p, cVar.f59951q.ordinal(), cVar.f59952r);
            return this;
        }

        public b e(@NonNull String str, boolean z10) {
            Engine.nSetBuilderFeature(this.f59928b, str, z10);
            return this;
        }

        public b f(d dVar) {
            Engine.nSetBuilderFeatureLevel(this.f59928b, dVar.ordinal());
            return this;
        }

        public b g(boolean z10) {
            Engine.nSetBuilderPaused(this.f59928b, z10);
            return this;
        }

        public b h(Object obj) {
            if (o.a().h(obj)) {
                Engine.nSetBuilderSharedContext(this.f59928b, o.a().b(obj));
                return this;
            }
            throw new IllegalArgumentException("Invalid shared context " + obj);
        }
    }

    public static class c {

        public static final long f59931s = 3;

        public static final long f59932t = 2;

        public static final long f59933u = 1;

        public static final long f59934v = 3;

        public long f59935a = 3;

        public long f59936b = 3;

        public long f59937c = 0;

        public long f59938d = 1;

        public long f59939e = 2;

        public long f59940f = 0;

        public long f59941g = 0;

        public boolean f59942h = false;

        public g f59943i = g.NONE;

        public long f59944j = 2;

        public long f59945k = 64;

        public long f59946l = 1;

        public boolean f59947m = false;

        public a f59948n = a.DEFAULT;

        public boolean f59949o = false;

        public boolean f59950p = false;

        public f f59951q = f.DEFAULT;

        public long f59952r = 16384;

        public enum a {
            DEFAULT,
            MSL,
            METAL_LIBRARY
        }
    }

    public enum d {
        FEATURE_LEVEL_0,
        FEATURE_LEVEL_1,
        FEATURE_LEVEL_2,
        FEATURE_LEVEL_3
    }

    public enum e {
        FALSE,
        TRUE,
        INDETERMINATE
    }

    public enum f {
        DEFAULT,
        LOW,
        MEDIUM,
        HIGH,
        REALTIME
    }

    public enum g {
        NONE,
        INSTANCED,
        MULTIVIEW
    }

    public static long b() {
        return nCreateBuilder();
    }

    public static native long getSteadyClockTimeNano();

    public static void k(boolean z10) {
        if (!z10) {
            throw new IllegalStateException("Object couldn't be destroyed (double destroy()?)");
        }
    }

    @NonNull
    public static Engine n() {
        return new b().b();
    }

    public static native long nBuilderBuild(long j10);

    private static native void nCompile(long j10, int i10, long j11, long j12, int i11, int i12, Object obj, Runnable runnable);

    private static native long nCreateBuilder();

    private static native long nCreateCamera(long j10, int i10);

    private static native long nCreateFence(long j10);

    private static native long nCreateRenderer(long j10);

    private static native long nCreateScene(long j10);

    private static native long nCreateSwapChain(long j10, Object obj, long j11);

    private static native long nCreateSwapChainFromRawPointer(long j10, long j11, long j12);

    private static native long nCreateSwapChainHeadless(long j10, int i10, int i11, long j11);

    private static native long nCreateView(long j10);

    public static native void nDestroyBuilder(long j10);

    private static native void nDestroyCameraComponent(long j10, int i10);

    private static native boolean nDestroyColorGrading(long j10, long j11);

    private static native void nDestroyEngine(long j10);

    private static native void nDestroyEntity(long j10, int i10);

    private static native boolean nDestroyFence(long j10, long j11);

    private static native boolean nDestroyIndexBuffer(long j10, long j11);

    private static native boolean nDestroyIndirectLight(long j10, long j11);

    private static native boolean nDestroyInstanceBuffer(long j10, long j11);

    private static native boolean nDestroyMaterial(long j10, long j11);

    private static native boolean nDestroyMaterialInstance(long j10, long j11);

    private static native boolean nDestroyMorphTargetBuffer(long j10, long j11);

    private static native boolean nDestroyRenderTarget(long j10, long j11);

    private static native boolean nDestroyRenderer(long j10, long j11);

    private static native boolean nDestroyScene(long j10, long j11);

    private static native boolean nDestroySkinningBuffer(long j10, long j11);

    private static native boolean nDestroySkybox(long j10, long j11);

    private static native boolean nDestroyStream(long j10, long j11);

    private static native boolean nDestroySwapChain(long j10, long j11);

    private static native boolean nDestroyTexture(long j10, long j11);

    private static native boolean nDestroyVertexBuffer(long j10, long j11);

    private static native boolean nDestroyView(long j10, long j11);

    private static native void nFlush(long j10);

    private static native boolean nFlushAndWait(long j10, long j11);

    private static native int nGetActiveFeatureLevel(long j10);

    private static native long nGetBackend(long j10);

    private static native long nGetCameraComponent(long j10, int i10);

    private static native long nGetEntityManager(long j10);

    private static native boolean nGetFeatureFlag(long j10, String str);

    private static native long nGetJobSystem(long j10);

    private static native long nGetLightManager(long j10);

    private static native int nGetMaxAutomaticInstances(long j10);

    private static native long nGetMaxStereoscopicEyes(long j10);

    private static native long nGetRenderableManager(long j10);

    private static native int nGetSupportedFeatureLevel(long j10);

    private static native long nGetTransformManager(long j10);

    private static native boolean nHasFeatureFlag(long j10, String str);

    private static native boolean nHasUnrecoverableFailure(long j10);

    private static native boolean nIsAutomaticInstancingEnabled(long j10);

    private static native boolean nIsPaused(long j10);

    private static native boolean nIsValidColorGrading(long j10, long j11);

    private static native boolean nIsValidExpensiveMaterialInstance(long j10, long j11);

    private static native boolean nIsValidFence(long j10, long j11);

    private static native boolean nIsValidIndexBuffer(long j10, long j11);

    private static native boolean nIsValidIndirectLight(long j10, long j11);

    private static native boolean nIsValidInstanceBuffer(long j10, long j11);

    private static native boolean nIsValidMaterial(long j10, long j11);

    private static native boolean nIsValidMaterialInstance(long j10, long j11, long j12);

    private static native boolean nIsValidMorphTargetBuffer(long j10, long j11);

    private static native boolean nIsValidRenderTarget(long j10, long j11);

    private static native boolean nIsValidRenderer(long j10, long j11);

    private static native boolean nIsValidScene(long j10, long j11);

    private static native boolean nIsValidSkinningBuffer(long j10, long j11);

    private static native boolean nIsValidSkybox(long j10, long j11);

    private static native boolean nIsValidStream(long j10, long j11);

    private static native boolean nIsValidSwapChain(long j10, long j11);

    private static native boolean nIsValidTexture(long j10, long j11);

    private static native boolean nIsValidVertexBuffer(long j10, long j11);

    private static native boolean nIsValidView(long j10, long j11);

    private static native int nSetActiveFeatureLevel(long j10, int i10);

    private static native void nSetAutomaticInstancingEnabled(long j10, boolean z10);

    public static native void nSetBuilderBackend(long j10, long j11);

    public static native void nSetBuilderColorGrading(long j10, long j11);

    public static native void nSetBuilderConfig(long j10, long j11, long j12, long j13, long j14, long j15, long j16, boolean z10, int i10, long j17, long j18, long j19, boolean z11, int i11, boolean z12, boolean z13, int i12, long j20);

    public static native void nSetBuilderFeature(long j10, String str, boolean z10);

    public static native void nSetBuilderFeatureLevel(long j10, int i10);

    public static native void nSetBuilderPaused(long j10, boolean z10);

    public static native void nSetBuilderSharedContext(long j10, long j11);

    private static native boolean nSetFeatureFlag(long j10, String str, boolean z10);

    private static native void nSetPaused(long j10, boolean z10);

    private static native void nUnprotected(long j10);

    @NonNull
    public static Engine o(@NonNull a aVar) {
        return new b().a(aVar).b();
    }

    @NonNull
    public static Engine p(@NonNull Object obj) {
        return new b().h(obj).b();
    }

    public void A(@com.google.android.filament.g int i10) {
        nDestroyCameraComponent(getNativeObject(), i10);
    }

    public boolean A0(@NonNull Scene scene) {
        return nIsValidScene(getNativeObject(), scene.j());
    }

    public void B(@NonNull ColorGrading colorGrading) {
        k(nDestroyColorGrading(getNativeObject(), colorGrading.x()));
        colorGrading.w();
    }

    public boolean B0(@NonNull SkinningBuffer skinningBuffer) {
        return nIsValidSkinningBuffer(getNativeObject(), skinningBuffer.h());
    }

    public void C(@com.google.android.filament.g int i10) {
        nDestroyEntity(getNativeObject(), i10);
    }

    public boolean C0(@NonNull Skybox skybox) {
        return nIsValidSkybox(getNativeObject(), skybox.l());
    }

    public void D(@NonNull Fence fence) {
        k(nDestroyFence(getNativeObject(), fence.b()));
        fence.a();
    }

    public boolean D0(@NonNull Stream stream) {
        return nIsValidStream(getNativeObject(), stream.h());
    }

    public void E(@NonNull IndexBuffer indexBuffer) {
        k(nDestroyIndexBuffer(getNativeObject(), indexBuffer.h()));
        indexBuffer.f();
    }

    public boolean E0(@NonNull SwapChain swapChain) {
        return nIsValidSwapChain(getNativeObject(), swapChain.b());
    }

    public void F(@NonNull IndirectLight indirectLight) {
        k(nDestroyIndirectLight(getNativeObject(), indirectLight.q()));
        indirectLight.j();
    }

    public boolean F0(@NonNull Texture texture) {
        return nIsValidTexture(getNativeObject(), texture.getNativeObject());
    }

    public void G(@NonNull InstanceBuffer instanceBuffer) {
        k(nDestroyInstanceBuffer(getNativeObject(), instanceBuffer.h()));
        instanceBuffer.f();
    }

    public boolean G0(@NonNull VertexBuffer vertexBuffer) {
        return nIsValidVertexBuffer(getNativeObject(), vertexBuffer.j());
    }

    public void H(@NonNull Material material) {
        k(nDestroyMaterial(getNativeObject(), material.m()));
        material.b();
    }

    public boolean H0(@NonNull View view) {
        return nIsValidView(getNativeObject(), view.v());
    }

    public void I(@NonNull MaterialInstance materialInstance) {
        k(nDestroyMaterialInstance(getNativeObject(), materialInstance.l()));
        materialInstance.a();
    }

    @NonNull
    public d I0(@NonNull d dVar) {
        return f59920h[nSetActiveFeatureLevel(getNativeObject(), dVar.ordinal())];
    }

    public void J(@NonNull MorphTargetBuffer morphTargetBuffer) {
        k(nDestroyMorphTargetBuffer(getNativeObject(), morphTargetBuffer.k()));
        morphTargetBuffer.i();
    }

    public void J0(boolean z10) {
        nSetAutomaticInstancingEnabled(getNativeObject(), z10);
    }

    public void K(@NonNull RenderTarget renderTarget) {
        nDestroyRenderTarget(getNativeObject(), renderTarget.m());
        renderTarget.i();
    }

    public boolean K0(@NonNull String str, boolean z10) {
        return nSetFeatureFlag(this.f59921a, str, z10);
    }

    public void L(@NonNull Renderer renderer) {
        k(nDestroyRenderer(getNativeObject(), renderer.j()));
        renderer.b();
    }

    public void L0(boolean z10) {
        nSetPaused(getNativeObject(), z10);
    }

    public void M(@NonNull Scene scene) {
        k(nDestroyScene(getNativeObject(), scene.j()));
        scene.c();
    }

    public void M0() {
        nUnprotected(getNativeObject());
    }

    public void N(@NonNull SkinningBuffer skinningBuffer) {
        k(nDestroySkinningBuffer(getNativeObject(), skinningBuffer.h()));
        skinningBuffer.f();
    }

    public void O(@NonNull Skybox skybox) {
        k(nDestroySkybox(getNativeObject(), skybox.l()));
        skybox.i();
    }

    public void P(@NonNull Stream stream) {
        k(nDestroyStream(getNativeObject(), stream.h()));
        stream.g();
    }

    public void Q(@NonNull SwapChain swapChain) {
        k(nDestroySwapChain(getNativeObject(), swapChain.b()));
        swapChain.a();
    }

    public void R(@NonNull Texture texture) {
        k(nDestroyTexture(getNativeObject(), texture.getNativeObject()));
        texture.o();
    }

    public void S(@NonNull VertexBuffer vertexBuffer) {
        k(nDestroyVertexBuffer(getNativeObject(), vertexBuffer.j()));
        vertexBuffer.i();
    }

    public void T(@NonNull View view) {
        k(nDestroyView(getNativeObject(), view.v()));
        view.b();
    }

    public void U() {
        j0().r(true);
    }

    public void V() {
        nFlush(getNativeObject());
    }

    public void W() {
        X(-1L);
    }

    public boolean X(long j10) {
        return nFlushAndWait(getNativeObject(), j10);
    }

    @NonNull
    public d Y() {
        return f59920h[nGetActiveFeatureLevel(getNativeObject())];
    }

    @NonNull
    public a Z() {
        return f59919g[(int) nGetBackend(getNativeObject())];
    }

    @Nullable
    public Camera a0(@com.google.android.filament.g int i10) {
        long nGetCameraComponent = nGetCameraComponent(getNativeObject(), i10);
        if (nGetCameraComponent == 0) {
            return null;
        }
        return new Camera(nGetCameraComponent, i10);
    }

    @NonNull
    public c b0() {
        if (this.f59922b == null) {
            this.f59922b = new c();
        }
        return this.f59922b;
    }

    @NonNull
    public EntityManager c0() {
        return this.f59926f;
    }

    public boolean d0(@NonNull String str) {
        if (k0(str)) {
            return nGetFeatureFlag(this.f59921a, str);
        }
        throw new IllegalArgumentException("The feature flag \"" + str + "\" doesn't exist");
    }

    @NonNull
    public LightManager e0() {
        return this.f59924d;
    }

    public int f0() {
        return nGetMaxAutomaticInstances(getNativeObject());
    }

    public long g0() {
        return nGetMaxStereoscopicEyes(getNativeObject());
    }

    @UsedByReflection("MaterialBuilder.java")
    public long getNativeJobSystem() {
        if (this.f59921a != 0) {
            return nGetJobSystem(getNativeObject());
        }
        throw new IllegalStateException("Calling method on destroyed Engine");
    }

    @UsedByReflection("TextureHelper.java")
    public long getNativeObject() {
        long j10 = this.f59921a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed Engine");
    }

    @NonNull
    public RenderableManager h0() {
        return this.f59925e;
    }

    @NonNull
    public d i0() {
        return f59920h[nGetSupportedFeatureLevel(getNativeObject())];
    }

    @NonNull
    public TransformManager j0() {
        return this.f59923c;
    }

    public boolean k0(@NonNull String str) {
        return nHasFeatureFlag(this.f59921a, str);
    }

    public final void l() {
        this.f59921a = 0L;
    }

    public boolean l0() {
        return nHasUnrecoverableFailure(getNativeObject());
    }

    public void m(@NonNull Material.c cVar, @NonNull Material material, @NonNull View view, @NonNull e eVar, @NonNull e eVar2, @Nullable Object obj, @Nullable Runnable runnable) {
        nCompile(getNativeObject(), cVar.ordinal(), material.m(), view.v(), eVar.ordinal(), eVar2.ordinal(), obj, runnable);
    }

    public boolean m0() {
        return nIsAutomaticInstancingEnabled(getNativeObject());
    }

    public boolean n0() {
        return nIsPaused(getNativeObject());
    }

    public boolean o0() {
        return this.f59921a != 0;
    }

    public boolean p0(@NonNull ColorGrading colorGrading) {
        return nIsValidColorGrading(getNativeObject(), colorGrading.x());
    }

    @NonNull
    public Camera q(@com.google.android.filament.g int i10) {
        long nCreateCamera = nCreateCamera(getNativeObject(), i10);
        if (nCreateCamera != 0) {
            return new Camera(nCreateCamera, i10);
        }
        throw new IllegalStateException("Couldn't create Camera");
    }

    public boolean q0(@NonNull MaterialInstance materialInstance) {
        return nIsValidExpensiveMaterialInstance(getNativeObject(), materialInstance.l());
    }

    @NonNull
    public Fence r() {
        long nCreateFence = nCreateFence(getNativeObject());
        if (nCreateFence != 0) {
            return new Fence(nCreateFence);
        }
        throw new IllegalStateException("Couldn't create Fence");
    }

    public boolean r0(@NonNull Fence fence) {
        return nIsValidFence(getNativeObject(), fence.b());
    }

    @NonNull
    public Renderer s() {
        long nCreateRenderer = nCreateRenderer(getNativeObject());
        if (nCreateRenderer != 0) {
            return new Renderer(this, nCreateRenderer);
        }
        throw new IllegalStateException("Couldn't create Renderer");
    }

    public boolean s0(@NonNull IndexBuffer indexBuffer) {
        return nIsValidIndexBuffer(getNativeObject(), indexBuffer.h());
    }

    @NonNull
    public Scene t() {
        long nCreateScene = nCreateScene(getNativeObject());
        if (nCreateScene != 0) {
            return new Scene(nCreateScene);
        }
        throw new IllegalStateException("Couldn't create Scene");
    }

    public boolean t0(@NonNull IndirectLight indirectLight) {
        return nIsValidIndirectLight(getNativeObject(), indirectLight.q());
    }

    @NonNull
    public SwapChain u(int i10, int i11, long j10) {
        if (i10 < 0 || i11 < 0) {
            throw new IllegalArgumentException("Invalid parameters");
        }
        long nCreateSwapChainHeadless = nCreateSwapChainHeadless(getNativeObject(), i10, i11, j10);
        if (nCreateSwapChainHeadless != 0) {
            return new SwapChain(nCreateSwapChainHeadless, null);
        }
        throw new IllegalStateException("Couldn't create SwapChain");
    }

    public boolean u0(@NonNull InstanceBuffer instanceBuffer) {
        return nIsValidInstanceBuffer(getNativeObject(), instanceBuffer.h());
    }

    @NonNull
    public SwapChain v(@NonNull Object obj) {
        return w(obj, 0L);
    }

    public boolean v0(@NonNull Material material) {
        return nIsValidMaterial(getNativeObject(), material.m());
    }

    @NonNull
    public SwapChain w(@NonNull Object obj, long j10) {
        if (o.a().j(obj)) {
            long nCreateSwapChain = nCreateSwapChain(getNativeObject(), obj, j10);
            if (nCreateSwapChain != 0) {
                return new SwapChain(nCreateSwapChain, obj);
            }
            throw new IllegalStateException("Couldn't create SwapChain");
        }
        throw new IllegalArgumentException("Invalid surface " + obj);
    }

    public boolean w0(@NonNull Material material, MaterialInstance materialInstance) {
        return nIsValidMaterialInstance(getNativeObject(), material.m(), materialInstance.l());
    }

    @NonNull
    public SwapChain x(@NonNull NativeSurface nativeSurface, long j10) {
        long nCreateSwapChainFromRawPointer = nCreateSwapChainFromRawPointer(getNativeObject(), nativeSurface.c(), j10);
        if (nCreateSwapChainFromRawPointer != 0) {
            return new SwapChain(nCreateSwapChainFromRawPointer, nativeSurface);
        }
        throw new IllegalStateException("Couldn't create SwapChain");
    }

    public boolean x0(@NonNull MorphTargetBuffer morphTargetBuffer) {
        return nIsValidMorphTargetBuffer(getNativeObject(), morphTargetBuffer.k());
    }

    @NonNull
    public View y() {
        long nCreateView = nCreateView(getNativeObject());
        if (nCreateView != 0) {
            return new View(nCreateView);
        }
        throw new IllegalStateException("Couldn't create View");
    }

    public boolean y0(@NonNull RenderTarget renderTarget) {
        return nIsValidRenderTarget(getNativeObject(), renderTarget.m());
    }

    public void z() {
        nDestroyEngine(getNativeObject());
        l();
    }

    public boolean z0(@NonNull Renderer renderer) {
        return nIsValidRenderer(getNativeObject(), renderer.j());
    }

    public Engine(long j10, c cVar) {
        this.f59921a = j10;
        this.f59923c = new TransformManager(nGetTransformManager(j10));
        this.f59924d = new LightManager(nGetLightManager(j10));
        this.f59925e = new RenderableManager(nGetRenderableManager(j10));
        this.f59926f = new EntityManager(nGetEntityManager(j10));
        this.f59922b = cVar;
    }
}
