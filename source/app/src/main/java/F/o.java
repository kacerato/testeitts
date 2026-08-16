package F;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

@RequiresApi(19)
public class o implements l {

    public static final int f6103d = 8;

    public static final Bitmap.Config[] f6104e;

    public static final Bitmap.Config[] f6105f;

    public static final Bitmap.Config[] f6106g;

    public static final Bitmap.Config[] f6107h;

    public static final Bitmap.Config[] f6108i;

    public final c f6109a = new c();

    public final h<b, Bitmap> f6110b = new h<>();

    public final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f6111c = new HashMap();

    public static class a {

        public static final int[] f6112a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f6112a = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6112a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6112a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6112a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @VisibleForTesting
    public static class c extends d<b> {
        @Override
        public b a() {
            return new b(this);
        }

        public b e(int i10, Bitmap.Config config) {
            b b10 = b();
            b10.b(i10, config);
            return b10;
        }
    }

    static {
        Bitmap.Config[] configArr = (Bitmap.Config[]) Arrays.copyOf(new Bitmap.Config[]{Bitmap.Config.ARGB_8888, null}, 3);
        configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        f6104e = configArr;
        f6105f = configArr;
        f6106g = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f6107h = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f6108i = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    public static String h(int i10, Bitmap.Config config) {
        return "[" + i10 + "](" + ((Object) config) + ")";
    }

    public static Bitmap.Config[] i(Bitmap.Config config) {
        if (Bitmap.Config.RGBA_F16.equals(config)) {
            return f6105f;
        }
        int i10 = a.f6112a[config.ordinal()];
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? new Bitmap.Config[]{config} : f6108i : f6107h : f6106g : f6104e;
    }

    @Override
    public String a(int i10, int i11, Bitmap.Config config) {
        return h(Y.m.g(i10, i11, config), config);
    }

    @Override
    public int b(Bitmap bitmap) {
        return Y.m.h(bitmap);
    }

    @Override
    public String c(Bitmap bitmap) {
        return h(Y.m.h(bitmap), bitmap.getConfig());
    }

    @Override
    public void d(Bitmap bitmap) {
        b e10 = this.f6109a.e(Y.m.h(bitmap), bitmap.getConfig());
        this.f6110b.d(e10, bitmap);
        NavigableMap<Integer, Integer> j10 = j(bitmap.getConfig());
        Integer num = j10.get(Integer.valueOf(e10.f6114b));
        j10.put(Integer.valueOf(e10.f6114b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    public final void e(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> j10 = j(bitmap.getConfig());
        Integer num2 = j10.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                j10.remove(num);
                return;
            } else {
                j10.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + ((Object) num) + ", removed: " + c(bitmap) + ", this: " + ((Object) this));
    }

    @Override
    @Nullable
    public Bitmap f(int i10, int i11, Bitmap.Config config) {
        b g10 = g(Y.m.g(i10, i11, config), config);
        Bitmap a10 = this.f6110b.a(g10);
        if (a10 != null) {
            e(Integer.valueOf(g10.f6114b), a10);
            a10.reconfigure(i10, i11, config);
        }
        return a10;
    }

    public final b g(int i10, Bitmap.Config config) {
        b e10 = this.f6109a.e(i10, config);
        for (Bitmap.Config config2 : i(config)) {
            Integer ceilingKey = j(config2).ceilingKey(Integer.valueOf(i10));
            if (ceilingKey != null && ceilingKey.intValue() <= i10 * 8) {
                if (ceilingKey.intValue() == i10) {
                    if (config2 == null) {
                        if (config == null) {
                            return e10;
                        }
                    } else if (config2.equals(config)) {
                        return e10;
                    }
                }
                this.f6109a.c(e10);
                return this.f6109a.e(ceilingKey.intValue(), config2);
            }
        }
        return e10;
    }

    public final NavigableMap<Integer, Integer> j(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f6111c.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f6111c.put(config, treeMap);
        return treeMap;
    }

    @Override
    @Nullable
    public Bitmap removeLast() {
        Bitmap f10 = this.f6110b.f();
        if (f10 != null) {
            e(Integer.valueOf(Y.m.h(f10)), f10);
        }
        return f10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("SizeConfigStrategy{groupedMap=");
        sb2.append((Object) this.f6110b);
        sb2.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f6111c.entrySet()) {
            sb2.append((Object) entry.getKey());
            sb2.append('[');
            sb2.append((Object) entry.getValue());
            sb2.append("], ");
        }
        if (!this.f6111c.isEmpty()) {
            sb2.replace(sb2.length() - 2, sb2.length(), "");
        }
        sb2.append(")}");
        return sb2.toString();
    }

    @VisibleForTesting
    public static final class b implements m {

        public final c f6113a;

        public int f6114b;

        public Bitmap.Config f6115c;

        public b(c cVar) {
            this.f6113a = cVar;
        }

        @Override
        public void a() {
            this.f6113a.c(this);
        }

        public void b(int i10, Bitmap.Config config) {
            this.f6114b = i10;
            this.f6115c = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f6114b == bVar.f6114b && Y.m.d(this.f6115c, bVar.f6115c);
        }

        public int hashCode() {
            int i10 = this.f6114b * 31;
            Bitmap.Config config = this.f6115c;
            return i10 + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return o.h(this.f6114b, this.f6115c);
        }

        @VisibleForTesting
        public b(c cVar, int i10, Bitmap.Config config) {
            this(cVar);
            b(i10, config);
        }
    }
}
