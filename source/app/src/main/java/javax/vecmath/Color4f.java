package javax.vecmath;

import java.awt.Color;
import java.io.Serializable;

public class Color4f extends Tuple4f implements Serializable {
    static final long serialVersionUID = 8577680141580006740L;

    public Color4f(float f10, float f11, float f12, float f13) {
        super(f10, f11, f12, f13);
    }

    public final Color get() {
        return new Color(Math.round(this.f92851x * 255.0f), Math.round(this.f92852y * 255.0f), Math.round(this.f92853z * 255.0f), Math.round(this.f92850w * 255.0f));
    }

    public final void set(Color color) {
        this.f92851x = color.getRed() / 255.0f;
        this.f92852y = color.getGreen() / 255.0f;
        this.f92853z = color.getBlue() / 255.0f;
        this.f92850w = color.getAlpha() / 255.0f;
    }

    public Color4f(float[] fArr) {
        super(fArr);
    }

    public Color4f(Color4f color4f) {
        super(color4f);
    }

    public Color4f(Tuple4f tuple4f) {
        super(tuple4f);
    }

    public Color4f(Tuple4d tuple4d) {
        super(tuple4d);
    }

    public Color4f(Color color) {
        super(color.getRed() / 255.0f, color.getGreen() / 255.0f, color.getBlue() / 255.0f, color.getAlpha() / 255.0f);
    }

    public Color4f() {
    }
}
