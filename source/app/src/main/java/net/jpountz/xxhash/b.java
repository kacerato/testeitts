package net.jpountz.xxhash;

public abstract class b extends g {

    public int f98121c;

    public long f98122d;

    public long f98123e;

    public long f98124f;

    public long f98125g;

    public long f98126h;

    public final byte[] f98127i;

    public b(long j10) {
        super(j10);
        this.f98127i = new byte[32];
        e();
    }

    @Override
    public void e() {
        long j10 = this.f98134b;
        this.f98122d = 6983438078262162902L + j10;
        this.f98123e = (-4417276706812531889L) + j10;
        this.f98124f = j10;
        this.f98125g = j10 - (-7046029288634856825L);
        this.f98126h = 0L;
        this.f98121c = 0;
    }
}
