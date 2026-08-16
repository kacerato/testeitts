package l2;

import android.graphics.RectF;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
public class C14049g {

    public static final InterfaceC14048f f95941a = new a();

    public static final InterfaceC14048f f95942b = new b();

    public static class a implements InterfaceC14048f {
        @Override
        public h a(float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
            float m10 = v.m(f13, f15, f11, f12, f10, true);
            float f17 = m10 / f13;
            float f18 = m10 / f15;
            return new h(f17, f18, m10, f14 * f17, m10, f16 * f18);
        }

        @Override
        public void b(RectF rectF, float f10, h hVar) {
            rectF.bottom -= Math.abs(hVar.f95948f - hVar.f95946d) * f10;
        }

        @Override
        public boolean c(h hVar) {
            return hVar.f95946d > hVar.f95948f;
        }
    }

    public static class b implements InterfaceC14048f {
        @Override
        public h a(float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
            float m10 = v.m(f14, f16, f11, f12, f10, true);
            float f17 = m10 / f14;
            float f18 = m10 / f16;
            return new h(f17, f18, f13 * f17, m10, f15 * f18, m10);
        }

        @Override
        public void b(RectF rectF, float f10, h hVar) {
            float abs = (Math.abs(hVar.f95947e - hVar.f95945c) / 2.0f) * f10;
            rectF.left += abs;
            rectF.right -= abs;
        }

        @Override
        public boolean c(h hVar) {
            return hVar.f95945c > hVar.f95947e;
        }
    }

    public static InterfaceC14048f a(int i10, boolean z10, RectF rectF, RectF rectF2) {
        if (i10 == 0) {
            return b(z10, rectF, rectF2) ? f95941a : f95942b;
        }
        if (i10 == 1) {
            return f95941a;
        }
        if (i10 == 2) {
            return f95942b;
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
