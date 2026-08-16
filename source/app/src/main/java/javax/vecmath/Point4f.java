package javax.vecmath;

import java.io.Serializable;

public class Point4f extends Tuple4f implements Serializable {
    static final long serialVersionUID = 4643134103185764459L;

    public Point4f(float f10, float f11, float f12, float f13) {
        super(f10, f11, f12, f13);
    }

    public final float distance(Point4f point4f) {
        float f10 = this.f92851x - point4f.f92851x;
        float f11 = this.f92852y - point4f.f92852y;
        float f12 = this.f92853z - point4f.f92853z;
        float f13 = this.f92850w - point4f.f92850w;
        return (float) Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12) + (f13 * f13));
    }

    public final float distanceL1(Point4f point4f) {
        return Math.abs(this.f92851x - point4f.f92851x) + Math.abs(this.f92852y - point4f.f92852y) + Math.abs(this.f92853z - point4f.f92853z) + Math.abs(this.f92850w - point4f.f92850w);
    }

    public final float distanceLinf(Point4f point4f) {
        return Math.max(Math.max(Math.abs(this.f92851x - point4f.f92851x), Math.abs(this.f92852y - point4f.f92852y)), Math.max(Math.abs(this.f92853z - point4f.f92853z), Math.abs(this.f92850w - point4f.f92850w)));
    }

    public final float distanceSquared(Point4f point4f) {
        float f10 = this.f92851x - point4f.f92851x;
        float f11 = this.f92852y - point4f.f92852y;
        float f12 = this.f92853z - point4f.f92853z;
        float f13 = this.f92850w - point4f.f92850w;
        return (f10 * f10) + (f11 * f11) + (f12 * f12) + (f13 * f13);
    }

    public final void project(Point4f point4f) {
        float f10 = 1.0f / point4f.f92850w;
        this.f92851x = point4f.f92851x * f10;
        this.f92852y = point4f.f92852y * f10;
        this.f92853z = point4f.f92853z * f10;
        this.f92850w = 1.0f;
    }

    public final void set(Tuple3f tuple3f) {
        this.f92851x = tuple3f.f92836x;
        this.f92852y = tuple3f.f92837y;
        this.f92853z = tuple3f.f92838z;
        this.f92850w = 1.0f;
    }

    public Point4f(float[] fArr) {
        super(fArr);
    }

    public Point4f(Point4f point4f) {
        super(point4f);
    }

    public Point4f(Point4d point4d) {
        super(point4d);
    }

    public Point4f(Tuple4f tuple4f) {
        super(tuple4f);
    }

    public Point4f(Tuple4d tuple4d) {
        super(tuple4d);
    }

    public Point4f(Tuple3f tuple3f) {
        super(tuple3f.f92836x, tuple3f.f92837y, tuple3f.f92838z, 1.0f);
    }

    public Point4f() {
    }
}
