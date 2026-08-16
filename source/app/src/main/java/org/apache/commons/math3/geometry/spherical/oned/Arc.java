package org.apache.commons.math3.geometry.spherical.oned;

import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

public class Arc {
    private final double lower;
    private final double middle;
    private final double tolerance;
    private final double upper;

    public Arc(double d10, double d11, double d12) throws NumberIsTooLargeException {
        this.tolerance = d12;
        if (!Precision.equals(d10, d11, 0)) {
            double d13 = d11 - d10;
            if (d13 < 6.283185307179586d) {
                if (d10 > d11) {
                    throw new NumberIsTooLargeException(LocalizedFormats.ENDPOINTS_NOT_AN_INTERVAL, Double.valueOf(d10), Double.valueOf(d11), true);
                }
                double normalizeAngle = MathUtils.normalizeAngle(d10, 3.141592653589793d);
                this.lower = normalizeAngle;
                double d14 = d13 + normalizeAngle;
                this.upper = d14;
                this.middle = (normalizeAngle + d14) * 0.5d;
                return;
            }
        }
        this.lower = 0.0d;
        this.upper = 6.283185307179586d;
        this.middle = 3.141592653589793d;
    }

    public Region.Location checkPoint(double d10) {
        double normalizeAngle = MathUtils.normalizeAngle(d10, this.middle);
        double d11 = this.lower;
        double d12 = this.tolerance;
        if (normalizeAngle >= d11 - d12) {
            double d13 = this.upper;
            if (normalizeAngle <= d13 + d12) {
                if ((normalizeAngle <= d11 + d12 || normalizeAngle >= d13 - d12) && getSize() < 6.283185307179586d - this.tolerance) {
                    return Region.Location.BOUNDARY;
                }
                return Region.Location.INSIDE;
            }
        }
        return Region.Location.OUTSIDE;
    }

    public double getBarycenter() {
        return this.middle;
    }

    public double getInf() {
        return this.lower;
    }

    public double getSize() {
        return this.upper - this.lower;
    }

    public double getSup() {
        return this.upper;
    }

    public double getTolerance() {
        return this.tolerance;
    }
}
