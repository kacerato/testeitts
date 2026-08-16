package androidx.core.graphics;

import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import kotlin.jvm.internal.M;

public final class RectKt {
    public static final Rect and(Rect rect, Rect r10) {
        M.p(rect, "<this>");
        M.p(r10, "r");
        Rect rect2 = new Rect(rect);
        rect2.intersect(r10);
        return rect2;
    }

    public static final int component1(Rect rect) {
        M.p(rect, "<this>");
        return rect.left;
    }

    public static final int component2(Rect rect) {
        M.p(rect, "<this>");
        return rect.top;
    }

    public static final int component3(Rect rect) {
        M.p(rect, "<this>");
        return rect.right;
    }

    public static final int component4(Rect rect) {
        M.p(rect, "<this>");
        return rect.bottom;
    }

    public static final boolean contains(Rect rect, Point p10) {
        M.p(rect, "<this>");
        M.p(p10, "p");
        return rect.contains(p10.f32423x, p10.f32424y);
    }

    public static final Region minus(Rect rect, Rect r10) {
        M.p(rect, "<this>");
        M.p(r10, "r");
        Region region = new Region(rect);
        region.op(r10, Region.Op.DIFFERENCE);
        return region;
    }

    public static final Rect or(Rect rect, Rect r10) {
        M.p(rect, "<this>");
        M.p(r10, "r");
        Rect rect2 = new Rect(rect);
        rect2.union(r10);
        return rect2;
    }

    public static final Rect plus(Rect rect, Rect r10) {
        M.p(rect, "<this>");
        M.p(r10, "r");
        Rect rect2 = new Rect(rect);
        rect2.union(r10);
        return rect2;
    }

    public static final Rect times(Rect rect, int i10) {
        M.p(rect, "<this>");
        Rect rect2 = new Rect(rect);
        rect2.top *= i10;
        rect2.left *= i10;
        rect2.right *= i10;
        rect2.bottom *= i10;
        return rect2;
    }

    public static final Rect toRect(RectF rectF) {
        M.p(rectF, "<this>");
        Rect rect = new Rect();
        rectF.roundOut(rect);
        return rect;
    }

    public static final RectF toRectF(Rect rect) {
        M.p(rect, "<this>");
        return new RectF(rect);
    }

    public static final Region toRegion(Rect rect) {
        M.p(rect, "<this>");
        return new Region(rect);
    }

    public static final RectF transform(RectF rectF, Matrix m10) {
        M.p(rectF, "<this>");
        M.p(m10, "m");
        m10.mapRect(rectF);
        return rectF;
    }

    public static final Region xor(Rect rect, Rect r10) {
        M.p(rect, "<this>");
        M.p(r10, "r");
        Region region = new Region(rect);
        region.op(r10, Region.Op.XOR);
        return region;
    }

    public static final float component1(RectF rectF) {
        M.p(rectF, "<this>");
        return rectF.left;
    }

    public static final float component2(RectF rectF) {
        M.p(rectF, "<this>");
        return rectF.top;
    }

    public static final float component3(RectF rectF) {
        M.p(rectF, "<this>");
        return rectF.right;
    }

    public static final float component4(RectF rectF) {
        M.p(rectF, "<this>");
        return rectF.bottom;
    }

    public static final boolean contains(RectF rectF, PointF p10) {
        M.p(rectF, "<this>");
        M.p(p10, "p");
        return rectF.contains(p10.f32425x, p10.f32426y);
    }

    public static final Region toRegion(RectF rectF) {
        M.p(rectF, "<this>");
        Rect rect = new Rect();
        rectF.roundOut(rect);
        return new Region(rect);
    }

    public static final RectF and(RectF rectF, RectF r10) {
        M.p(rectF, "<this>");
        M.p(r10, "r");
        RectF rectF2 = new RectF(rectF);
        rectF2.intersect(r10);
        return rectF2;
    }

    public static final Region minus(RectF rectF, RectF r10) {
        M.p(rectF, "<this>");
        M.p(r10, "r");
        Rect rect = new Rect();
        rectF.roundOut(rect);
        Region region = new Region(rect);
        Rect rect2 = new Rect();
        r10.roundOut(rect2);
        region.op(rect2, Region.Op.DIFFERENCE);
        return region;
    }

    public static final RectF or(RectF rectF, RectF r10) {
        M.p(rectF, "<this>");
        M.p(r10, "r");
        RectF rectF2 = new RectF(rectF);
        rectF2.union(r10);
        return rectF2;
    }

    public static final RectF plus(RectF rectF, RectF r10) {
        M.p(rectF, "<this>");
        M.p(r10, "r");
        RectF rectF2 = new RectF(rectF);
        rectF2.union(r10);
        return rectF2;
    }

    public static final Region xor(RectF rectF, RectF r10) {
        M.p(rectF, "<this>");
        M.p(r10, "r");
        Rect rect = new Rect();
        rectF.roundOut(rect);
        Region region = new Region(rect);
        Rect rect2 = new Rect();
        r10.roundOut(rect2);
        region.op(rect2, Region.Op.XOR);
        return region;
    }

    public static final Rect plus(Rect rect, int i10) {
        M.p(rect, "<this>");
        Rect rect2 = new Rect(rect);
        rect2.offset(i10, i10);
        return rect2;
    }

    public static final RectF times(RectF rectF, float f10) {
        M.p(rectF, "<this>");
        RectF rectF2 = new RectF(rectF);
        rectF2.top *= f10;
        rectF2.left *= f10;
        rectF2.right *= f10;
        rectF2.bottom *= f10;
        return rectF2;
    }

    public static final RectF plus(RectF rectF, float f10) {
        M.p(rectF, "<this>");
        RectF rectF2 = new RectF(rectF);
        rectF2.offset(f10, f10);
        return rectF2;
    }

    public static final Rect plus(Rect rect, Point xy) {
        M.p(rect, "<this>");
        M.p(xy, "xy");
        Rect rect2 = new Rect(rect);
        rect2.offset(xy.f32423x, xy.f32424y);
        return rect2;
    }

    public static final Rect minus(Rect rect, int i10) {
        M.p(rect, "<this>");
        Rect rect2 = new Rect(rect);
        int i11 = -i10;
        rect2.offset(i11, i11);
        return rect2;
    }

    public static final RectF plus(RectF rectF, PointF xy) {
        M.p(rectF, "<this>");
        M.p(xy, "xy");
        RectF rectF2 = new RectF(rectF);
        rectF2.offset(xy.f32425x, xy.f32426y);
        return rectF2;
    }

    public static final RectF times(RectF rectF, int i10) {
        M.p(rectF, "<this>");
        float f10 = i10;
        RectF rectF2 = new RectF(rectF);
        rectF2.top *= f10;
        rectF2.left *= f10;
        rectF2.right *= f10;
        rectF2.bottom *= f10;
        return rectF2;
    }

    public static final RectF minus(RectF rectF, float f10) {
        M.p(rectF, "<this>");
        RectF rectF2 = new RectF(rectF);
        float f11 = -f10;
        rectF2.offset(f11, f11);
        return rectF2;
    }

    public static final Rect minus(Rect rect, Point xy) {
        M.p(rect, "<this>");
        M.p(xy, "xy");
        Rect rect2 = new Rect(rect);
        rect2.offset(-xy.f32423x, -xy.f32424y);
        return rect2;
    }

    public static final RectF minus(RectF rectF, PointF xy) {
        M.p(rectF, "<this>");
        M.p(xy, "xy");
        RectF rectF2 = new RectF(rectF);
        rectF2.offset(-xy.f32425x, -xy.f32426y);
        return rectF2;
    }
}
