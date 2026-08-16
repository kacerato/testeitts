package javax.vecmath;

import java.io.Serializable;

public class Point4i extends Tuple4i implements Serializable {
    static final long serialVersionUID = 620124780244617983L;

    public Point4i(int i10, int i11, int i12, int i13) {
        super(i10, i11, i12, i13);
    }

    public Point4i(int[] iArr) {
        super(iArr);
    }

    public Point4i(Tuple4i tuple4i) {
        super(tuple4i);
    }

    public Point4i() {
    }
}
