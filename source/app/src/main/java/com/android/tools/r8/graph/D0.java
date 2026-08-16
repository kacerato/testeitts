package com.android.tools.r8.graph;

import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5829Qz;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.internal.YS;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import org.eclipse.jdt.internal.core.JavaElement;

public final class D0 extends AbstractC4406d4 implements InterfaceC5580Mq0<D0>, YS {

    public static final boolean f36211l = true;

    public final L2 f36212e;

    public final I2 f36213f;

    public final C2 f36214g;

    public final List f36215h;

    public A2 f36217j;

    public C4441f1 f36216i = null;

    public int f36218k = -1;

    public D0(L2 l22, I2 i22, C2 c22, List list) {
        boolean z10 = f36211l;
        if (!z10 && l22 == null) {
            throw new AssertionError();
        }
        if (!z10 && i22 == null) {
            throw new AssertionError();
        }
        if (!z10 && c22 == null) {
            throw new AssertionError();
        }
        if (!z10 && list == null) {
            throw new AssertionError();
        }
        this.f36212e = l22;
        this.f36213f = i22;
        this.f36214g = c22;
        this.f36215h = list;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.j(new Function() {
            @Override
            public final Object apply(Object obj) {
                A2 a22;
                a22 = ((D0) obj).f36217j;
                return a22;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((D0) obj).f36218k;
                return i10;
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                L2 l22;
                l22 = ((D0) obj).f36212e;
                return l22;
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                I2 i22;
                i22 = ((D0) obj).f36213f;
                return i22;
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                C2 c22;
                c22 = ((D0) obj).f36214g;
                return c22;
            }
        }).h(new Function() {
            @Override
            public final Object apply(Object obj) {
                Collection collection;
                collection = ((D0) obj).f36215h;
                return collection;
            }
        });
    }

    @Override
    public final D0 E() {
        return this;
    }

    @Override
    public final int R() {
        return 7;
    }

    @Override
    public final boolean c(Object obj) {
        return false;
    }

    @Override
    public final String i0() {
        return toString();
    }

    @Override
    public final int k0() {
        return System.identityHashCode(this);
    }

    public C2 l0() {
        return this.f36214g;
    }

    @Override
    public final InterfaceC5638Nq0<D0> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                D0.a(abstractC5754Pq0);
            }
        };
    }

    public final C4441f1 m0() {
        if (this.f36216i == null) {
            int i10 = 3;
            R2[] r2Arr = new R2[this.f36215h.size() + 3];
            r2Arr[0] = new X2(this.f36214g);
            r2Arr[1] = new R2.k(this.f36212e);
            r2Arr[2] = new Y2(this.f36213f);
            Iterator it = this.f36215h.iterator();
            while (it.hasNext()) {
                r2Arr[i10] = (R2) it.next();
                i10++;
            }
            this.f36216i = new C4441f1(r2Arr);
        }
        return this.f36216i;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("CallSite: { Name: ");
        sb2.append(this.f36212e.j0());
        sb2.append(", Proto: ");
        sb2.append(this.f36213f.j0());
        sb2.append(", ");
        sb2.append(this.f36214g.j0());
        String str = ", Args: ";
        for (AbstractC4592n1 abstractC4592n1 : this.f36215h) {
            sb2.append(str);
            sb2.append(abstractC4592n1.j0());
            str = ", ";
        }
        sb2.append(JavaElement.JEM_ANNOTATION);
        return sb2.toString();
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        a(abstractC9213rA);
    }

    public static D0 a(C4482h4 c4482h4, M2 m22, String str, String str2, C5829Qz c5829Qz, Object[] objArr, Supplier supplier) {
        int i10 = c5829Qz.f43768a;
        if (i10 != 6 && i10 != 8) {
            throw new C5325If("Bootstrap handle invalid: tag == " + c5829Qz.f43768a);
        }
        C2 a10 = C2.a(c5829Qz, c4482h4, m22);
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            arrayList.add(R2.a(obj, c4482h4, m22, supplier));
        }
        C4724u1 c4724u1 = c4482h4.f37267a.f50660a;
        L2 d10 = c4482h4.d(str);
        I2 c10 = c4482h4.c(str2);
        c4724u1.getClass();
        return new D0(d10, c10, a10, arrayList);
    }

    public final void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
        if (m10.a(this)) {
            L2 l22 = this.f36212e;
            l22.getClass();
            m10.a(l22);
            I2 i22 = this.f36213f;
            i22.getClass();
            if (m10.a(i22)) {
                i22.f36440e.a(c4798y, m10);
                i22.f36441f.a(c4798y, m10);
            }
            this.f36214g.a(c4798y, m10);
            Iterator it = this.f36215h.iterator();
            while (it.hasNext()) {
                ((R2) it.next()).a(c4798y, m10);
            }
        }
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
        C4441f1 m02 = m0();
        m02.getClass();
        x10.a(m02);
    }

    @Override
    public final int a(YS ys, AbstractC8953pf abstractC8953pf) {
        return a((D0) ys, abstractC8953pf);
    }

    @Override
    public final int a(C4766w5 c4766w5) {
        return C4766w5.a(this, c4766w5.f38344k);
    }
}
