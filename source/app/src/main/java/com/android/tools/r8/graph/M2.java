package com.android.tools.r8.graph;

import com.android.tools.r8.AbstractC4281a;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.AbstractC9694u30;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C8854p10;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.internal.YS;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.references.TypeReference;
import com.android.tools.r8.shaking.C11245i;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.Function;

public class M2 extends J2 implements InterfaceC4596n5 {

    public static final M2[] f36589h = new M2[0];

    public static final AbstractC7552hC f36590i;

    public static final boolean f36591j = true;

    public final L2 f36592f;

    public String f36593g = null;

    static {
        Object[] a10 = AbstractC9694u30.a(9, new Object[]{"$r8$backportedMethods$utility", "$r8$java8methods$utility", "$r8$twr$utility", "$-DC", "$$ServiceLoaderMethods", "com.android.tools.r8.GeneratedOutlineSupport", "-$$Nest$Constructor", "-$$Lambda$", "-$$LambdaGroup$"});
        f36590i = AbstractC7552hC.b(a10.length, a10);
    }

    public M2(L2 l22) {
        if (f36591j || !l22.toString().contains(".")) {
            this.f36592f = l22;
            return;
        }
        throw new AssertionError((Object) ("Malformed descriptor: " + l22.toString()));
    }

    public String A0() {
        return C4932Bl.o(U0());
    }

    public final int B0() {
        if (f36591j || !S0()) {
            return T0() ? 2 : 1;
        }
        throw new AssertionError();
    }

    public final String C0() {
        if (f36591j || I0()) {
            return C4932Bl.u(V0());
        }
        throw new AssertionError();
    }

    public String D0() {
        return j0();
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    public boolean E0() {
        return ((char) this.f36592f.f36562f[0]) == '[';
    }

    public boolean F0() {
        return ((char) this.f36592f.f36562f[0]) == 'Z';
    }

    public final boolean G0() {
        return ((char) this.f36592f.f36562f[0]) == 'B';
    }

    public final boolean H0() {
        return ((char) this.f36592f.f36562f[0]) == 'C';
    }

    public boolean I0() {
        return ((char) this.f36592f.f36562f[0]) == 'L';
    }

    public boolean J0() {
        return ((char) this.f36592f.f36562f[0]) == 'D';
    }

    public final boolean K0() {
        return ((char) this.f36592f.f36562f[0]) == 'F';
    }

    public boolean L0() {
        return ((char) this.f36592f.f36562f[0]) == 'I';
    }

    public boolean M0() {
        return ((char) this.f36592f.f36562f[0]) == 'J';
    }

    public final boolean N0() {
        boolean z10 = ((char) this.f36592f.f36562f[0]) == 'N';
        if (f36591j || !z10 || a(C4724u1.f37808E6)) {
            return z10;
        }
        throw new AssertionError();
    }

    public final boolean O0() {
        if (E0()) {
            return C4932Bl.a((char) this.f36592f.f36562f[1]);
        }
        return false;
    }

    public final boolean P0() {
        return C4932Bl.a((char) this.f36592f.f36562f[0]);
    }

    public boolean Q0() {
        boolean z10 = E0() || I0() || N0();
        if (f36591j || z10 != P0() || S0()) {
            return z10;
        }
        throw new AssertionError();
    }

    @Override
    public final int R() {
        return 2;
    }

    public final boolean R0() {
        return ((char) this.f36592f.f36562f[0]) == 'S';
    }

    @Override
    public final M2 S() {
        return this;
    }

    public boolean S0() {
        return ((char) this.f36592f.f36562f[0]) == 'V';
    }

    public final boolean T0() {
        return J0() || M0();
    }

    public final String U0() {
        String V02 = V0();
        if (f36591j || (V02.length() > 1 && V02.charAt(0) == 'L' && V02.charAt(V02.length() - 1) == ';')) {
            return AbstractC4281a.a(V02, 1, 1);
        }
        throw new AssertionError();
    }

    public String V0() {
        return this.f36592f.toString();
    }

    public final char W0() {
        char c10 = (char) this.f36592f.f36562f[0];
        if (c10 == '[') {
            return 'L';
        }
        return c10;
    }

    public final boolean a(M2 m22) {
        return this == m22;
    }

    public AbstractC8999pu0 b(C4798y<?> c4798y) {
        return AbstractC8999pu0.a(this, C8854p10.h(), c4798y);
    }

    @Override
    public final boolean c(Object obj) {
        if (obj instanceof M2) {
            return this.f36592f.equals(((M2) obj).f36592f);
        }
        return false;
    }

    @Override
    public String i0() {
        return V0();
    }

    @Override
    public String j0() {
        if (this.f36593g == null) {
            if (C4724u1.f37810G6.containsKey(this)) {
                this.f36593g = this.f36592f.toString();
            } else {
                this.f36593g = C4932Bl.b(V0());
            }
        }
        return this.f36593g;
    }

    @Override
    public final int k0() {
        return this.f36592f.hashCode();
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        throw new C5417Jv0();
    }

    @Override
    public final M2 o0() {
        return this;
    }

    public ClassReference s0() {
        return Reference.classFromDescriptor(V0());
    }

    public TypeReference t0() {
        return Reference.typeFromDescriptor(V0());
    }

    public String toString() {
        return j0();
    }

    public final int u0() {
        if (!f36591j && !O0()) {
            throw new AssertionError();
        }
        byte b10 = this.f36592f.f36562f[1];
        if (b10 == 70) {
            return 4;
        }
        if (b10 == 83) {
            return 2;
        }
        if (b10 != 90) {
            if (b10 == 73) {
                return 4;
            }
            if (b10 == 74) {
                return 8;
            }
            switch (b10) {
                case 66:
                    break;
                case 67:
                    return 2;
                case 68:
                    return 8;
                default:
                    throw new C5417Jv0("Not array of primitives '" + ((Object) this.f36592f) + "'");
            }
        }
        return 1;
    }

    public L2 v0() {
        return this.f36592f;
    }

    public String w0() {
        if (f36591j || I0() || E0()) {
            return C4932Bl.a(V0());
        }
        throw new AssertionError();
    }

    public String x0() {
        return P0() ? j0() : a(false);
    }

    public final int y0() {
        int i10 = 0;
        while (this.f36592f.f36562f[i10] == 91) {
            i10++;
        }
        return i10;
    }

    public String z0() {
        return a(true);
    }

    @Override
    public final int a(InterfaceC5580Mq0 interfaceC5580Mq0, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (M2) interfaceC5580Mq0);
    }

