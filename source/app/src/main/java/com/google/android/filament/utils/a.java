package com.google.android.filament.utils;

import Bf.f;
import Bf.q;
import Mf.l;
import Mf.p;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import com.google.android.filament.Camera;
import com.google.android.filament.Colors;
import com.google.android.filament.Engine;
import com.google.android.filament.EntityManager;
import com.google.android.filament.Fence;
import com.google.android.filament.LightManager;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.Renderer;
import com.google.android.filament.Scene;
import com.google.android.filament.SwapChain;
import com.google.android.filament.Texture;
import com.google.android.filament.TransformManager;
import com.google.android.filament.g;
import com.google.android.filament.gltfio.Animator;
import com.google.android.filament.gltfio.AssetLoader;
import com.google.android.filament.gltfio.FilamentAsset;
import com.google.android.filament.gltfio.MaterialProvider;
import com.google.android.filament.gltfio.ResourceLoader;
import com.google.android.filament.gltfio.UbershaderProvider;
import com.google.android.filament.utils.Manipulator;
import com.google.android.filament.w;
import eg.C13119i;
import eg.C13122j0;
import eg.C13123k;
import eg.K0;
import eg.S;
import eg.T;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t0;
import m0.C14176k;
import m0.C14178m;
import n0.C14341f;
import n0.C14342g;
import n0.C14343h;
import n0.s;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14960A;

@t0({"SMAP\nModelViewer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelViewer.kt\ncom/google/android/filament/utils/ModelViewer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 4 Vector.kt\ncom/google/android/filament/utils/Float3\n*L\n1#1,518:1\n1#2:519\n791#3:520\n307#4:521\n323#4:522\n*S KotlinDebug\n*F\n+ 1 ModelViewer.kt\ncom/google/android/filament/utils/ModelViewer\n*L\n252#1:520\n254#1:521\n254#1:522\n*E\n"})
public final class a implements View.OnTouchListener {

    @NotNull
    public static final C0944a f60415F = new C0944a(null);

    @NotNull
    public static final C14341f f60416G = new C14341f(0.0f, 0.0f, -4.0f);

    @NotNull
    public final int[] f60417A;

    @NotNull
    public final double[] f60418B;

    @NotNull
    public final double[] f60419C;

    @NotNull
    public final double[] f60420D;

    @Nullable
    public l<? super Bitmap, P0> f60421E;

    @NotNull
    public final Engine f60422b;

    @NotNull
    public final C14178m f60423c;

    @Nullable
    public FilamentAsset f60424d;

    @Nullable
    public Animator f60425e;

    public boolean f60426f;

    public float f60427g;

    public float f60428h;

    public float f60429i;

    @NotNull
    public final Scene f60430j;

    @NotNull
    public final com.google.android.filament.View f60431k;

    @NotNull
    public final Camera f60432l;

    @NotNull
    public final Renderer f60433m;

    @g
    public final int f60434n;

    @Nullable
    public Texture f60435o;

    @Nullable
    public Texture f60436p;

    public C14176k f60437q;

    @Nullable
    public Manipulator f60438r;

    @Nullable
    public C14343h f60439s;

    @Nullable
    public SurfaceView f60440t;

    @Nullable
    public TextureView f60441u;

    @Nullable
    public K0 f60442v;

    @Nullable
    public SwapChain f60443w;

    @NotNull
    public AssetLoader f60444x;

    @NotNull
    public MaterialProvider f60445y;

    @NotNull
    public ResourceLoader f60446z;

    public static final class C0944a {
        public C0944a(C14026x c14026x) {
            this();
        }

        public final Manipulator b(int i10, int i11) {
            Manipulator a10 = new Manipulator.a().q(a.f60416G.H(), a.f60416G.K(), a.f60416G.L()).s(i10, i11).a(Manipulator.d.ORBIT);
            M.o(a10, "build(...)");
            return a10;
        }

        public C0944a() {
        }
    }

    @t0({"SMAP\nModelViewer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelViewer.kt\ncom/google/android/filament/utils/ModelViewer$SurfaceCallback\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,518:1\n1#2:519\n*E\n"})
    public final class b implements C14178m.c {
        public b() {
        }

