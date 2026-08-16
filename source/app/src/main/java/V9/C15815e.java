package v9;

import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;

public final class C15815e {

    public static final int f121372e = 8;

    public NativeIntBuffer f121373a;

    public NativeIntBuffer f121374b;

    public int f121375c;

    public int f121376d;

    public void a(int i10, boolean z10) {
        if (i10 == 0) {
            return;
        }
        e(this.f121376d + 1);
        this.f121373a.set(this.f121376d, i10);
        this.f121374b.fill(this.f121376d * 8, z10 ? 1 : 0, 8);
        this.f121376d++;
    }

    public void b(Qb.b operators) {
        int i10 = this.f121376d;
        if (i10 == 0) {
            return;
        }
        operators.a(i10, this.f121373a, this.f121374b, 8);
        this.f121376d = 0;
    }

    public void c() {
        this.f121376d = 0;
    }

    public void d() {
        this.f121376d = 0;
    }

    public final void e(int requiredCapacity) {
        int i10 = this.f121375c;
        if (requiredCapacity <= i10) {
            return;
        }
        int max = Math.max(16, i10);
        while (max < requiredCapacity) {
            max += Math.max(16, max >> 1);
        }
        NativeIntBuffer nativeIntBuffer = this.f121373a;
        NativeIntBuffer nativeIntBuffer2 = this.f121374b;
        NativeIntBuffer nativeIntBuffer3 = new NativeIntBuffer(max);
        NativeIntBuffer nativeIntBuffer4 = new NativeIntBuffer(max * 8);
        int i11 = this.f121376d;
        if (i11 > 0) {
            nativeIntBuffer3.set(0, nativeIntBuffer, 0, i11);
            nativeIntBuffer4.set(0, nativeIntBuffer2, 0, this.f121376d * 8);
        }
        this.f121373a = nativeIntBuffer3;
        this.f121374b = nativeIntBuffer4;
        this.f121375c = max;
        if (nativeIntBuffer != null) {
            nativeIntBuffer.destroy();
            nativeIntBuffer2.destroy();
        }
    }
}