    @Override
    public final int b(J2 j22) {
        j22.getClass();
        if (j22 instanceof M2) {
            return compareTo(j22.o0());
        }
        int compareTo = compareTo(j22.S());
        if (compareTo != 0) {
            return compareTo;
        }
        return -1;
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        abstractC9213rA.a(this);
    }

    @Override
    public final int a(YS ys, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (M2) ys);
    }

    public final boolean a(C4798y c4798y, D5 d52) {
        if (d52.a().a1().a(this) || d52.S().a(this)) {
            return false;
        }
        E0 g10 = c4798y.g(this);
        return g10 == null || !c4798y.m() || g10.a(c4798y, d52);
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        abstractC9213rA.a(this);
    }

    public final M2 b(String str, C4724u1 c4724u1) {
        if (!f36591j && !I0()) {
            throw new AssertionError();
        }
        String V02 = V0();
        String str2 = "L";
        if (!str.isEmpty()) {
            str2 = "L" + str + "/";
        }
        return c4724u1.d(str2 + C4932Bl.u(V02) + ";");
    }

    public final boolean a(C4798y c4798y) {
        H2 a10;
        if (!I0() || (a10 = H2.a(c4798y.g(this))) == null) {
            return false;
        }
        if (!a10.isInterface() || c4798y.f38395J.a(a10)) {
            return !((C11245i) c4798y.f()).b(a10);
        }
        return false;
    }

    @Override
    public final Object a(Function function, Function function2, Function function3) {
        return function.apply(this);
    }

    @Override
    public final void a(Consumer consumer, Consumer consumer2, Consumer consumer3) {
        consumer.accept(this);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
        if (m10.a(this)) {
            L2 c10 = c4798y.s().c(this);
            c10.getClass();
            m10.a(c10);
        }
    }

    @Override
    public final int a(C4766w5 c4766w5) {
        return C4766w5.a(this, c4766w5.f38340g);
    }

    public M2 a(C4724u1 c4724u1) {
        int y02 = y0();
        if (y02 == 0) {
            return this;
        }
        L2 l22 = this.f36592f;
        int i10 = l22.f36561e - y02;
        byte[] bArr = l22.f36562f;
        return c4724u1.c(c4724u1.a(i10, Arrays.copyOfRange(bArr, y02, bArr.length)));
    }

    public final M2 a(C4724u1 c4724u1, M2 m22) {
        boolean z10 = f36591j;
        if (!z10 && !E0()) {
            throw new AssertionError();
        }
        if (!z10 && m22.E0()) {
            throw new AssertionError();
        }
        return c4724u1.c(m22.f36592f.a(y0(), c4724u1));
    }

    public final M2 a(String str, C4724u1 c4724u1) {
        if (!f36591j && !I0()) {
            throw new AssertionError();
        }
        return c4724u1.d(AbstractC4281a.a(V0(), 1, 0) + str + ";");
    }

    public final M2 a(int i10, C4724u1 c4724u1) {
        if (!f36591j) {
            int i11 = 0;
            int i12 = 0;
            while (true) {
                byte[] bArr = this.f36592f.f36562f;
                if (i12 >= bArr.length) {
                    break;
                }
                if (bArr[i12] != 91) {
                    i11 = i12;
                    break;
                }
                i12++;
            }
            if (i11 < i10) {
                throw new AssertionError();
            }
        }
        L2 l22 = this.f36592f;
        int i13 = l22.f36561e - i10;
        byte[] bArr2 = l22.f36562f;
        return c4724u1.c(c4724u1.a(i13, Arrays.copyOfRange(bArr2, i10, bArr2.length)));
    }

    public final String a(boolean z10) {
        if (!f36591j && !I0()) {
            throw new AssertionError();
        }
        String V02 = V0();
        int lastIndexOf = V02.lastIndexOf(47);
        if (lastIndexOf == -1) {
            if (z10) {
                return "";
            }
            return AbstractC4281a.a(V02, 1, 1);
        }
        if (z10) {
            return V02.substring(1, lastIndexOf);
        }
        return AbstractC4281a.a(V02, 1, lastIndexOf + 1);
    }
}
