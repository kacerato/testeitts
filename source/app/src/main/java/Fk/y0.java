package Fk;

import oh.C14539s;

public class y0 extends F {

    public static y0 f7192f = new y0();

    public y0() {
        super(900000001L);
    }

    public static y0 x(Object obj) {
        if (obj instanceof y0) {
            return (y0) obj;
        }
        if (obj == null) {
            return null;
        }
        C14539s F10 = C14539s.F(obj);
        if (F10.I().intValue() == 900000001) {
            return f7192f;
        }
        throw new IllegalArgumentException("value " + ((Object) F10.I()) + " is not unknown value of 900000001");
    }
}
