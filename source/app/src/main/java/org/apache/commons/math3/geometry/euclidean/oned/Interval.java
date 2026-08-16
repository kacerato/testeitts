package org.apache.commons.math3.geometry.euclidean.oned;

import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.partitioning.Region;

public class Interval {
    private final double lower;
    private final double upper;

    public Interval(double d10, double d11) {
        if (d11 < d10) {
            throw new NumberIsTooSmallException(LocalizedFormats.ENDPOINTS_NOT_AN_INTERVAL, Double.valueOf(d11), Double.valueOf(d10), true);
        }
        this.lower = d10;
        this.upper = d11;
    }

    public Region.Location checkPoint(double d10, double d11) {
        double d12 = this.lower;
        if (d10 >= d12 - d11) {
            double d13 = this.upper;
            if (d10 <= d13 + d11) {
                return (d10 <= d12 + d11 || d10 >= d13 - d11) ? Region.Location.BOUNDARY : Region.Location.INSIDE;
            }
        }
        return Region.Location.OUTSIDE;
    }

    public double getBarycenter() {
        return (this.lower + this.upper) * 0.5d;
    }

    public double getInf() {
        return this.lower;
    }

    @Deprecated
    public double getLength() {
        return getSize();
    }

    @Deprecated
    public double getLower() {
        return getInf();
    }

    @Deprecated
    public double getMidPoint() {
        return getBarycenter();
    }

    public double getSize() {
        return this.upper - this.lower;
    }

    public double getSup() {
        return this.upper;
    }

    @Deprecated
    public double getUpper() {
        return getSup();
    }
}
