package com.ardor3d.light;

import com.ardor3d.light.Light;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;

public class DirectionalLight extends Light {
    private static final long serialVersionUID = 1;
    private final Vector3 _direction = new Vector3(Vector3.UNIT_Z);

    public ReadOnlyVector3 getDirection() {
        return this._direction;
    }

    @Override
    public Light.Type getType() {
        return Light.Type.Directional;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._direction.set((Vector3) inputCapsule.readSavable("direction", new Vector3(Vector3.UNIT_Z)));
    }

    public void setDirection(ReadOnlyVector3 readOnlyVector3) {
        this._direction.set(readOnlyVector3);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._direction, "direction", new Vector3(Vector3.UNIT_Z));
    }

    public void setDirection(double d10, double d11, double d12) {
        this._direction.set(d10, d11, d12);
    }
}
