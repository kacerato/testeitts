package Xi;

public class C3342f0 {

    public int f29340a;

    public int f29341b;

    public long f29342c;

    public long f29343d;

    public C3342f0(int i10, int i11) {
        this.f29340a = i10;
        this.f29341b = i11;
    }

    public int a() {
        return this.f29341b;
    }

    public long b() {
        return this.f29343d;
    }

    public int c() {
        return this.f29340a;
    }

    public long d() {
        return this.f29342c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C3342f0)) {
            return false;
        }
        C3342f0 c3342f0 = (C3342f0) obj;
        return c3342f0.f29341b == this.f29341b && c3342f0.f29340a == this.f29340a && c3342f0.f29343d == this.f29343d && c3342f0.f29342c == this.f29342c;
    }

    public int hashCode() {
        int i10 = this.f29340a ^ this.f29341b;
        long j10 = this.f29342c;
        int i11 = (i10 ^ ((int) j10)) ^ ((int) (j10 >> 32));
        long j11 = this.f29343d;
        return (i11 ^ ((int) j11)) ^ ((int) (j11 >> 32));
    }

    public C3342f0(long j10, long j11) {
        this.f29342c = j10;
        this.f29343d = j11;
    }
}
