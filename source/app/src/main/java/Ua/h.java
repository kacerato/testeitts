package Ua;

public class h extends AbstractC3121a {

    public static final String f25925r = "EaseInOutBack";

    static {
        AbstractC3121a.H0(h.class, f25925r, "Ease In Out Back");
    }

    public h() {
        super(f25925r, "Ease In Out Back");
    }

    @Override
    public float G0(float x10) {
        float f10;
        float f11 = x10 * 2.0f;
        if (x10 < 0.5f) {
            f10 = f11 * f11 * ((f11 * 3.5949094f) - 2.5949094f);
        } else {
            float f12 = f11 - 2.0f;
            f10 = (f12 * f12 * ((f12 * 3.5949094f) + 2.5949094f)) + 2.0f;
        }
        return f10 / 2.0f;
    }
}
