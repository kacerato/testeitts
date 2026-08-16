package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;

public final class C6842cy {

    public static final boolean f47220l = true;

    public final C4724u1 f47221a;

    public com.android.tools.r8.graph.A2 f47222b = null;

    public com.android.tools.r8.graph.A2 f47223c = null;

    public boolean f47224d = false;

    public boolean f47225e = false;

    public EnumC6509ay f47226f = null;

    public Boolean f47227g = null;

    public boolean f47228h = false;

    public boolean f47229i = false;

    public boolean f47230j = false;

    public C4514j f47231k = null;

    public C6842cy(C4724u1 c4724u1) {
        this.f47221a = c4724u1;
    }

    public final C6842cy a(boolean z10, Consumer consumer, Consumer consumer2) {
        if (z10) {
            consumer.accept(this);
            return this;
        }
        consumer2.accept(this);
        return this;
    }

    public final C6842cy b(com.android.tools.r8.graph.A2 a22, boolean z10) {
        this.f47223c = a22;
        this.f47226f = z10 ? EnumC6509ay.f46666d : EnumC6509ay.f46665c;
        this.f47227g = Boolean.valueOf(z10);
        return this;
    }

    public final void c() {
        boolean z10 = f47220l;
        if (!z10 && this.f47222b == null) {
            throw new AssertionError();
        }
        if (!z10 && this.f47223c == null) {
            throw new AssertionError();
        }
        if (!z10 && this.f47226f == null) {
            throw new AssertionError();
        }
        if (!z10 && this.f47227g == null) {
            throw new AssertionError();
        }
        if (!z10) {
            if ((this.f47222b.x0().size() + (!this.f47225e ? 1 : 0)) - C8704o7.a(this.f47224d) != this.f47223c.x0().size() + ((this.f47226f == EnumC6509ay.f46664b || this.f47230j) ? 0 : 1)) {
                throw new AssertionError();
            }
        }
        if (this.f47230j) {
            if (!z10 && !this.f47225e) {
                throw new AssertionError();
            }
            if (!z10 && this.f47222b.z0().S0()) {
                throw new AssertionError();
            }
            if (!z10 && !this.f47223c.z0().S0()) {
                throw new AssertionError();
            }
            if (!z10 && this.f47226f != EnumC6509ay.f46667e) {
                throw new AssertionError();
            }
            return;
        }
        if (this.f47228h && !this.f47222b.z0().S0() && !this.f47223c.z0().S0()) {
            if (!z10 && EnumC5477Kw0.a(this.f47222b.z0()) != EnumC5477Kw0.a(this.f47223c.z0())) {
                throw new AssertionError();
            }
        } else if (!this.f47229i) {
            if (!z10 && this.f47222b.z0() != this.f47223c.z0()) {
                throw new AssertionError();
            }
        } else {
            if (!z10 && !this.f47222b.z0().S0()) {
                throw new AssertionError();
            }
            if (!z10 && this.f47223c.z0().S0()) {
                throw new AssertionError();
            }
        }
    }

    public final C6842cy a(com.android.tools.r8.graph.A2 a22, boolean z10) {
        this.f47223c = a22;
        this.f47226f = EnumC6509ay.f46664b;
        this.f47227g = Boolean.valueOf(z10);
        return this;
    }

    public final int b() {
        int ordinal = this.f47226f.ordinal();
        if (ordinal == 0) {
            return 184;
        }
        if (ordinal == 1) {
            return 182;
        }
        if (ordinal == 2) {
            return 185;
        }
        if (ordinal == 3) {
            return 183;
        }
        throw new C5417Jv0("Unexpected invoke type: " + ((Object) this.f47226f));
    }

