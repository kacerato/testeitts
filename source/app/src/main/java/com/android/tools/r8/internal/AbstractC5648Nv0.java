package com.android.tools.r8.internal;

import com.android.tools.r8.errors.UnsupportedFeatureDiagnostic;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.MethodPosition;
import java.util.Set;
import java.util.function.Consumer;

public abstract class AbstractC5648Nv0 {

    public static final boolean f42735e = true;

    public final C4798y f42736a;

    public final String f42737b;

    public final C2 f42738c;

    public final Set f42739d = C4875Al0.a();

    public AbstractC5648Nv0(C4798y c4798y, String str, C2 c22) {
        this.f42736a = c4798y;
        this.f42737b = str;
        this.f42738c = c22;
    }

    public static C7051eC b(C7051eC c7051eC, com.android.tools.r8.graph.M2 m22) {
        Object c10212x9;
        if (!m22.S0()) {
            boolean z10 = f42735e;
            if (!z10 && m22.S0()) {
                throw new AssertionError();
            }
            if (m22.P0()) {
                EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
                c10212x9 = new C10546z9(0L, EnumC5477Kw0.a((char) m22.f36592f.f36562f[0]));
            } else {
                if (!z10 && !m22.Q0()) {
                    throw new AssertionError();
                }
                c10212x9 = new C10212x9();
            }
            c7051eC.a(c10212x9);
        }
        return c7051eC;
    }

    public abstract UnsupportedFeatureDiagnostic a(Origin origin, MethodPosition methodPosition);

    public abstract C6204Xl a(W9 w92);

    public final void a(com.android.tools.r8.graph.H5 h52) {
        if (this.f42739d.add(h52.getReference())) {
            UnsupportedFeatureDiagnostic a10 = a(h52.f36317b.f36244d, MethodPosition.create(h52));
            if (!f42735e && ((a10.getSupportedApiLevel() != -1 || this.f42738c != null) && a10.getSupportedApiLevel() != this.f42738c.d())) {
                throw new AssertionError();
            }
            this.f42736a.E().f50691j.warning(a10);
        }
    }

    public final void a(C5035Df c5035Df, AbstractC7103ea abstractC7103ea, C7051eC c7051eC) {
        W9[] w9Arr = {a(), new C7437ga(184, com.android.tools.r8.ir.optimize.M0.a(this.f42736a, abstractC7103ea, c5035Df).f54773a.getReference(), false), new C8106kb(C8106kb.a.Pop)};
        AbstractC9694u30.a(3, w9Arr);
        c7051eC.a(3, w9Arr);
    }

    public final A9 a() {
        C4724u1 b10 = this.f42736a.b();
        EnumC5583Ms c10 = this.f42736a.E().z().c();
        return new A9(b10.b("Instruction is unrepresentable in DEX " + ((Object) c10) + ": " + this.f42737b));
    }

    public static void a(C7051eC c7051eC, com.android.tools.r8.graph.M2 m22) {
        if (!f42735e && m22.S0()) {
            throw new AssertionError();
        }
        c7051eC.a(new C8106kb(m22.T0() ? C8106kb.a.Pop2 : C8106kb.a.Pop));
    }

    public static void a(com.android.tools.r8.graph.I2 i22, final C7051eC c7051eC) {
        i22.n0().d(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC5648Nv0.a(C7051eC.this, (com.android.tools.r8.graph.M2) obj);
            }
        });
    }
}
