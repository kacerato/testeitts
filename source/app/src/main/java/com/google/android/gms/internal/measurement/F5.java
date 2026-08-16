package com.google.android.gms.internal.measurement;

public class F5 {

    public volatile W5 f61914a;

    public volatile S4 f61915b;

    public volatile boolean f61916c;

    public final W5 a(W5 w52) {
        W5 w53 = this.f61914a;
        this.f61915b = null;
        this.f61914a = w52;
        return w53;
    }

    public final int b() {
        if (this.f61915b != null) {
            return ((R4) this.f61915b).f62107d.length;
        }
        if (this.f61914a != null) {
            return this.f61914a.f();
        }
        return 0;
    }

    public final S4 c() {
        if (this.f61915b != null) {
            return this.f61915b;
        }
        synchronized (this) {
            try {
                if (this.f61915b != null) {
                    return this.f61915b;
                }
                if (this.f61914a == null) {
                    this.f61915b = S4.f62112c;
                } else {
                    this.f61915b = this.f61914a.a();
                }
                return this.f61915b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void d(W5 w52) {
        if (this.f61914a != null) {
            return;
        }
        synchronized (this) {
            if (this.f61914a != null) {
                return;
            }
            try {
                this.f61914a = w52;
                this.f61915b = S4.f62112c;
            } catch (zzmq unused) {
                this.f61916c = true;
                this.f61914a = w52;
                this.f61915b = S4.f62112c;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof F5)) {
            return false;
        }
        F5 f52 = (F5) obj;
        W5 w52 = this.f61914a;
        W5 w53 = f52.f61914a;
        if (w52 == null && w53 == null) {
            return c().equals(f52.c());
        }
        if (w52 != null && w53 != null) {
            return w52.equals(w53);
        }
        if (w52 != null) {
            f52.d(w52.e());
            return w52.equals(f52.f61914a);
        }
        d(w53.e());
        return this.f61914a.equals(w53);
    }

    public int hashCode() {
        return 1;
    }
}
