package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.Matrix3;
import com.ardor3d.scenegraph.Node;
import com.ardor3d.scenegraph.hint.LightCombineMode;
import com.ardor3d.scenegraph.hint.TextureCombineMode;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;

public class AxisRods extends Node {
    private static final long serialVersionUID = 1;
    protected static final ColorRGBA xAxisColor = new ColorRGBA(1.0f, 0.0f, 0.0f, 0.4f);
    protected static final ColorRGBA yAxisColor = new ColorRGBA(0.0f, 1.0f, 0.0f, 0.25f);
    protected static final ColorRGBA zAxisColor = new ColorRGBA(0.0f, 0.0f, 1.0f, 0.4f);
    protected double length;
    protected boolean rightHanded;
    protected double width;
    protected Arrow xAxis;
    protected Arrow yAxis;
    protected Arrow zAxis;

    public AxisRods() {
    }

    public void buildAxis() {
        Arrow arrow = new Arrow("_xAxis", this.length, this.width);
        this.xAxis = arrow;
        arrow.setSolidColor(xAxisColor);
        this.xAxis.setRotation(new Matrix3().fromAngles(0.0d, 0.0d, -1.5707963267948966d));
        this.xAxis.setTranslation(this.length * 0.5d, 0.0d, 0.0d);
        attachChild(this.xAxis);
        Arrow arrow2 = new Arrow("yAxis", this.length, this.width);
        this.yAxis = arrow2;
        arrow2.setSolidColor(yAxisColor);
        this.yAxis.setTranslation(0.0d, this.length * 0.5d, 0.0d);
        attachChild(this.yAxis);
        Arrow arrow3 = new Arrow("zAxis", this.length, this.width);
        this.zAxis = arrow3;
        arrow3.setSolidColor(zAxisColor);
        if (this.rightHanded) {
            this.zAxis.setRotation(new Matrix3().fromAngles(1.5707963267948966d, 0.0d, 0.0d));
            this.zAxis.setTranslation(0.0d, 0.0d, this.length * 0.5d);
        } else {
            this.zAxis.setRotation(new Matrix3().fromAngles(-1.5707963267948966d, 0.0d, 0.0d));
            this.zAxis.setTranslation(0.0d, 0.0d, (-this.length) * 0.5d);
        }
        attachChild(this.zAxis);
    }

    public double getLength() {
        return this.length;
    }

    public double getWidth() {
        return this.width;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this.length = inputCapsule.readDouble("length", 1.0d);
        this.width = inputCapsule.readDouble("width", 0.125d);
        this.rightHanded = inputCapsule.readBoolean("rightHanded", true);
        buildAxis();
    }

    public void setLength(double d10) {
        this.length = d10;
    }

    public void setWidth(double d10) {
        this.width = d10;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this.length, "length", 1.0d);
        outputCapsule.write(this.width, "width", 0.125d);
        outputCapsule.write(this.rightHanded, "rightHanded", true);
    }

    public AxisRods(String str) {
        this(str, true, 1.0d);
    }

    public AxisRods(String str, boolean z10, double d10) {
        this(str, z10, d10, d10 * 0.125d);
    }

    public AxisRods(String str, boolean z10, double d10, double d11) {
        super(str);
        this.length = d10;
        this.width = d11;
        this.rightHanded = z10;
        getSceneHints().setLightCombineMode(LightCombineMode.Off);
        getSceneHints().setTextureCombineMode(TextureCombineMode.Off);
        buildAxis();
    }
}
