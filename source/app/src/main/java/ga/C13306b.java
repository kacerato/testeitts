package ga;

import com.google.android.gms.internal.measurement.C12085i;
import java.math.BigDecimal;

public final class C13306b implements Comparable<C13306b> {

    public static final C13306b f88185c = new C13306b(BigDecimal.ZERO);

    public final BigDecimal f88186b;

    public C13306b(BigDecimal value) {
        this.f88186b = value == null ? BigDecimal.ZERO : value;
    }

    public static C13306b b(String value) {
        if (value == null) {
            return f88185c;
        }
        String trim = value.trim();
        if (trim.isEmpty()) {
            return f88185c;
        }
        try {
            return new C13306b(new BigDecimal(trim));
        } catch (Exception unused) {
            return f88185c;
        }
    }

    public static C13306b i(double value) {
        return new C13306b(BigDecimal.valueOf(value));
    }

    public static C13306b j(long value) {
        return new C13306b(BigDecimal.valueOf(value));
    }

    public static C13306b k(BigDecimal value) {
        return new C13306b(value);
    }

    @Override
    public int compareTo(C13306b other) {
        return other == null ? this.f88186b.compareTo(BigDecimal.ZERO) : this.f88186b.compareTo(other.f88186b);
    }

    public BigDecimal c() {
        return this.f88186b;
    }

    public double d() {
        return this.f88186b.doubleValue();
    }

    public float e() {
        return this.f88186b.floatValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C13306b) && compareTo((C13306b) obj) == 0;
    }

    public long g() {
        return this.f88186b.longValue();
    }

    public String h() {
        return C12085i.a(this.f88186b).toPlainString();
    }

    public int hashCode() {
        return C12085i.a(this.f88186b).hashCode();
    }

    public String toString() {
        return h();
    }
}
