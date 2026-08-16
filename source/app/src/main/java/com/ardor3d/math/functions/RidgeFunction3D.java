package com.ardor3d.math.functions;

import com.ardor3d.math.MathUtils;

public class RidgeFunction3D implements Function3D {
    public static final int MAX_OCTAVES = 32;
    private double _frequency;
    private double _gain;
    private double _h;
    private double _lacunarity;
    private double _octaves;
    private double _offset;
    private Function3D _source;
    private final double[] _spectralWeights;

    public RidgeFunction3D() {
        this._octaves = 6.0d;
        this._frequency = 1.0d;
        this._lacunarity = 2.0d;
        this._gain = 2.0d;
        this._offset = 1.0d;
        this._h = 1.0d;
        this._spectralWeights = new double[32];
        setSource(Functions.simplexNoise());
        updateWeights();
    }

    private void updateWeights() {
        double d10 = 1.0d;
        for (int i10 = 0; i10 < 32; i10++) {
            this._spectralWeights[i10] = Math.pow(d10, -this._h);
            d10 *= this._lacunarity;
        }
    }

    @Override
    public double eval(double d10, double d11, double d12) {
        double d13 = this._frequency;
        double d14 = d10 * d13;
        double d15 = d11 * d13;
        double d16 = d13 * d12;
        double d17 = 0.0d;
        double d18 = 1.0d;
        for (int i10 = 0; i10 < this._octaves; i10++) {
            double abs = this._offset - Math.abs(this._source.eval(d14, d15, d16));
            double d19 = abs * abs * d18;
            d18 = MathUtils.clamp(this._gain * d19, 0.0d, 1.0d);
            d17 += d19 * this._spectralWeights[i10];
            double d20 = this._lacunarity;
            d14 *= d20;
            d15 *= d20;
            d16 *= d20;
        }
        return (d17 * 1.25d) - 1.0d;
    }

    public double getFrequency() {
        return this._frequency;
    }

    public double getGain() {
        return this._gain;
    }

    public double getH() {
        return this._h;
    }

    public double getLacunarity() {
        return this._lacunarity;
    }

    public double getOctaves() {
        return this._octaves;
    }

    public double getOffset() {
        return this._offset;
    }

    public Function3D getSource() {
        return this._source;
    }

    public void setFrequency(double d10) {
        this._frequency = d10;
    }

    public void setGain(double d10) {
        this._gain = d10;
    }

    public void setH(double d10) {
        this._h = d10;
        updateWeights();
    }

    public void setLacunarity(double d10) {
        this._lacunarity = d10;
        updateWeights();
    }

    public void setOctaves(double d10) {
        this._octaves = d10;
    }

    public void setOffset(double d10) {
        this._offset = d10;
    }

    public void setSource(Function3D function3D) {
        this._source = function3D;
    }

    public RidgeFunction3D(Function3D function3D, double d10, double d11, double d12) {
        this._octaves = 6.0d;
        this._frequency = 1.0d;
        this._lacunarity = 2.0d;
        this._gain = 2.0d;
        this._offset = 1.0d;
        this._h = 1.0d;
        this._spectralWeights = new double[32];
        setSource(function3D);
        setOctaves(d10);
        setFrequency(d11);
        this._lacunarity = d12;
        updateWeights();
    }
}
