package Ua;

public class i extends AbstractC3121a {

    public static final String f25926r = "EaseInOutBounce";

    static {
        AbstractC3121a.H0(i.class, f25926r, "Ease In Out Bounce");
    }

    public i() {
        super(f25926r, "Ease In Out Bounce");
    }

    private float I0(float x10) {
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

    @Override
    public float G0(float x10) {
        return x10 < 0.5f ? (1.0f - I0(1.0f - (x10 * 2.0f))) / 2.0f : (I0((x10 * 2.0f) - 1.0f) + 1.0f) / 2.0f;
    }
}
