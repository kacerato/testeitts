package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import java.util.function.Consumer;

public final class C6053Uv {

    public static final boolean f44900e = true;

    public C4554l1 f44901a;

    public AbstractC9530t40 f44902b;

    public AbstractC9530t40 f44903c;

    public com.android.tools.r8.graph.A2 f44904d;

    public C6053Uv() {
        AbstractC9530t40 abstractC9530t40 = AbstractC9530t40.f52519c;
        this.f44902b = abstractC9530t40;
        this.f44903c = abstractC9530t40;
    }

    public final C6053Uv a(boolean z10, Consumer consumer, Consumer consumer2) {
        if (!z10) {
            consumer = consumer2;
        }
        consumer.accept(this);
        return this;
    }

    public final C6053Uv b() {
        this.f44903c = AbstractC9530t40.f52518b;
        return this;
    }

    public final C6053Uv c() {
        this.f44903c = AbstractC9530t40.f52517a;
        return this;
    }

    public final com.android.tools.r8.graph.G a() {
        int i10;
        boolean z10 = f44900e;
        if (!z10) {
            if (!z10 && this.f44901a == null) {
                throw new AssertionError();
            }
            if (!z10 && this.f44902b.e()) {
                throw new AssertionError();
            }
            if (!z10 && this.f44903c.e()) {
                throw new AssertionError();
            }
            if (!z10 && this.f44904d == null) {
                throw new AssertionError();
            }
        }
        int i11 = AbstractC7552hC.f48487c;
        C7051eC c7051eC = new C7051eC();
        int i12 = 0;
        if (this.f44902b.d()) {
            c7051eC.a(new C8938pa(EnumC5477Kw0.f41824b, 0));
            i10 = 1;
            i12 = 1;
        } else {
            i10 = 0;
        }
        if (this.f44903c.d()) {
            EnumC5477Kw0 a10 = EnumC5477Kw0.a(this.f44901a.getType());
            c7051eC.a(new C8938pa(a10, i12));
            i10 += a10.c();
            i12 += a10.c();
        }
        int i13 = i12;
        c7051eC.a(F9.a(C8704o7.a(this.f44903c.d()) + 178 + (this.f44902b.f() << 1), this.f44901a));
        if (this.f44903c.d()) {
            c7051eC.a(new C6607bb());
        } else {
            EnumC5477Kw0 a11 = EnumC5477Kw0.a(this.f44901a.getType());
            i10 = Math.max(a11.c(), i10);
            c7051eC.a(new C6440ab(a11));
        }
        int i14 = i10;
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(this.f44904d.s0(), i14, i13, c7051eC.a(), c6190Xe0, c6190Xe0);
    }
}
