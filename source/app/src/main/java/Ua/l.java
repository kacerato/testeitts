package Ua;

public class l extends AbstractC3121a {

    public static final String f25929r = "EaseInOutElastic";

    static {
        AbstractC3121a.H0(l.class, f25929r, "Ease In Out Elastic");
    }

    public l() {
        super(f25929r, "Ease In Out Elastic");
    }

    @Override
    public float G0(float x10) {
        if (x10 == 0.0f) {
            return 0.0f;
        }
        if (x10 == 1.0f) {
            return 1.0f;
        }
        if (x10 >= 0.5f) {
            return (float) (((Math.pow(2.0d, ((-20.0f) * x10) + 10.0f) * Math.sin(((x10 * 20.0f) - 11.125d) * 1.3962633609771729d)) / 2.0d) + 1.0d);
        }
        return (float) (((-Math.pow(2.0d, r12 - 10.0f)) * Math.sin(((x10 * 20.0f) - 11.125d) * 1.3962633609771729d)) / 2.0d);
    }
}