        @Override
        public void a(@NotNull Surface surface) {
            M.p(surface, "surface");
            SwapChain I10 = a.this.I();
            if (I10 != null) {
                a.this.z().Q(I10);
            }
            a aVar = a.this;
            aVar.f60443w = aVar.z().v(surface);
            SurfaceView surfaceView = a.this.f60440t;
            C14176k c14176k = null;
            if (surfaceView != null) {
                a aVar2 = a.this;
                C14176k c14176k2 = aVar2.f60437q;
                if (c14176k2 == null) {
                    M.S("displayHelper");
                    c14176k2 = null;
                }
                c14176k2.b(aVar2.F(), surfaceView.getDisplay());
            }
            TextureView textureView = a.this.f60441u;
            if (textureView != null) {
                a aVar3 = a.this;
                C14176k c14176k3 = aVar3.f60437q;
                if (c14176k3 == null) {
                    M.S("displayHelper");
                } else {
                    c14176k = c14176k3;
                }
                c14176k.b(aVar3.F(), textureView.getDisplay());
            }
        }

        @Override
        public void b(int i10, int i11) {
            a.this.J().E0(new w(0, 0, i10, i11));
            Manipulator manipulator = a.this.f60438r;
            if (manipulator != null) {
                manipulator.J(i10, i11);
            }
            a.this.c0();
            a aVar = a.this;
            aVar.Z(aVar.z());
        }

        @Override
        public void c() {
            C14176k c14176k = a.this.f60437q;
            if (c14176k == null) {
                M.S("displayHelper");
                c14176k = null;
            }
            c14176k.c();
            SwapChain I10 = a.this.I();
            if (I10 != null) {
                a aVar = a.this;
                aVar.z().Q(I10);
                aVar.z().W();
                aVar.f60443w = null;
            }
        }
    }

    public static final class c implements View.OnAttachStateChangeListener {
        public c() {
        }

        @Override
        public void onViewAttachedToWindow(View v10) {
            M.p(v10, "v");
        }

        @Override
        public void onViewDetachedFromWindow(View v10) {
            M.p(v10, "v");
            a.this.q();
        }
    }

    @f(c = "com.google.android.filament.utils.ModelViewer$fetchResources$2", f = "ModelViewer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class d extends q implements p<S, yf.f<? super P0>, Object> {

        public int f60449b;

        public final HashMap<String, Buffer> f60450c;

        public final a f60451d;

        public final FilamentAsset f60452e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(HashMap<String, Buffer> hashMap, a aVar, FilamentAsset filamentAsset, yf.f<? super d> fVar) {
            super(2, fVar);
            this.f60450c = hashMap;
            this.f60451d = aVar;
            this.f60452e = filamentAsset;
        }

        @Override
        public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
            return new d(this.f60450c, this.f60451d, this.f60452e, fVar);
        }

