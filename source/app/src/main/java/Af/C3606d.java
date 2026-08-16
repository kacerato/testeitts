package af;

import Ce.f;
import java.util.concurrent.TimeUnit;

public final class C3606d<T> {

    public final T f32019a;

    public final long f32020b;

    public final TimeUnit f32021c;

    public C3606d(@f T t10, long j10, @f TimeUnit timeUnit) {
        this.f32019a = t10;
        this.f32020b = j10;
        this.f32021c = (TimeUnit) He.b.g(timeUnit, "unit is null");
    }

    public long a() {
        return this.f32020b;
    }

    public long b(@f TimeUnit timeUnit) {
        return timeUnit.convert(this.f32020b, this.f32021c);
    }

    @f
    public TimeUnit c() {
        return this.f32021c;
    }

    @f
    public T d() {
        return this.f32019a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C3606d)) {
            return false;
        }
        C3606d c3606d = (C3606d) obj;
        return He.b.c(this.f32019a, c3606d.f32019a) && this.f32020b == c3606d.f32020b && He.b.c(this.f32021c, c3606d.f32021c);
    }

    public int hashCode() {
        T t10 = this.f32019a;
        int hashCode = t10 != null ? t10.hashCode() : 0;
        long j10 = this.f32020b;
        return (((hashCode * 31) + ((int) (j10 ^ (j10 >>> 31)))) * 31) + this.f32021c.hashCode();
    }

    public String toString() {
        return "Timed[time=" + this.f32020b + ", unit=" + ((Object) this.f32021c) + ", value=" + ((Object) this.f32019a) + "]";
    }
}
