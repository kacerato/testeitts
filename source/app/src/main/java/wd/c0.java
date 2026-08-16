package Wd;

public abstract class c0 extends H {

    public static final long f27564m = 1;

    public static final byte f27565n = 0;

    public static final byte f27566o = 1;

    public static final byte f27567p = 2;

    public transient byte[] f27568l;

    public c0() {
    }

    @Override
    public int Ye() {
        return this.f27568l.length;
    }

    @Override
    public void hf(int i10) {
        this.f27568l[i10] = 2;
        super.hf(i10);
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f27568l = new byte[jf2];
        return jf2;
    }

    public c0(int i10) {
        this(i10, 0.5f);
    }

    public c0(int i10, float f10) {
        int max = Math.max(1, i10);
        this.f27454d = f10;
        jf(Vd.b.a(max / f10));
    }
}
