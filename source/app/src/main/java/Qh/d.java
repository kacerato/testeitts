package Qh;

import oh.AbstractC14508c;
import oh.C14538r0;

public class d extends C14538r0 {

    public static final int f22402e = 128;

    public static final int f22403f = 64;

    public static final int f22404g = 32;

    public static final int f22405h = 16;

    public static final int f22406i = 8;

    public static final int f22407j = 4;

    public static final int f22408k = 2;

    public static final int f22409l = 1;

    public d(int i10) {
        super(AbstractC14508c.G(i10), AbstractC14508c.K(i10));
    }

    public boolean P(int i10) {
        return (L() & i10) == i10;
    }

    @Override
    public String toString() {
        return "NetscapeCertType: 0x" + Integer.toHexString(L());
    }

    public d(AbstractC14508c abstractC14508c) {
        super(abstractC14508c.F(), abstractC14508c.n());
    }
}
