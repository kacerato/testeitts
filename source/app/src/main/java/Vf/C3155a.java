package Vf;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.E;

public class C3155a implements Iterable<Character>, Nf.a {

    @NotNull
    public static final C0741a f26868e = new C0741a(null);

    public final char f26869b;

    public final char f26870c;

    public final int f26871d;

    public static final class C0741a {
        public C0741a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final C3155a a(char c10, char c11, int i10) {
            return new C3155a(c10, c11, i10);
        }

        public C0741a() {
        }
    }

    public C3155a(char c10, char c11, int i10) {
        if (i10 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i10 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f26869b = c10;
        this.f26870c = (char) Ef.o.c(c10, c11, i10);
        this.f26871d = i10;
    }

    public final char c() {
        return this.f26869b;
    }

    public final char d() {
        return this.f26870c;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof C3155a) {
            if (!isEmpty() || !((C3155a) obj).isEmpty()) {
                C3155a c3155a = (C3155a) obj;
                if (this.f26869b != c3155a.f26869b || this.f26870c != c3155a.f26870c || this.f26871d != c3155a.f26871d) {
                }
            }
            return true;
        }
        return false;
    }

    public final int g() {
        return this.f26871d;
    }

    @Override
    @NotNull
    public E iterator() {
        return new C3156b(this.f26869b, this.f26870c, this.f26871d);
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f26869b * H2.c.f7959b) + this.f26870c) * 31) + this.f26871d;
    }

    public boolean isEmpty() {
        if (this.f26871d > 0) {
            if (M.t(this.f26869b, this.f26870c) <= 0) {
                return false;
            }
        } else if (M.t(this.f26869b, this.f26870c) >= 0) {
            return false;
        }
        return true;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2;
        int i10;
        if (this.f26871d > 0) {
            sb2 = new StringBuilder();
            sb2.append(this.f26869b);
            sb2.append(ClasspathEntry.DOT_DOT);
            sb2.append(this.f26870c);
            sb2.append(" step ");
            i10 = this.f26871d;
        } else {
            sb2 = new StringBuilder();
            sb2.append(this.f26869b);
            sb2.append(" downTo ");
            sb2.append(this.f26870c);
            sb2.append(" step ");
            i10 = -this.f26871d;
        }
        sb2.append(i10);
        return sb2.toString();
    }
}
