package javax.vecmath;

import java.io.Serializable;

public class Point2f extends Tuple2f implements Serializable {
    static final long serialVersionUID = -4801347926528714435L;

    public Point2f(float f10, float f11) {
        super(f10, f11);
    }

    public final float distance(Point2f point2f) {
        float f10 = this.f92826x - point2f.f92826x;
        float f11 = this.f92827y - point2f.f92827y;
        return (float) Math.sqrt((f10 * f10) + (f11 * f11));
    }

    public final float distanceL1(Point2f point2f) {
        return Math.abs(this.f92826x - point2f.f92826x) + Math.abs(this.f92827y - point2f.f92827y);
    }

    public final float distanceLinf(Point2f point2f) {
        return Math.max(Math.abs(this.f92826x - point2f.f92826x), Math.abs(this.f92827y - point2f.f92827y));
    }

    public final float distanceSquared(Point2f point2f) {
        float f10 = this.f92826x - point2f.f92826x;
        float f11 = this.f92827y - point2f.f92827y;
        return (f10 * f10) + (f11 * f11);
    }

    public Point2f(float[] fArr) {
        super(fArr);
    }

    public Point2f(Point2f point2f) {
        super(point2f);
    }

    public Point2f(Point2d point2d) {
        super(point2d);
    }

    public Point2f(Tuple2d tuple2d) {
        super(tuple2d);
    }

    public Point2f(Tuple2f tuple2f) {
        super(tuple2f);
    }

    public Point2f() {
    }
}
