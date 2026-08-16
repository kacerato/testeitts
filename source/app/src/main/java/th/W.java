package th;

import oh.AbstractC14545v;
import oh.G0;

public class W extends AbstractC14545v {

    public final oh.E f117547b;

    public W(oh.E e10) {
        this.f117547b = e10;
    }

    public static W u(Object obj) {
        if (obj instanceof W) {
            return (W) obj;
        }
        if (obj != null) {
            return new W(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f117547b;
    }

    public T[] v() {
        int size = this.f117547b.size();
        T[] tArr = new T[size];
        for (int i10 = 0; i10 != size; i10++) {
            tArr[i10] = T.w(this.f117547b.I(i10));
        }
        return tArr;
    }

    public W(T t10) {
        this.f117547b = new G0(t10);
    }

    public W(T[] tArr) {
        this.f117547b = new G0(tArr);
    }
}
