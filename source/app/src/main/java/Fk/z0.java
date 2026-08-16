package Fk;

import oh.C14539s;

public class z0 extends I {

    public static final z0 f7194f = new z0();

    public z0() {
        super(1800000001L);
    }

    public static z0 z(Object obj) {
        if (obj instanceof z0) {
            return (z0) obj;
        }
        if (obj == null) {
            return null;
        }
        C14539s F10 = C14539s.F(obj);
        if (F10.I().intValue() == 1800000001) {
            return f7194f;
        }
        throw new IllegalArgumentException("value " + ((Object) F10.I()) + " is not 1800000001");
    }
}
