package javax.vecmath;

import java.awt.Color;
import java.io.Serializable;

public class Color3f extends Tuple3f implements Serializable {
    static final long serialVersionUID = -1861792981817493659L;

    public Color3f(float f10, float f11, float f12) {
        super(f10, f11, f12);
    }

    public final Color get() {
        return new Color(Math.round(this.f92836x * 255.0f), Math.round(this.f92837y * 255.0f), Math.round(this.f92838z * 255.0f));
    }

    public final void set(Color color) {
        this.f92836x = color.getRed() / 255.0f;
        this.f92837y = color.getGreen() / 255.0f;
        this.f92838z = color.getBlue() / 255.0f;
    }

    public Color3f(float[] fArr) {
        super(fArr);
    }

    public Color3f(Color3f color3f) {
        super(color3f);
    }

    public Color3f(Tuple3f tuple3f) {
        super(tuple3f);
    }

    public Color3f(Tuple3d tuple3d) {
        super(tuple3d);
    }

    public Color3f(Color color) {
        super(color.getRed() / 255.0f, color.getGreen() / 255.0f, color.getBlue() / 255.0f);
    }

    public Color3f() {
    }
}
