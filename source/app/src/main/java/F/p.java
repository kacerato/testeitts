package F;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.util.NavigableMap;

@RequiresApi(19)
public final class p implements l {

    public static final int f6116d = 8;

    public final b f6117a = new b();

    public final h<a, Bitmap> f6118b = new h<>();

    public final NavigableMap<Integer, Integer> f6119c = new n();

    @VisibleForTesting
    public static final class a implements m {

        public final b f6120a;

        public int f6121b;

        public a(b bVar) {
            this.f6120a = bVar;
        }

        @Override
        public void a() {
            this.f6120a.c(this);
        }

        public void b(int i10) {
            this.f6121b = i10;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && this.f6121b == ((a) obj).f6121b;
        }

        public int hashCode() {
            return this.f6121b;
        }

        public String toString() {
            return p.g(this.f6121b);
        }
    }

    @VisibleForTesting
    public static class b extends d<a> {
        @Override
        public a a() {
            return new a(this);
        }

        public a e(int i10) {
            a aVar = (a) super.b();
            aVar.b(i10);
            return aVar;
        }
    }

    public static String g(int i10) {
        return "[" + i10 + "]";
    }

    private static String h(Bitmap bitmap) {
        return g(Y.m.h(bitmap));
    }

    @Override
    public String a(int i10, int i11, Bitmap.Config config) {
        return g(Y.m.g(i10, i11, config));
    }

    @Override
    public int b(Bitmap bitmap) {
        return Y.m.h(bitmap);
    }

    @Override
    public String c(Bitmap bitmap) {
        return h(bitmap);
    }

    @Override
    public void d(Bitmap bitmap) {
        a e10 = this.f6117a.e(Y.m.h(bitmap));
        this.f6118b.d(e10, bitmap);
        Integer num = this.f6119c.get(Integer.valueOf(e10.f6121b));
        this.f6119c.put(Integer.valueOf(e10.f6121b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    public final void e(Integer num) {
        Integer num2 = this.f6119c.get(num);
        if (num2.intValue() == 1) {
            this.f6119c.remove(num);
        } else {
            this.f6119c.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    @Override
    @Nullable
    public Bitmap f(int i10, int i11, Bitmap.Config config) {
        int g10 = Y.m.g(i10, i11, config);
        a e10 = this.f6117a.e(g10);
        Integer ceilingKey = this.f6119c.ceilingKey(Integer.valueOf(g10));
        if (ceilingKey != null && ceilingKey.intValue() != g10 && ceilingKey.intValue() <= g10 * 8) {
            this.f6117a.c(e10);
            e10 = this.f6117a.e(ceilingKey.intValue());
        }
        Bitmap a10 = this.f6118b.a(e10);
        if (a10 != null) {
            a10.reconfigure(i10, i11, config);
            e(ceilingKey);
        }
        return a10;
    }

    @Override
    @Nullable
    public Bitmap removeLast() {
        Bitmap f10 = this.f6118b.f();
        if (f10 != null) {
            e(Integer.valueOf(Y.m.h(f10)));
        }
        return f10;
    }

    public String toString() {
        return "SizeStrategy:\n  " + ((Object) this.f6118b) + "\n  SortedSizes" + ((Object) this.f6119c);
    }
}
