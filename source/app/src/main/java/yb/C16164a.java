package yb;

import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;
import ge.X;
import java.lang.ref.WeakReference;

public class C16164a {

    public static final Object f130152a = new Object();

    public static final X<C2222a> f130153b = new X<>(500);

    public static class C2222a {

        public WeakReference<FilamentTexture> f130154a;

        public C2222a(FilamentTexture texture) {
            this.f130154a = null;
            this.f130154a = new WeakReference<>(texture);
        }

        public FilamentTexture a() {
            return this.f130154a.get();
        }

        public boolean b() {
            return this.f130154a.get() != null;
        }
    }

    public static void a(FilamentTexture texture) {
        texture.getClass();
        synchronized (f130152a) {
            f130153b.td(texture.A(), new C2222a(texture));
        }
    }

    public static FilamentTexture b(long id2) {
        synchronized (f130152a) {
            try {
                C2222a u10 = f130153b.u(id2);
                if (u10 == null) {
                    return null;
                }
                return u10.a();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void c(long pointer) {
        synchronized (f130152a) {
            f130153b.e(pointer);
        }
    }
}
