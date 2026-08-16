package wc;

import android.util.Log;

public class b {

    public static boolean f127431b = false;

    public static final String f127432c = "BufferCleaner";

    public final a f127433a;

    public interface a {
        void a(long pointer);
    }

    public b(a listener) {
        this.f127433a = listener;
    }

    public void a(c reference) {
        throw new RuntimeException("Override this method!");
    }

    public void b(com.itsmagic.engine.Engines.Native.Base.a nativeBuffer) {
        throw new RuntimeException("Override this method!");
    }

    public c c(com.itsmagic.engine.Engines.Native.Base.a nativeBuffer) {
        throw new RuntimeException("Override this method!");
    }

    public void d(String str) {
        if (f127431b) {
            Log.d(f127432c, str);
        }
    }

    public int e() {
        throw new RuntimeException("Override this method!");
    }

    public void f() {
    }
}
