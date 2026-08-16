package A2;

import com.google.common.collect.Ordering;
import com.google.common.collect.Q1;
import java.util.Comparator;
import java.util.Map;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.z;

@InterfaceC2284t
@I2.j
@InterfaceC15800a
public final class C2283s<T> {

    public final b f276a;

    @CheckForNull
    public final Comparator<T> f277b;

    public static class a {

        public static final int[] f278a;

        static {
            int[] iArr = new int[b.values().length];
            f278a = iArr;
            try {
                iArr[b.UNORDERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f278a[b.INSERTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f278a[b.STABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f278a[b.SORTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum b {
        UNORDERED,
        STABLE,
        INSERTION,
        SORTED
    }

    public C2283s(b bVar, @CheckForNull Comparator<T> comparator) {
        this.f276a = (b) w2.H.E(bVar);
        this.f277b = comparator;
        w2.H.g0((bVar == b.SORTED) == (comparator != null));
    }

    public static <S> C2283s<S> d() {
        return new C2283s<>(b.INSERTION, null);
    }

    public static <S extends Comparable<? super S>> C2283s<S> e() {
        return new C2283s<>(b.SORTED, Ordering.A());
    }

    public static <S> C2283s<S> f(Comparator<S> comparator) {
        return new C2283s<>(b.SORTED, (Comparator) w2.H.E(comparator));
    }

    public static <S> C2283s<S> g() {
        return new C2283s<>(b.STABLE, null);
    }

    public static <S> C2283s<S> i() {
        return new C2283s<>(b.UNORDERED, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T1 extends T> C2283s<T1> a() {
        return this;
    }

    public Comparator<T> b() {
        Comparator<T> comparator = this.f277b;
        if (comparator != null) {
            return comparator;
        }
        throw new UnsupportedOperationException("This ordering does not define a comparator.");
    }

    public <K extends T, V> Map<K, V> c(int i10) {
        int i11 = a.f278a[this.f276a.ordinal()];
        if (i11 == 1) {
            return Q1.a0(i10);
        }
        if (i11 == 2 || i11 == 3) {
            return Q1.e0(i10);
        }
        if (i11 == 4) {
            return Q1.g0(b());
        }
        throw new AssertionError();
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2283s)) {
            return false;
        }
        C2283s c2283s = (C2283s) obj;
        return this.f276a == c2283s.f276a && w2.B.a(this.f277b, c2283s.f277b);
    }

    public b h() {
        return this.f276a;
    }

    public int hashCode() {
        return w2.B.b(this.f276a, this.f277b);
    }

    public String toString() {
        z.b f10 = w2.z.c(this).f("type", this.f276a);
        Comparator<T> comparator = this.f277b;
        if (comparator != null) {
            f10.f("comparator", comparator);
        }
        return f10.toString();
    }
}
