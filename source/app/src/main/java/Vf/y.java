package Vf;

import java.util.Iterator;
import kotlin.jvm.internal.C14026x;
import nf.F0;
import nf.InterfaceC14422l0;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14422l0(version = "1.5")
public class y implements Iterable<F0>, Nf.a {

    @NotNull
    public static final a f26920e = new a(null);

    public final long f26921b;

    public final long f26922c;

    public final long f26923d;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final y a(long j10, long j11, long j12) {
            return new y(j10, j11, j12, null);
        }

        public a() {
        }
    }

    public y(long j10, long j11, long j12, C14026x c14026x) {
        this(j10, j11, j12);
    }

    public final long c() {
        return this.f26921b;
    }

    public final long d() {
        return this.f26922c;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof y) {
            if (!isEmpty() || !((y) obj).isEmpty()) {
                y yVar = (y) obj;
                if (this.f26921b != yVar.f26921b || this.f26922c != yVar.f26922c || this.f26923d != yVar.f26923d) {
                }
            }
            return true;
        }
        return false;
    }

    public final long g() {
        return this.f26923d;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long j10 = this.f26921b;
        int i10 = ((int) F0.i(j10 ^ F0.i(j10 >>> 32))) * 31;
        long j11 = this.f26922c;
        int i11 = (i10 + ((int) F0.i(j11 ^ F0.i(j11 >>> 32)))) * 31;
        long j12 = this.f26923d;
        return i11 + ((int) ((j12 >>> 32) ^ j12));
    }

    public boolean isEmpty() {
        long j10 = this.f26923d;
        long j11 = this.f26921b;
        long j12 = this.f26922c;
        if (j10 > 0) {
            if (Long.compareUnsigned(j11, j12) <= 0) {
                return false;
            }
        } else if (Long.compareUnsigned(j11, j12) >= 0) {
            return false;
        }
        return true;
    }

    @Override
    @NotNull
    public final Iterator<F0> iterator() {
        return new z(this.f26921b, this.f26922c, this.f26923d, null);
    }

    @NotNull
    public String toString() {
        StringBuilder sb2;
        long j10;
        if (this.f26923d > 0) {
            sb2 = new StringBuilder();
            sb2.append((Object) F0.g0(this.f26921b));
            sb2.append(ClasspathEntry.DOT_DOT);
            sb2.append((Object) F0.g0(this.f26922c));
            sb2.append(" step ");
            j10 = this.f26923d;
        } else {
            sb2 = new StringBuilder();
            sb2.append((Object) F0.g0(this.f26921b));
            sb2.append(" downTo ");
            sb2.append((Object) F0.g0(this.f26922c));
            sb2.append(" step ");
            j10 = -this.f26923d;
        }
        sb2.append(j10);
        return sb2.toString();
    }

    public y(long j10, long j11, long j12) {
        if (j12 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (j12 != Long.MIN_VALUE) {
            this.f26921b = j10;
            this.f26922c = Ef.u.c(j10, j11, j12);
            this.f26923d = j12;
            return;
        }
        throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
    }
}
