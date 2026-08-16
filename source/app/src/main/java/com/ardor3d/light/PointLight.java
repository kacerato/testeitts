package com.ardor3d.light;

import com.ardor3d.light.Light;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;

public class PointLight extends Light {
    private static final long serialVersionUID = 1;
    private Vector3 _location = new Vector3();

    public ReadOnlyVector3 getLocation() {
        return this._location;
    }

    @Override
    public Light.Type getType() {
        return Light.Type.Point;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._location = (Vector3) inputCapsule.readSavable("location", new Vector3(Vector3.ZERO));
    }

    public void setLocation(ReadOnlyVector3 readOnlyVector3) {
        this._location.set(readOnlyVector3);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._location, "location", new Vector3(Vector3.ZERO));
    }

    public void setLocation(double d10, double d11, double d12) {
        this._location.set(d10, d11, d12);
    }
}
