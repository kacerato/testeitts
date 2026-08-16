package Vf;

import kotlin.jvm.internal.C14026x;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.AbstractC14974g0;

public class j implements Iterable<Integer>, Nf.a {

    @NotNull
    public static final a f26886e = new a(null);

    public final int f26887b;

    public final int f26888c;

    public final int f26889d;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final j a(int i10, int i11, int i12) {
            return new j(i10, i11, i12);
        }

        public a() {
        }
    }

    public j(int i10, int i11, int i12) {
        if (i12 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i12 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f26887b = i10;
        this.f26888c = Ef.o.c(i10, i11, i12);
        this.f26889d = i12;
    }

    public final int c() {
        return this.f26887b;
    }

    public final int d() {
        return this.f26888c;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof j) {
            if (!isEmpty() || !((j) obj).isEmpty()) {
                j jVar = (j) obj;
                if (this.f26887b != jVar.f26887b || this.f26888c != jVar.f26888c || this.f26889d != jVar.f26889d) {
                }
            }
            return true;
        }
        return false;
    }

    public final int g() {
        return this.f26889d;
    }

    @Override
    @NotNull
    public AbstractC14974g0 iterator() {
        return new k(this.f26887b, this.f26888c, this.f26889d);
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f26887b * 31) + this.f26888c) * 31) + this.f26889d;
    }

    public boolean isEmpty() {
        if (this.f26889d > 0) {
            if (this.f26887b <= this.f26888c) {
                return false;
            }
        } else if (this.f26887b >= this.f26888c) {
            return false;
        }
        return true;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2;
        int i10;
        if (this.f26889d > 0) {
            sb2 = new StringBuilder();
            sb2.append(this.f26887b);
            sb2.append(ClasspathEntry.DOT_DOT);
            sb2.append(this.f26888c);
            sb2.append(" step ");
            i10 = this.f26889d;
        } else {
            sb2 = new StringBuilder();
            sb2.append(this.f26887b);
            sb2.append(" downTo ");
            sb2.append(this.f26888c);
            sb2.append(" step ");
            i10 = -this.f26889d;
        }
        sb2.append(i10);
        return sb2.toString();
    }
}
