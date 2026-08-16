package com.android.tools.r8.graph;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.internal.PH;
import com.android.tools.r8.internal.SG;
import java.util.function.Function;

public class C4515j0 implements InterfaceC5580Mq0<C4515j0> {

    public static final int f37306e = 0;

    public final L2 f37307b;

    public final M2 f37308c;

    public final L2 f37309d;

    public C4515j0(L2 l22, M2 m22, L2 l23) {
        this.f37307b = l22;
        this.f37308c = m22;
        this.f37309d = l23;
    }

    @Override
    public final C4515j0 E() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4515j0)) {
            return false;
        }
        C4515j0 c4515j0 = (C4515j0) obj;
        return this.f37307b == c4515j0.f37307b && this.f37308c == c4515j0.f37308c && this.f37309d == c4515j0.f37309d;
    }

    public final int hashCode() {
        int hashCode = (this.f37308c.hashCode() * 13) + (this.f37307b.hashCode() * 7);
        L2 l22 = this.f37309d;
        return l22 != null ? (l22.hashCode() * 31) + hashCode : hashCode;
    }

    @Override
    public final InterfaceC5638Nq0<C4515j0> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C4515j0.a(abstractC5754Pq0);
            }
        };
    }

    public final String toString() {
        return a(2);
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                L2 l22;
                l22 = ((C4515j0) obj).f37307b;
                return l22;
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                M2 m22;
                m22 = ((C4515j0) obj).f37308c;
                return m22;
            }
        }).j(new Function() {
            @Override
            public final Object apply(Object obj) {
                L2 l22;
                l22 = ((C4515j0) obj).f37309d;
                return l22;
            }
        });
    }

    public static boolean a(SG sg2, SG sg3) {
        if (sg2 == null) {
            return sg3 == null;
        }
        if (sg3 == null || sg2.o().size() != sg3.o().size()) {
            return false;
        }
        PH it = sg2.o().iterator();
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            if (!((C4515j0) sg2.get(intValue)).equals(sg3.get(intValue))) {
                return false;
            }
        }
        return true;
    }

    public final String a(int i10) {
        Object b10;
        int b11 = AbstractC4291c.b(i10);
        if (b11 == 0) {
            return "";
        }
        if (b11 == 1) {
            return this.f37307b.toString();
        }
        if (b11 == 2) {
            L2 l22 = this.f37307b;
            L2 l23 = this.f37309d;
            if (l23 == null) {
                b10 = this.f37308c;
            } else {
                b10 = C4932Bl.b(l23.toString());
            }
            return ((Object) l22) + b3.s.f32937c + b10;
        }
        throw new C5417Jv0();
    }
}
