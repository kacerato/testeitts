package I;

import Y.k;
import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import org.eclipse.jdt.internal.core.JavaElement;

public final class d {

    @VisibleForTesting
    public static final Bitmap.Config f8668e = Bitmap.Config.RGB_565;

    public final int f8669a;

    public final int f8670b;

    public final Bitmap.Config f8671c;

    public final int f8672d;

    public static class a {

        public final int f8673a;

        public final int f8674b;

        public Bitmap.Config f8675c;

        public int f8676d;

        public a(int i10) {
            this(i10, i10);
        }

        public d a() {
            return new d(this.f8673a, this.f8674b, this.f8675c, this.f8676d);
        }

        public Bitmap.Config b() {
            return this.f8675c;
        }

        public a c(@Nullable Bitmap.Config config) {
            this.f8675c = config;
            return this;
        }

        public a d(int i10) {
            if (i10 <= 0) {
                throw new IllegalArgumentException("Weight must be > 0");
            }
            this.f8676d = i10;
            return this;
        }

        public a(int i10, int i11) {
            this.f8676d = 1;
            if (i10 <= 0) {
                throw new IllegalArgumentException("Width must be > 0");
            }
            if (i11 > 0) {
                this.f8673a = i10;
                this.f8674b = i11;
                return;
            }
            throw new IllegalArgumentException("Height must be > 0");
        }
    }

    public d(int i10, int i11, Bitmap.Config config, int i12) {
        this.f8671c = (Bitmap.Config) k.e(config, "Config must not be null");
        this.f8669a = i10;
        this.f8670b = i11;
        this.f8672d = i12;
    }

    public Bitmap.Config a() {
        return this.f8671c;
    }

    public int b() {
        return this.f8670b;
    }

    public int c() {
        return this.f8672d;
    }

    public int d() {
        return this.f8669a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f8670b == dVar.f8670b && this.f8669a == dVar.f8669a && this.f8672d == dVar.f8672d && this.f8671c == dVar.f8671c;
    }

    public int hashCode() {
        return (((((this.f8669a * 31) + this.f8670b) * 31) + this.f8671c.hashCode()) * 31) + this.f8672d;
    }

    public String toString() {
        return "PreFillSize{width=" + this.f8669a + ", height=" + this.f8670b + ", config=" + ((Object) this.f8671c) + ", weight=" + this.f8672d + JavaElement.JEM_ANNOTATION;
    }
}
