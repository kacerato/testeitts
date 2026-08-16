package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.Quaternion;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.Node;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;

public class Arrow extends Node {
    protected static final Quaternion rotator = new Quaternion();
    private static final long serialVersionUID = 1;
    protected double _length;
    protected double _width;

    public Arrow() {
        this._length = 1.0d;
        this._width = 0.25d;
    }

    public void buildArrow() {
        Cylinder cylinder = new Cylinder("base", 4, 16, this._width * 0.75d, this._length);
        Quaternion quaternion = rotator;
        quaternion.fromEulerAngles(0.0d, 0.0d, 1.5707963267948966d);
        cylinder.getMeshData().rotatePoints(quaternion);
        cylinder.getMeshData().rotateNormals(quaternion);
        attachChild(cylinder);
        cylinder.updateModelBound();
        Pyramid pyramid = new Pyramid("tip", this._width * 2.0d, this._length / 2.0d);
        pyramid.getMeshData().translatePoints(0.0d, this._length * 0.75d, 0.0d);
        attachChild(pyramid);
        pyramid.updateModelBound();
    }

    public double getLength() {
        return this._length;
    }

    public double getWidth() {
        return this._width;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._length = inputCapsule.readDouble("length", 1.0d);
        this._width = inputCapsule.readDouble("width", 0.25d);
    }

    public void setDefaultColor(ReadOnlyColorRGBA readOnlyColorRGBA) {
        for (int i10 = 0; i10 < getNumberOfChildren(); i10++) {
            if (getChild(i10) instanceof Mesh) {
                ((Mesh) getChild(i10)).setDefaultColor(readOnlyColorRGBA);
            }
        }
    }

    public void setLength(double d10) {
        this._length = d10;
    }

    public void setSolidColor(ReadOnlyColorRGBA readOnlyColorRGBA) {
        for (int i10 = 0; i10 < getNumberOfChildren(); i10++) {
            if (getChild(i10) instanceof Mesh) {
                ((Mesh) getChild(i10)).setSolidColor(readOnlyColorRGBA);
            }
        }
    }

    public void setWidth(double d10) {
        this._width = d10;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._length, "length", 1.0d);
        outputCapsule.write(this._width, "width", 0.25d);
    }

    public Arrow(String str) {
        super(str);
        this._length = 1.0d;
        this._width = 0.25d;
    }

    public Arrow(String str, double d10, double d11) {
        super(str);
        this._length = d10;
        this._width = d11;
        buildArrow();
    }
}
