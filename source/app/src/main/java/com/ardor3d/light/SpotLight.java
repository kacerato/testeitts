package com.ardor3d.light;

import com.ardor3d.light.Light;
import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.Ardor3dException;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;

public class SpotLight extends PointLight {
    private static final long serialVersionUID = 1;
    private float _angle;
    private final Vector3 _direction = new Vector3(Vector3.UNIT_Z);
    private float _exponent;

    public SpotLight() {
        setAmbient(new ColorRGBA(0.0f, 0.0f, 0.0f, 1.0f));
    }

    public float getAngle() {
        return this._angle;
    }

    public ReadOnlyVector3 getDirection() {
        return this._direction;
    }

    public float getExponent() {
        return this._exponent;
    }

    @Override
    public Light.Type getType() {
        return Light.Type.Spot;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._direction.set((Vector3) inputCapsule.readSavable("direction", new Vector3(Vector3.UNIT_Z)));
        this._angle = inputCapsule.readFloat("angle", 0.0f);
        this._exponent = inputCapsule.readFloat("exponent", 0.0f);
    }

    public void setAngle(float f10) {
        if (f10 < 0.0f || (f10 > 90.0f && f10 != 180.0f)) {
            throw new Ardor3dException("invalid angle.  Angle must be between 0 and 90, or 180");
        }
        this._angle = f10;
    }

    public void setDirection(ReadOnlyVector3 readOnlyVector3) {
        this._direction.set(readOnlyVector3);
    }

    public void setExponent(float f10) {
        this._exponent = f10;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._direction, "direction", new Vector3(Vector3.UNIT_Z));
        outputCapsule.write(this._angle, "angle", 0.0f);
        outputCapsule.write(this._exponent, "exponent", 0.0f);
    }
}
