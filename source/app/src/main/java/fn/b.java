package fn;

import java.nio.ByteBuffer;

public class b {

    public ByteBuffer f86599a;

    public b(ByteBuffer inner) {
        this.f86599a = inner;
    }

    public long a() {
        return this.f86599a.getInt() & 4294967295L;
    }

    public long b(int index) {
        return this.f86599a.getInt(index) & 4294967295L;
    }

    public int c() {
        return this.f86599a.getShort() & 65535;
    }

    public int d(int index) {
        return this.f86599a.getShort(index) & 65535;
    }
}
