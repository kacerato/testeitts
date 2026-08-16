package m9;

import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.util.concurrent.atomic.AtomicInteger;

public final class j {

    public static final int f96899f = 8;

    public static final int f96900g = 0;

    public static final int f96901h = 1;

    public static final int f96902i = 2;

    public static final int f96903j = 3;

    public final AtomicInteger f96904a = new AtomicInteger(0);

    public NativeIntBuffer f96905b;

    public NativeIntBuffer f96906c;

    public int f96907d;

    public int f96908e;

    public void a(int i10, boolean z10) {
        int i11 = this.f96908e;
        if (i11 >= this.f96907d) {
            e(i11 + 1);
        }
        this.f96905b.set(this.f96908e, i10);
        this.f96906c.fill(this.f96908e * 8, z10 ? 1 : 0, 8);
        this.f96908e++;
    }

    public void b(Qb.b operators) {
        if (this.f96904a.compareAndSet(2, 3)) {
            try {
                operators.a(this.f96908e, this.f96905b, this.f96906c, 8);
            } finally {
                this.f96904a.set(0);
            }
        }
    }

    public boolean c(int requiredCapacity) {
        if (!this.f96904a.compareAndSet(0, 1)) {
            return false;
        }
        e(requiredCapacity);
        this.f96908e = 0;
        return true;
    }

    public void d() {
        this.f96904a.set(0);
        this.f96908e = 0;
    }

    public final void e(int requiredCapacity) {
        int i10 = this.f96907d;
        if (requiredCapacity <= i10) {
            return;
        }
        int max = Math.max(16, i10);
        while (max < requiredCapacity) {
            max += Math.max(16, max >> 1);
        }
        NativeIntBuffer nativeIntBuffer = this.f96905b;
        NativeIntBuffer nativeIntBuffer2 = this.f96906c;
        NativeIntBuffer nativeIntBuffer3 = new NativeIntBuffer(max);
        NativeIntBuffer nativeIntBuffer4 = new NativeIntBuffer(max * 8);
        int i11 = this.f96908e;
        if (i11 > 0) {
            nativeIntBuffer3.set(0, nativeIntBuffer, 0, i11);
            nativeIntBuffer4.set(0, nativeIntBuffer2, 0, this.f96908e * 8);
        }
        this.f96905b = nativeIntBuffer3;
        this.f96906c = nativeIntBuffer4;
        this.f96907d = max;
        if (nativeIntBuffer != null) {
            nativeIntBuffer.destroy();
            nativeIntBuffer2.destroy();
        }
    }

    public void f() {
        this.f96904a.set(this.f96908e == 0 ? 0 : 2);
    }
}
