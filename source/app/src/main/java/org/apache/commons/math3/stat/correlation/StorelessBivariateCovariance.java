package org.apache.commons.math3.stat.correlation;

import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

class StorelessBivariateCovariance {
    private boolean biasCorrected;
    private double covarianceNumerator;
    private double meanX;
    private double meanY;

    private double f100336n;

    public StorelessBivariateCovariance() {
        this(true);
    }

    public void append(StorelessBivariateCovariance storelessBivariateCovariance) {
        double d10 = this.f100336n;
        double d11 = storelessBivariateCovariance.f100336n + d10;
        this.f100336n = d11;
        double d12 = storelessBivariateCovariance.meanX;
        double d13 = this.meanX;
        double d14 = d12 - d13;
        double d15 = storelessBivariateCovariance.meanY;
        double d16 = this.meanY;
        double d17 = d15 - d16;
        double d18 = storelessBivariateCovariance.f100336n;
        this.meanX = d13 + ((d14 * d18) / d11);
        this.meanY = d16 + ((d17 * d18) / d11);
        this.covarianceNumerator += storelessBivariateCovariance.covarianceNumerator + (((d10 * d18) / d11) * d14 * d17);
    }

    public double getN() {
        return this.f100336n;
    }

    public double getResult() throws NumberIsTooSmallException {
        double d10;
        double d11 = this.f100336n;
        if (d11 < 2.0d) {
            throw new NumberIsTooSmallException(LocalizedFormats.INSUFFICIENT_DIMENSION, Double.valueOf(this.f100336n), 2, true);
        }
        if (this.biasCorrected) {
            d10 = this.covarianceNumerator;
            d11 -= 1.0d;
        } else {
            d10 = this.covarianceNumerator;
        }
        return d10 / d11;
    }

    public void increment(double d10, double d11) {
        double d12 = this.f100336n + 1.0d;
        this.f100336n = d12;
        double d13 = this.meanX;
        double d14 = d10 - d13;
        double d15 = this.meanY;
        double d16 = d11 - d15;
        this.meanX = d13 + (d14 / d12);
        this.meanY = d15 + (d16 / d12);
        this.covarianceNumerator += ((d12 - 1.0d) / d12) * d14 * d16;
    }

    public StorelessBivariateCovariance(boolean z10) {
        this.meanY = 0.0d;
        this.meanX = 0.0d;
        this.f100336n = 0.0d;
        this.covarianceNumerator = 0.0d;
        this.biasCorrected = z10;
    }
}
