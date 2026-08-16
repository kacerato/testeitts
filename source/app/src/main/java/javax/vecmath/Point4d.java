package javax.vecmath;

import java.io.Serializable;

public class Point4d extends Tuple4d implements Serializable {
    static final long serialVersionUID = 1733471895962736949L;

    public Point4d(double d10, double d11, double d12, double d13) {
        super(d10, d11, d12, d13);
    }

    public final double distance(Point4d point4d) {
        double d10 = this.f92847x - point4d.f92847x;
        double d11 = this.f92848y - point4d.f92848y;
        double d12 = this.f92849z - point4d.f92849z;
        double d13 = this.f92846w - point4d.f92846w;
        return Math.sqrt((d10 * d10) + (d11 * d11) + (d12 * d12) + (d13 * d13));
    }

    public final double distanceL1(Point4d point4d) {
        return Math.abs(this.f92847x - point4d.f92847x) + Math.abs(this.f92848y - point4d.f92848y) + Math.abs(this.f92849z - point4d.f92849z) + Math.abs(this.f92846w - point4d.f92846w);
    }

    public final double distanceLinf(Point4d point4d) {
        return Math.max(Math.max(Math.abs(this.f92847x - point4d.f92847x), Math.abs(this.f92848y - point4d.f92848y)), Math.max(Math.abs(this.f92849z - point4d.f92849z), Math.abs(this.f92846w - point4d.f92846w)));
    }

    public final double distanceSquared(Point4d point4d) {
        double d10 = this.f92847x - point4d.f92847x;
        double d11 = this.f92848y - point4d.f92848y;
        double d12 = this.f92849z - point4d.f92849z;
        double d13 = this.f92846w - point4d.f92846w;
        return (d10 * d10) + (d11 * d11) + (d12 * d12) + (d13 * d13);
    }

    public final void project(Point4d point4d) {
        double d10 = 1.0d / point4d.f92846w;
        this.f92847x = point4d.f92847x * d10;
        this.f92848y = point4d.f92848y * d10;
        this.f92849z = point4d.f92849z * d10;
        this.f92846w = 1.0d;
    }

    public final void set(Tuple3d tuple3d) {
        this.f92847x = tuple3d.f92833x;
        this.f92848y = tuple3d.f92834y;
        this.f92849z = tuple3d.f92835z;
        this.f92846w = 1.0d;
    }

    public Point4d(double[] dArr) {
        super(dArr);
    }

    public Point4d(Point4d point4d) {
        super(point4d);
    }

    public Point4d(Point4f point4f) {
        super(point4f);
    }

    public Point4d(Tuple4f tuple4f) {
        super(tuple4f);
    }

    public Point4d(Tuple4d tuple4d) {
        super(tuple4d);
    }

    public Point4d(Tuple3d tuple3d) {
        super(tuple3d.f92833x, tuple3d.f92834y, tuple3d.f92835z, 1.0d);
    }

    public Point4d() {
    }
}
