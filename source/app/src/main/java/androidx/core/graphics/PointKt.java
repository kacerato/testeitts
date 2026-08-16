package androidx.core.graphics;

import android.graphics.Point;
import android.graphics.PointF;
import kotlin.jvm.internal.M;

public final class PointKt {
    public static final int component1(Point point) {
        M.p(point, "<this>");
        return point.f32423x;
    }

    public static final int component2(Point point) {
        M.p(point, "<this>");
        return point.f32424y;
    }

    public static final Point minus(Point point, Point p10) {
        M.p(point, "<this>");
        M.p(p10, "p");
        Point point2 = new Point(point.f32423x, point.f32424y);
        point2.offset(-p10.f32423x, -p10.f32424y);
        return point2;
    }

    public static final Point plus(Point point, Point p10) {
        M.p(point, "<this>");
        M.p(p10, "p");
        Point point2 = new Point(point.f32423x, point.f32424y);
        point2.offset(p10.f32423x, p10.f32424y);
        return point2;
    }

    public static final Point toPoint(PointF pointF) {
        M.p(pointF, "<this>");
        return new Point((int) pointF.f32425x, (int) pointF.f32426y);
    }

    public static final PointF toPointF(Point point) {
        M.p(point, "<this>");
        return new PointF(point);
    }

    public static final Point unaryMinus(Point point) {
        M.p(point, "<this>");
        return new Point(-point.f32423x, -point.f32424y);
    }

    public static final float component1(PointF pointF) {
        M.p(pointF, "<this>");
        return pointF.f32425x;
    }

    public static final float component2(PointF pointF) {
        M.p(pointF, "<this>");
        return pointF.f32426y;
    }

    public static final PointF unaryMinus(PointF pointF) {
        M.p(pointF, "<this>");
        return new PointF(-pointF.f32425x, -pointF.f32426y);
    }

    public static final PointF minus(PointF pointF, PointF p10) {
        M.p(pointF, "<this>");
        M.p(p10, "p");
        PointF pointF2 = new PointF(pointF.f32425x, pointF.f32426y);
        pointF2.offset(-p10.f32425x, -p10.f32426y);
        return pointF2;
    }

    public static final PointF plus(PointF pointF, PointF p10) {
        M.p(pointF, "<this>");
        M.p(p10, "p");
        PointF pointF2 = new PointF(pointF.f32425x, pointF.f32426y);
        pointF2.offset(p10.f32425x, p10.f32426y);
        return pointF2;
    }

    public static final Point minus(Point point, int i10) {
        M.p(point, "<this>");
        Point point2 = new Point(point.f32423x, point.f32424y);
        int i11 = -i10;
        point2.offset(i11, i11);
        return point2;
    }

    public static final Point plus(Point point, int i10) {
        M.p(point, "<this>");
        Point point2 = new Point(point.f32423x, point.f32424y);
        point2.offset(i10, i10);
        return point2;
    }

    public static final PointF minus(PointF pointF, float f10) {
        M.p(pointF, "<this>");
        PointF pointF2 = new PointF(pointF.f32425x, pointF.f32426y);
        float f11 = -f10;
        pointF2.offset(f11, f11);
        return pointF2;
    }

    public static final PointF plus(PointF pointF, float f10) {
        M.p(pointF, "<this>");
        PointF pointF2 = new PointF(pointF.f32425x, pointF.f32426y);
        pointF2.offset(f10, f10);
        return pointF2;
    }
}
