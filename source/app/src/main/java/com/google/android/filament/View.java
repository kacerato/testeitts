package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import com.google.android.filament.proguard.UsedByNative;
import java.util.EnumSet;
import java.util.Iterator;

public class View {

    public static final c[] f60178w = c.values();

    public static final g[] f60179x = g.values();

    public static final a[] f60180y = a.values();

    public long f60181a;

    public String f60182b;

    public Scene f60183c;

    public Camera f60184d;

    public com.google.android.filament.w f60185e = new com.google.android.filament.w(0, 0, 0, 0);

    public h f60186f;

    public o f60187g;

    public b f60188h;

    public e f60189i;

    public i f60190j;

    public s f60191k;

    public RenderTarget f60192l;

    public d f60193m;

    public f f60194n;

    public w f60195o;

    public ColorGrading f60196p;

    public u f60197q;

    public p f60198r;

    public k f60199s;

    public x f60200t;

    public r f60201u;

    public j f60202v;

    @UsedByNative("View.cpp")
    public static class InternalOnPickCallback implements Runnable {

        public final l f60203b;

        public final m f60204c = new m();

        @UsedByNative("View.cpp")
        float mDepth;

        @UsedByNative("View.cpp")
        float mFragCoordsX;

        @UsedByNative("View.cpp")
        float mFragCoordsY;

        @UsedByNative("View.cpp")
        float mFragCoordsZ;

        @com.google.android.filament.g
        @UsedByNative("View.cpp")
        int mRenderable;

        public InternalOnPickCallback(l lVar) {
            this.f60203b = lVar;
        }

        @Override
        public void run() {
            m mVar = this.f60204c;
            mVar.f60286a = this.mRenderable;
            mVar.f60287b = this.mDepth;
            float[] fArr = mVar.f60288c;
            fArr[0] = this.mFragCoordsX;
            fArr[1] = this.mFragCoordsY;
            fArr[2] = this.mFragCoordsZ;
            this.f60203b.a(mVar);
        }
    }

    @Deprecated
    public enum a {
        NONE,
        SSAO
    }

    public static class b {

        public boolean f60205A;

        public float f60206B;

        public boolean f60207C;

        @NonNull
        public a f60208a = a.SAO;

        public float f60209b = 0.3f;

        public float f60210c = 1.0f;

        public float f60211d = 5.0E-4f;

        public float f60212e = 0.5f;

        public float f60213f = 1.0f;

        public float f60214g = 0.05f;

        @NonNull
        public n f60215h;

        @NonNull
        public n f60216i;

        @NonNull
        public n f60217j;

        public boolean f60218k;

        public boolean f60219l;

        public float f60220m;

        public float f60221n;

        public float f60222o;

        public float f60223p;

        public float f60224q;

        @NonNull
        @Size(min = 3)
        public float[] f60225r;

        public float f60226s;

        public float f60227t;

        public int f60228u;

        public int f60229v;

        public boolean f60230w;

        public int f60231x;

        public int f60232y;

        public float f60233z;

        public enum a {
            SAO,
            GTAO
        }

        public b() {
            n nVar = n.LOW;
            this.f60215h = nVar;
            this.f60216i = n.MEDIUM;
            this.f60217j = nVar;
            this.f60218k = false;
            this.f60219l = false;
            this.f60220m = 0.0f;
            this.f60221n = 1.0f;
            this.f60222o = 0.3f;
            this.f60223p = 1.0f;
            this.f60224q = 0.8f;
            this.f60225r = new float[]{0.0f, -1.0f, 0.0f};
            this.f60226s = 0.01f;
            this.f60227t = 0.01f;
            this.f60228u = 4;
            this.f60229v = 1;
            this.f60230w = false;
            this.f60231x = 4;
            this.f60232y = 3;
            this.f60233z = 0.004f;
            this.f60205A = false;
            this.f60206B = 0.5f;
            this.f60207C = false;
        }
    }

    public enum c {
        NONE,
        FXAA
    }

    public enum d {
        OPAQUE,
        TRANSLUCENT
    }

    public static class e {

        @Nullable
        public Texture f60234a = null;

        public float f60235b = 0.2f;

        public float f60236c = 0.1f;

        public int f60237d = 384;

