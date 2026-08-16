package q6;

import com.itsmagic.engine.Engines.Engine.GC.SGC;

public class b {

    public final float f105928a;

    public final C15044a f105929b;

    public final long f105930c;

    public final boolean f105931d;

    public final int f105932e = SGC.getConcreteCount();

    public b(float deltaTime, C15044a frameData, long usedBytes, long previousFrameUsedMemory) {
        this.f105928a = deltaTime;
        this.f105929b = frameData;
        this.f105930c = usedBytes;
        if (previousFrameUsedMemory > usedBytes) {
            this.f105931d = true;
        } else {
            this.f105931d = false;
        }
    }

    public float a() {
        return this.f105928a;
    }

    public C15044a b() {
        return this.f105929b;
    }

    public int c() {
        return this.f105932e;
    }

    public long d() {
        return this.f105930c;
    }

    public boolean e() {
        return this.f105931d;
    }

    public void f() {
        this.f105929b.g();
    }
}
