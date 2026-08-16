package yj;

import oh.AbstractC14508c;
import oh.C14538r0;

public class d extends C14538r0 {

    public static final int f130400e = 128;

    public static final int f130401f = 64;

    public static final int f130402g = 32;

    public static final int f130403h = 16;

    public static final int f130404i = 8;

    public static final int f130405j = 4;

    public static final int f130406k = 2;

    public static final int f130407l = 1;

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
