package Jc;

import com.itsmagic.engine.Engines.Engine.Vector.Vector2;

public class b {

    public static final ThreadLocal<Vector2> f10446a = new a();

    public static final float f10447b = 6.283185f;

    public class a extends ThreadLocal<Vector2> {
        @Override
        public Vector2 initialValue() {
            return new Vector2();
        }
    }

    public static float a(float x10, float y10, float directions, float quality, float size, boolean clampToEdge, Jc.a blurListener) {
        float f10 = 6.283185f / directions;
        float f11 = 1.0f / quality;
        float a10 = blurListener.a(x10, y10);
        Vector2 vector2 = f10446a.get();
        float f12 = 0.0f;
        float f13 = 0.0f;
        for (float f14 = 6.283185f; f12 < f14; f14 = 6.283185f) {
            for (float f15 = f11; f15 <= 1.0f; f15 += f11) {
                vector2.w0(0.0f, 0.0f);
                vector2.v0(size);
                vector2.Z(f15);
                vector2.a0(Nc.b.e0(f12), Nc.b.n1(f12));
                vector2.n(x10, y10);
                a10 += blurListener.a(d(clampToEdge, vector2.f79838x), d(clampToEdge, vector2.f79839y));
                f13 += 1.0f;
            }
            f12 += f10;
        }
        return a10 / f13;
    }

    public static float b(float x10, float y10, float size, Jc.a blurListener) {
        return a(x10, y10, 16.0f, 8.0f, size, true, blurListener);
    }

    public static float c(float x10, float y10, Jc.a blurListener) {
        return a(x10, y10, 16.0f, 8.0f, 2.0f, true, blurListener);
    }

    public static float d(boolean clampToEdge, float v10) {
        float H02 = v10 - ((int) Nc.b.H0(v10));
        if (!clampToEdge && H02 < 0.0f) {
            H02 += 1.0f;
        }
        return Nc.b.E(0.0f, H02, 1.0f);
    }
}
