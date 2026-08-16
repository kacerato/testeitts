package u6;

import com.itsmagic.engine.Engines.Engine.GC.SGC;

public class b {

    public final float f118519a;

    public final C15577a f118520b;

    public final long f118521c;

    public final boolean f118522d;

    public final int f118523e = SGC.getConcreteCount();

    public b(float deltaTime, C15577a frameData, long usedBytes, long previousFrameUsedMemory) {
        this.f118519a = deltaTime;
        this.f118520b = frameData;
        this.f118521c = usedBytes;
        if (previousFrameUsedMemory > usedBytes) {
            this.f118522d = true;
        } else {
            this.f118522d = false;
        }
    }

    public float a() {
        return this.f118519a;
    }

    public C15577a b() {
        return this.f118520b;
    }

    public int c() {
        return this.f118523e;
    }

    public long d() {
        return this.f118521c;
    }

    public boolean e() {
        return this.f118522d;
    }

    public void f() {
        this.f118520b.g();
    }
}
