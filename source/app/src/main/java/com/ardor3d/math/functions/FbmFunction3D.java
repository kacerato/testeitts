package com.ardor3d.math.functions;

public class FbmFunction3D implements Function3D {
    private double _frequency;
    private double _lacunarity;
    private int _octaves;
    private double _persistence;
    private Function3D _source;

    public FbmFunction3D(Function3D function3D, int i10, double d10, double d11, double d12) {
        this._source = function3D;
        this._octaves = i10;
        this._frequency = d10;
        this._persistence = d11;
        this._lacunarity = d12;
    }

    @Override
    public double eval(double d10, double d11, double d12) {
        double d13 = this._frequency;
        double d14 = d11 * d13;
        double d15 = 0.0d;
        double d16 = 1.0d;
        double d17 = d13 * d12;
        double d18 = d10 * d13;
        for (int i10 = 0; i10 < this._octaves; i10++) {
            d15 += getValue(d18, d14, d17) * d16;
            d16 *= this._persistence;
            double d19 = this._lacunarity;
            d18 *= d19;
            d14 *= d19;
            d17 *= d19;
        }
        return d15;
    }

    public double getFrequency() {
        return this._frequency;
    }

    public double getLacunarity() {
        return this._lacunarity;
    }

    public int getOctaves() {
        return this._octaves;
    }

    public double getPersistence() {
        return this._persistence;
    }

    public Function3D getSource() {
        return this._source;
    }

    public double getValue(double d10, double d11, double d12) {
        return this._source.eval(d10, d11, d12);
    }

    public void setFrequency(double d10) {
        this._frequency = d10;
    }

    public void setLacunarity(double d10) {
        this._lacunarity = d10;
    }

    public void setOctaves(int i10) {
        this._octaves = i10;
    }

    public void setPersistence(double d10) {
        this._persistence = d10;
    }

    public void setSource(Function3D function3D) {
        this._source = function3D;
    }
}
