package hi;

import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14538r0;

public class N extends AbstractC14545v {

    public static final int f90708c = 128;

    public static final int f90709d = 64;

    public static final int f90710e = 32;

    public static final int f90711f = 16;

    public static final int f90712g = 8;

    public static final int f90713h = 4;

    public static final int f90714i = 2;

    public static final int f90715j = 1;

    public static final int f90716k = 32768;

    public AbstractC14508c f90717b;

    public N(int i10) {
        this.f90717b = new C14538r0(i10);
    }

    public static N u(C13479C c13479c) {
        return w(C13479C.A(c13479c, C13478B.f90531g));
    }

    public static N w(Object obj) {
        if (obj instanceof N) {
            return (N) obj;
        }
        if (obj != null) {
            return new N(AbstractC14508c.H(obj));
        }
        return null;
    }

    public int n() {
        return this.f90717b.n();
    }

    @Override
    public oh.B r() {
        return this.f90717b;
    }

    public String toString() {
        StringBuilder sb2;
        int i10;
        byte[] F10 = this.f90717b.F();
        if (F10.length == 1) {
            sb2 = new StringBuilder();
            sb2.append("KeyUsage: 0x");
            i10 = F10[0] & 255;
        } else {
            sb2 = new StringBuilder();
            sb2.append("KeyUsage: 0x");
            i10 = (F10[0] & 255) | ((F10[1] & 255) << 8);
        }
        sb2.append(Integer.toHexString(i10));
        return sb2.toString();
    }

    public byte[] v() {
        return this.f90717b.F();
    }

    public boolean x(int i10) {
        return (this.f90717b.L() & i10) == i10;
    }

    public N(AbstractC14508c abstractC14508c) {
        this.f90717b = abstractC14508c;
    }
}
