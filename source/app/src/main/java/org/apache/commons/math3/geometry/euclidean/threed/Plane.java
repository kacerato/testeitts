package org.apache.commons.math3.geometry.euclidean.threed;

import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;
import org.apache.commons.math3.geometry.euclidean.oned.Vector1D;
import org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D;
import org.apache.commons.math3.geometry.euclidean.twod.PolygonsSet;
import org.apache.commons.math3.geometry.euclidean.twod.Vector2D;
import org.apache.commons.math3.geometry.partitioning.Embedding;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.util.FastMath;

public class Plane implements Hyperplane<Euclidean3D>, Embedding<Euclidean3D, Euclidean2D> {
    private static final double DEFAULT_TOLERANCE = 1.0E-10d;
    private Vector3D origin;
    private double originOffset;
    private final double tolerance;

    private Vector3D f100177u;

    private Vector3D f100178v;

    private Vector3D f100179w;

    public Plane(Vector3D vector3D, double d10) throws MathArithmeticException {
        setNormal(vector3D);
        this.tolerance = d10;
        this.originOffset = 0.0d;
        setFrame();
    }

    private void setFrame() {
        this.origin = new Vector3D(-this.originOffset, this.f100179w);
        Vector3D orthogonal = this.f100179w.orthogonal();
        this.f100177u = orthogonal;
        this.f100178v = Vector3D.crossProduct(this.f100179w, orthogonal);
    }

