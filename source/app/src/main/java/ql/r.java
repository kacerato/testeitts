package ql;

public abstract class r {

    public final int f108389a;

    public final long f108390b;

    public final int f108391c;

    public final int f108392d;

    public static abstract class a<T extends a> {

        public final int f108393a;

        public int f108394b = 0;

        public long f108395c = 0;

        public int f108396d = 0;

        public a(int i10) {
            this.f108393a = i10;
        }

        public abstract r e();

        public abstract T f();

        public T g(int i10) {
            this.f108396d = i10;
            return f();
        }

        public T h(int i10) {
            this.f108394b = i10;
            return f();
        }

        public T i(long j10) {
            this.f108395c = j10;
            return f();
        }
    }

    public r(a aVar) {
        this.f108389a = aVar.f108394b;
        this.f108390b = aVar.f108395c;
        this.f108391c = aVar.f108393a;
        this.f108392d = aVar.f108396d;
    }

    public final int a() {
        return this.f108392d;
    }

    public final int b() {
        return this.f108389a;
    }

    public final long c() {
        return this.f108390b;
    }

    public final int d() {
        return this.f108391c;
    }

    public byte[] e() {
        byte[] bArr = new byte[32];
        org.bouncycastle.util.p.h(this.f108389a, bArr, 0);
        org.bouncycastle.util.p.D(this.f108390b, bArr, 4);
        org.bouncycastle.util.p.h(this.f108391c, bArr, 12);
        org.bouncycastle.util.p.h(this.f108392d, bArr, 28);
        return bArr;
    }
}
