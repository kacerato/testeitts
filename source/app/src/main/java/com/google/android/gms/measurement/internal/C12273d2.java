package com.google.android.gms.measurement.internal;

import androidx.annotation.GuardedBy;

public final class C12273d2 {

    public static final Object f63118g = new Object();

    public final String f63119a;

    public final P f63120b;

    public final Object f63121c;

    public final Object f63122d = new Object();

    @GuardedBy("overrideLock")
    public volatile Object f63123e = null;

    @GuardedBy("cachingLock")
    public volatile Object f63124f = null;

    public C12273d2(String str, Object obj, Object obj2, P p10, byte[] bArr) {
        this.f63119a = str;
        this.f63121c = obj;
        this.f63120b = p10;
    }

    public final String a() {
        return this.f63119a;
    }

    public final Object b(Object obj) {
        synchronized (this.f63122d) {
        }
        if (obj != null) {
            return obj;
        }
        if (Y1.f62972a == null) {
            return this.f63121c;
        }
        synchronized (f63118g) {
            try {
                if (C12286f.a()) {
                    return this.f63124f == null ? this.f63121c : this.f63124f;
                }
                try {
                    for (C12273d2 c12273d2 : C12281e2.b()) {
                        if (C12286f.a()) {
                            throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                        }
                        Object obj2 = null;
                        try {
                            P p10 = c12273d2.f63120b;
                            if (p10 != null) {
                                obj2 = p10.N1();
                            }
                        } catch (IllegalStateException unused) {
                        }
                        synchronized (f63118g) {
                            c12273d2.f63124f = obj2;
                        }
                    }
                } catch (SecurityException unused2) {
                }
                P p11 = this.f63120b;
                if (p11 != null) {
                    try {
                        return p11.N1();
                    } catch (IllegalStateException | SecurityException unused3) {
                    }
                }
                return this.f63121c;
            } finally {
            }
        }
    }
}
