package com.android.tools.r8.dex;

import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.errors.DexFileOverflowDiagnostic;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.C4875Al0;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.internal.C6620bf0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.IH;
import com.android.tools.r8.shaking.C11349o2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;

public abstract class j0 extends i0 {

    public static final boolean f35870h = true;

    public final Set f35871d;

    public final IdentityHashMap f35872e;

    public final t0 f35873f;

    public final C8570nJ f35874g;

    public j0(C4311k c4311k, Collection collection, C8570nJ c8570nJ, AbstractC9148qo0 abstractC9148qo0) {
        super(c4311k);
        this.f35874g = c8570nJ;
        this.f35871d = C4875Al0.a(collection);
        t0 t0Var = new t0(0, this.f35866a, null, null, abstractC9148qo0);
        this.f35873f = t0Var;
        if (!f35870h && !this.f35868c.isEmpty()) {
            throw new AssertionError();
        }
        this.f35868c.add(t0Var);
        a(t0Var);
        this.f35872e = t0.a(collection, this.f35866a.v(), this.f35866a.f().a().g());
    }

    public final void a(final Set set) {
        C11349o2 f10 = this.f35866a.f().f();
        if (!C11349o2.f57580g && f10.f57582b.isEmpty() && !f10.f57584d.isEmpty()) {
            throw new AssertionError();
        }
        if (f10.f57582b.isEmpty() && f10.f57581a.isEmpty()) {
            return;
        }
        final t0 t0Var = (t0) this.f35868c.get(0);
        f10.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.j0.this.a(t0Var, set, (M2) obj);
            }
        });
        C5094Ef0 c5094Ef0 = this.f35874g.f50691j;
        if (t0Var.a(65536)) {
            n0 n0Var = t0Var.f35957c;
            long size = n0Var.f35899b.f35940f.size() + n0Var.f35903f.size();
            n0 n0Var2 = t0Var.f35957c;
            c5094Ef0.a(null, new DexFileOverflowDiagnostic(true, size, n0Var2.f35899b.f35941g.size() + n0Var2.f35902e.size()));
            throw c5094Ef0.f39969c;
        }
    }

    public final Map b() {
        if (!f35870h && this.f35866a.f().h() != this.f35866a.m()) {
            throw new AssertionError();
        }
        if (!this.f35866a.f().h()) {
            return C6620bf0.f46817i;
        }
        C4798y L10 = this.f35866a.L();
        C6300Zd c6300Zd = ((C4514j) L10.f()).f37255b;
        if (c6300Zd.f46303a.isEmpty()) {
            return C6620bf0.f46817i;
        }
        IdentityHashMap a10 = c6300Zd.a(this.f35871d, L10.f38408a.g());
        if (a10.size() > 0) {
            Iterator it = a10.values().iterator();
            while (it.hasNext()) {
                this.f35871d.removeAll((Set) it.next());
            }
        }
        return a10;
    }

    public final void a(t0 t0Var, Set set, M2 m22) {
        H2 a10 = H2.a(this.f35866a.f().g(m22));
        if (a10 != null) {
            t0Var.a(a10);
            set.remove(a10);
        }
        t0Var.f35957c.a();
    }

    public final void a(Map map, AbstractC9148qo0 abstractC9148qo0) {
        if (map.isEmpty()) {
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            IH ih2 = new IH();
            t0 t0Var = new t0(ih2.b(), this.f35866a, null, (FeatureSplit) entry.getKey(), AbstractC9148qo0.b());
            this.f35868c.add(t0Var);
            a(t0Var);
            ArrayList arrayList = this.f35868c;
            int i10 = AbstractC7552hC.f48487c;
            q0 q0Var = new q0(arrayList, new C5920Sm0(t0Var), this.f35866a, (Collection) entry.getValue(), this.f35872e, abstractC9148qo0, ih2);
            q0Var.a();
            q0Var.a(q0Var.f35919a.f35917b);
        }
    }
}
