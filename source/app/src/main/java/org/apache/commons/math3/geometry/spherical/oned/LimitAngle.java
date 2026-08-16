package org.apache.commons.math3.geometry.spherical.oned;

import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;

public class LimitAngle implements Hyperplane<Sphere1D> {
    private boolean direct;
    private S1Point location;
    private final double tolerance;

    public LimitAngle(S1Point s1Point, boolean z10, double d10) {
        this.location = s1Point;
        this.direct = z10;
        this.tolerance = d10;
    }

    @Override
    public Hyperplane<Sphere1D> copySelf() {
        return this;
    }

    public S1Point getLocation() {
        return this.location;
    }

    @Override
    public double getOffset(Point<Sphere1D> point) {
        double alpha = ((S1Point) point).getAlpha() - this.location.getAlpha();
        return this.direct ? alpha : -alpha;
    }

    public LimitAngle getReverse() {
        return new LimitAngle(this.location, !this.direct, this.tolerance);
    }

    @Override
    public double getTolerance() {
        return this.tolerance;
    }

    public boolean isDirect() {
        return this.direct;
    }

    @Override
    public Point<Sphere1D> project(Point<Sphere1D> point) {
        return this.location;
    }

    @Override
    public boolean sameOrientationAs(Hyperplane<Sphere1D> hyperplane) {
        return !(((LimitAngle) hyperplane).direct ^ this.direct);
    }

    @Override
    public SubHyperplane<Sphere1D> wholeHyperplane() {
        return new SubLimitAngle(this, null);
    }

    @Override
    public Region<Sphere1D> wholeSpace() {
        return new ArcsSet(this.tolerance);
    }
}
