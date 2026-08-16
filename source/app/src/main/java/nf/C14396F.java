package nf;

import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14422l0(version = "1.1")
public final class C14396F implements Comparable<C14396F> {

    public static final int f98167g = 255;

    public final int f98169b;

    public final int f98170c;

    public final int f98171d;

    public final int f98172e;

    @NotNull
    public static final a f98166f = new a(null);

    @Lf.g
    @NotNull
    public static final C14396F f98168h = C14397G.a();

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public C14396F(int i10, int i11, int i12) {
        this.f98169b = i10;
        this.f98170c = i11;
        this.f98171d = i12;
        this.f98172e = h(i10, i11, i12);
    }

    @Override
    public int compareTo(@NotNull C14396F other) {
        kotlin.jvm.internal.M.p(other, "other");
        return this.f98172e - other.f98172e;
    }

    public final int b() {
        return this.f98169b;
    }

    public final int c() {
        return this.f98170c;
    }

    public final int d() {
        return this.f98171d;
    }

    public final boolean e(int i10, int i11) {
        int i12 = this.f98169b;
        return i12 > i10 || (i12 == i10 && this.f98170c >= i11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        C14396F c14396f = obj instanceof C14396F ? (C14396F) obj : null;
        return c14396f != null && this.f98172e == c14396f.f98172e;
    }

    public final boolean g(int i10, int i11, int i12) {
        int i13;
        int i14 = this.f98169b;
        return i14 > i10 || (i14 == i10 && ((i13 = this.f98170c) > i11 || (i13 == i11 && this.f98171d >= i12)));
    }

    public final int h(int i10, int i11, int i12) {
        if (i10 >= 0 && i10 < 256 && i11 >= 0 && i11 < 256 && i12 >= 0 && i12 < 256) {
            return (i10 << 16) + (i11 << 8) + i12;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i10 + '.' + i11 + '.' + i12).toString());
    }

    public int hashCode() {
        return this.f98172e;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f98169b);
        sb2.append('.');
        sb2.append(this.f98170c);
        sb2.append('.');
        sb2.append(this.f98171d);
        return sb2.toString();
    }

    public C14396F(int i10, int i11) {
        this(i10, i11, 0);
    }
}
