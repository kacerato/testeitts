package r6;

import com.itsmagic.engine.Engines.Engine.GC.SGC;
import lb.C14066c;

public class b {

    public final C15151a f108670a;

    public final long f108671b;

    public final boolean f108672c;

    public final float f108673d;

    public final float f108674e;

    public final float f108675f;

    public final int f108676g = SGC.getConcreteCount();

    public b(C15151a frameData, long heapUsedBytes, long previousFrameUsedMemory) {
        this.f108670a = frameData;
        this.f108671b = heapUsedBytes - frameData.g();
        if (previousFrameUsedMemory - frameData.g() > heapUsedBytes) {
            this.f108672c = true;
        } else {
            this.f108672c = false;
        }
        this.f108673d = C14066c.k(N7.c.t());
        this.f108675f = C14066c.j(N7.c.t());
        this.f108674e = C14066c.i(N7.c.t());
    }

    public float a() {
        return this.f108673d;
    }

    public C15151a b() {
        return this.f108670a;
    }

    public long c() {
        return this.f108671b;
    }

    public float d() {
        return this.f108675f;
    }

    public float e() {
        return this.f108674e;
    }

    public int f() {
        return this.f108676g;
    }

    public boolean g() {
        return this.f108672c;
    }

    public void h() {
        C15151a c15151a = this.f108670a;
        if (c15151a != null) {
            c15151a.i();
        }
    }
}