    private void setNormal(Vector3D vector3D) throws MathArithmeticException {
        double norm = vector3D.getNorm();
        if (norm < 1.0E-10d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        this.f100179w = new Vector3D(1.0d / norm, vector3D);
    }

    public boolean contains(Vector3D vector3D) {
        return FastMath.abs(getOffset((Vector<Euclidean3D>) vector3D)) < this.tolerance;
    }

    public Vector3D getNormal() {
        return this.f100179w;
    }

    public double getOffset(Plane plane) {
        return this.originOffset + (sameOrientationAs(plane) ? -plane.originOffset : plane.originOffset);
    }

    public Vector3D getOrigin() {
        return this.origin;
    }

    public Vector3D getPointAt(Vector2D vector2D, double d10) {
        return new Vector3D(vector2D.getX(), this.f100177u, vector2D.getY(), this.f100178v, d10 - this.originOffset, this.f100179w);
    }

    @Override
    public double getTolerance() {
        return this.tolerance;
    }

    public Vector3D getU() {
        return this.f100177u;
    }

    public Vector3D getV() {
        return this.f100178v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [org.apache.commons.math3.geometry.Vector, org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Vector3D intersection(Line line) {
        Vector3D direction = line.getDirection();
        double dotProduct = this.f100179w.dotProduct(direction);
        if (FastMath.abs(dotProduct) < 1.0E-10d) {
            return null;
        }
        ?? space = line.toSpace((Point<Euclidean1D>) Vector1D.ZERO);
        return new Vector3D(1.0d, space, (-(this.originOffset + this.f100179w.dotProduct(space))) / dotProduct, direction);
    }

    public boolean isSimilarTo(Plane plane) {
        double angle = Vector3D.angle(this.f100179w, plane.f100179w);
        return (angle < 1.0E-10d && FastMath.abs(this.originOffset - plane.originOffset) < this.tolerance) || (angle > 3.141592653489793d && FastMath.abs(this.originOffset + plane.originOffset) < this.tolerance);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [org.apache.commons.math3.geometry.Vector, org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
    @Override
    public Point<Euclidean3D> project(Point<Euclidean3D> point) {
        return toSpace((Vector<Euclidean2D>) toSubSpace(point));
    }

    public void reset(Vector3D vector3D, Vector3D vector3D2) throws MathArithmeticException {
        setNormal(vector3D2);
        this.originOffset = -vector3D.dotProduct(this.f100179w);
        setFrame();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public void revertSelf() {
        Vector3D vector3D = this.f100177u;
        this.f100177u = this.f100178v;
        this.f100178v = vector3D;
        this.f100179w = this.f100179w.negate();
        this.originOffset = -this.originOffset;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r5v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Plane rotate(Vector3D vector3D, Rotation rotation) {
        Plane plane = new Plane((Vector3D) vector3D.add((Vector<Euclidean3D>) rotation.applyTo((Vector3D) this.origin.subtract((Vector<Euclidean3D>) vector3D))), rotation.applyTo(this.f100179w), this.tolerance);
        plane.f100177u = rotation.applyTo(this.f100177u);
        plane.f100178v = rotation.applyTo(this.f100178v);
        return plane;
    }

    @Override
    public boolean sameOrientationAs(Hyperplane<Euclidean3D> hyperplane) {
        return ((Plane) hyperplane).f100179w.dotProduct(this.f100179w) > 0.0d;
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Plane translate(Vector3D vector3D) {
        Plane plane = new Plane((Vector3D) this.origin.add((Vector<Euclidean3D>) vector3D), this.f100179w, this.tolerance);
        plane.f100177u = this.f100177u;
        plane.f100178v = this.f100178v;
        return plane;
    }

    @Override
    public Hyperplane<Euclidean3D> copySelf() {
        return new Plane(this);
    }

    public double getOffset(Vector<Euclidean3D> vector) {
        return getOffset((Point<Euclidean3D>) vector);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Vector3D toSpace(Vector<Euclidean2D> vector) {
        return toSpace((Point<Euclidean2D>) vector);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
    public Vector2D toSubSpace(Vector<Euclidean3D> vector) {
        return toSubSpace((Point<Euclidean3D>) vector);
    }

    @Override
    public SubHyperplane<Euclidean3D> wholeHyperplane() {
        return new SubPlane(this, new PolygonsSet(this.tolerance));
    }

    @Override
    public Region<Euclidean3D> wholeSpace() {
        return new PolyhedronsSet(this.tolerance);
    }

    @Override
    public double getOffset(Point<Euclidean3D> point) {
        return ((Vector3D) point).dotProduct(this.f100179w) + this.originOffset;
    }

    @Override
    public Point<Euclidean3D> toSpace(Point<Euclidean2D> point) {
        Vector2D vector2D = (Vector2D) point;
        return new Vector3D(vector2D.getX(), this.f100177u, vector2D.getY(), this.f100178v, -this.originOffset, this.f100179w);
    }

    @Override
    public Point<Euclidean2D> toSubSpace(Point<Euclidean3D> point) {
        Vector3D vector3D = (Vector3D) point;
        return new Vector2D(vector3D.dotProduct(this.f100177u), vector3D.dotProduct(this.f100178v));
    }

    public void reset(Plane plane) {
        this.originOffset = plane.originOffset;
        this.origin = plane.origin;
        this.f100177u = plane.f100177u;
        this.f100178v = plane.f100178v;
        this.f100179w = plane.f100179w;
    }

    public Plane(Vector3D vector3D, Vector3D vector3D2, double d10) throws MathArithmeticException {
        setNormal(vector3D2);
        this.tolerance = d10;
        this.originOffset = -vector3D.dotProduct(this.f100179w);
        setFrame();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Line intersection(Plane plane) {
        Vector3D crossProduct = Vector3D.crossProduct(this.f100179w, plane.f100179w);
        double norm = crossProduct.getNorm();
        double d10 = this.tolerance;
        if (norm < d10) {
            return null;
        }
        Vector3D intersection = intersection(this, plane, new Plane(crossProduct, d10));
        return new Line(intersection, intersection.add((Vector<Euclidean3D>) crossProduct), this.tolerance);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Plane(Vector3D vector3D, Vector3D vector3D2, Vector3D vector3D3, double d10) throws MathArithmeticException {
        this(vector3D, vector3D2.subtract((Vector<Euclidean3D>) vector3D).crossProduct(vector3D3.subtract((Vector<Euclidean3D>) vector3D)), d10);
    }

    public static Vector3D intersection(Plane plane, Plane plane2, Plane plane3) {
        double x10 = plane.f100179w.getX();
        double y10 = plane.f100179w.getY();
        double z10 = plane.f100179w.getZ();
        double d10 = plane.originOffset;
        double x11 = plane2.f100179w.getX();
        double y11 = plane2.f100179w.getY();
        double z11 = plane2.f100179w.getZ();
        double d11 = plane2.originOffset;
        double x12 = plane3.f100179w.getX();
        double y12 = plane3.f100179w.getY();
        double z12 = plane3.f100179w.getZ();
        double d12 = plane3.originOffset;
        double d13 = (y11 * z12) - (y12 * z11);
        double d14 = (z11 * x12) - (z12 * x11);
        double d15 = (x11 * y12) - (x12 * y11);
        double d16 = (x10 * d13) + (y10 * d14) + (z10 * d15);
        if (FastMath.abs(d16) < 1.0E-10d) {
            return null;
        }
        double d17 = 1.0d / d16;
        return new Vector3D(((((-d13) * d10) - (((z10 * y12) - (z12 * y10)) * d11)) - (((z11 * y10) - (z10 * y11)) * d12)) * d17, ((((-d14) * d10) - (((z12 * x10) - (z10 * x12)) * d11)) - (((z10 * x11) - (z11 * x10)) * d12)) * d17, ((((-d15) * d10) - (((x12 * y10) - (y12 * x10)) * d11)) - (((y11 * x10) - (y10 * x11)) * d12)) * d17);
    }

    @Deprecated
    public Plane(Vector3D vector3D) throws MathArithmeticException {
        this(vector3D, 1.0E-10d);
    }

    @Deprecated
    public Plane(Vector3D vector3D, Vector3D vector3D2) throws MathArithmeticException {
        this(vector3D, vector3D2, 1.0E-10d);
    }

    @Deprecated
    public Plane(Vector3D vector3D, Vector3D vector3D2, Vector3D vector3D3) throws MathArithmeticException {
        this(vector3D, vector3D2, vector3D3, 1.0E-10d);
    }

    public Plane(Plane plane) {
        this.originOffset = plane.originOffset;
        this.origin = plane.origin;
        this.f100177u = plane.f100177u;
        this.f100178v = plane.f100178v;
        this.f100179w = plane.f100179w;
        this.tolerance = plane.tolerance;
    }
}
