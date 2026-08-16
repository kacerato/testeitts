package T0;

import android.os.SystemClock;
import androidx.annotation.NonNull;

@C0.a
public class C3041k implements InterfaceC3037g {

    public static final C3041k f23822a = new C3041k();

    @NonNull
    @C0.a
    public static InterfaceC3037g e() {
        return f23822a;
    }

    @Override
    public final long a() {
        return System.currentTimeMillis();
    }

    @Override
    public final long b() {
        return SystemClock.currentThreadTimeMillis();
    }

    @Override
    public final long c() {
        return SystemClock.elapsedRealtime();
    }

    @Override
    public final long d() {
        return System.nanoTime();
    }
}
