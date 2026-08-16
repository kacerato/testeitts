package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.C12026b3;
import com.google.android.gms.internal.measurement.C12134n3;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public final class Y6 {

    public C12134n3 f62978a;

    public List f62979b;

    public List f62980c;

    public long f62981d;

    public final c7 f62982e;

    public Y6(c7 c7Var, byte[] bArr) {
        Objects.requireNonNull(c7Var);
        this.f62982e = c7Var;
    }

    public static final long b(C12026b3 c12026b3) {
        return ((c12026b3.J() / 1000) / 60) / 60;
    }

    public final boolean a(long j10, C12026b3 c12026b3) {
        G0.A.r(c12026b3);
        if (this.f62980c == null) {
            this.f62980c = new ArrayList();
        }
        if (this.f62979b == null) {
            this.f62979b = new ArrayList();
        }
        if (!this.f62980c.isEmpty() && b((C12026b3) this.f62980c.get(0)) != b(c12026b3)) {
            return false;
        }
        long f10 = this.f62981d + c12026b3.f();
        c7 c7Var = this.f62982e;
        if (!c7Var.B0().H(null, C12281e2.f63205f1)) {
            c7Var.B0();
            if (f10 >= C12342m.o()) {
                return false;
            }
        } else if (!this.f62980c.isEmpty()) {
            c7Var.B0();
            if (f10 >= C12342m.o()) {
                return false;
            }
        }
        this.f62981d = f10;
        this.f62980c.add(c12026b3);
        this.f62979b.add(Long.valueOf(j10));
        int size = this.f62980c.size();
        c7Var.B0();
        return size < Math.max(1, ((Integer) C12281e2.f63218k.b(null)).intValue());
    }
}
