package Ua;

public class z extends AbstractC3121a {

    public static final String f25943r = "EaseOutElastic";

    static {
        AbstractC3121a.H0(z.class, f25943r, "Ease Out Elastic");
    }

    public z() {
        super(f25943r, "Ease Out Elastic");
    }

    @Override
    public float G0(float x10) {
        if (x10 == 0.0f) {
            return 0.0f;
        }
        if (x10 == 1.0f) {
            return 1.0f;
        }
        return (float) ((Math.pow(2.0d, (-10.0f) * x10) * Math.sin(((x10 * 10.0f) - 0.75d) * 2.094395160675049d)) + 1.0d);
    }
}
