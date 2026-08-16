package Ua;

public class w extends AbstractC3121a {

    public static final String f25940r = "EaseOutBounce";

    static {
        AbstractC3121a.H0(w.class, f25940r, "Ease Out Bounce");
    }

    public w() {
        super(f25940r, "Ease Out Bounce");
    }

    @Override
    public float G0(float x10) {
        if (x10 < 0.36363637f) {
            return 7.5625f * x10 * x10;
        }
        if (x10 < 0.72727275f) {
            float f10 = x10 - 0.54545456f;
            return (7.5625f * f10 * f10) + 0.75f;
        }
        if (x10 < 0.90909094f) {
            float f11 = x10 - 0.8181818f;
            return (7.5625f * f11 * f11) + 0.9375f;
        }
        float f12 = x10 - 0.95454544f;
        return (7.5625f * f12 * f12) + 0.984375f;
    }
}
