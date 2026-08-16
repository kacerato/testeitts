package net.jpountz.xxhash;

public abstract class a extends c {

    public int f98114c;

    public int f98115d;

    public int f98116e;

    public int f98117f;

    public int f98118g;

    public long f98119h;

    public final byte[] f98120i;

    public a(int i10) {
        super(i10);
        this.f98120i = new byte[16];
        e();
    }

    @Override
    public void e() {
        int i10 = this.f98128b;
        this.f98114c = 606290984 + i10;
        this.f98115d = (-2048144777) + i10;
        this.f98116e = i10;
        this.f98117f = i10 - (-1640531535);
        this.f98119h = 0L;
        this.f98118g = 0;
    }
}
