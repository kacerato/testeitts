package ag;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;

public final class C3632n implements Iterator<String>, Nf.a {

    @NotNull
    public static final a f32150g = new a(null);

    @Deprecated
    public static final int f32151h = 0;

    @Deprecated
    public static final int f32152i = 1;

    @Deprecated
    public static final int f32153j = 2;

    @NotNull
    public final CharSequence f32154b;

    public int f32155c;

    public int f32156d;

    public int f32157e;

    public int f32158f;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public C3632n(@NotNull CharSequence string) {
        kotlin.jvm.internal.M.p(string, "string");
        this.f32154b = string;
    }

    @Override
    @NotNull
    public String next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f32155c = 0;
        int i10 = this.f32157e;
        int i11 = this.f32156d;
        this.f32156d = this.f32158f + i10;
        return this.f32154b.subSequence(i11, i10).toString();
    }

    @Override
    public boolean hasNext() {
        int i10;
        int i11;
        int i12 = this.f32155c;
        if (i12 != 0) {
            return i12 == 1;
        }
        if (this.f32158f < 0) {
            this.f32155c = 2;
            return false;
        }
        int length = this.f32154b.length();
        int length2 = this.f32154b.length();
        for (int i13 = this.f32156d; i13 < length2; i13++) {
            char charAt = this.f32154b.charAt(i13);
            if (charAt == '\n' || charAt == '\r') {
                i10 = (charAt == '\r' && (i11 = i13 + 1) < this.f32154b.length() && this.f32154b.charAt(i11) == '\n') ? 2 : 1;
                length = i13;
                this.f32155c = 1;
                this.f32158f = i10;
                this.f32157e = length;
                return true;
            }
        }
        i10 = -1;
        this.f32155c = 1;
        this.f32158f = i10;
        this.f32157e = length;
        return true;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
