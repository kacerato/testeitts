package javax.vecmath;

import java.io.Serializable;

public class Point3i extends Tuple3i implements Serializable {
    static final long serialVersionUID = 6149289077348153921L;

    public Point3i(int i10, int i11, int i12) {
        super(i10, i11, i12);
    }

    public Point3i(int[] iArr) {
        super(iArr);
    }

    public Point3i(Tuple3i tuple3i) {
        super(tuple3i);
    }

    public Point3i() {
    }
}
