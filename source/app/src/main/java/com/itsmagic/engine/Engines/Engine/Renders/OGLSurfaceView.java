package com.itsmagic.engine.Engines.Engine.Renders;

import android.app.Activity;
import android.content.Context;
import android.provider.ContactsContract;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Choreographer;
import android.view.Surface;
import android.view.SurfaceView;
import com.google.android.filament.Engine;
import com.google.android.filament.LightManager;
import com.google.android.filament.Renderer;
import com.google.android.filament.SwapChain;
import com.google.android.filament.View;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Engines.Engine.Settings.GameSettings;
import com.itsmagic.engine.Engines.Engine.Settings.GraphicsSettings;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentLight;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import m0.C14178m;
import t3.C15377a;

public class OGLSurfaceView extends SurfaceView {

    public static final float[] f79472s = {0.0f, 1.0f, 1.0f, 1.0f};

    public static boolean f79473t = false;

    public static int f79474u = 60;

    public Engine f79475b;

    public Renderer f79476c;

    public FilamentScene f79477d;

    public FilamentView f79478e;

    public SwapChain f79479f;

    public C14178m f79480g;

    public FilamentLight f79481h;

    public volatile boolean f79482i;

    public volatile int f79483j;

    public volatile int f79484k;

    public volatile boolean f79485l;

    public volatile boolean f79486m;

    public Choreographer.FrameCallback f79487n;

    public boolean f79488o;

    public boolean f79489p;

    public long f79490q;

    public long f79491r;

    public class a implements C14178m.c {
        public a() {
        }

        @Override
        public void a(Surface surface) {
            if (OGLSurfaceView.this.f79479f != null) {
                OGLSurfaceView.this.f79475b.Q(OGLSurfaceView.this.f79479f);
            }
            OGLSurfaceView oGLSurfaceView = OGLSurfaceView.this;
            oGLSurfaceView.f79479f = oGLSurfaceView.f79475b.v(surface);
        }

        @Override
        public void b(int width, int height) {
            OGLSurfaceView.this.f79483j = width;
            OGLSurfaceView.this.f79484k = height;
            OGLSurfaceView.this.f79485l = true;
        }

        @Override
        public void c() {
            if (OGLSurfaceView.this.f79479f != null) {
                OGLSurfaceView.this.f79475b.Q(OGLSurfaceView.this.f79479f);
                OGLSurfaceView.this.f79479f = null;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            if (OGLSurfaceView.this.f79481h != null) {
                if (GraphicsSettings.d()) {
                    if (OGLSurfaceView.this.f79482i) {
                        return;
                    }
                    OGLSurfaceView.this.f79477d.j(OGLSurfaceView.this.f79481h.e());
                    OGLSurfaceView.this.f79482i = true;
                    return;
                }
                if (OGLSurfaceView.this.f79482i) {
                    OGLSurfaceView.this.f79477d.s(OGLSurfaceView.this.f79481h.e());
                    OGLSurfaceView.this.f79482i = false;
                }
            }
        }
    }

    public class c implements Choreographer.FrameCallback {

        public boolean f79494a = false;

        public c() {
        }

