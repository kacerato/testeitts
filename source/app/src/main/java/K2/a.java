package K2;

import org.apache.commons.math3.geometry.VectorFormat;

public final class a extends r {

    public final long f10707a;

    public final long f10708b;

    public final long f10709c;

    public a(long j10, long j11, long j12) {
        this.f10707a = j10;
        this.f10708b = j11;
        this.f10709c = j12;
    }

    @Override
    public long b() {
        return this.f10708b;
    }

    @Override
    public long c() {
        return this.f10707a;
    }

    @Override
    public long d() {
        return this.f10709c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f10707a == rVar.c() && this.f10708b == rVar.b() && this.f10709c == rVar.d();
    }

    public int hashCode() {
        long j10 = this.f10707a;
        long j11 = this.f10708b;
        int i10 = (((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        long j12 = this.f10709c;
        return i10 ^ ((int) ((j12 >>> 32) ^ j12));
    }

    public String toString() {
        return "StartupTime{epochMillis=" + this.f10707a + ", elapsedRealtime=" + this.f10708b + ", uptimeMillis=" + this.f10709c + VectorFormat.DEFAULT_SUFFIX;
    }
}
