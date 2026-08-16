package com.android.tools.r8.internal;

public final class C10518z extends AbstractC9516t {
    @Override
    public final void a(C c10, Thread thread) {
        c10.f39055a = thread;
    }

    @Override
    public final C b(D d10) {
        C c10;
        C c11 = C.f39054c;
        synchronized (d10) {
            try {
                c10 = d10.f39403d;
                if (c10 != c11) {
                    d10.f39403d = c11;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return c10;
    }

    @Override
    public final void a(C c10, C c11) {
        c10.f39056b = c11;
    }

    @Override
    public final boolean a(D d10, C c10, C c11) {
        synchronized (d10) {
            try {
                if (d10.f39403d != c10) {
                    return false;
                }
                d10.f39403d = c11;
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final C10184x a(D d10) {
        C10184x c10184x;
        C10184x c10184x2 = C10184x.f53655b;
        synchronized (d10) {
            try {
                c10184x = d10.f39402c;
                if (c10184x != c10184x2) {
                    d10.f39402c = c10184x2;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return c10184x;
    }

    @Override
    public final boolean a(D d10, Object obj, Object obj2) {
        synchronized (d10) {
            try {
                if (d10.f39401b != obj) {
                    return false;
                }
                d10.f39401b = obj2;
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
