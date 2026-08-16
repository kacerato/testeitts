package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

public final class Z7 extends AbstractC12103k {

    public final boolean f62202d;

    public final boolean f62203e;

    public final a8 f62204f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Z7(a8 a8Var, boolean z10, boolean z11) {
        super("log");
        Objects.requireNonNull(a8Var);
        this.f62204f = a8Var;
        this.f62202d = z10;
        this.f62203e = z11;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0084  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final InterfaceC12157q i(C12079h2 c12079h2, List list) {
        int i10;
        int i11;
        I2.b("log", 1, list);
        if (list.size() == 1) {
            a8 a8Var = this.f62204f;
            a8Var.k().a(3, c12079h2.a((InterfaceC12157q) list.get(0)).P1(), Collections.emptyList(), this.f62202d, this.f62203e);
            return InterfaceC12157q.f62394o4;
        }
        int g10 = I2.g(c12079h2.a((InterfaceC12157q) list.get(0)).Q1().doubleValue());
        if (g10 != 2) {
            i10 = 3;
            if (g10 == 3) {
                i11 = 1;
            } else if (g10 == 5) {
                i11 = 5;
            } else if (g10 == 6) {
                i11 = 2;
            }
            String P12 = c12079h2.a((InterfaceC12157q) list.get(1)).P1();
            if (list.size() != 2) {
                a8 a8Var2 = this.f62204f;
                a8Var2.k().a(i11, P12, Collections.emptyList(), this.f62202d, this.f62203e);
                return InterfaceC12157q.f62394o4;
            }
            ArrayList arrayList = new ArrayList();
            for (int i12 = 2; i12 < Math.min(list.size(), 5); i12++) {
                arrayList.add(c12079h2.a((InterfaceC12157q) list.get(i12)).P1());
            }
            this.f62204f.k().a(i11, P12, arrayList, this.f62202d, this.f62203e);
            return InterfaceC12157q.f62394o4;
        }
        i10 = 4;
        i11 = i10;
        String P122 = c12079h2.a((InterfaceC12157q) list.get(1)).P1();
        if (list.size() != 2) {
        }
    }
}
