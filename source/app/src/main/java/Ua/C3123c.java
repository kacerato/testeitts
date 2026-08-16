package Ua;

public class C3123c extends AbstractC3121a {

    public static final String f25920r = "EaseInBounce";

    static {
        AbstractC3121a.H0(C3123c.class, f25920r, "Ease In Bounce");
    }

    public C3123c() {
        super(f25920r, "Ease In Bounce");
    }

    @Override
    public float G0(float x10) {
        return 1.0f - I0(1.0f - x10);
    }

    public final float I0(float x10) {
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
