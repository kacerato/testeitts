package javax.vecmath;

import java.io.Serializable;

public class Point2d extends Tuple2d implements Serializable {
    static final long serialVersionUID = 1133748791492571954L;

    public Point2d(double d10, double d11) {
        super(d10, d11);
    }

    public final double distance(Point2d point2d) {
        double d10 = this.f92824x - point2d.f92824x;
        double d11 = this.f92825y - point2d.f92825y;
        return Math.sqrt((d10 * d10) + (d11 * d11));
    }

    public final double distanceL1(Point2d point2d) {
        return Math.abs(this.f92824x - point2d.f92824x) + Math.abs(this.f92825y - point2d.f92825y);
    }

    public final double distanceLinf(Point2d point2d) {
        return Math.max(Math.abs(this.f92824x - point2d.f92824x), Math.abs(this.f92825y - point2d.f92825y));
    }

    public final double distanceSquared(Point2d point2d) {
        double d10 = this.f92824x - point2d.f92824x;
        double d11 = this.f92825y - point2d.f92825y;
        return (d10 * d10) + (d11 * d11);
    }

    public Point2d(double[] dArr) {
        super(dArr);
    }

    public Point2d(Point2d point2d) {
        super(point2d);
    }

    public Point2d(Point2f point2f) {
        super(point2f);
    }

    public Point2d(Tuple2d tuple2d) {
        super(tuple2d);
    }

    public Point2d(Tuple2f tuple2f) {
        super(tuple2f);
    }

    public Point2d() {
    }
}