    public final com.android.tools.r8.graph.G a() {
        int i10;
        int i11;
        boolean z10 = f47220l;
        if (!z10) {
            c();
        }
        int i12 = AbstractC7552hC.f48487c;
        C7051eC c7051eC = new C7051eC();
        if (this.f47230j) {
            if (!z10 && !this.f47225e) {
                throw new AssertionError();
            }
            if (!z10 && this.f47226f != EnumC6509ay.f46667e) {
                throw new AssertionError();
            }
            c7051eC.a(new C10106wa(this.f47223c.s0()));
            c7051eC.a(new C8106kb(C8106kb.a.Dup));
            i10 = 2;
            i11 = 0;
        } else {
            if (this.f47225e) {
                i10 = 0;
            } else {
                c7051eC.a(new C8938pa(EnumC5477Kw0.f41824b, 0));
                a(-1, this.f47222b.f38297f, c7051eC);
                i10 = 1;
            }
            i11 = i10;
        }
        com.android.tools.r8.graph.M2[] m2Arr = this.f47222b.x0().f36675b;
        int i13 = i11;
        for (int i14 = 0; i14 < m2Arr.length; i14++) {
            com.android.tools.r8.graph.M2 m22 = m2Arr[i14];
            EnumC5477Kw0 a10 = EnumC5477Kw0.a(m22);
            if (!this.f47224d || i14 != m2Arr.length - 1) {
                c7051eC.a(new C8938pa(a10, i13));
                a(i14, m22, c7051eC);
            }
            i10 += a10.c();
            i13 += a10.c();
        }
        c7051eC.a(new C7437ga(b(), this.f47223c, this.f47227g.booleanValue()));
        if (!this.f47223c.z0().S0()) {
            i10 = Math.max(i10, EnumC5477Kw0.a(this.f47223c.z0()).c());
        }
        int i15 = i10;
        if (this.f47222b.z0().S0()) {
            if (!f47220l && this.f47230j) {
                throw new AssertionError();
            }
            c7051eC.a(new C6607bb());
        } else {
            if (!this.f47230j && !this.f47222b.z0().a(this.f47223c.z0())) {
                if (!f47220l && !this.f47228h) {
                    throw new AssertionError();
                }
                if (!this.f47222b.z0().a(this.f47221a.f38068i2)) {
                    c7051eC.a(new C7710i9(this.f47222b.z0()));
                }
            }
            if (!f47220l && this.f47222b.z0().S0()) {
                throw new AssertionError();
            }
            c7051eC.a(new C6440ab(EnumC5477Kw0.a(this.f47222b.z0())));
        }
        com.android.tools.r8.graph.M2 m23 = this.f47222b.f38297f;
        AbstractC7552hC a11 = c7051eC.a();
        List list = Collections.EMPTY_LIST;
        return new com.android.tools.r8.graph.G(m23, i15, i13, a11, list, list);
    }

    public final WS a(C4798y c4798y) {
        if (!f47220l) {
            c();
        }
        if (!this.f47228h && !this.f47230j && !this.f47224d && this.f47231k == null) {
            EnumC6509ay enumC6509ay = this.f47226f;
            if (enumC6509ay != EnumC6509ay.f46664b && enumC6509ay != EnumC6509ay.f46667e) {
                throw new C6501av0();
            }
            if (enumC6509ay == EnumC6509ay.f46667e && this.f47222b.s0().a(this.f47223c.s0())) {
                throw new C6501av0();
            }
            C7702i60 c7702i60 = new C7702i60();
            PS a10 = WS.a(this.f47222b, true, (AbstractC6590bT) c7702i60, c4798y.E());
            ArrayList arrayList = new ArrayList();
            int i10 = 0;
            while (i10 < this.f47222b.a(this.f47225e)) {
                com.android.tools.r8.graph.M2 a11 = this.f47222b.a(i10, this.f47225e);
                C8854p10 h10 = (i10 != 0 || this.f47225e) ? C8854p10.h() : C8854p10.b();
                a11.getClass();
                C10340xw0 c10340xw0 = new C10340xw0(i10, AbstractC8999pu0.a(a11, h10, (C4798y<?>) c4798y), null);
                arrayList.add(c10340xw0);
                c7702i60.f48841b.b(c10340xw0.t(), c10340xw0);
                a11.F0();
                a10.a(i10);
                i10++;
            }
            if (this.f47226f == EnumC6509ay.f46664b) {
                com.android.tools.r8.graph.A2 a22 = this.f47223c;
                boolean booleanValue = this.f47227g.booleanValue();
                a10.getClass();
                a10.a(booleanValue ? 204 : 184, Collections.singletonList(a22), arrayList);
            } else {
                com.android.tools.r8.graph.A2 a23 = this.f47223c;
                boolean booleanValue2 = this.f47227g.booleanValue();
                a10.getClass();
                a10.a(booleanValue2 ? 208 : 207, Collections.singletonList(a23), arrayList);
            }
            if (this.f47222b.z0().S0()) {
                a10.b();
            } else {
                C10340xw0 c10340xw02 = new C10340xw0(i10, this.f47222b.z0().b((C4798y<?>) c4798y), null);
                c7702i60.f48841b.b(c10340xw02.t(), c10340xw02);
                a10.getClass();
                a10.a(176, Collections.EMPTY_LIST, Collections.singletonList(c10340xw02));
            }
            return a10.d();
        }
        throw new C6501av0();
    }

    public final void a(int i10, com.android.tools.r8.graph.M2 m22, C7051eC c7051eC) {
        com.android.tools.r8.graph.M2 m23;
        if (this.f47231k == null) {
            return;
        }
        boolean z10 = this.f47225e;
        if (z10 != (this.f47226f == EnumC6509ay.f46664b)) {
            i10 += z10 ? -1 : 1;
        }
        if (i10 == -1) {
            m23 = this.f47223c.f38297f;
        } else {
            m23 = this.f47223c.x0().f36675b[i10];
        }
        if (m22.a(m23) || m23.a(this.f47231k.b().f38068i2)) {
            return;
        }
        if (!f47220l && !this.f47231k.c(m23, m22)) {
            throw new AssertionError();
        }
        c7051eC.a(new C7710i9(m23));
    }
}
