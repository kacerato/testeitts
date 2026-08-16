package org.apache.commons.math3.geometry.euclidean.twod;

import java.awt.geom.AffineTransform;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;
import org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet;
import org.apache.commons.math3.geometry.euclidean.oned.OrientedPoint;
import org.apache.commons.math3.geometry.euclidean.oned.Vector1D;
import org.apache.commons.math3.geometry.partitioning.Embedding;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.geometry.partitioning.Transform;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

public class Line implements Hyperplane<Euclidean2D>, Embedding<Euclidean2D, Euclidean1D> {
    private static final double DEFAULT_TOLERANCE = 1.0E-10d;
    private double angle;
    private double cos;
    private double originOffset;
    private Line reverse;
    private double sin;
    private final double tolerance;

    @Deprecated
    public static Transform<Euclidean2D, Euclidean1D> getTransform(AffineTransform affineTransform) throws MathIllegalArgumentException {
        double[] dArr = new double[6];
        affineTransform.getMatrix(dArr);
        return new LineTransform(dArr[0], dArr[1], dArr[2], dArr[3], dArr[4], dArr[5]);
    }

    private void unlinkReverse() {
        Line line = this.reverse;
        if (line != null) {
            line.reverse = null;
        }
        this.reverse = null;
    }

    public boolean contains(Vector2D vector2D) {
        return FastMath.abs(getOffset((Vector<Euclidean2D>) vector2D)) < this.tolerance;
    }

    public double distance(Vector2D vector2D) {
        return FastMath.abs(getOffset((Vector<Euclidean2D>) vector2D));
    }

    public double getAngle() {
        return MathUtils.normalizeAngle(this.angle, 3.141592653589793d);
    }

    public double getOffset(Line line) {
        return this.originOffset + (MathArrays.linearCombination(this.cos, line.cos, this.sin, line.sin) > 0.0d ? -line.originOffset : line.originOffset);
    }

    public double getOriginOffset() {
        return this.originOffset;
    }

    public Vector2D getPointAt(Vector1D vector1D, double d10) {
        double x10 = vector1D.getX();
        double d11 = d10 - this.originOffset;
        return new Vector2D(MathArrays.linearCombination(x10, this.cos, d11, this.sin), MathArrays.linearCombination(x10, this.sin, -d11, this.cos));
    }

    public Line getReverse() {
        if (this.reverse == null) {
            double d10 = this.angle;
            Line line = new Line(d10 < 3.141592653589793d ? d10 + 3.141592653589793d : d10 - 3.141592653589793d, -this.cos, -this.sin, -this.originOffset, this.tolerance);
            this.reverse = line;
            line.reverse = this;
        }
        return this.reverse;
    }

    @Override
    public double getTolerance() {
        return this.tolerance;
    }

    public Vector2D intersection(Line line) {
        double linearCombination = MathArrays.linearCombination(this.sin, line.cos, -line.sin, this.cos);
        if (FastMath.abs(linearCombination) < this.tolerance) {
            return null;
        }
        return new Vector2D(MathArrays.linearCombination(this.cos, line.originOffset, -line.cos, this.originOffset) / linearCombination, MathArrays.linearCombination(this.sin, line.originOffset, -line.sin, this.originOffset) / linearCombination);
    }

