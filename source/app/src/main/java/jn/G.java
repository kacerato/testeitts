package jn;

public class G {

    public static final int f94174g = 0;

    public static final int f94175h = 1;

    public final int f94176a;

    public final int[] f94177b;

    public final int[] f94178c;

    public int f94179d;

    public int f94180e;

    public int f94181f;

    public G(int index, int maxVertsPerPoly) {
        this.f94176a = index;
        this.f94177b = new int[maxVertsPerPoly];
        this.f94178c = new int[maxVertsPerPoly];
    }

    public int a() {
        return this.f94181f & 63;
    }

    public int b() {
        return this.f94181f >> 6;
    }

    public void c(int a10) {
        this.f94181f = (a10 & 63) | (this.f94181f & 192);
    }

    public void d(int t10) {
        this.f94181f = (t10 << 6) | (this.f94181f & 63);
    }
}
