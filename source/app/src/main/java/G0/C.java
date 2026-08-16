package G0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

@C0.a
public final class C {

    @Nullable
    public static C f7271b;

    public static final D f7272c = new D(0, false, false, 0, 0);

    @Nullable
    public D f7273a;

    @NonNull
    @C0.a
    public static synchronized C b() {
        C c10;
        synchronized (C.class) {
            try {
                if (f7271b == null) {
                    f7271b = new C();
                }
                c10 = f7271b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return c10;
    }

    @Nullable
    @C0.a
    public D a() {
        return this.f7273a;
    }

    @VisibleForTesting
    public final synchronized void c(@Nullable D d10) {
        if (d10 == null) {
            this.f7273a = f7272c;
            return;
        }
        D d11 = this.f7273a;
        if (d11 == null || d11.getVersion() < d10.getVersion()) {
            this.f7273a = d10;
        }
    }
}
