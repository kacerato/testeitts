package javax.vecmath;

import java.io.Serializable;

public class Point3d extends Tuple3d implements Serializable {
    static final long serialVersionUID = 5718062286069042927L;

    public Point3d(double d10, double d11, double d12) {
        super(d10, d11, d12);
    }

    public final double distance(Point3d point3d) {
        double d10 = this.f92833x - point3d.f92833x;
        double d11 = this.f92834y - point3d.f92834y;
        double d12 = this.f92835z - point3d.f92835z;
        return Math.sqrt((d10 * d10) + (d11 * d11) + (d12 * d12));
    }

    public final double distanceL1(Point3d point3d) {
        return Math.abs(this.f92833x - point3d.f92833x) + Math.abs(this.f92834y - point3d.f92834y) + Math.abs(this.f92835z - point3d.f92835z);
    }

    public final double distanceLinf(Point3d point3d) {
        return Math.max(Math.max(Math.abs(this.f92833x - point3d.f92833x), Math.abs(this.f92834y - point3d.f92834y)), Math.abs(this.f92835z - point3d.f92835z));
    }

    public final double distanceSquared(Point3d point3d) {
        double d10 = this.f92833x - point3d.f92833x;
        double d11 = this.f92834y - point3d.f92834y;
        double d12 = this.f92835z - point3d.f92835z;
        return (d10 * d10) + (d11 * d11) + (d12 * d12);
    }

    public final void project(Point4d point4d) {
        double d10 = 1.0d / point4d.f92846w;
        this.f92833x = point4d.f92847x * d10;
        this.f92834y = point4d.f92848y * d10;
        this.f92835z = point4d.f92849z * d10;
    }

    public Point3d(double[] dArr) {
        super(dArr);
    }

    public Point3d(Point3d point3d) {
        super(point3d);
    }

    public Point3d(Point3f point3f) {
        super(point3f);
    }

    public Point3d(Tuple3f tuple3f) {
        super(tuple3f);
    }

    public Point3d(Tuple3d tuple3d) {
        super(tuple3d);
    }

    public Point3d() {
    }
}
