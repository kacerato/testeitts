package Vf;

import java.util.Iterator;
import kotlin.jvm.internal.C14026x;
import nf.B0;
import nf.InterfaceC14422l0;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14422l0(version = "1.5")
public class v implements Iterable<B0>, Nf.a {

    @NotNull
    public static final a f26910e = new a(null);

    public final int f26911b;

    public final int f26912c;

    public final int f26913d;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final v a(int i10, int i11, int i12) {
            return new v(i10, i11, i12, null);
        }

        public a() {
        }
    }

    public v(int i10, int i11, int i12, C14026x c14026x) {
        this(i10, i11, i12);
    }

    public final int c() {
        return this.f26911b;
    }

    public final int d() {
        return this.f26912c;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof v) {
            if (!isEmpty() || !((v) obj).isEmpty()) {
                v vVar = (v) obj;
                if (this.f26911b != vVar.f26911b || this.f26912c != vVar.f26912c || this.f26913d != vVar.f26913d) {
                }
            }
            return true;
        }
        return false;
    }

    public final int g() {
        return this.f26913d;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f26911b * 31) + this.f26912c) * 31) + this.f26913d;
    }

    public boolean isEmpty() {
        if (this.f26913d > 0) {
            if (Integer.compareUnsigned(this.f26911b, this.f26912c) <= 0) {
                return false;
            }
        } else if (Integer.compareUnsigned(this.f26911b, this.f26912c) >= 0) {
            return false;
        }
        return true;
    }

    @Override
    @NotNull
    public final Iterator<B0> iterator() {
        return new w(this.f26911b, this.f26912c, this.f26913d, null);
    }

    @NotNull
    public String toString() {
        StringBuilder sb2;
        int i10;
        if (this.f26913d > 0) {
            sb2 = new StringBuilder();
            sb2.append((Object) B0.k0(this.f26911b));
            sb2.append(ClasspathEntry.DOT_DOT);
            sb2.append((Object) B0.k0(this.f26912c));
            sb2.append(" step ");
            i10 = this.f26913d;
        } else {
            sb2 = new StringBuilder();
            sb2.append((Object) B0.k0(this.f26911b));
            sb2.append(" downTo ");
            sb2.append((Object) B0.k0(this.f26912c));
            sb2.append(" step ");
            i10 = -this.f26913d;
        }
        sb2.append(i10);
        return sb2.toString();
    }

    public v(int i10, int i11, int i12) {
        if (i12 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i12 != Integer.MIN_VALUE) {
            this.f26911b = i10;
            this.f26912c = Ef.u.d(i10, i11, i12);
            this.f26913d = i12;
            return;
        }
        throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
    }
}
