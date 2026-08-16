package kf;

import com.jme3.math.FastMath;
import com.jme3.math.Vector2f;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.f;
import p000if.C13702E;

public class C13977d implements InterfaceC13975b {

    public static final Logger f95071c = Logger.getLogger(C13977d.class.getName());

    public static final boolean f95072d = false;

    public final C13978e f95073a;

    public Vector2f[] f95074b = null;

    public C13977d(int i10, int i11, long j10, long j11) {
        if (i10 < i11) {
            f95071c.log(Level.SEVERE, "period={0}, numGradients={1}", new Object[]{Integer.valueOf(i10), Integer.valueOf(i11)});
            throw new IllegalArgumentException("period shouldn't be less than numGradients");
        }
        C13702E.i(i11, "number of gradients", 2, Integer.MAX_VALUE);
        c(i11, j10);
        this.f95073a = new C13978e(i10, j11);
    }

    @Override
    public float a(float f10, float f11) {
        return b(f10, f11) / f.f92907d;
    }

    @Override
    public float b(float f10, float f11) {
        double d10 = f10;
        int floor = (int) Math.floor(d10);
        double d11 = f11;
        int floor2 = (int) Math.floor(d11);
        float d12 = d(floor, floor2, d10, d11);
        int i10 = floor2 + 1;
        float d13 = d(floor, i10, d10, d11);
        int i11 = floor + 1;
        float d14 = d(i11, floor2, d10, d11);
        float d15 = d(i11, i10, d10, d11);
        float o10 = f.o(f10 - floor);
        return f.y(f.o(f11 - floor2), f.y(o10, d12, d14), f.y(o10, d13, d15));
    }

    public final void c(int i10, long j10) {
        C13702E.i(i10, "number of gradients", 2, Integer.MAX_VALUE);
        this.f95074b = new Vector2f[i10];
        Random random = new Random(j10);
        for (int i11 = 0; i11 < i10; i11++) {
            float nextFloat = random.nextFloat() * 6.2831855f;
            this.f95074b[i11] = new Vector2f(FastMath.cos(nextFloat), FastMath.sin(nextFloat));
        }
    }

    public final float d(int i10, int i11, double d10, double d11) {
        C13978e c13978e = this.f95073a;
        Vector2f vector2f = this.f95074b[f.K(c13978e.a(c13978e.a(i11) + i10), this.f95074b.length)];
        return (vector2f.f81609x * ((float) (d10 - i10))) + (vector2f.f81610y * ((float) (d11 - i11)));
    }
}
