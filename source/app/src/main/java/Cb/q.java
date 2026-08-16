package cb;

import java.util.Comparator;

public class q<T> {

    public T[] f34679a;

    public Comparator<? super T> f34680b;

    public final int a(int leftIdx, int rightIdx) {
        T[] tArr = this.f34679a;
        T t10 = tArr[leftIdx];
        int i10 = (leftIdx + rightIdx) / 2;
        T t11 = tArr[i10];
        T t12 = tArr[rightIdx];
        return this.f34680b.compare(t10, t11) > 0 ? this.f34680b.compare(t11, t12) > 0 ? i10 : this.f34680b.compare(t10, t12) > 0 ? rightIdx : leftIdx : this.f34680b.compare(t10, t12) > 0 ? leftIdx : this.f34680b.compare(t11, t12) > 0 ? rightIdx : i10;
    }

    public final int b(int i10, int i11, int i12) {
        T t10 = this.f34679a[i12];
        e(i11, i12);
        int i13 = i10;
        while (i10 < i11) {
            if (this.f34680b.compare(this.f34679a[i10], t10) < 0) {
                e(i13, i10);
                i13++;
            }
            i10++;
        }
        e(i11, i13);
        return i13;
    }

    public final int c(int left, int right, int k10) {
        if (left == right) {
            return left;
        }
        int b10 = b(left, right, a(left, right));
        int i10 = (b10 - left) + 1;
        return i10 == k10 ? b10 : k10 < i10 ? c(left, b10 - 1, k10) : c(b10 + 1, right, k10 - i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int d(T[] items, Comparator<T> comp, int n10, int size) {
        this.f34679a = items;
        this.f34680b = comp;
        return c(0, size - 1, n10);
    }

    public final void e(int left, int right) {
        T[] tArr = this.f34679a;
        T t10 = tArr[left];
        tArr[left] = tArr[right];
        tArr[right] = t10;
    }
}
