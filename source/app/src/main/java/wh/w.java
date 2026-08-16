package wh;

import oh.C14539s;

public class w extends C14539s {

    public static final w f127565g = new w(0);

    public static final w f127566h = new w(1);

    public w(int i10) {
        super(i10);
    }

    public static w T(int i10) {
        if (i10 == 0) {
            return f127565g;
        }
        if (i10 == 1) {
            return f127566h;
        }
        throw new IllegalArgumentException("unknown value: " + i10);
    }
}