        @Override
        public final Object invoke(S s10, yf.f<? super P0> fVar) {
            return ((d) create(s10, fVar)).invokeSuspend(P0.f98194a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Af.d.l();
            if (this.f60449b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C14418j0.n(obj);
            for (Map.Entry<String, Buffer> entry : this.f60450c.entrySet()) {
                this.f60451d.f60446z.addResourceData(entry.getKey(), entry.getValue());
            }
            this.f60451d.f60446z.asyncBeginLoad(this.f60452e);
            this.f60451d.f60425e = this.f60452e.getInstance().getAnimator();
            this.f60452e.releaseSourceData();
            return P0.f98194a;
        }
    }

    @f(c = "com.google.android.filament.utils.ModelViewer$loadModelGltfAsync$1", f = "ModelViewer.kt", i = {}, l = {238}, m = "invokeSuspend", n = {}, s = {})
    public static final class e extends q implements p<S, yf.f<? super P0>, Object> {

        public int f60453b;

        public final l<String, Buffer> f60455d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public e(l<? super String, ? extends Buffer> lVar, yf.f<? super e> fVar) {
            super(2, fVar);
            this.f60455d = lVar;
        }

        @Override
        public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
            return new e(this.f60455d, fVar);
        }

        @Override
        public final Object invoke(S s10, yf.f<? super P0> fVar) {
            return ((e) create(s10, fVar)).invokeSuspend(P0.f98194a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f60453b;
            if (i10 == 0) {
                C14418j0.n(obj);
                a aVar = a.this;
                FilamentAsset u10 = aVar.u();
                M.m(u10);
                l<String, Buffer> lVar = this.f60455d;
                this.f60453b = 1;
                if (aVar.s(u10, lVar, this) == l10) {
                    return l10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C14418j0.n(obj);
            }
            return P0.f98194a;
        }
    }

    public a(@NotNull Engine engine, @NotNull C14178m uiHelper) {
        M.p(engine, "engine");
        M.p(uiHelper, "uiHelper");
        this.f60422b = engine;
        this.f60423c = uiHelper;
        this.f60426f = true;
        this.f60427g = 28.0f;
        this.f60428h = 0.05f;
        this.f60429i = 1000.0f;
        this.f60417A = new int[128];
        this.f60418B = new double[3];
        this.f60419C = new double[3];
        this.f60420D = new double[3];
        this.f60433m = engine.s();
        Scene t10 = engine.t();
        this.f60430j = t10;
        Camera q10 = engine.q(engine.c0().a());
        M.o(q10, "createCamera(...)");
        q10.E(16.0f, 0.008f, 100.0f);
        this.f60432l = q10;
        com.google.android.filament.View y10 = engine.y();
        this.f60431k = y10;
        y10.t0(t10);
        y10.Z(q10);
        this.f60445y = new UbershaderProvider(engine);
        this.f60444x = new AssetLoader(engine, this.f60445y, EntityManager.f());
        this.f60446z = new ResourceLoader(engine, this.f60426f);
        int a10 = EntityManager.f().a();
        this.f60434n = a10;
        float[] a11 = Colors.a(6500.0f);
        M.o(a11, "cct(...)");
        new LightManager.a(LightManager.d.SUN).d(a11[0], a11[1], a11[2]).g(100000.0f).e(0.0f, -1.0f, 0.0f).c(true).a(engine, a10);
        t10.b(a10);
    }

    public static void E() {
    }

    public static final boolean P(m0.f fVar, FilamentAsset filamentAsset, a aVar) {
        int popRenderables = filamentAsset.popRenderables(aVar.f60417A);
        fVar.f95752b = popRenderables;
        return popRenderables != 0;
    }

    public static final void R(ByteBuffer byteBuffer, Bitmap bitmap, l lVar) {
        byteBuffer.rewind();
        bitmap.copyPixelsFromBuffer(byteBuffer);
        lVar.invoke(bitmap);
    }

    public static void b0(a aVar, C14341f c14341f, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c14341f = f60416G;
        }
        aVar.a0(c14341f);
    }

    @Nullable
    public final Texture A() {
        return this.f60435o;
    }

    public final int B() {
        return this.f60434n;
    }

    public final boolean C() {
        return this.f60426f;
    }

    public final float D() {
        return this.f60446z.asyncGetLoadProgress();
    }

    @NotNull
    public final Renderer F() {
        return this.f60433m;
    }

    @NotNull
    public final Scene G() {
        return this.f60430j;
    }

    @Nullable
    public final Texture H() {
        return this.f60436p;
    }

    @Nullable
    public final SwapChain I() {
        return this.f60443w;
    }

    @NotNull
    public final com.google.android.filament.View J() {
        return this.f60431k;
    }

    public final void K(@NotNull Buffer buffer) {
        M.p(buffer, "buffer");
        r();
        FilamentAsset createAsset = this.f60444x.createAsset(buffer);
        this.f60424d = createAsset;
        if (createAsset != null) {
            this.f60446z.asyncBeginLoad(createAsset);
            this.f60425e = createAsset.getInstance().getAnimator();
            createAsset.releaseSourceData();
        }
    }

    public final void L(@NotNull Buffer buffer, @NotNull l<? super String, ? extends Buffer> callback) {
        M.p(buffer, "buffer");
        M.p(callback, "callback");
        r();
        FilamentAsset createAsset = this.f60444x.createAsset(buffer);
        this.f60424d = createAsset;
        if (createAsset != null) {
            for (String str : createAsset.getResourceUris()) {
                M.m(str);
                Buffer invoke = callback.invoke(str);
                if (invoke == null) {
                    this.f60424d = null;
                    return;
                }
                this.f60446z.addResourceData(str, invoke);
            }
            this.f60446z.asyncBeginLoad(createAsset);
            this.f60425e = createAsset.getInstance().getAnimator();
            createAsset.releaseSourceData();
        }
    }

    public final void M(@NotNull Buffer buffer, @NotNull l<? super String, ? extends Buffer> callback) {
        K0 f10;
        M.p(buffer, "buffer");
        M.p(callback, "callback");
        r();
        this.f60424d = this.f60444x.createAsset(buffer);
        f10 = C13123k.f(T.a(C13122j0.c()), null, null, new e(callback, null), 3, null);
        this.f60442v = f10;
    }

    public final void N(@NotNull MotionEvent event) {
        M.p(event, "event");
        C14343h c14343h = this.f60439s;
        if (c14343h != null) {
            c14343h.e(event);
        }
    }

    public final void O(final FilamentAsset filamentAsset) {
        RenderableManager h02 = this.f60422b.h0();
        M.o(h02, "getRenderableManager(...)");
        final m0.f fVar = new m0.f();
        Mf.a aVar = new Mf.a() {
            @Override
            public final Object invoke() {
                boolean P10;
                P10 = com.google.android.filament.utils.a.P(m0.f.this, filamentAsset, this);
                return Boolean.valueOf(P10);
            }
        };
        while (((Boolean) aVar.invoke()).booleanValue()) {
            int i10 = fVar.f95752b;
            for (int i11 = 0; i11 < i10; i11++) {
                h02.u0(h02.M(this.f60417A[i11]), true);
            }
            this.f60430j.a(pf.S.Z5(C14960A.Rx(this.f60417A, fVar.f95752b)));
        }
        this.f60430j.a(filamentAsset.getLightEntities());
    }

    public final boolean Q(long j10) {
        if (!this.f60423c.s()) {
            return false;
        }
        this.f60446z.asyncUpdateLoad();
        FilamentAsset filamentAsset = this.f60424d;
        if (filamentAsset != null) {
            O(filamentAsset);
        }
        Manipulator manipulator = this.f60438r;
        if (manipulator != null) {
            manipulator.y(this.f60418B, this.f60419C, this.f60420D);
            Camera camera = this.f60432l;
            double[] dArr = this.f60418B;
            double d10 = dArr[0];
            double d11 = dArr[1];
            double d12 = dArr[2];
            double[] dArr2 = this.f60419C;
            double d13 = dArr2[0];
            double d14 = dArr2[1];
            double d15 = dArr2[2];
            double[] dArr3 = this.f60420D;
            camera.z(d10, d11, d12, d13, d14, d15, dArr3[0], dArr3[1], dArr3[2]);
        }
        Renderer renderer = this.f60433m;
        SwapChain swapChain = this.f60443w;
        M.m(swapChain);
        if (!renderer.a(swapChain, j10)) {
            return false;
        }
        this.f60433m.o(this.f60431k);
        final l<? super Bitmap, P0> lVar = this.f60421E;
        if (lVar != null) {
            w F10 = this.f60431k.F();
            M.o(F10, "getViewport(...)");
            final Bitmap createBitmap = Bitmap.createBitmap(F10.f60458c, F10.f60459d, Bitmap.Config.ARGB_8888);
            M.o(createBitmap, "createBitmap(...)");
            final ByteBuffer allocateDirect = ByteBuffer.allocateDirect(F10.f60458c * F10.f60459d * 4);
            this.f60433m.m(F10.f60456a, F10.f60457b, F10.f60458c, F10.f60459d, new Texture.g(allocateDirect, Texture.e.RGBA, Texture.k.UBYTE, 1, 0, 0, 0, new Handler(Looper.getMainLooper()), new Runnable() {
                @Override
                public final void run() {
                    com.google.android.filament.utils.a.R(ByteBuffer.this, createBitmap, lVar);
                }
            }));
            this.f60421E = null;
        }
        this.f60433m.d();
        return true;
    }

    public final void S() {
        U(28.0f);
        V(0.05f);
        T(1000.0f);
        c0();
        Manipulator manipulator = this.f60438r;
        if (manipulator != null) {
            manipulator.E(manipulator.x());
        }
        Animator animator = this.f60425e;
        if (animator != null) {
            if (animator.getAnimationCount() > 0) {
                animator.applyAnimation(0, 0.0f);
            }
            animator.updateBoneMatrices();
        }
        o();
        b0(this, null, 1, null);
    }

    public final void T(float f10) {
        this.f60429i = f10;
        c0();
    }

    public final void U(float f10) {
        this.f60427g = f10;
        c0();
    }

    public final void V(float f10) {
        this.f60428h = f10;
        c0();
    }

    public final void W(@Nullable Texture texture) {
        this.f60435o = texture;
    }

    public final void X(boolean z10) {
        this.f60426f = z10;
    }

    public final void Y(@Nullable Texture texture) {
        this.f60436p = texture;
    }

    public final void Z(Engine engine) {
        Fence r10 = engine.r();
        M.o(r10, "createFence(...)");
        r10.c(Fence.b.FLUSH, -1L);
        engine.D(r10);
    }

    public final void a0(@NotNull C14341f centerPoint) {
        M.p(centerPoint, "centerPoint");
        FilamentAsset filamentAsset = this.f60424d;
        if (filamentAsset != null) {
            TransformManager j02 = this.f60422b.j0();
            M.o(j02, "getTransformManager(...)");
            float[] a10 = filamentAsset.getBoundingBox().a();
            C14341f c14341f = new C14341f(a10[0], a10[1], a10[2]);
            float[] b10 = filamentAsset.getBoundingBox().b();
            C14341f c14341f2 = new C14341f(b10[0], b10[1], b10[2]);
            float max = 2.0f / (Math.max(c14341f2.H(), Math.max(c14341f2.K(), c14341f2.L())) * 2.0f);
            C14341f c14341f3 = new C14341f(centerPoint.H() / max, centerPoint.K() / max, centerPoint.L() / max);
            j02.u(j02.h(filamentAsset.getRoot()), s.X(s.R(new C14341f(max)).X(s.T(new C14341f(c14341f.H() - c14341f3.H(), c14341f.K() - c14341f3.K(), c14341f.L() - c14341f3.L()).u0()))).a0());
        }
    }

    public final void c0() {
        this.f60432l.H(this.f60427g, this.f60431k.F().f60458c / this.f60431k.F().f60459d, this.f60428h, this.f60429i);
    }

    public final void n(View view) {
        view.addOnAttachStateChangeListener(new c());
    }

    public final void o() {
        FilamentAsset filamentAsset = this.f60424d;
        if (filamentAsset != null) {
            TransformManager j02 = this.f60422b.j0();
            M.o(j02, "getTransformManager(...)");
            j02.u(j02.h(filamentAsset.getRoot()), new n0.q((C14342g) null, (C14342g) null, (C14342g) null, (C14342g) null, 15, (C14026x) null).a0());
        }
    }

    @Override
    public boolean onTouch(@NotNull View view, @NotNull MotionEvent event) {
        M.p(view, "view");
        M.p(event, "event");
        N(event);
        return true;
    }

    public final void p(@NotNull l<? super Bitmap, P0> callback) {
        M.p(callback, "callback");
        this.f60421E = callback;
    }

    public final void q() {
        this.f60423c.l();
        r();
        this.f60444x.destroy();
        this.f60445y.destroyMaterials();
        this.f60445y.destroy();
        this.f60446z.destroy();
        Texture texture = this.f60435o;
        if (texture != null) {
            Engine engine = this.f60422b;
            M.m(texture);
            engine.R(texture);
            this.f60435o = null;
        }
        Texture texture2 = this.f60436p;
        if (texture2 != null) {
            Engine engine2 = this.f60422b;
            M.m(texture2);
            engine2.R(texture2);
            this.f60436p = null;
        }
        this.f60422b.C(this.f60434n);
        this.f60422b.L(this.f60433m);
        this.f60422b.T(this.f60431k);
        this.f60422b.M(this.f60430j);
        this.f60422b.A(this.f60432l.g());
        EntityManager.f().d(this.f60432l.g());
        EntityManager.f().d(this.f60434n);
        this.f60422b.z();
    }

    public final void r() {
        K0 k02 = this.f60442v;
        if (k02 != null) {
            K0.a.b(k02, null, 1, null);
        }
        this.f60446z.asyncCancelLoad();
        this.f60446z.evictResourceData();
        FilamentAsset filamentAsset = this.f60424d;
        if (filamentAsset != null) {
            this.f60430j.o(filamentAsset.getEntities());
            this.f60444x.destroyAsset(filamentAsset);
            this.f60424d = null;
            this.f60425e = null;
        }
    }

    public final Object s(FilamentAsset filamentAsset, l<? super String, ? extends Buffer> lVar, yf.f<? super P0> fVar) {
        HashMap hashMap = new HashMap();
        String[] resourceUris = filamentAsset.getResourceUris();
        M.o(resourceUris, "getResourceUris(...)");
        for (String str : resourceUris) {
            M.m(str);
            hashMap.put(str, lVar.invoke(str));
        }
        Object h10 = C13119i.h(C13122j0.e(), new d(hashMap, this, filamentAsset, null), fVar);
        return h10 == Af.d.l() ? h10 : P0.f98194a;
    }

    @Nullable
    public final Animator t() {
        return this.f60425e;
    }

    @Nullable
    public final FilamentAsset u() {
        return this.f60424d;
    }

    @NotNull
    public final Camera v() {
        return this.f60432l;
    }

    public final float w() {
        return this.f60429i;
    }

    public final float x() {
        return this.f60427g;
    }

    public final float y() {
        return this.f60428h;
    }

    @NotNull
    public final Engine z() {
        return this.f60422b;
    }

    public a(SurfaceView surfaceView, Engine engine, C14178m c14178m, Manipulator manipulator, int i10, C14026x c14026x) {
        this(surfaceView, (i10 & 2) != 0 ? Engine.n() : engine, (i10 & 4) != 0 ? new C14178m(C14178m.a.DONT_CHECK) : c14178m, (i10 & 8) != 0 ? f60415F.b(surfaceView.getWidth(), surfaceView.getHeight()) : manipulator);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(@NotNull SurfaceView surfaceView, @NotNull Engine engine, @NotNull C14178m uiHelper, @Nullable Manipulator manipulator) {
        this(engine, uiHelper);
        M.p(surfaceView, "surfaceView");
        M.p(engine, "engine");
        M.p(uiHelper, "uiHelper");
        this.f60440t = surfaceView;
        this.f60438r = manipulator;
        if (manipulator != null) {
            this.f60439s = new C14343h(surfaceView, manipulator);
        }
        this.f60437q = new C14176k(surfaceView.getContext());
        uiHelper.w(new b());
        uiHelper.h(surfaceView);
        n(surfaceView);
    }

    public a(TextureView textureView, Engine engine, C14178m c14178m, Manipulator manipulator, int i10, C14026x c14026x) {
        this(textureView, (i10 & 2) != 0 ? Engine.n() : engine, (i10 & 4) != 0 ? new C14178m(C14178m.a.DONT_CHECK) : c14178m, (i10 & 8) != 0 ? f60415F.b(textureView.getWidth(), textureView.getHeight()) : manipulator);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(@NotNull TextureView textureView, @NotNull Engine engine, @NotNull C14178m uiHelper, @Nullable Manipulator manipulator) {
        this(engine, uiHelper);
        M.p(textureView, "textureView");
        M.p(engine, "engine");
        M.p(uiHelper, "uiHelper");
        this.f60441u = textureView;
        this.f60438r = manipulator;
        if (manipulator != null) {
            this.f60439s = new C14343h(textureView, manipulator);
        }
        this.f60437q = new C14176k(textureView.getContext());
        uiHelper.w(new b());
        uiHelper.i(textureView);
        n(textureView);
    }
}
