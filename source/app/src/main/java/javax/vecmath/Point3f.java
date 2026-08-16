package javax.vecmath;

import java.io.Serializable;

public class Point3f extends Tuple3f implements Serializable {
    static final long serialVersionUID = -8689337816398030143L;

    public Point3f(float f10, float f11, float f12) {
        super(f10, f11, f12);
    }

    public final float distance(Point3f point3f) {
        float f10 = this.f92836x - point3f.f92836x;
        float f11 = this.f92837y - point3f.f92837y;
        float f12 = this.f92838z - point3f.f92838z;
        return (float) Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
    }

    public final float distanceL1(Point3f point3f) {
        return Math.abs(this.f92836x - point3f.f92836x) + Math.abs(this.f92837y - point3f.f92837y) + Math.abs(this.f92838z - point3f.f92838z);
    }

    public final float distanceLinf(Point3f point3f) {
        return Math.max(Math.max(Math.abs(this.f92836x - point3f.f92836x), Math.abs(this.f92837y - point3f.f92837y)), Math.abs(this.f92838z - point3f.f92838z));
    }

    public final float distanceSquared(Point3f point3f) {
        float f10 = this.f92836x - point3f.f92836x;
        float f11 = this.f92837y - point3f.f92837y;
        float f12 = this.f92838z - point3f.f92838z;
        return (f10 * f10) + (f11 * f11) + (f12 * f12);
    }

    public final void project(Point4f point4f) {
        float f10 = 1.0f / point4f.f92850w;
        this.f92836x = point4f.f92851x * f10;
        this.f92837y = point4f.f92852y * f10;
        this.f92838z = point4f.f92853z * f10;
    }

    public Point3f(float[] fArr) {
        super(fArr);
    }

    public Point3f(Point3f point3f) {
        super(point3f);
    }

    public Point3f(Point3d point3d) {
        super(point3d);
    }

    public Point3f(Tuple3f tuple3f) {
        super(tuple3f);
    }

    public Point3f(Tuple3d tuple3d) {
        super(tuple3d);
    }

    public Point3f() {
    }
}
