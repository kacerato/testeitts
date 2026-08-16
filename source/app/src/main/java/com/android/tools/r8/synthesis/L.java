package com.android.tools.r8.synthesis;

import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4648q0;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.synthesis.S;
import java.util.function.Consumer;

public final class L {

    public static final L f58101c = new L(null, null);

    public static final boolean f58102d = true;

    public final S.b f58103a;

    public final C11579l f58104b;

    public L(S.b bVar, C11579l c11579l) {
        this.f58103a = bVar;
        this.f58104b = c11579l;
    }

    public static L a(H2 h22, C4798y c4798y) {
        FeatureSplit featureSplit;
        com.android.tools.r8.graph.Q q10 = h22.f36246f;
        if (q10.o() && !q10.I()) {
            final C4648q0 a10 = C4666r0.a(h22.k0(), c4798y.b(), c4798y.f38408a.g(), c4798y.f38404S);
            if (a10 == null) {
                return f58101c;
            }
            if (!f58102d && h22.k0().size() != 1) {
                throw new AssertionError();
            }
            S.b bVar = a10.f37644a;
            if (bVar.g()) {
                if (!h22.f36248h.isEmpty()) {
                    return f58101c;
                }
                for (C4516j1 c4516j1 : h22.z1()) {
                    if (!c4516j1.w0() || !c4516j1.m1() || !c4516j1.H0() || !c4516j1.k0().isEmpty() || !c4516j1.U0().isEmpty()) {
                        return f58101c;
                    }
                }
            }
            h22.f37066b = C4723u0.l0();
            h22.g(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    L.a(C4648q0.this, (C4516j1) obj);
                }
            });
            M2 m22 = h22.f36245e;
            C4724u1 b10 = c4798y.b();
            if (!bVar.d()) {
                m22 = b10.d(C4932Bl.k(S.a(bVar, m22)));
            }
            if (c4798y.f().h()) {
                C4798y L10 = c4798y.L();
                C6300Zd c6300Zd = ((C4514j) L10.f()).f37255b;
                c6300Zd.getClass();
                featureSplit = c6300Zd.a(h22.getReference(), L10.f38408a.g());
            } else {
                featureSplit = FeatureSplit.BASE;
            }
            return new L(bVar, new C11579l(m22, h22.f36245e, h22.f36244d, featureSplit));
        }
        return f58101c;
    }

    public static L b(H2 h22, C4798y c4798y) {
        FeatureSplit featureSplit;
        if (!h22.J1()) {
            L a10 = a(h22, c4798y);
            if (f58102d || a10 != f58101c || C4666r0.a(h22.k0(), c4798y.b(), c4798y.f38408a.g(), c4798y.f38404S) == null) {
                return a10;
            }
            throw new AssertionError();
        }
        L l10 = h22.f36365A;
        h22.f36365A = null;
        if (l10 == null) {
            return f58101c;
        }
        if (!f58102d && l10.f58104b != null) {
            throw new AssertionError();
        }
        M2 m22 = h22.f36245e;
        S.b bVar = l10.f58103a;
        C4724u1 b10 = c4798y.b();
        if (!bVar.d()) {
            m22 = b10.d(C4932Bl.k(S.a(bVar, m22)));
        }
        if (c4798y.f().h()) {
            C4798y L10 = c4798y.L();
            C6300Zd c6300Zd = ((C4514j) L10.f()).f37255b;
            c6300Zd.getClass();
            featureSplit = c6300Zd.a(h22.getReference(), L10.f38408a.g());
        } else {
            featureSplit = FeatureSplit.BASE;
        }
        return new L(l10.f58103a, new C11579l(m22, h22.f36245e, h22.f36244d, featureSplit));
    }

    public static void a(C4648q0 c4648q0, C4516j1 c4516j1) {
        c4516j1.f(c4648q0.f37645b);
    }
}