        @Override
        public void doFrame(long frameTimeNanos) {
            if (OGLSurfaceView.this.f79488o) {
                Choreographer.getInstance().postFrameCallback(this);
                OGLSurfaceView.this.J();
                if (OGLSurfaceView.this.f79480g == null || !OGLSurfaceView.this.f79480g.s()) {
                    return;
                }
                if (!OGLSurfaceView.this.f79486m) {
                    K8.a.n();
                    if (!OGLSurfaceView.this.G()) {
                        return;
                    }
                    OGLSurfaceView oGLSurfaceView = OGLSurfaceView.this;
                    Qb.a.m(oGLSurfaceView, oGLSurfaceView.f79475b, OGLSurfaceView.this.f79476c, OGLSurfaceView.this.f79477d, OGLSurfaceView.this.f79478e);
                }
                if (OGLSurfaceView.this.f79478e == null || OGLSurfaceView.this.f79477d == null) {
                    return;
                }
                if (!OGLSurfaceView.this.f79489p) {
                    OGLSurfaceView.this.f79489p = true;
                    W7.b.l(OGLSurfaceView.this.f79483j, OGLSurfaceView.this.f79484k, OGLSurfaceView.this);
                    OGLSurfaceView.this.f79490q = frameTimeNanos;
                    return;
                }
                if (OGLSurfaceView.this.f79485l) {
                    if (OGLSurfaceView.this.f79478e == null) {
                        return;
                    }
                    OGLSurfaceView.this.f79485l = false;
                    OGLSurfaceView.this.f79478e.D(0, 0, OGLSurfaceView.this.f79483j, OGLSurfaceView.this.f79484k);
                    W7.b.k(OGLSurfaceView.this.f79483j, OGLSurfaceView.this.f79484k);
                    return;
                }
                if (!OGLSurfaceView.f79473t || OGLSurfaceView.this.f79491r <= 0) {
                    OGLSurfaceView.this.f79490q = frameTimeNanos;
                } else {
                    if (OGLSurfaceView.this.f79490q == Long.MIN_VALUE) {
                        OGLSurfaceView.this.f79490q = frameTimeNanos;
                    }
                    if (frameTimeNanos < OGLSurfaceView.this.f79490q) {
                        return;
                    }
                }
                if (!this.f79494a) {
                    W7.b.i(OGLSurfaceView.this.f79483j, OGLSurfaceView.this.f79484k);
                }
                if (Qb.a.a(OGLSurfaceView.this.f79479f, frameTimeNanos)) {
                    W7.b.e();
                    Qb.a.c();
                    this.f79494a = false;
                    if (OGLSurfaceView.f79473t && OGLSurfaceView.this.f79491r > 0) {
                        long j10 = ((frameTimeNanos - OGLSurfaceView.this.f79490q) / OGLSurfaceView.this.f79491r) + 1;
                        OGLSurfaceView oGLSurfaceView2 = OGLSurfaceView.this;
                        OGLSurfaceView.l(oGLSurfaceView2, j10 * oGLSurfaceView2.f79491r);
                    }
                } else {
                    Qb.a.l();
                    W7.b.h();
                    this.f79494a = true;
                }
                if (this.f79494a) {
                    return;
                }
                W7.b.g();
                W7.b.b();
            }
        }
    }

    public static class d {

        public static final int[] f79496a;