    public boolean isParallelTo(Line line) {
        return FastMath.abs(MathArrays.linearCombination(this.sin, line.cos, -this.cos, line.sin)) < this.tolerance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [org.apache.commons.math3.geometry.Vector, org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    @Override
    public Point<Euclidean2D> project(Point<Euclidean2D> point) {
        return toSpace((Vector<Euclidean1D>) toSubSpace(point));
    }

    public void reset(Vector2D vector2D, Vector2D vector2D2) {
        unlinkReverse();
        double x10 = vector2D2.getX() - vector2D.getX();
        double y10 = vector2D2.getY() - vector2D.getY();
        double hypot = FastMath.hypot(x10, y10);
        if (hypot == 0.0d) {
            this.angle = 0.0d;
            this.cos = 1.0d;
            this.sin = 0.0d;
            this.originOffset = vector2D.getY();
            return;
        }
        this.angle = FastMath.atan2(-y10, -x10) + 3.141592653589793d;
        this.cos = x10 / hypot;
        this.sin = y10 / hypot;
        this.originOffset = MathArrays.linearCombination(vector2D2.getX(), vector2D.getY(), -vector2D.getX(), vector2D2.getY()) / hypot;
    }

    public void revertSelf() {
        unlinkReverse();
        double d10 = this.angle;
        if (d10 < 3.141592653589793d) {
            this.angle = d10 + 3.141592653589793d;
        } else {
            this.angle = d10 - 3.141592653589793d;
        }
        this.cos = -this.cos;
        this.sin = -this.sin;
        this.originOffset = -this.originOffset;
    }

    @Override
    public boolean sameOrientationAs(Hyperplane<Euclidean2D> hyperplane) {
        Line line = (Line) hyperplane;
        return MathArrays.linearCombination(this.sin, line.sin, this.cos, line.cos) >= 0.0d;
    }

    public void setAngle(double d10) {
        unlinkReverse();
        double normalizeAngle = MathUtils.normalizeAngle(d10, 3.141592653589793d);
        this.angle = normalizeAngle;
        this.cos = FastMath.cos(normalizeAngle);
        this.sin = FastMath.sin(this.angle);
    }

    public void setOriginOffset(double d10) {
        unlinkReverse();
        this.originOffset = d10;
    }

    public void translateToPoint(Vector2D vector2D) {
        this.originOffset = MathArrays.linearCombination(this.cos, vector2D.getY(), -this.sin, vector2D.getX());
    }

    public static class LineTransform implements Transform<Euclidean2D, Euclidean1D> {
        private double c11;
        private double c1X;
        private double c1Y;
        private double cX1;
        private double cXX;
        private double cXY;
        private double cY1;
        private double cYX;
        private double cYY;

        public LineTransform(double d10, double d11, double d12, double d13, double d14, double d15) throws MathIllegalArgumentException {
            this.cXX = d10;
            this.cYX = d11;
            this.cXY = d12;
            this.cYY = d13;
            this.cX1 = d14;
            this.cY1 = d15;
            this.c1Y = MathArrays.linearCombination(d12, d15, -d13, d14);
            double d16 = -d11;
            this.c1X = MathArrays.linearCombination(d10, d15, d16, d14);
            double linearCombination = MathArrays.linearCombination(d10, d13, d16, d12);
            this.c11 = linearCombination;
            if (FastMath.abs(linearCombination) < 1.0E-20d) {
                throw new MathIllegalArgumentException(LocalizedFormats.NON_INVERTIBLE_TRANSFORM, new Object[0]);
            }
        }

        @Override
        public Point<Euclidean2D> apply(Point<Euclidean2D> point) {
            Vector2D vector2D = (Vector2D) point;
            double x10 = vector2D.getX();
            double y10 = vector2D.getY();
            return new Vector2D(MathArrays.linearCombination(this.cXX, x10, this.cXY, y10, this.cX1, 1.0d), MathArrays.linearCombination(this.cYX, x10, this.cYY, y10, this.cY1, 1.0d));
        }

        @Override
        public Hyperplane<Euclidean2D> apply2(Hyperplane<Euclidean2D> hyperplane) {
            Line line = (Line) hyperplane;
            double linearCombination = MathArrays.linearCombination(this.c1X, line.cos, this.c1Y, line.sin, this.c11, line.originOffset);
            double linearCombination2 = MathArrays.linearCombination(this.cXX, line.cos, this.cXY, line.sin);
            double linearCombination3 = MathArrays.linearCombination(this.cYX, line.cos, this.cYY, line.sin);
            double sqrt = 1.0d / FastMath.sqrt((linearCombination3 * linearCombination3) + (linearCombination2 * linearCombination2));
            return new Line(FastMath.atan2(-linearCombination3, -linearCombination2) + 3.141592653589793d, sqrt * linearCombination2, sqrt * linearCombination3, sqrt * linearCombination, line.tolerance);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [org.apache.commons.math3.geometry.Vector, org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
        @Override
        public SubHyperplane<Euclidean1D> apply(SubHyperplane<Euclidean1D> subHyperplane, Hyperplane<Euclidean2D> hyperplane, Hyperplane<Euclidean2D> hyperplane2) {
            OrientedPoint orientedPoint = (OrientedPoint) subHyperplane.getHyperplane();
            Line line = (Line) hyperplane;
            return new OrientedPoint(((Line) hyperplane2).toSubSpace((Vector<Euclidean2D>) apply((Point<Euclidean2D>) line.toSpace((Vector<Euclidean1D>) orientedPoint.getLocation()))), orientedPoint.isDirect(), line.tolerance).wholeHyperplane();
        }
    }

    public Line(Vector2D vector2D, Vector2D vector2D2, double d10) {
        reset(vector2D, vector2D2);
        this.tolerance = d10;
    }

    @Override
    public Hyperplane<Euclidean2D> copySelf() {
        return new Line(this);
    }

    public double getOffset(Vector<Euclidean2D> vector) {
        return getOffset((Point<Euclidean2D>) vector);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
    public Vector2D toSpace(Vector<Euclidean1D> vector) {
        return toSpace((Point<Euclidean1D>) vector);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    public Vector1D toSubSpace(Vector<Euclidean2D> vector) {
        return toSubSpace((Point<Euclidean2D>) vector);
    }

    @Override
    public SubHyperplane<Euclidean2D> wholeHyperplane() {
        return new SubLine(this, new IntervalsSet(this.tolerance));
    }

    @Override
    public Region<Euclidean2D> wholeSpace() {
        return new PolygonsSet(this.tolerance);
    }

    @Override
    public double getOffset(Point<Euclidean2D> point) {
        Vector2D vector2D = (Vector2D) point;
        return MathArrays.linearCombination(this.sin, vector2D.getX(), -this.cos, vector2D.getY(), 1.0d, this.originOffset);
    }

    @Override
    public Point<Euclidean2D> toSpace(Point<Euclidean1D> point) {
        double x10 = ((Vector1D) point).getX();
        return new Vector2D(MathArrays.linearCombination(x10, this.cos, -this.originOffset, this.sin), MathArrays.linearCombination(x10, this.sin, this.originOffset, this.cos));
    }

    @Override
    public Point<Euclidean1D> toSubSpace(Point<Euclidean2D> point) {
        Vector2D vector2D = (Vector2D) point;
        return new Vector1D(MathArrays.linearCombination(this.cos, vector2D.getX(), this.sin, vector2D.getY()));
    }

    public static Transform<Euclidean2D, Euclidean1D> getTransform(double d10, double d11, double d12, double d13, double d14, double d15) throws MathIllegalArgumentException {
        return new LineTransform(d10, d11, d12, d13, d14, d15);
    }

    public Line(Vector2D vector2D, double d10, double d11) {
        reset(vector2D, d10);
        this.tolerance = d11;
    }

    private Line(double d10, double d11, double d12, double d13, double d14) {
        this.angle = d10;
        this.cos = d11;
        this.sin = d12;
        this.originOffset = d13;
        this.tolerance = d14;
        this.reverse = null;
    }

    public void reset(Vector2D vector2D, double d10) {
        unlinkReverse();
        double normalizeAngle = MathUtils.normalizeAngle(d10, 3.141592653589793d);
        this.angle = normalizeAngle;
        this.cos = FastMath.cos(normalizeAngle);
        this.sin = FastMath.sin(this.angle);
        this.originOffset = MathArrays.linearCombination(this.cos, vector2D.getY(), -this.sin, vector2D.getX());
    }

    @Deprecated
    public Line(Vector2D vector2D, Vector2D vector2D2) {
        this(vector2D, vector2D2, 1.0E-10d);
    }

    @Deprecated
    public Line(Vector2D vector2D, double d10) {
        this(vector2D, d10, 1.0E-10d);
    }

    public Line(Line line) {
        this.angle = MathUtils.normalizeAngle(line.angle, 3.141592653589793d);
        this.cos = line.cos;
        this.sin = line.sin;
        this.originOffset = line.originOffset;
        this.tolerance = line.tolerance;
        this.reverse = null;
    }
}
