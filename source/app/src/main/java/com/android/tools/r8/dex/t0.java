package com.android.tools.r8.dex;

import com.android.tools.r8.AbstractC4281a;
import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.I2;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC7379gA;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C8798oj;
import com.android.tools.r8.internal.RR;
import com.android.tools.r8.naming.C10912b;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import u.H1;

public class t0 {

    public static final boolean f35954k = true;

    public final int f35955a;

    public final s0 f35956b;

    public final n0 f35957c;

    public final FeatureSplit f35958d;

    public final AbstractC9148qo0 f35959e;

    public final L2 f35960f;

    public C8798oj f35961g;

    public AbstractC7379gA f35963i;

    public boolean f35962h = false;

    public C4766w5 f35964j = null;

    public t0(int i10, C4798y c4798y, H2 h22, FeatureSplit featureSplit, AbstractC9148qo0 abstractC9148qo0) {
        this.f35955a = i10;
        s0 s0Var = new s0(c4798y);
        this.f35956b = s0Var;
        this.f35957c = new n0(s0Var, c4798y);
        this.f35958d = featureSplit;
        this.f35959e = abstractC9148qo0;
        if (h22 == null) {
            this.f35960f = null;
            return;
        }
        M2 type = h22.getType();
        this.f35960f = c4798y.s().b(type);
        AbstractC7552hC b10 = c4798y.f38408a.g().b(type);
        if (b10.size() == 1) {
            c4798y.s().b((M2) b10.iterator().next());
        } else if (!f35954k && !b10.isEmpty()) {
            throw new AssertionError();
        }
    }

    public static String a(List<String> list) {
        Iterator<String> it = list.iterator();
        String next = it.next();
        if (C10656zq0.f(next).endsWith(".dex")) {
            String a10 = AbstractC4281a.a(next, 4, 0);
            int i10 = 2;
            while (it.hasNext()) {
                String next2 = it.next();
                if (C10656zq0.f(next2).endsWith(".dex")) {
                    if (next2.startsWith(a10)) {
                        int i11 = i10 + 1;
                        if (Integer.parseInt(next2.substring(a10.length(), next2.length() - 4)) != i10) {
                            throw new RuntimeException("DEX files are not numbered consecutively.");
                        }
                        i10 = i11;
                    } else {
                        throw new RuntimeException("Input filenames lack common prefix.");
                    }
                } else {
                    throw new RuntimeException("Illegal suffix for dex file: `" + next + "`.");
                }
            }
            return a10;
        }
        throw new RuntimeException("Illegal suffix for dex file: `" + next + "`.");
    }

    public int b() {
        return this.f35955a;
    }

    public final C4766w5 c() {
        if (f35954k || this.f35964j != null) {
            return this.f35964j;
        }
        throw new AssertionError();
    }

    public final boolean d() {
        return this.f35956b.f35937c.isEmpty();
    }

    public final void e() {
        this.f35962h = true;
    }

    public static IdentityHashMap a(Collection collection, final AbstractC5308Hz abstractC5308Hz, final C10912b c10912b) {
        final IdentityHashMap identityHashMap = new IdentityHashMap(collection.size());
        collection.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                identityHashMap.put(r4, C4932Bl.a(AbstractC5308Hz.this.a(((H2) obj).getType()).V0(), c10912b));
            }
        });
        return identityHashMap;
    }

    public final void a(C4798y c4798y, int i10, C8659ns0 c8659ns0, C4766w5 c4766w5) {
        boolean z10 = f35954k;
        if (!z10 && !this.f35957c.b()) {
            throw new AssertionError();
        }
        if (!z10 && this.f35964j != null) {
            throw new AssertionError();
        }
        RR rr = this.f35957c.f35900c;
        s0 s0Var = this.f35956b;
        this.f35964j = new C4766w5(c4798y, c4766w5, rr, s0Var.f35937c, s0Var.f35938d, s0Var.f35939e, s0Var.f35940f, s0Var.f35941g, s0Var.f35942h, s0Var.f35943i, s0Var.f35944j, i10, this.f35959e, this, c8659ns0);
    }

    public final void a(H2 h22) {
        n0 n0Var = this.f35957c;
        h22.a(n0Var.f35898a, n0Var, n0Var.f35900c);
        n0Var.f35910m = null;
        n0Var.f35909l.getClass();
        n0Var.f35909l.getClass();
    }

    public final boolean a(int i10) {
        n0 n0Var = this.f35957c;
        if (n0Var.f35899b.f35940f.size() + n0Var.f35903f.size() > i10) {
            return true;
        }
        n0 n0Var2 = this.f35957c;
        if (n0Var2.f35899b.f35941g.size() + n0Var2.f35902e.size() > i10) {
            return true;
        }
        n0 n0Var3 = this.f35957c;
        return n0Var3.f35899b.f35939e.size() + n0Var3.f35904g.size() > i10;
    }

    public final void a() {
        n0 n0Var = this.f35957c;
        n0Var.f35901d.clear();
        n0Var.f35902e.clear();
        n0Var.f35903f.clear();
        n0Var.f35905h.clear();
        n0Var.f35904g.clear();
        n0Var.f35906i.clear();
        n0Var.f35907j.clear();
        n0Var.f35908k.clear();
        n0Var.f35909l.getClass();
    }

    public static boolean a(I2 i22, AbstractMap abstractMap, HashMap hashMap, Consumer consumer, C4724u1 c4724u1) {
        if (abstractMap.containsKey(i22)) {
            return false;
        }
        String l02 = i22.l0();
        Objects.requireNonNull(c4724u1);
        L2 l22 = (L2) hashMap.computeIfAbsent(l02, new H1(c4724u1));
        consumer.accept(l22);
        abstractMap.put(i22, l22);
        return true;
    }
}
