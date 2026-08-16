package rd;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Arrays;
import org.eclipse.jdt.internal.core.JavaElement;

public final class C15170a {

    public final long[] f108889a;

    public final long[] f108890b;

    public long f108891c = Long.MAX_VALUE;

    public long f108892d = 0;

    public C15170a(long[] jArr) {
        o(jArr);
        this.f108889a = Arrays.copyOf(jArr, jArr.length);
        this.f108890b = new long[jArr.length];
    }

    public boolean a(long j10) {
        int length = this.f108889a.length - 1;
        int i10 = 0;
        while (i10 < length) {
            int i11 = ((length - i10) >> 1) + i10;
            if (this.f108889a[i11] < j10) {
                i10 = i11 + 1;
            } else {
                length = i11;
            }
        }
        if (j10 > this.f108889a[length]) {
            return false;
        }
        long[] jArr = this.f108890b;
        jArr[length] = jArr[length] + 1;
        n(j10);
        return true;
    }

    public void b(C15170a c15170a) {
        long[] jArr = this.f108889a;
        if (jArr.length != c15170a.f108889a.length) {
            throw new IllegalArgumentException("Histograms must have matching intervals");
        }
        int length = jArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (this.f108889a[i10] != c15170a.f108889a[i10]) {
                throw new IllegalArgumentException("Histograms must have matching intervals");
            }
        }
        int length2 = this.f108890b.length;
        for (int i11 = 0; i11 < length2; i11++) {
            long[] jArr2 = this.f108890b;
            jArr2[i11] = jArr2[i11] + c15170a.f108890b[i11];
        }
        n(c15170a.f108891c);
        n(c15170a.f108892d);
    }

    public void c() {
        this.f108892d = 0L;
        this.f108891c = Long.MAX_VALUE;
        int length = this.f108890b.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f108890b[i10] = 0;
        }
    }

    public long d() {
        int length = this.f108890b.length;
        long j10 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            j10 += this.f108890b[i10];
        }
        return j10;
    }

    public long e(int i10) {
        return this.f108890b[i10];
    }

    public long f() {
        return m(0.9999d);
    }

    public long g() {
        return this.f108892d;
    }

    public BigDecimal h() {
        if (0 == d()) {
            return BigDecimal.ZERO;
        }
        long j10 = this.f108890b[0] > 0 ? this.f108891c : 0L;
        BigDecimal bigDecimal = BigDecimal.ZERO;
        int length = this.f108889a.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (0 != this.f108890b[i10]) {
                bigDecimal = bigDecimal.add(new BigDecimal(j10 + ((Math.min(this.f108889a[i10], this.f108892d) - j10) / 2)).multiply(new BigDecimal(this.f108890b[i10])));
            }
            j10 = Math.max(this.f108889a[i10] + 1, this.f108891c);
        }
        return bigDecimal.divide(new BigDecimal(d()), 2, RoundingMode.HALF_UP);
    }

    public long i() {
        return this.f108891c;
    }

    public int j() {
        return this.f108889a.length;
    }

    public long k() {
        return m(0.99d);
    }

    public long l(int i10) {
        return this.f108889a[i10];
    }

    public long m(double d10) {
        if (0.0d >= d10 || d10 >= 1.0d) {
            throw new IllegalArgumentException("factor must be >= 0.0 and <= 1.0");
        }
        long d11 = d();
        long round = d11 - Math.round(d11 * d10);
        long j10 = 0;
        for (int length = this.f108890b.length - 1; length >= 0; length--) {
            long j11 = this.f108890b[length];
            if (0 != j11) {
                j10 += j11;
                if (j10 >= round) {
                    return this.f108889a[length];
                }
            }
        }
        return 0L;
    }

    public final void n(long j10) {
        if (j10 < this.f108891c) {
            this.f108891c = j10;
        }
        if (j10 > this.f108892d) {
            this.f108892d = j10;
        }
    }

    public final void o(long[] jArr) {
        if (jArr.length <= 0) {
            throw new IllegalArgumentException("Must provide at least one interval");
        }
        int length = jArr.length;
        long j10 = -1;
        int i10 = 0;
        while (i10 < length) {
            long j11 = jArr[i10];
            if (j11 <= 0) {
                throw new IllegalArgumentException("Bounds must be positive values");
            }
            if (j11 <= j10) {
                throw new IllegalArgumentException("bound " + j11 + " is not greater than " + j10);
            }
            i10++;
            j10 = j11;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Histogram{");
        sb2.append("min=");
        sb2.append(i());
        sb2.append(", ");
        sb2.append("max=");
        sb2.append(g());
        sb2.append(", ");
        sb2.append("mean=");
        sb2.append((Object) h());
        sb2.append(", ");
        sb2.append("99%=");
        sb2.append(k());
        sb2.append(", ");
        sb2.append("99.99%=");
        sb2.append(f());
        sb2.append(", ");
        sb2.append('[');
        int length = this.f108890b.length;
        for (int i10 = 0; i10 < length; i10++) {
            sb2.append(this.f108889a[i10]);
            sb2.append('=');
            sb2.append(this.f108890b[i10]);
            sb2.append(", ");
        }
        if (this.f108890b.length > 0) {
            sb2.setLength(sb2.length() - 2);
        }
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        sb2.append(JavaElement.JEM_ANNOTATION);
        return sb2.toString();
    }
}
