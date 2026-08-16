package s6;

import lb.C14066c;

public class b {

    public final C15234a f109193a;

    public final boolean f109194b;

    public final float f109195c;

    public final float f109196d;

    public final float f109197e;

    public final int f109198f;

    public b(C15234a frameData, long heapUsedBytes, long previousFrameUsedMemory) {
        this.f109193a = frameData;
        this.f109198f = frameData.d();
        if (previousFrameUsedMemory > heapUsedBytes) {
            this.f109194b = true;
        } else {
            this.f109194b = false;
        }
        this.f109195c = C14066c.k(N7.c.t());
        this.f109197e = C14066c.j(N7.c.t());
        this.f109196d = C14066c.i(N7.c.t());
    }

    public float a() {
        return this.f109195c;
    }

    public C15234a b() {
        return this.f109193a;
    }

    public float c() {
        return this.f109197e;
    }

    public float d() {
        return this.f109196d;
    }

    public int e() {
        return this.f109198f;
    }

    public boolean f() {
        return this.f109194b;
    }

    public void g() {
        C15234a c15234a = this.f109193a;
        if (c15234a != null) {
            c15234a.e();
        }
    }
}
