package Vf;

import kotlin.jvm.internal.C14026x;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.AbstractC14976h0;

public class m implements Iterable<Long>, Nf.a {

    @NotNull
    public static final a f26896e = new a(null);

    public final long f26897b;

    public final long f26898c;

    public final long f26899d;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final m a(long j10, long j11, long j12) {
            return new m(j10, j11, j12);
        }

        public a() {
        }
    }

    public m(long j10, long j11, long j12) {
        if (j12 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (j12 == Long.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
        }
        this.f26897b = j10;
        this.f26898c = Ef.o.d(j10, j11, j12);
        this.f26899d = j12;
    }

    public final long c() {
        return this.f26897b;
    }

    public final long d() {
        return this.f26898c;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof m) {
            if (!isEmpty() || !((m) obj).isEmpty()) {
                m mVar = (m) obj;
                if (this.f26897b != mVar.f26897b || this.f26898c != mVar.f26898c || this.f26899d != mVar.f26899d) {
                }
            }
            return true;
        }
        return false;
    }

    public final long g() {
        return this.f26899d;
    }

    @Override
    @NotNull
    public AbstractC14976h0 iterator() {
        return new n(this.f26897b, this.f26898c, this.f26899d);
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long j10 = 31;
        long j11 = this.f26897b;
        long j12 = this.f26898c;
        long j13 = j10 * (((j11 ^ (j11 >>> 32)) * j10) + (j12 ^ (j12 >>> 32)));
        long j14 = this.f26899d;
        return (int) (j13 + (j14 ^ (j14 >>> 32)));
    }

    public boolean isEmpty() {
        long j10 = this.f26899d;
        long j11 = this.f26897b;
        long j12 = this.f26898c;
        if (j10 > 0) {
            if (j11 <= j12) {
                return false;
            }
        } else if (j11 >= j12) {
            return false;
        }
        return true;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2;
        long j10;
        if (this.f26899d > 0) {
            sb2 = new StringBuilder();
            sb2.append(this.f26897b);
            sb2.append(ClasspathEntry.DOT_DOT);
            sb2.append(this.f26898c);
            sb2.append(" step ");
            j10 = this.f26899d;
        } else {
            sb2 = new StringBuilder();
            sb2.append(this.f26897b);
            sb2.append(" downTo ");
            sb2.append(this.f26898c);
            sb2.append(" step ");
            j10 = -this.f26899d;
        }
        sb2.append(j10);
        return sb2.toString();
    }
}
