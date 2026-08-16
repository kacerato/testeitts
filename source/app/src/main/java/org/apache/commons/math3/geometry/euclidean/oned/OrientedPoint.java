package org.apache.commons.math3.geometry.euclidean.oned;

import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;

public class OrientedPoint implements Hyperplane<Euclidean1D> {
    private static final double DEFAULT_TOLERANCE = 1.0E-10d;
    private boolean direct;
    private Vector1D location;
    private final double tolerance;

    public OrientedPoint(Vector1D vector1D, boolean z10, double d10) {
        this.location = vector1D;
        this.direct = z10;
        this.tolerance = d10;
    }

    @Override
    public Hyperplane<Euclidean1D> copySelf() {
        return this;
    }

    public Vector1D getLocation() {
        return this.location;
    }

    public double getOffset(Vector<Euclidean1D> vector) {
        return getOffset((Point<Euclidean1D>) vector);
    }

    @Override
    public double getTolerance() {
        return this.tolerance;
    }

    public boolean isDirect() {
        return this.direct;
    }

    @Override
    public Point<Euclidean1D> project(Point<Euclidean1D> point) {
        return this.location;
    }

    public void revertSelf() {
        this.direct = !this.direct;
    }

    @Override
    public boolean sameOrientationAs(Hyperplane<Euclidean1D> hyperplane) {
        return !(((OrientedPoint) hyperplane).direct ^ this.direct);
    }

    @Override
    public double getOffset(Point<Euclidean1D> point) {
        double x10 = ((Vector1D) point).getX() - this.location.getX();
        return this.direct ? x10 : -x10;
    }

    @Override
    public SubHyperplane<Euclidean1D> wholeHyperplane() {
        return new SubOrientedPoint(this, null);
    }

    @Override
    public Region<Euclidean1D> wholeSpace() {
        return new IntervalsSet(this.tolerance);
    }

    @Deprecated
    public OrientedPoint(Vector1D vector1D, boolean z10) {
        this(vector1D, z10, 1.0E-10d);
    }
}
