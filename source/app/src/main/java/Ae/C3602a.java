package ae;

import Wd.I;
import Wd.b0;

public class C3602a<E> extends I<E> {

    public final b0 f31998f;

    public C3602a(b0<E> b0Var) {
        super(b0Var);
        this.f31998f = b0Var;
    }

    @Override
    public E k(int i10) {
        E e10 = (E) this.f31998f.f27557l[i10];
        if (e10 == b0.f27556p || e10 == b0.f27555o) {
            return null;
        }
        return e10;
    }
}