        static {
            int[] iArr = new int[EditorSettings.a.values().length];
            f79496a = iArr;
            try {
                iArr[EditorSettings.a.Vulkan.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f79496a[EditorSettings.a.Opengl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class e {

        public static boolean f79497a = false;

        static {
            System.loadLibrary("filament-jni");
        }

        public static void a() {
            if (f79497a) {
                return;
            }
            f79497a = true;
        }
    }

    public OGLSurfaceView(Context context) {
        super(context);
        this.f79488o = false;
        this.f79489p = false;
        this.f79490q = Long.MIN_VALUE;
        this.f79491r = 0L;
    }

    public static long l(OGLSurfaceView oGLSurfaceView, long j10) {
        long j11 = oGLSurfaceView.f79490q + j10;
        oGLSurfaceView.f79490q = j11;
        return j11;
    }

    public void A() {
        this.f79488o = false;
        if (this.f79487n != null) {
            Choreographer.getInstance().removeFrameCallback(this.f79487n);
        }
        C14178m c14178m = this.f79480g;
        if (c14178m != null) {
            c14178m.l();
        }
        Engine engine = this.f79475b;
        if (engine != null) {
            Renderer renderer = this.f79476c;
            if (renderer != null) {
                engine.L(renderer);
            }
            FilamentView filamentView = this.f79478e;
            if (filamentView != null) {
                this.f79475b.T(filamentView.p());
            }
        }
        this.f79476c = null;
        this.f79478e = null;
        this.f79477d = null;
        this.f79479f = null;
        this.f79481h = null;
        this.f79482i = false;
        this.f79489p = false;
        this.f79485l = false;
        this.f79486m = false;
    }

    public void B() {
        K8.a.B(new b());
    }

    public void C() {
        if (this.f79487n != null) {
            Choreographer.getInstance().removeFrameCallback(this.f79487n);
        }
    }

    public void D() {
        B();
    }

    public void E() {
        if (this.f79487n == null || !this.f79488o) {
            return;
        }
        Choreographer.getInstance().postFrameCallback(this.f79487n);
    }

    public final void F() {
        Engine.c cVar = new Engine.c();
        cVar.f59937c = 64L;
        cVar.f59939e = 8L;
        cVar.f59936b = 10L;
        cVar.f59938d = 8L;
        cVar.f59935a = 24L;
        cVar.f59947m = C15377a.f109719g.booleanValue();
        Engine.b d10 = new Engine.b().d(cVar);
        int i10 = d.f79496a[EditorSettings.a().renderBackend.ordinal()];
        if (i10 == 1) {
            d10.a(Engine.a.DEFAULT);
        } else if (i10 == 2) {
            d10.a(Engine.a.OPENGL);
        }
        Engine b10 = d10.b();
        this.f79475b = b10;
        b10.J0(true);
        Log.d("Filament", "supported feature level:" + this.f79475b.Y().name());
        this.f79476c = this.f79475b.s();
        C14178m c14178m = new C14178m(C14178m.a.DONT_CHECK);
        this.f79480g = c14178m;
        c14178m.w(new a());
        this.f79480g.h(this);
    }

    public final boolean G() {
        if (!K8.a.s()) {
            return false;
        }
        if (this.f79486m) {
            return (this.f79478e == null || this.f79477d == null) ? false : true;
        }
        this.f79477d = new FilamentScene(this.f79475b);
        FilamentView filamentView = new FilamentView(this.f79475b);
        this.f79478e = filamentView;
        filamentView.C(this.f79477d);
        this.f79478e.w(View.d.TRANSLUCENT);
        this.f79478e.z(false);
        LightManager.a c10 = new LightManager.a(LightManager.d.SUN).e(0.0f, -1.0f, 0.0f).g(1.0f).d(1.0f, 1.0f, 1.0f).c(true);
        LightManager.c cVar = new LightManager.c();
        cVar.f59981d = 1.0f;
        cVar.f59982e = 1.0f;
        cVar.f59978a = 16;
        cVar.f59983f = 1.1f;
        cVar.f59984g = 1.0f;
        cVar.f59985h = 1.1f;
        cVar.f59986i = false;
        cVar.f59979b = 1;
        c10.l(cVar);
        FilamentLight filamentLight = new FilamentLight(c10, this.f79475b);
        this.f79481h = filamentLight;
        this.f79477d.j(filamentLight.e());
        this.f79482i = true;
        this.f79486m = true;
        return true;
    }

    public final void H() {
        this.f79487n = new c();
        Choreographer.getInstance().postFrameCallback(this.f79487n);
    }

    public void I(Activity act) {
        if (this.f79488o) {
            return;
        }
        e.a();
        F();
        H();
        this.f79488o = true;
    }

    public void J() {
        GraphicsSettings d10;
        if (!com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
            setFpsLimiterEnabled(true);
            setMaxFPS(32);
            return;
        }
        GameSettings l10 = K8.a.l();
        if (l10 == null || (d10 = l10.d()) == null) {
            return;
        }
        if (c8.b.k()) {
            setFpsLimiterEnabled(d10.e());
            setMaxFPS(d10.c());
        } else {
            setFpsLimiterEnabled(EditorSettings.a().enableFrameLimitOnEditor);
            setMaxFPS(EditorSettings.a().limitFramesWhenEditor);
        }
    }

    public void setFpsLimiterEnabled(boolean enabled) {
        if (f79473t != enabled) {
            this.f79490q = Long.MIN_VALUE;
        }
        f79473t = enabled;
    }

    public void setMaxFPS(int maxFPS) {
        if (maxFPS <= 0) {
            throw new IllegalArgumentException("maxFPS deve ser maior que 0");
        }
        if (f79474u != maxFPS) {
            this.f79490q = Long.MIN_VALUE;
        }
        f79474u = maxFPS;
        this.f79491r = ContactsContract.Directory.ENTERPRISE_DEFAULT / maxFPS;
    }

    public boolean z() {
        return this.f79486m;
    }

    public OGLSurfaceView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f79488o = false;
        this.f79489p = false;
        this.f79490q = Long.MIN_VALUE;
        this.f79491r = 0L;
    }

    public OGLSurfaceView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f79488o = false;
        this.f79489p = false;
        this.f79490q = Long.MIN_VALUE;
        this.f79491r = 0L;
    }
}
