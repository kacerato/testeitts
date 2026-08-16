package k2;

import android.graphics.RectF;

public class C13921g {

    public static final InterfaceC13920f f94668a = new a();

    public static final InterfaceC13920f f94669b = new b();

    public static class a implements InterfaceC13920f {
        @Override
        public C13922h a(float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
            float m10 = u.m(f13, f15, f11, f12, f10, true);
            float f17 = m10 / f13;
            float f18 = m10 / f15;
            return new C13922h(f17, f18, m10, f14 * f17, m10, f16 * f18);
        }

        @Override
        public boolean b(C13922h c13922h) {
            return c13922h.f94673d > c13922h.f94675f;
        }

        @Override
        public void c(RectF rectF, float f10, C13922h c13922h) {
            rectF.bottom -= Math.abs(c13922h.f94675f - c13922h.f94673d) * f10;
        }
    }

    public static class b implements InterfaceC13920f {
        @Override
        public C13922h a(float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
            float m10 = u.m(f14, f16, f11, f12, f10, true);
            float f17 = m10 / f14;
            float f18 = m10 / f16;
            return new C13922h(f17, f18, f13 * f17, m10, f15 * f18, m10);
        }

        @Override
        public boolean b(C13922h c13922h) {
            return c13922h.f94672c > c13922h.f94674e;
        }

        @Override
        public void c(RectF rectF, float f10, C13922h c13922h) {
            float abs = (Math.abs(c13922h.f94674e - c13922h.f94672c) / 2.0f) * f10;
            rectF.left += abs;
            rectF.right -= abs;
        }
    }

    public static InterfaceC13920f a(int i10, boolean z10, RectF rectF, RectF rectF2) {
        if (i10 == 0) {
            return b(z10, rectF, rectF2) ? f94668a : f94669b;
        }
        if (i10 == 1) {
            return f94668a;
        }
        if (i10 == 2) {
            return f94669b;
        }
        throw new IllegalArgumentException("Invalid fit mode: " + i10);
    }

    public static boolean b(boolean z10, RectF rectF, RectF rectF2) {
        float width = rectF.width();
        float height = rectF.height();
        float width2 = rectF2.width();
        float height2 = rectF2.height();
        float f10 = (height2 * width) / width2;
        float f11 = (width2 * height) / width;
        if (z10) {
            if (f10 < height) {
                return false;
            }
        } else if (f11 < height2) {
            return false;
        }
        return true;
    }
}
