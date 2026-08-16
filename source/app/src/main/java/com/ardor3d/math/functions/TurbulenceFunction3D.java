package com.ardor3d.math.functions;

public class TurbulenceFunction3D implements Function3D {
    private final FbmFunction3D _distortModule;
    private double _power;
    private Function3D _source;

    public TurbulenceFunction3D(Function3D function3D, double d10, int i10, double d11) {
        this._power = d10;
        this._source = function3D;
        this._distortModule = new FbmFunction3D(Functions.simplexNoise(), i10, d11, 0.5d, 2.0d);
    }

    @Override
    public double eval(double d10, double d11, double d12) {
        return this._source.eval(d10 + (this._distortModule.eval(d10 + 0.1985d, d11 + 0.9958d, d12 + 0.5284d) * this._power), d11 + (this._distortModule.eval(d10 + 0.4106d, d11 + 0.2672d, d12 + 0.9529d) * this._power), d12 + (this._distortModule.eval(d10 + 0.8297d, d11 + 0.1921d, d12 + 0.7123d) * this._power));
    }

    public double getPower() {
        return this._power;
    }

    public Function3D getSource() {
        return this._source;
    }

    public void setFrequency(double d10) {
        this._distortModule.setFrequency(d10);
    }

    public void setPower(double d10) {
        this._power = d10;
    }

    public void setRoughness(int i10) {
        this._distortModule.setOctaves(i10);
    }

    public void setSource(Function3D function3D) {
        this._source = function3D;
    }
}