        public int f60238e = 6;

        @NonNull
        public a f60239f = a.ADD;

        public boolean f60240g = true;

        public boolean f60241h = false;

        public float f60242i = 1000.0f;

        @NonNull
        public n f60243j = n.LOW;

        public boolean f60244k = false;

        public boolean f60245l = true;

        public float f60246m = 0.005f;

        public int f60247n = 4;

        public float f60248o = 0.6f;

        public float f60249p = 10.0f;

        public float f60250q = 0.1f;

        public float f60251r = 0.4f;

        public float f60252s = 10.0f;

        public enum a {
            ADD,
            INTERPOLATE
        }
    }

    public static class f {

        public float f60253a = 1.0f;

        public float f60254b = 1.0f;

        public float f60255c = 0.01f;

        public boolean f60256d = false;

        @NonNull
        public a f60257e = a.MEDIAN;

        public boolean f60258f = false;

        public int f60259g = 0;

        public int f60260h = 0;

        public int f60261i = 0;

        public int f60262j = 0;

        public int f60263k = 0;

        public enum a {
            NONE,
            UNUSED,
            MEDIAN
        }
    }

    public enum g {
        NONE,
        TEMPORAL
    }

    public static class h {

        public float f60264a = 0.5f;

        public float f60265b = 1.0f;

        public float f60266c = 0.9f;

        public boolean f60267d = false;

        public boolean f60268e = false;

        @NonNull
        public n f60269f = n.LOW;
    }

    public static class i {

        public float f60270a = 0.0f;

        public float f60271b = Float.POSITIVE_INFINITY;

        public float f60272c = 1.0f;

        public float f60273d = 0.0f;

        public float f60274e = 1.0f;

        @NonNull
        @Size(min = 3)
        public float[] f60275f = {1.0f, 1.0f, 1.0f};

        public float f60276g = 0.1f;

        public float f60277h = 0.0f;

        public float f60278i = -1.0f;

        public boolean f60279j = false;

        @Nullable
        public Texture f60280k = null;

        public boolean f60281l = false;
    }

    public static class j {

        public boolean f60282a = false;
    }

    public static class k {

        public boolean f60283a = false;

        public int f60284b = 4;

        public boolean f60285c = false;
    }

    public interface l {
        void a(@NonNull m mVar);
    }

    public static class m {

        @com.google.android.filament.g
        public int f60286a;

        public float f60287b;

        @NonNull
        public float[] f60288c = new float[3];
    }

    public enum n {
        LOW,
        MEDIUM,
        HIGH,
        ULTRA
    }

    public static class o {

        @NonNull
        public n f60289a = n.HIGH;
    }

    public static class p {

        public float f60290a = 0.1f;

        public float f60291b = 0.01f;

        public float f60292c = 3.0f;

        public float f60293d = 2.0f;

        public boolean f60294e = false;
    }

    public enum q {
        PCF,
        VSM,
        DPCF,
        PCSS,
        PCFd
    }

    public static class r {

        public float f60295a = 1.0f;

        public float f60296b = 1.0f;
    }

    public static class s {

