package Qb;

import com.google.android.filament.Engine;
import com.google.android.filament.Fence;
import com.google.android.filament.Renderer;
import com.google.android.filament.SwapChain;
import com.google.android.filament.TransformManager;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.Renders.OGLSurfaceView;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.BeginFrameIsRequiredException;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.NoPermitedInBeginFrameException;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import hc.AbstractC13441a;
import java.util.concurrent.atomic.AtomicBoolean;

public class a {

    public static Engine f22030a;

    public static Renderer f22031b;

    public static FilamentScene f22032c;

    public static FilamentView f22033d;

    public static final AtomicBoolean f22034e = new AtomicBoolean();

    public static boolean a(SwapChain swapChain, long frameTimeNanos) {
        if (f22034e.compareAndSet(false, true)) {
            return f22031b.a(swapChain, frameTimeNanos);
        }
        throw new RuntimeException("Already rendering");
    }

    public static void b(boolean clear, boolean discard) {
        Renderer.a e10 = g().e();
        e10.f60066b = clear;
        e10.f60067c = discard;
        e10.f60065a = AbstractC13441a.f90480a;
        g().r(e10);
    }

    public static void c() {
        if (!f22034e.compareAndSet(true, false)) {
            throw new RuntimeException("Not rendering");
        }
        f22031b.d();
    }

    public static void d() {
        if (k()) {
            throw new NoPermitedInBeginFrameException();
        }
    }

    public static void e() {
        if (!k()) {
            throw new BeginFrameIsRequiredException();
        }
    }

    public static Engine f() {
        return f22030a;
    }

    public static Renderer g() {
        return f22031b;
    }

    public static FilamentScene h() {
        return f22032c;
    }

    public static TransformManager i() {
        d();
        return f22030a.j0();
    }

    public static FilamentView j() {
        return f22033d;
    }

    public static boolean k() {
        return f22034e.get();
    }

    public static void l() {
        if (!f22034e.compareAndSet(true, false)) {
            throw new RuntimeException("Begin not called");
        }
    }

    public static void m(OGLSurfaceView surfaceView, Engine engine, Renderer renderer, FilamentScene scene, FilamentView view) {
        f22030a = engine;
        f22031b = renderer;
        f22032c = scene;
        f22033d = view;
        MaterialBuilder.o();
    }

    public static void n() {
        FilamentView filamentView;
        Renderer renderer = f22031b;
        if (renderer == null || (filamentView = f22033d) == null) {
            throw new RuntimeException();
        }
        renderer.o(filamentView.p());
        p();
    }

    public static void o(FilamentView filamentView) {
        Renderer renderer = f22031b;
        if (renderer == null || filamentView == null) {
            throw new RuntimeException();
        }
        renderer.o(filamentView.p());
        p();
    }

    public static void p() {
        Engine engine;
        Fence fence;
        if (!p6.d.E1() || (engine = f22030a) == null) {
            return;
        }
        try {
            fence = engine.r();
            try {
                fence.c(Fence.b.FLUSH, -1L);
                try {
                    f22030a.D(fence);
                } catch (Throwable unused) {
                }
            } catch (Throwable th2) {
                th = th2;
                if (fence != null) {
                    try {
                        f22030a.D(fence);
                    } catch (Throwable unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fence = null;
        }
    }
}
