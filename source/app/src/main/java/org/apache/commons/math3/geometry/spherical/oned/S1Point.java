package org.apache.commons.math3.geometry.spherical.oned;

import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.euclidean.twod.Vector2D;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

public class S1Point implements Point<Sphere1D> {
    public static final S1Point NaN = new S1Point(Double.NaN, Vector2D.NaN);
    private static final long serialVersionUID = 20131218;
    private final double alpha;
    private final Vector2D vector;

    public S1Point(double d10) {
        this(MathUtils.normalizeAngle(d10, 3.141592653589793d), new Vector2D(FastMath.cos(d10), FastMath.sin(d10)));
    }

    @Override
    public double distance(Point<Sphere1D> point) {
        return distance(this, (S1Point) point);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof S1Point)) {
            return false;
        }
        S1Point s1Point = (S1Point) obj;
        return s1Point.isNaN() ? isNaN() : this.alpha == s1Point.alpha;
    }

    public double getAlpha() {
        return this.alpha;
    }

    @Override
    public Space getSpace() {
        return Sphere1D.getInstance();
    }

    public Vector2D getVector() {
        return this.vector;
    }

    public int hashCode() {
        if (isNaN()) {
            return 542;
        }
        return MathUtils.hash(this.alpha) * 1759;
    }

    @Override
    public boolean isNaN() {
        return Double.isNaN(this.alpha);
    }

    private S1Point(double d10, Vector2D vector2D) {
        this.alpha = d10;
        this.vector = vector2D;
    }

    public static double distance(S1Point s1Point, S1Point s1Point2) {
        return Vector2D.angle(s1Point.vector, s1Point2.vector);
    }
}