        public boolean f60297a = false;
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v1 com.google.android.filament.View$t, still in use, count: 1, list:
  (r1v1 com.google.android.filament.View$t) from 0x0050: INVOKE 
  (r0v0 com.google.android.filament.View$t)
  (r1v1 com.google.android.filament.View$t)
  (r2v2 com.google.android.filament.View$t)
  (r3v2 com.google.android.filament.View$t)
 STATIC call: java.util.EnumSet.of(java.lang.Enum, java.lang.Enum, java.lang.Enum, java.lang.Enum):java.util.EnumSet A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>, E extends java.lang.Enum<E>, E extends java.lang.Enum<E>, E extends java.lang.Enum<E>):java.util.EnumSet<E extends java.lang.Enum<E>> (m), WRAPPED]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:88)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:87)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:238)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class t {
        COLOR0(1),
        COLOR1(2),
        COLOR2(4),
        COLOR3(8),
        DEPTH(16),
        STENCIL(32);

        public static EnumSet<t> ALL;
        public static EnumSet<t> ALL_COLOR;
        public static EnumSet<t> DEPTH_STENCIL;
        public static EnumSet<t> NONE;
        private int mFlags;

        static {
            t tVar = COLOR0;
            t tVar2 = STENCIL;
            NONE = EnumSet.noneOf(t.class);
            ALL_COLOR = EnumSet.of(tVar, r1, r2, r3);
            DEPTH_STENCIL = EnumSet.of(r4, tVar2);
            ALL = EnumSet.range(tVar, tVar2);
        }

        public t(int i10) {
            this.mFlags = i10;
        }

        public static int b(EnumSet<t> enumSet) {
            Iterator<E> it = enumSet.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                i10 |= ((t) it.next()).mFlags;
            }
            return i10;
        }

        public static t valueOf(String str) {
            return (t) Enum.valueOf(t.class, str);
        }

        public static t[] values() {
            return (t[]) $VALUES.clone();
        }
    }

    public static class u {

        @Deprecated
        public float f60298a = 1.0f;

        public float f60299b = 0.12f;

        public float f60300c = -1.0f;

        public float f60301d = 0.0f;

        public boolean f60302e = false;

        public float f60303f = 1.0f;

        public boolean f60304g = true;

        public boolean f60305h = true;

        public boolean f60306i = false;

        public boolean f60307j = true;

        @NonNull
        public b f60308k = b.AABB;

        @NonNull
        public a f60309l = a.ACCURATE;

        @NonNull
        public c f60310m = c.HALTON_23_X16;

        public float f60311n = 1.0f;

        public boolean f60312o = false;

        public boolean f60313p = true;

        public enum a {
            ACCURATE,
            CLAMP,
            NONE
        }

        public enum b {
            AABB,
            AABB_VARIANCE
        }

        public enum c {
            RGSS_X4,
            UNIFORM_HELIX_X4,
            HALTON_23_X8,
            HALTON_23_X16,
            HALTON_23_X32
        }
    }

    @Deprecated
    public enum v {
        LINEAR,
        ACES
    }

    public static class w {

        public float f60314a = 0.5f;

        public float f60315b = 0.5f;

        public float f60316c = 0.5f;

        @NonNull
        @Size(min = 4)
        public float[] f60317d = {0.0f, 0.0f, 0.0f, 1.0f};

        public boolean f60318e = false;
    }

    public static class x {

        public int f60319a = 0;

        public boolean f60320b = false;

        public int f60321c = 1;

        public boolean f60322d = false;

        @Deprecated
        public float f60323e = 0.5f;

        public float f60324f = 0.15f;
    }

    public View(long j10) {
        this.f60181a = j10;
    }

    private static native void nClearFrameHistory(long j10, long j11);

    private static native int nGetAmbientOcclusion(long j10);

    private static native int nGetAntiAliasing(long j10);

    private static native int nGetDithering(long j10);

    private static native double nGetEffectiveGridSize(long j10);

    private static native int nGetFogEntity(long j10);

    private static native double nGetGridSize(long j10);

    private static native void nGetLastDynamicResolutionScale(long j10, float[] fArr);

    private static native void nGetMaterialGlobal(long j10, int i10, float[] fArr);

    private static native int nGetSampleCount(long j10);

    private static native int nGetVisibleLayers(long j10);

    private static native int nGetVisibleRenderableCount(long j10);

    private static native boolean nHasCamera(long j10);

    private static native boolean nIsChannelDepthClearEnabled(long j10, int i10);

    private static native boolean nIsFrontFaceWindingInverted(long j10);

    private static native boolean nIsFrustumCullingEnabled(long j10);

    private static native boolean nIsPostProcessingEnabled(long j10);

    private static native boolean nIsScreenSpaceRefractionEnabled(long j10);

    private static native boolean nIsShadowingEnabled(long j10);

    private static native boolean nIsStencilBufferEnabled(long j10);

    private static native boolean nIsTransparentPickingEnabled(long j10);

    private static native void nPick(long j10, int i10, int i11, Object obj, InternalOnPickCallback internalOnPickCallback);

    private static native void nSetAmbientOcclusion(long j10, int i10);

    private static native void nSetAmbientOcclusionOptions(long j10, float f10, float f11, float f12, float f13, float f14, float f15, int i10, int i11, int i12, boolean z10, boolean z11, float f16);

    private static native void nSetAntiAliasing(long j10, int i10);

    private static native void nSetBlendMode(long j10, int i10);

    private static native void nSetBloomOptions(long j10, long j11, float f10, float f11, int i10, int i11, int i12, boolean z10, boolean z11, float f12, boolean z12, boolean z13, float f13, int i13, float f14, float f15, float f16, float f17, float f18);

    private static native void nSetCamera(long j10, long j11);

    private static native void nSetChannelDepthClearEnabled(long j10, int i10, boolean z10);

    private static native void nSetColorGrading(long j10, long j11);

    private static native void nSetDepthOfFieldOptions(long j10, float f10, float f11, boolean z10, int i10, boolean z11, int i11, int i12, int i13, int i14, int i15);

    private static native void nSetDithering(long j10, int i10);

    private static native void nSetDynamicLightingOptions(long j10, float f10, float f11);

    private static native void nSetDynamicResolutionOptions(long j10, boolean z10, boolean z11, float f10, float f11, float f12, int i10);

    private static native void nSetFogOptions(long j10, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, boolean z10, long j11, boolean z11);

    private static native void nSetFrontFaceWindingInverted(long j10, boolean z10);

    private static native void nSetFrustumCullingEnabled(long j10, boolean z10);

    private static native void nSetGridSize(long j10, double d10);

    private static native void nSetGuardBandOptions(long j10, boolean z10);

    private static native void nSetMaterialGlobal(long j10, int i10, float f10, float f11, float f12, float f13);

    private static native void nSetMultiSampleAntiAliasingOptions(long j10, boolean z10, int i10, boolean z11);

    private static native void nSetName(long j10, String str);

    private static native void nSetPostProcessingEnabled(long j10, boolean z10);

    private static native void nSetRenderQuality(long j10, int i10);

    private static native void nSetRenderTarget(long j10, long j11);

    private static native void nSetSSCTOptions(long j10, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, int i10, int i11, boolean z10);

    private static native void nSetSampleCount(long j10, int i10);

    private static native void nSetScene(long j10, long j11);

    private static native void nSetScreenSpaceReflectionsOptions(long j10, float f10, float f11, float f12, float f13, boolean z10);

    private static native void nSetScreenSpaceRefractionEnabled(long j10, boolean z10);

    private static native void nSetShadowType(long j10, int i10);

    private static native void nSetShadowingEnabled(long j10, boolean z10);

    private static native void nSetSoftShadowOptions(long j10, float f10, float f11);

    private static native void nSetStencilBufferEnabled(long j10, boolean z10);

    private static native void nSetStereoscopicOptions(long j10, boolean z10);

    private static native void nSetTemporalAntiAliasingOptions(long j10, float f10, float f11, boolean z10);

    private static native void nSetTransparentPickingEnabled(long j10, boolean z10);

    private static native void nSetViewport(long j10, int i10, int i11, int i12, int i13);

    private static native void nSetVignetteOptions(long j10, float f10, float f11, float f12, float f13, float f14, float f15, float f16, boolean z10);

    private static native void nSetVisibleLayers(long j10, int i10, int i11);

    private static native void nSetVsmShadowOptions(long j10, int i10, boolean z10, boolean z11, float f10, float f11);

    @NonNull
    public p A() {
        if (this.f60198r == null) {
            this.f60198r = new p();
        }
        return this.f60198r;
    }

    public void A0(@NonNull s sVar) {
        this.f60191k = sVar;
        nSetStereoscopicOptions(v(), sVar.f60297a);
    }

    @NonNull
    public r B() {
        if (this.f60201u == null) {
            this.f60201u = new r();
        }
        return this.f60201u;
    }

    public void B0(@NonNull u uVar) {
        this.f60197q = uVar;
        nSetTemporalAntiAliasingOptions(v(), uVar.f60299b, uVar.f60298a, uVar.f60302e);
    }

    @NonNull
    public s C() {
        if (this.f60191k == null) {
            this.f60191k = new s();
        }
        return this.f60191k;
    }

    @Deprecated
    public void C0(@NonNull v vVar) {
    }

    @NonNull
    public u D() {
        if (this.f60197q == null) {
            this.f60197q = new u();
        }
        return this.f60197q;
    }

    public void D0(boolean z10) {
        nSetTransparentPickingEnabled(v(), z10);
    }

    @NonNull
    @Deprecated
    public v E() {
        return v.ACES;
    }

    public void E0(@NonNull com.google.android.filament.w wVar) {
        this.f60185e = wVar;
        long v10 = v();
        com.google.android.filament.w wVar2 = this.f60185e;
        nSetViewport(v10, wVar2.f60456a, wVar2.f60457b, wVar2.f60458c, wVar2.f60459d);
    }

    @NonNull
    public com.google.android.filament.w F() {
        return this.f60185e;
    }

    public void F0(@NonNull w wVar) {
        com.google.android.filament.c.h(wVar.f60317d);
        this.f60195o = wVar;
        long v10 = v();
        float f10 = wVar.f60314a;
        float f11 = wVar.f60315b;
        float f12 = wVar.f60316c;
        float[] fArr = wVar.f60317d;
        nSetVignetteOptions(v10, f10, f11, f12, fArr[0], fArr[1], fArr[2], fArr[3], wVar.f60318e);
    }

    @NonNull
    public w G() {
        if (this.f60195o == null) {
            this.f60195o = new w();
        }
        return this.f60195o;
    }

    public void G0(@IntRange(from = 0, to = 255) int i10, @IntRange(from = 0, to = 255) int i11) {
        nSetVisibleLayers(v(), i10 & 255, i11 & 255);
    }

    public int H() {
        return nGetVisibleLayers(v());
    }

    public void H0(@NonNull x xVar) {
        this.f60200t = xVar;
        nSetVsmShadowOptions(v(), xVar.f60319a, xVar.f60320b, xVar.f60322d, xVar.f60323e, xVar.f60324f);
    }

    public int I() {
        return nGetVisibleRenderableCount(v());
    }

    @NonNull
    public x J() {
        if (this.f60200t == null) {
            this.f60200t = new x();
        }
        return this.f60200t;
    }

    public boolean K() {
        return nHasCamera(v());
    }

    public boolean L(@IntRange(from = 0, to = 7) int i10) {
        return nIsChannelDepthClearEnabled(v(), i10);
    }

    public boolean M() {
        return nIsFrontFaceWindingInverted(v());
    }

    public boolean N() {
        return nIsFrustumCullingEnabled(v());
    }

    public boolean O() {
        return nIsPostProcessingEnabled(v());
    }

    public boolean P() {
        return nIsScreenSpaceRefractionEnabled(v());
    }

    public boolean Q() {
        return nIsShadowingEnabled(v());
    }

    public boolean R() {
        return nIsStencilBufferEnabled(v());
    }

    public boolean S() {
        return nIsTransparentPickingEnabled(v());
    }

    public void T(int i10, int i11, @Nullable Object obj, @Nullable l lVar) {
        nPick(v(), i10, i11, obj, new InternalOnPickCallback(lVar));
    }

    @Deprecated
    public void U(@NonNull a aVar) {
        nSetAmbientOcclusion(v(), aVar.ordinal());
    }

    public void V(@NonNull b bVar) {
        this.f60188h = bVar;
        nSetAmbientOcclusionOptions(v(), bVar.f60209b, bVar.f60211d, bVar.f60210c, bVar.f60212e, bVar.f60213f, bVar.f60214g, bVar.f60215h.ordinal(), bVar.f60216i.ordinal(), bVar.f60217j.ordinal(), bVar.f60218k, bVar.f60219l, bVar.f60220m);
        long v10 = v();
        float f10 = bVar.f60221n;
        float f11 = bVar.f60222o;
        float f12 = bVar.f60223p;
        float f13 = bVar.f60224q;
        float[] fArr = bVar.f60225r;
        nSetSSCTOptions(v10, f10, f11, f12, f13, fArr[0], fArr[1], fArr[2], bVar.f60226s, bVar.f60227t, bVar.f60228u, bVar.f60229v, bVar.f60230w);
    }

    public void W(@NonNull c cVar) {
        nSetAntiAliasing(v(), cVar.ordinal());
    }

    public void X(d dVar) {
        this.f60193m = dVar;
        nSetBlendMode(v(), dVar.ordinal());
    }

    public void Y(@NonNull e eVar) {
        this.f60189i = eVar;
        long v10 = v();
        Texture texture = eVar.f60234a;
        nSetBloomOptions(v10, texture != null ? texture.getNativeObject() : 0L, eVar.f60235b, eVar.f60236c, eVar.f60237d, eVar.f60238e, eVar.f60239f.ordinal(), eVar.f60240g, eVar.f60241h, eVar.f60242i, eVar.f60244k, eVar.f60245l, eVar.f60246m, eVar.f60247n, eVar.f60248o, eVar.f60249p, eVar.f60250q, eVar.f60251r, eVar.f60252s);
    }

    public void Z(@Nullable Camera camera) {
        this.f60184d = camera;
        nSetCamera(v(), camera == null ? 0L : camera.o());
    }

    public void a(Engine engine) {
        nClearFrameHistory(v(), engine.getNativeObject());
    }

    public void a0(@IntRange(from = 0, to = 7) int i10, boolean z10) {
        nSetChannelDepthClearEnabled(v(), i10, z10);
    }

    public void b() {
        this.f60181a = 0L;
    }

    public void b0(@Nullable ColorGrading colorGrading) {
        nSetColorGrading(v(), colorGrading != null ? colorGrading.x() : 0L);
        this.f60196p = colorGrading;
    }

    @NonNull
    @Deprecated
    public a c() {
        return f60180y[nGetAmbientOcclusion(v())];
    }

    public void c0(@NonNull f fVar) {
        this.f60194n = fVar;
        nSetDepthOfFieldOptions(v(), fVar.f60253a, fVar.f60255c, fVar.f60256d, fVar.f60257e.ordinal(), fVar.f60258f, fVar.f60259g, fVar.f60260h, fVar.f60261i, fVar.f60262j, fVar.f60263k);
    }

    @NonNull
    public b d() {
        if (this.f60188h == null) {
            this.f60188h = new b();
        }
        return this.f60188h;
    }

    public void d0(@NonNull g gVar) {
        nSetDithering(v(), gVar.ordinal());
    }

    @NonNull
    public c e() {
        return f60178w[nGetAntiAliasing(v())];
    }

    public void e0(float f10, float f11) {
        nSetDynamicLightingOptions(v(), f10, f11);
    }

    public d f() {
        return this.f60193m;
    }

    public void f0(@NonNull h hVar) {
        this.f60186f = hVar;
        nSetDynamicResolutionOptions(v(), hVar.f60267d, hVar.f60268e, hVar.f60264a, hVar.f60265b, hVar.f60266c, hVar.f60269f.ordinal());
    }

    @NonNull
    public e g() {
        if (this.f60189i == null) {
            this.f60189i = new e();
        }
        return this.f60189i;
    }

    public void g0(@NonNull i iVar) {
        com.google.android.filament.c.f(iVar.f60275f);
        this.f60190j = iVar;
        long v10 = v();
        float f10 = iVar.f60270a;
        float f11 = iVar.f60272c;
        float f12 = iVar.f60273d;
        float f13 = iVar.f60274e;
        float f14 = iVar.f60271b;
        float[] fArr = iVar.f60275f;
        float f15 = fArr[0];
        float f16 = fArr[1];
        float f17 = fArr[2];
        float f18 = iVar.f60276g;
        float f19 = iVar.f60277h;
        float f20 = iVar.f60278i;
        boolean z10 = iVar.f60279j;
        Texture texture = iVar.f60280k;
        nSetFogOptions(v10, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, z10, texture == null ? 0L : texture.getNativeObject(), iVar.f60281l);
    }

    @Nullable
    public Camera h() {
        return this.f60184d;
    }

    public void h0(boolean z10) {
        nSetFrontFaceWindingInverted(v(), z10);
    }

    public ColorGrading i() {
        return this.f60196p;
    }

    public void i0(boolean z10) {
        nSetFrustumCullingEnabled(v(), z10);
    }

    @NonNull
    public f j() {
        if (this.f60194n == null) {
            this.f60194n = new f();
        }
        return this.f60194n;
    }

    public void j0(double d10) {
        nSetGridSize(v(), d10);
    }

    @NonNull
    public g k() {
        return f60179x[nGetDithering(v())];
    }

    public void k0(@NonNull j jVar) {
        this.f60202v = jVar;
        nSetGuardBandOptions(v(), jVar.f60282a);
    }

    @NonNull
    public h l() {
        if (this.f60186f == null) {
            this.f60186f = new h();
        }
        return this.f60186f;
    }

    public void l0(@IntRange(from = 0, to = 7) int i10, boolean z10) {
        int i11 = 1 << i10;
        G0(i11, z10 ? i11 : 0);
    }

    public double m() {
        return nGetEffectiveGridSize(v());
    }

    public void m0(int i10, @NonNull @Size(min = 4) float[] fArr) {
        com.google.android.filament.c.h(fArr);
        nSetMaterialGlobal(v(), i10, fArr[0], fArr[1], fArr[2], fArr[3]);
    }

    @com.google.android.filament.g
    public int n() {
        return nGetFogEntity(v());
    }

    public void n0(@NonNull k kVar) {
        this.f60199s = kVar;
        nSetMultiSampleAntiAliasingOptions(v(), kVar.f60283a, kVar.f60284b, kVar.f60285c);
    }

    @NonNull
    public i o() {
        if (this.f60190j == null) {
            this.f60190j = new i();
        }
        return this.f60190j;
    }

    public void o0(@NonNull String str) {
        this.f60182b = str;
        nSetName(v(), str);
    }

    public double p() {
        return nGetGridSize(v());
    }

    public void p0(boolean z10) {
        nSetPostProcessingEnabled(v(), z10);
    }

    @NonNull
    public j q() {
        if (this.f60202v == null) {
            this.f60202v = new j();
        }
        return this.f60202v;
    }

    public void q0(@NonNull o oVar) {
        this.f60187g = oVar;
        nSetRenderQuality(v(), oVar.f60289a.ordinal());
    }

    @NonNull
    @Size(min = 2)
    public float[] r(@Nullable @Size(min = 2) float[] fArr) {
        float[] d10 = com.google.android.filament.c.d(fArr);
        nGetLastDynamicResolutionScale(v(), d10);
        return d10;
    }

    public void r0(@Nullable RenderTarget renderTarget) {
        this.f60192l = renderTarget;
        nSetRenderTarget(v(), renderTarget != null ? renderTarget.m() : 0L);
    }

    @NonNull
    @Size(min = 4)
    public float[] s(int i10, @Nullable @Size(min = 4) float[] fArr) {
        float[] g10 = com.google.android.filament.c.g(fArr);
        nGetMaterialGlobal(v(), i10, g10);
        return g10;
    }

    @Deprecated
    public void s0(int i10) {
        nSetSampleCount(v(), i10);
    }

    @NonNull
    public k t() {
        if (this.f60199s == null) {
            this.f60199s = new k();
        }
        return this.f60199s;
    }

    public void t0(@Nullable Scene scene) {
        this.f60183c = scene;
        nSetScene(v(), scene == null ? 0L : scene.j());
    }

    @Nullable
    public String u() {
        return this.f60182b;
    }

    public void u0(@NonNull p pVar) {
        this.f60198r = pVar;
        nSetScreenSpaceReflectionsOptions(v(), pVar.f60290a, pVar.f60291b, pVar.f60292c, pVar.f60293d, pVar.f60294e);
    }

    public long v() {
        long j10 = this.f60181a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed View");
    }

    public void v0(boolean z10) {
        nSetScreenSpaceRefractionEnabled(v(), z10);
    }

    @NonNull
    public o w() {
        if (this.f60187g == null) {
            this.f60187g = new o();
        }
        return this.f60187g;
    }

    public void w0(q qVar) {
        nSetShadowType(v(), qVar.ordinal());
    }

    @Nullable
    public RenderTarget x() {
        return this.f60192l;
    }

    public void x0(boolean z10) {
        nSetShadowingEnabled(v(), z10);
    }

    @Deprecated
    public int y() {
        return nGetSampleCount(v());
    }

    public void y0(@NonNull r rVar) {
        this.f60201u = rVar;
        nSetSoftShadowOptions(v(), rVar.f60295a, rVar.f60296b);
    }

    @Nullable
    public Scene z() {
        return this.f60183c;
    }

    public void z0(boolean z10) {
        nSetStencilBufferEnabled(v(), z10);
    }
}
