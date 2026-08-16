package javax.vecmath;

import java.io.Serializable;

public class Point2i extends Tuple2i implements Serializable {
    static final long serialVersionUID = 9208072376494084954L;

    public Point2i(int i10, int i11) {
        super(i10, i11);
    }

    public Point2i(int[] iArr) {
        super(iArr);
    }

    public Point2i(Tuple2i tuple2i) {
        super(tuple2i);
    }

    public Point2i() {
    }
}
