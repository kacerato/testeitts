package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.OL;
import com.android.tools.r8.internal.WB;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class N implements InterfaceC11195f0 {

    public static final C6190Xe0 f55121e;

    public static final boolean f55122f = true;

    public final String f55123a;

    public final C10853s0 f55124b;

    public final AbstractC7552hC f55125c;

    public final String f55126d;

    static {
        int i10 = AbstractC7552hC.f48487c;
        f55121e = C6190Xe0.f45779e;
    }

    public N(String str, C10853s0 c10853s0, AbstractC7552hC abstractC7552hC) {
        this.f55123a = str;
        this.f55124b = c10853s0;
        this.f55125c = abstractC7552hC;
        this.f55126d = null;
    }

    public static N a(OL ol2, C4724u1 c4724u1) {
        if (ol2 == null) {
            return null;
        }
        String a10 = ol2.a();
        String str = ol2.f42858b;
        if (!AbstractC10752b0.a(str)) {
            return new N(ol2.a(), str);
        }
        String t10 = C4932Bl.t(str);
        C10853s0 a11 = C10853s0.a(t10, c4724u1, t10, false);
        String[] e10 = C4932Bl.e(str);
        if (e10.length == 0) {
            return new N(a10, a11, f55121e);
        }
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        int length = e10.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            String str2 = e10[i11];
            C10853s0 a12 = C10853s0.a(str2, c4724u1, str2, false);
            int i13 = i12 + 1;
            if (objArr.length < i13) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i13));
            }
            objArr[i12] = a12;
            i11++;
            i12 = i13;
        }
        return new N(a10, a11, AbstractC7552hC.b(i12, objArr));
    }

    public final String toString() {
        String str = this.f55126d;
        if (str != null) {
            return this.f55123a + "(" + str + ")";
        }
        if (!f55122f && this.f55124b == null) {
            throw new AssertionError();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f55123a);
        sb2.append("(");
        Iterator it = this.f55125c.iterator();
        while (it.hasNext()) {
            sb2.append(((C10853s0) it.next()).toString());
        }
        sb2.append(")");
        sb2.append(this.f55124b.toString());
        return sb2.toString();
    }

    public N(String str, String str2) {
        this.f55123a = str;
        this.f55126d = str2;
        this.f55125c = f55121e;
        this.f55124b = null;
    }

    public final boolean a(Consumer consumer, C4798y c4798y) {
        return a(consumer, null, c4798y);
    }

    public final boolean a(Consumer consumer, C4516j1 c4516j1, C4798y c4798y) {
        String str = this.f55126d;
        boolean z10 = false;
        if (str != null) {
            consumer.accept(new OL(this.f55123a, str));
            return false;
        }
        if (!f55122f && this.f55124b == null) {
            throw new AssertionError();
        }
        String str2 = this.f55123a;
        if (c4516j1 != null) {
            String l22 = c4516j1.getReference().f38298g.toString();
            String l23 = c4798y.s().a(c4516j1.getReference()).toString();
            if (!l22.equals(l23)) {
                z10 = true;
                str2 = l23;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(");
        String V02 = c4798y.b().f38068i2.V0();
        Iterator it = this.f55125c.iterator();
        while (it.hasNext()) {
            z10 |= ((C10853s0) it.next()).b(new C10789h1(sb2), c4798y, V02);
        }
        sb2.append(")");
        boolean b10 = this.f55124b.b(new C10789h1(sb2), c4798y, V02) | z10;
        consumer.accept(new OL(str2, sb2.toString()));
        return b10;
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        if (this.f55126d != null) {
            return;
        }
        if (!f55122f && this.f55124b == null) {
            throw new AssertionError();
        }
        this.f55124b.a(interfaceC4403d1);
        C5480Ky.a((Iterable) this.f55125c, new Function() {
            @Override
            public final Object apply(Object obj) {
                return N.a((C10853s0) obj);
            }
        }, (Object) interfaceC4403d1);
    }

    public static Consumer a(C10853s0 c10853s0) {
        Objects.requireNonNull(c10853s0);
        return new C10795i1(c10853s0);
    }
}
