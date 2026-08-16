package F;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;

public class c implements l {

    public final b f6062a = new b();

    public final h<a, Bitmap> f6063b = new h<>();

    @VisibleForTesting
    public static class a implements m {

        public final b f6064a;

        public int f6065b;

        public int f6066c;

        public Bitmap.Config f6067d;

        public a(b bVar) {
            this.f6064a = bVar;
        }

        @Override
        public void a() {
            this.f6064a.c(this);
        }

        public void b(int i10, int i11, Bitmap.Config config) {
            this.f6065b = i10;
            this.f6066c = i11;
            this.f6067d = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f6065b == aVar.f6065b && this.f6066c == aVar.f6066c && this.f6067d == aVar.f6067d;
        }

        public int hashCode() {
            int i10 = ((this.f6065b * 31) + this.f6066c) * 31;
            Bitmap.Config config = this.f6067d;
            return i10 + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return c.e(this.f6065b, this.f6066c, this.f6067d);
        }
    }

    @VisibleForTesting
    public static class b extends d<a> {
        @Override
        public a a() {
            return new a(this);
        }

        public a e(int i10, int i11, Bitmap.Config config) {
            a b10 = b();
            b10.b(i10, i11, config);
            return b10;
        }
    }

    public static String e(int i10, int i11, Bitmap.Config config) {
        return "[" + i10 + "x" + i11 + "], " + ((Object) config);
    }

    public static String g(Bitmap bitmap) {
        return e(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override
    public String a(int i10, int i11, Bitmap.Config config) {
        return e(i10, i11, config);
    }

    @Override
    public int b(Bitmap bitmap) {
        return Y.m.h(bitmap);
    }

    @Override
    public String c(Bitmap bitmap) {
        return g(bitmap);
    }

    @Override
    public void d(Bitmap bitmap) {
        this.f6063b.d(this.f6062a.e(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override
    public Bitmap f(int i10, int i11, Bitmap.Config config) {
        return this.f6063b.a(this.f6062a.e(i10, i11, config));
    }

    @Override
    public Bitmap removeLast() {
        return this.f6063b.f();
    }

    public String toString() {
        return "AttributeStrategy:\n  " + ((Object) this.f6063b);
    }
}
