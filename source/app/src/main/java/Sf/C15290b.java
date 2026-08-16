package sf;

import Lf.j;
import Mf.l;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import kotlin.jvm.internal.M;
import nf.B0;
import nf.C0;
import nf.F0;
import nf.G0;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import nf.InterfaceC14443y;
import nf.L0;
import nf.M0;
import nf.S0;
import nf.Y;
import nf.x0;
import nf.y0;
import org.jetbrains.annotations.NotNull;
import pf.AbstractC14967d;
import pf.C14960A;

public class C15290b {

    public static final class a extends AbstractC14967d<B0> implements RandomAccess {

        public final int[] f109450d;

        public a(int[] iArr) {
            this.f109450d = iArr;
        }

        @Override
        public int b() {
            return C0.v(this.f109450d);
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof B0) {
                return j(((B0) obj).q0());
            }
            return false;
        }

        @Override
        public Object get(int i10) {
            return B0.e(k(i10));
        }

        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof B0) {
                return l(((B0) obj).q0());
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            return C0.z(this.f109450d);
        }

        public boolean j(int i10) {
            return C0.o(this.f109450d, i10);
        }

        public int k(int i10) {
            return C0.t(this.f109450d, i10);
        }

        public int l(int i10) {
            return C14960A.Yf(this.f109450d, i10);
        }

        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof B0) {
                return m(((B0) obj).q0());
            }
            return -1;
        }

        public int m(int i10) {
            return C14960A.ci(this.f109450d, i10);
        }
    }

    public static final class C2006b extends AbstractC14967d<F0> implements RandomAccess {

        public final long[] f109451d;

        public C2006b(long[] jArr) {
            this.f109451d = jArr;
        }

        @Override
        public int b() {
            return G0.t(this.f109451d);
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof F0) {
                return d(((F0) obj).l0());
            }
            return false;
        }

        public boolean d(long j10) {
            return G0.m(this.f109451d, j10);
        }

        @Override
        public Object get(int i10) {
            return F0.b(j(i10));
        }

        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof F0) {
                return k(((F0) obj).l0());
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            return G0.w(this.f109451d);
        }

        public long j(int i10) {
            return G0.r(this.f109451d, i10);
        }

        public int k(long j10) {
            return C14960A.Zf(this.f109451d, j10);
        }

        public int l(long j10) {
            return C14960A.di(this.f109451d, j10);
        }

        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof F0) {
                return l(((F0) obj).l0());
            }
            return -1;
        }
    }

    public static final class c extends AbstractC14967d<x0> implements RandomAccess {

        public final byte[] f109452d;

        public c(byte[] bArr) {
            this.f109452d = bArr;
        }

        @Override
        public int b() {
            return y0.t(this.f109452d);
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof x0) {
                return d(((x0) obj).j0());
            }
            return false;
        }

        public boolean d(byte b10) {
            return y0.m(this.f109452d, b10);
        }

        @Override
        public Object get(int i10) {
            return x0.b(j(i10));
        }

        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof x0) {
                return k(((x0) obj).j0());
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            return y0.w(this.f109452d);
        }

        public byte j(int i10) {
            return y0.r(this.f109452d, i10);
        }

        public int k(byte b10) {
            return C14960A.Uf(this.f109452d, b10);
        }

        public int l(byte b10) {
            return C14960A.Yh(this.f109452d, b10);
        }

        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof x0) {
                return l(((x0) obj).j0());
            }
            return -1;
        }
    }

    public static final class d extends AbstractC14967d<L0> implements RandomAccess {

        public final short[] f109453d;

        public d(short[] sArr) {
            this.f109453d = sArr;
        }

        @Override
        public int b() {
            return M0.t(this.f109453d);
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof L0) {
                return d(((L0) obj).j0());
            }
            return false;
        }

        public boolean d(short s10) {
            return M0.m(this.f109453d, s10);
        }

        @Override
        public Object get(int i10) {
            return L0.b(j(i10));
        }

        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof L0) {
                return k(((L0) obj).j0());
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            return M0.w(this.f109453d);
        }

        public short j(int i10) {
            return M0.r(this.f109453d, i10);
        }

        public int k(short s10) {
            return C14960A.bg(this.f109453d, s10);
        }

        public int l(short s10) {
            return C14960A.fi(this.f109453d, s10);
        }

        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof L0) {
                return l(((L0) obj).j0());
            }
            return -1;
        }
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use maxWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @InterfaceC14422l0(version = "1.3")
    public static final L0 A(short[] sArr, Comparator comparator) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$maxWith$0");
        M.p(comparator, "comparator");
        return g.I6(sArr, comparator);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use maxWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @InterfaceC14422l0(version = "1.3")
    public static final F0 B(long[] jArr, Comparator comparator) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$maxWith$0");
        M.p(comparator, "comparator");
        return g.J6(jArr, comparator);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @InterfaceC14422l0(version = "1.3")
    public static final B0 C(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$min$0");
        return g.C7(iArr);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @InterfaceC14422l0(version = "1.3")
    public static final x0 D(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$min$0");
        return g.D7(bArr);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @InterfaceC14422l0(version = "1.3")
    public static final F0 E(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$min$0");
        return g.E7(jArr);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @InterfaceC14422l0(version = "1.3")
    public static final L0 F(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$min$0");
        return g.F7(sArr);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use minByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <R extends Comparable<? super R>> x0 G(byte[] bArr, l<? super x0, ? extends R> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$minBy$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            return null;
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        if (Ie2 != 0) {
            R invoke = selector.invoke(x0.b(r10));
            int i10 = 1;
            if (1 <= Ie2) {
                while (true) {
                    byte r11 = y0.r(bArr, i10);
                    R invoke2 = selector.invoke(x0.b(r11));
                    if (invoke.compareTo(invoke2) > 0) {
                        r10 = r11;
                        invoke = invoke2;
                    }
                    if (i10 == Ie2) {
                        break;
                    }
                    i10++;
                }
            }
        }
        return x0.b(r10);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use minByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <R extends Comparable<? super R>> F0 H(long[] jArr, l<? super F0, ? extends R> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$minBy$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            return null;
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        if (Ne2 != 0) {
            R invoke = selector.invoke(F0.b(r10));
            int i10 = 1;
            if (1 <= Ne2) {
                while (true) {
                    long r11 = G0.r(jArr, i10);
                    R invoke2 = selector.invoke(F0.b(r11));
                    if (invoke.compareTo(invoke2) > 0) {
                        r10 = r11;
                        invoke = invoke2;
                    }
                    if (i10 == Ne2) {
                        break;
                    }
                    i10++;
                }
            }
        }
        return F0.b(r10);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use minByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <R extends Comparable<? super R>> B0 I(int[] iArr, l<? super B0, ? extends R> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$minBy$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            return null;
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        if (Me2 != 0) {
            R invoke = selector.invoke(B0.e(t10));
            int i10 = 1;
            if (1 <= Me2) {
                while (true) {
                    int t11 = C0.t(iArr, i10);
                    R invoke2 = selector.invoke(B0.e(t11));
                    if (invoke.compareTo(invoke2) > 0) {
                        t10 = t11;
                        invoke = invoke2;
                    }
                    if (i10 == Me2) {
                        break;
                    }
                    i10++;
                }
            }
        }
        return B0.e(t10);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use minByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <R extends Comparable<? super R>> L0 J(short[] sArr, l<? super L0, ? extends R> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$minBy$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            return null;
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        if (Pe2 != 0) {
            R invoke = selector.invoke(L0.b(r10));
            int i10 = 1;
            if (1 <= Pe2) {
                while (true) {
                    short r11 = M0.r(sArr, i10);
                    R invoke2 = selector.invoke(L0.b(r11));
                    if (invoke.compareTo(invoke2) > 0) {
                        r10 = r11;
                        invoke = invoke2;
                    }
                    if (i10 == Pe2) {
                        break;
                    }
                    i10++;
                }
            }
        }
        return L0.b(r10);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use minWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @InterfaceC14422l0(version = "1.3")
    public static final x0 K(byte[] bArr, Comparator comparator) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$minWith$0");
        M.p(comparator, "comparator");
        return g.K7(bArr, comparator);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use minWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @InterfaceC14422l0(version = "1.3")
    public static final B0 L(int[] iArr, Comparator comparator) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$minWith$0");
        M.p(comparator, "comparator");
        return g.L7(iArr, comparator);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use minWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @InterfaceC14422l0(version = "1.3")
    public static final L0 M(short[] sArr, Comparator comparator) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$minWith$0");
        M.p(comparator, "comparator");
        return g.M7(sArr, comparator);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use minWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @InterfaceC14422l0(version = "1.3")
    public static final F0 N(long[] jArr, Comparator comparator) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$minWith$0");
        M.p(comparator, "comparator");
        return g.N7(jArr, comparator);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfBigDecimal")
    @InterfaceC14422l0(version = "1.4")
    public static final BigDecimal O(byte[] bArr, l<? super x0, ? extends BigDecimal> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sumOf$0");
        M.p(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        M.o(valueOf, "valueOf(...)");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            valueOf = valueOf.add(selector.invoke(x0.b(y0.r(bArr, i10))));
            M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfBigDecimal")
    @InterfaceC14422l0(version = "1.4")
    public static final BigDecimal P(int[] iArr, l<? super B0, ? extends BigDecimal> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sumOf$0");
        M.p(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        M.o(valueOf, "valueOf(...)");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            valueOf = valueOf.add(selector.invoke(B0.e(C0.t(iArr, i10))));
            M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfBigDecimal")
    @InterfaceC14422l0(version = "1.4")
    public static final BigDecimal Q(long[] jArr, l<? super F0, ? extends BigDecimal> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sumOf$0");
        M.p(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        M.o(valueOf, "valueOf(...)");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            valueOf = valueOf.add(selector.invoke(F0.b(G0.r(jArr, i10))));
            M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfBigDecimal")
    @InterfaceC14422l0(version = "1.4")
    public static final BigDecimal R(short[] sArr, l<? super L0, ? extends BigDecimal> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sumOf$0");
        M.p(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        M.o(valueOf, "valueOf(...)");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            valueOf = valueOf.add(selector.invoke(L0.b(M0.r(sArr, i10))));
            M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfBigInteger")
    @InterfaceC14422l0(version = "1.4")
    public static final BigInteger S(byte[] bArr, l<? super x0, ? extends BigInteger> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sumOf$0");
        M.p(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        M.o(valueOf, "valueOf(...)");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            valueOf = valueOf.add(selector.invoke(x0.b(y0.r(bArr, i10))));
            M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfBigInteger")
    @InterfaceC14422l0(version = "1.4")
    public static final BigInteger T(int[] iArr, l<? super B0, ? extends BigInteger> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sumOf$0");
        M.p(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        M.o(valueOf, "valueOf(...)");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            valueOf = valueOf.add(selector.invoke(B0.e(C0.t(iArr, i10))));
            M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfBigInteger")
    @InterfaceC14422l0(version = "1.4")
    public static final BigInteger U(long[] jArr, l<? super F0, ? extends BigInteger> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sumOf$0");
        M.p(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        M.o(valueOf, "valueOf(...)");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            valueOf = valueOf.add(selector.invoke(F0.b(G0.r(jArr, i10))));
            M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfBigInteger")
    @InterfaceC14422l0(version = "1.4")
    public static final BigInteger V(short[] sArr, l<? super L0, ? extends BigInteger> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sumOf$0");
        M.p(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        M.o(valueOf, "valueOf(...)");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            valueOf = valueOf.add(selector.invoke(L0.b(M0.r(sArr, i10))));
            M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<B0> a(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$asList$0");
        return new a(iArr);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<x0> b(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$asList$0");
        return new c(bArr);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<F0> c(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$asList$0");
        return new C2006b(jArr);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<L0> d(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$asList$0");
        return new d(sArr);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int e(@NotNull int[] iArr, int i10, int i11, int i12) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$binarySearch$0");
        AbstractC14967d.f103841b.d(i11, i12, C0.v(iArr));
        int i13 = i12 - 1;
        while (i11 <= i13) {
            int i14 = (i11 + i13) >>> 1;
            int e10 = S0.e(iArr[i14], i10);
            if (e10 < 0) {
                i11 = i14 + 1;
            } else {
                if (e10 <= 0) {
                    return i14;
                }
                i13 = i14 - 1;
            }
        }
        return -(i11 + 1);
    }

    public static int f(int[] iArr, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        if ((i13 & 4) != 0) {
            i12 = C0.v(iArr);
        }
        return e(iArr, i10, i11, i12);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int g(@NotNull short[] sArr, short s10, int i10, int i11) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$binarySearch$0");
        AbstractC14967d.f103841b.d(i10, i11, M0.t(sArr));
        int i12 = s10 & 65535;
        int i13 = i11 - 1;
        while (i10 <= i13) {
            int i14 = (i10 + i13) >>> 1;
            int e10 = S0.e(sArr[i14], i12);
            if (e10 < 0) {
                i10 = i14 + 1;
            } else {
                if (e10 <= 0) {
                    return i14;
                }
                i13 = i14 - 1;
            }
        }
        return -(i10 + 1);
    }

    public static int h(short[] sArr, short s10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = M0.t(sArr);
        }
        return g(sArr, s10, i10, i11);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int i(@NotNull long[] jArr, long j10, int i10, int i11) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$binarySearch$0");
        AbstractC14967d.f103841b.d(i10, i11, G0.t(jArr));
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            int n10 = S0.n(jArr[i13], j10);
            if (n10 < 0) {
                i10 = i13 + 1;
            } else {
                if (n10 <= 0) {
                    return i13;
                }
                i12 = i13 - 1;
            }
        }
        return -(i10 + 1);
    }

    public static int j(long[] jArr, long j10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = G0.t(jArr);
        }
        return i(jArr, j10, i10, i11);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int k(@NotNull byte[] bArr, byte b10, int i10, int i11) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$binarySearch$0");
        AbstractC14967d.f103841b.d(i10, i11, y0.t(bArr));
        int i12 = b10 & 255;
        int i13 = i11 - 1;
        while (i10 <= i13) {
            int i14 = (i10 + i13) >>> 1;
            int e10 = S0.e(bArr[i14], i12);
            if (e10 < 0) {
                i10 = i14 + 1;
            } else {
                if (e10 <= 0) {
                    return i14;
                }
                i13 = i14 - 1;
            }
        }
        return -(i10 + 1);
    }

    public static int l(byte[] bArr, byte b10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = y0.t(bArr);
        }
        return k(bArr, b10, i10, i11);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte m(byte[] bArr, int i10) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$elementAt$0");
        return y0.r(bArr, i10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short n(short[] sArr, int i10) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$elementAt$0");
        return M0.r(sArr, i10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int o(int[] iArr, int i10) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$elementAt$0");
        return C0.t(iArr, i10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long p(long[] jArr, int i10) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$elementAt$0");
        return G0.r(jArr, i10);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @InterfaceC14422l0(version = "1.3")
    public static final B0 q(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$max$0");
        return g.y6(iArr);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @InterfaceC14422l0(version = "1.3")
    public static final x0 r(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$max$0");
        return g.z6(bArr);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @InterfaceC14422l0(version = "1.3")
    public static final F0 s(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$max$0");
        return g.A6(jArr);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @InterfaceC14422l0(version = "1.3")
    public static final L0 t(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$max$0");
        return g.B6(sArr);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use maxByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <R extends Comparable<? super R>> x0 u(byte[] bArr, l<? super x0, ? extends R> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$maxBy$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            return null;
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        if (Ie2 != 0) {
            R invoke = selector.invoke(x0.b(r10));
            int i10 = 1;
            if (1 <= Ie2) {
                while (true) {
                    byte r11 = y0.r(bArr, i10);
                    R invoke2 = selector.invoke(x0.b(r11));
                    if (invoke.compareTo(invoke2) < 0) {
                        r10 = r11;
                        invoke = invoke2;
                    }
                    if (i10 == Ie2) {
                        break;
                    }
                    i10++;
                }
            }
        }
        return x0.b(r10);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use maxByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <R extends Comparable<? super R>> F0 v(long[] jArr, l<? super F0, ? extends R> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$maxBy$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            return null;
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        if (Ne2 != 0) {
            R invoke = selector.invoke(F0.b(r10));
            int i10 = 1;
            if (1 <= Ne2) {
                while (true) {
                    long r11 = G0.r(jArr, i10);
                    R invoke2 = selector.invoke(F0.b(r11));
                    if (invoke.compareTo(invoke2) < 0) {
                        r10 = r11;
                        invoke = invoke2;
                    }
                    if (i10 == Ne2) {
                        break;
                    }
                    i10++;
                }
            }
        }
        return F0.b(r10);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use maxByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <R extends Comparable<? super R>> B0 w(int[] iArr, l<? super B0, ? extends R> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$maxBy$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            return null;
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        if (Me2 != 0) {
            R invoke = selector.invoke(B0.e(t10));
            int i10 = 1;
            if (1 <= Me2) {
                while (true) {
                    int t11 = C0.t(iArr, i10);
                    R invoke2 = selector.invoke(B0.e(t11));
                    if (invoke.compareTo(invoke2) < 0) {
                        t10 = t11;
                        invoke = invoke2;
                    }
                    if (i10 == Me2) {
                        break;
                    }
                    i10++;
                }
            }
        }
        return B0.e(t10);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use maxByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <R extends Comparable<? super R>> L0 x(short[] sArr, l<? super L0, ? extends R> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$maxBy$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            return null;
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        if (Pe2 != 0) {
            R invoke = selector.invoke(L0.b(r10));
            int i10 = 1;
            if (1 <= Pe2) {
                while (true) {
                    short r11 = M0.r(sArr, i10);
                    R invoke2 = selector.invoke(L0.b(r11));
                    if (invoke.compareTo(invoke2) < 0) {
                        r10 = r11;
                        invoke = invoke2;
                    }
                    if (i10 == Pe2) {
                        break;
                    }
                    i10++;
                }
            }
        }
        return L0.b(r10);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use maxWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @InterfaceC14422l0(version = "1.3")
    public static final x0 y(byte[] bArr, Comparator comparator) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$maxWith$0");
        M.p(comparator, "comparator");
        return g.G6(bArr, comparator);
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use maxWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    @InterfaceC14422l0(version = "1.3")
    public static final B0 z(int[] iArr, Comparator comparator) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$maxWith$0");
        M.p(comparator, "comparator");
        return g.H6(iArr, comparator);
    }
}
