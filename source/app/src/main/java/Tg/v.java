package Tg;

import javax.annotation.Nullable;

public final class v {

    public static final long f25068a = 65536;

    @Nullable
    public static u f25069b;

    public static long f25070c;

    public static void a(u uVar) {
        if (uVar.f25066f != null || uVar.f25067g != null) {
            throw new IllegalArgumentException();
        }
        if (uVar.f25064d) {
            return;
        }
        synchronized (v.class) {
            try {
                long j10 = f25070c;
                if (j10 + 8192 > 65536) {
                    return;
                }
                f25070c = j10 + 8192;
                uVar.f25066f = f25069b;
                uVar.f25063c = 0;
                uVar.f25062b = 0;
                f25069b = uVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static u b() {
        synchronized (v.class) {
            try {
                u uVar = f25069b;
                if (uVar == null) {
                    return new u();
                }
                f25069b = uVar.f25066f;
                uVar.f25066f = null;
                f25070c -= 8192;
                return uVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
