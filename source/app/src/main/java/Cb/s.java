package cb;

import com.itsmagic.engine.Engines.Engine.NubsPathBezier.FromGDX.GdxRuntimeException;
import java.util.Comparator;

public class s {

    public static s f34685b;

    public q f34686a;

    public static s c() {
        if (f34685b == null) {
            f34685b = new s();
        }
        return f34685b;
    }

    public final <T> int a(T[] items, Comparator<T> comp, int size) {
        int i10 = 0;
        for (int i11 = 1; i11 < size; i11++) {
            if (comp.compare(items[i11], items[i10]) > 0) {
                i10 = i11;
            }
        }
        return i10;
    }

    public final <T> int b(T[] items, Comparator<T> comp, int size) {
        int i10 = 0;
        for (int i11 = 1; i11 < size; i11++) {
            if (comp.compare(items[i11], items[i10]) < 0) {
                i10 = i11;
            }
        }
        return i10;
    }

    public <T> T d(T[] items, Comparator<T> comp, int kthLowest, int size) {
        return items[e(items, comp, kthLowest, size)];
    }

    public <T> int e(T[] items, Comparator<T> comp, int kthLowest, int size) {
        if (size < 1) {
            throw new GdxRuntimeException("cannot select from empty array (size < 1)");
        }
        if (kthLowest > size) {
            throw new GdxRuntimeException("Kth rank is larger than size. k: " + kthLowest + ", size: " + size);
        }
        if (kthLowest == 1) {
            return b(items, comp, size);
        }
        if (kthLowest == size) {
            return a(items, comp, size);
        }
        if (this.f34686a == null) {
            this.f34686a = new q();
        }
        return this.f34686a.d(items, comp, kthLowest, size);
    }
}
