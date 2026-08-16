package p6;

import com.itsmagic.engine.Engines.Engine.GC.SGC;

public class C14931b {

    public final float f103540a;

    public final C14930a f103541b;

    public final long f103542c;

    public final boolean f103543d;

    public final int f103544e = SGC.getConcreteCount();

    public C14931b(float deltaTime, C14930a frameData, long usedBytes, long previousFrameUsedMemory) {
        this.f103540a = deltaTime;
        this.f103541b = frameData;
        this.f103542c = usedBytes;
        if (previousFrameUsedMemory > usedBytes) {
            this.f103543d = true;
        } else {
            this.f103543d = false;
        }
    }

    public float a() {
        return this.f103540a;
    }

    public C14930a b() {
        return this.f103541b;
    }

    public int c() {
        return this.f103544e;
    }

    public long d() {
        return this.f103542c;
    }

    public boolean e() {
        return this.f103543d;
    }

    public void f() {
        this.f103541b.g();
    }
}
