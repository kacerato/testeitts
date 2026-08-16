package t6;

import com.itsmagic.engine.Engines.Engine.GC.SGC;

public class b {

    public final float f117092a;

    public final C15382a f117093b;

    public final long f117094c;

    public final boolean f117095d;

    public final int f117096e = SGC.getConcreteCount();

    public b(float deltaTime, C15382a frameData, long usedBytes, long previousFrameUsedMemory) {
        this.f117092a = deltaTime;
        this.f117093b = frameData;
        this.f117094c = usedBytes;
        if (previousFrameUsedMemory > usedBytes) {
            this.f117095d = true;
        } else {
            this.f117095d = false;
        }
    }

    public float a() {
        return this.f117092a;
    }

    public C15382a b() {
        return this.f117093b;
    }

    public int c() {
        return this.f117096e;
    }

    public long d() {
        return this.f117094c;
    }

    public boolean e() {
        return this.f117095d;
    }

    public void f() {
        this.f117093b.g();
    }
}
