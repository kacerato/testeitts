package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.math.BigInteger;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class W<C extends Comparable> {

    public final boolean f66321b;

    public static final class b extends W<BigInteger> implements Serializable {

        public static final b f66322c = new b();

        public static final BigInteger f66323d = BigInteger.valueOf(Long.MIN_VALUE);

        public static final BigInteger f66324e = BigInteger.valueOf(Long.MAX_VALUE);

        public static final long f66325f = 0;

        public b() {
            super(true);
        }

        @Override
        public long b(BigInteger bigInteger, BigInteger bigInteger2) {
            return bigInteger2.subtract(bigInteger).max(f66323d).min(f66324e).longValue();
        }

        @Override
        public BigInteger g(BigInteger bigInteger) {
            return bigInteger.add(BigInteger.ONE);
        }

        @Override
        public BigInteger h(BigInteger bigInteger, long j10) {
            B.c(j10, "distance");
            return bigInteger.add(BigInteger.valueOf(j10));
        }

        @Override
        public BigInteger i(BigInteger bigInteger) {
            return bigInteger.subtract(BigInteger.ONE);
        }

        public final Object o() {
            return f66322c;
        }

        public String toString() {
            return "DiscreteDomain.bigIntegers()";
        }
    }

    public static final class c extends W<Integer> implements Serializable {

        public static final c f66326c = new c();

        public static final long f66327d = 0;

        public c() {
            super(true);
        }

        private Object q() {
            return f66326c;
        }

        @Override
        public long b(Integer num, Integer num2) {
            return num2.intValue() - num.intValue();
        }

        @Override
        public Integer e() {
            return Integer.MAX_VALUE;
        }

        @Override
        public Integer f() {
            return Integer.MIN_VALUE;
        }

        @Override
        @CheckForNull
        public Integer g(Integer num) {
            int intValue = num.intValue();
            if (intValue == Integer.MAX_VALUE) {
                return null;
            }
            return Integer.valueOf(intValue + 1);
        }

        @Override
        public Integer h(Integer num, long j10) {
            B.c(j10, "distance");
            return Integer.valueOf(com.google.common.primitives.l.d(num.longValue() + j10));
        }

        @Override
        @CheckForNull
        public Integer i(Integer num) {
            int intValue = num.intValue();
            if (intValue == Integer.MIN_VALUE) {
                return null;
            }
            return Integer.valueOf(intValue - 1);
        }

        public String toString() {
            return "DiscreteDomain.integers()";
        }
    }

    public static final class d extends W<Long> implements Serializable {

        public static final d f66328c = new d();

        public static final long f66329d = 0;

        public d() {
            super(true);
        }

        private Object q() {
            return f66328c;
        }

        @Override
        public long b(Long l10, Long l11) {
            long longValue = l11.longValue() - l10.longValue();
            if (l11.longValue() > l10.longValue() && longValue < 0) {
                return Long.MAX_VALUE;
            }
            if (l11.longValue() >= l10.longValue() || longValue <= 0) {
                return longValue;
            }
            return Long.MIN_VALUE;
        }

        @Override
        public Long e() {
            return Long.MAX_VALUE;
        }

        @Override
        public Long f() {
            return Long.MIN_VALUE;
        }

        @Override
        @CheckForNull
        public Long g(Long l10) {
            long longValue = l10.longValue();
            if (longValue == Long.MAX_VALUE) {
                return null;
            }
            return Long.valueOf(longValue + 1);
        }

        @Override
        public Long h(Long l10, long j10) {
            B.c(j10, "distance");
            long longValue = l10.longValue() + j10;
            if (longValue < 0) {
                w2.H.e(l10.longValue() < 0, "overflow");
            }
            return Long.valueOf(longValue);
        }

        @Override
        @CheckForNull
        public Long i(Long l10) {
            long longValue = l10.longValue();
            if (longValue == Long.MIN_VALUE) {
                return null;
            }
            return Long.valueOf(longValue - 1);
        }

        public String toString() {
            return "DiscreteDomain.longs()";
        }
    }

    public static W<BigInteger> a() {
        return b.f66322c;
    }

    public static W<Integer> c() {
        return c.f66326c;
    }

    public static W<Long> d() {
        return d.f66328c;
    }

    public abstract long b(C c10, C c11);

    @I2.a
    public C e() {
        throw new NoSuchElementException();
    }

    @I2.a
    public C f() {
        throw new NoSuchElementException();
    }

    @CheckForNull
    public abstract C g(C c10);

    public C h(C c10, long j10) {
        B.c(j10, "distance");
        C c11 = c10;
        for (long j11 = 0; j11 < j10; j11++) {
            c11 = g(c11);
            if (c11 == null) {
                String valueOf = String.valueOf(c10);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 51);
                sb2.append("overflowed computing offset(");
                sb2.append(valueOf);
                sb2.append(", ");
                sb2.append(j10);
                sb2.append(")");
                throw new IllegalArgumentException(sb2.toString());
            }
        }
        return c11;
    }

    @CheckForNull
    public abstract C i(C c10);

    public W() {
        this(false);
    }

    public W(boolean z10) {
        this.f66321b = z10;
    }
}
