package org.apache.commons.math3.geometry.spherical.twod;

import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.euclidean.threed.Rotation;
import org.apache.commons.math3.geometry.euclidean.threed.Vector3D;
import org.apache.commons.math3.geometry.partitioning.Embedding;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.geometry.partitioning.Transform;
import org.apache.commons.math3.geometry.spherical.oned.Arc;
import org.apache.commons.math3.geometry.spherical.oned.ArcsSet;
import org.apache.commons.math3.geometry.spherical.oned.S1Point;
import org.apache.commons.math3.geometry.spherical.oned.Sphere1D;
import org.apache.commons.math3.util.FastMath;

public class Circle implements Hyperplane<Sphere2D>, Embedding<Sphere2D, Sphere1D> {
    private Vector3D pole;
    private final double tolerance;

    private Vector3D f100197x;

    private Vector3D f100198y;

    public static Transform<Sphere2D, Sphere1D> getTransform(Rotation rotation) {
        return new CircleTransform(rotation);
    }

    public Arc getInsideArc(Circle circle) {
        double phase = getPhase(circle.pole);
        return new Arc(phase - 1.5707963267948966d, phase + 1.5707963267948966d, this.tolerance);
    }

    @Override
    public double getOffset(Point<Sphere2D> point) {
        return getOffset(((S2Point) point).getVector());
    }

    public double getPhase(Vector3D vector3D) {
        return FastMath.atan2(-vector3D.dotProduct(this.f100198y), -vector3D.dotProduct(this.f100197x)) + 3.141592653589793d;
    }

    public Vector3D getPointAt(double d10) {
        return new Vector3D(FastMath.cos(d10), this.f100197x, FastMath.sin(d10), this.f100198y);
    }

    public Vector3D getPole() {
        return this.pole;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r3v0, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Circle getReverse() {
        return new Circle(this.pole.negate(), this.f100197x, this.f100198y.negate(), this.tolerance);
    }

    @Override
    public double getTolerance() {
        return this.tolerance;
    }

    public Vector3D getXAxis() {
        return this.f100197x;
    }

    public Vector3D getYAxis() {
        return this.f100198y;
    }

    @Override
    public Point<Sphere2D> project(Point<Sphere2D> point) {
        return toSpace(toSubSpace(point));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r2v2, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public void reset(Vector3D vector3D) {
        this.pole = vector3D.normalize();
        Vector3D orthogonal = vector3D.orthogonal();
        this.f100197x = orthogonal;
        this.f100198y = Vector3D.crossProduct(vector3D, orthogonal).normalize();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r0v3, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public void revertSelf() {
        this.f100198y = this.f100198y.negate();
        this.pole = this.pole.negate();
    }

    @Override
    public boolean sameOrientationAs(Hyperplane<Sphere2D> hyperplane) {
        return Vector3D.dotProduct(this.pole, ((Circle) hyperplane).pole) >= 0.0d;
    }

    public Circle(Vector3D vector3D, double d10) {
        reset(vector3D);
        this.tolerance = d10;
    }

    @Override
    public Hyperplane<Sphere2D> copySelf() {
        return new Circle(this);
    }

    public double getOffset(Vector3D vector3D) {
        return Vector3D.angle(this.pole, vector3D) - 1.5707963267948966d;
    }

    @Override
    public Point<Sphere2D> toSpace(Point<Sphere1D> point) {
        return new S2Point(getPointAt(((S1Point) point).getAlpha()));
    }

    @Override
    public Point<Sphere1D> toSubSpace(Point<Sphere2D> point) {
        return new S1Point(getPhase(((S2Point) point).getVector()));
    }

    @Override
    public SubHyperplane<Sphere2D> wholeHyperplane() {
        return new SubCircle(this, new ArcsSet(this.tolerance));
    }

    @Override
    public Region<Sphere2D> wholeSpace() {
        return new SphericalPolygonsSet(this.tolerance);
    }

    public static class CircleTransform implements Transform<Sphere2D, Sphere1D> {
        private final Rotation rotation;

        public CircleTransform(Rotation rotation) {
            this.rotation = rotation;
        }

        @Override
        public SubHyperplane<Sphere1D> apply(SubHyperplane<Sphere1D> subHyperplane, Hyperplane<Sphere2D> hyperplane, Hyperplane<Sphere2D> hyperplane2) {
            return subHyperplane;
        }

        @Override
        public Point<Sphere2D> apply(Point<Sphere2D> point) {
            return new S2Point(this.rotation.applyTo(((S2Point) point).getVector()));
        }

        @Override
        public Hyperplane<Sphere2D> apply2(Hyperplane<Sphere2D> hyperplane) {
            Circle circle = (Circle) hyperplane;
            return new Circle(this.rotation.applyTo(circle.pole), this.rotation.applyTo(circle.f100197x), this.rotation.applyTo(circle.f100198y), circle.tolerance);
        }
    }

    public Circle(S2Point s2Point, S2Point s2Point2, double d10) {
        reset(s2Point.getVector().crossProduct(s2Point2.getVector()));
        this.tolerance = d10;
    }

    private Circle(Vector3D vector3D, Vector3D vector3D2, Vector3D vector3D3, double d10) {
        this.pole = vector3D;
        this.f100197x = vector3D2;
        this.f100198y = vector3D3;
        this.tolerance = d10;
    }

    public Circle(Circle circle) {
        this(circle.pole, circle.f100197x, circle.f100198y, circle.tolerance);
    }
}
