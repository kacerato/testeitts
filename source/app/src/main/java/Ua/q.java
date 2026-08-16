package Ua;

public class q extends AbstractC3121a {

    public static final String f25934r = "EaseInOutSine";

    static {
        AbstractC3121a.H0(q.class, f25934r, "Ease In Out Sine");
    }

    public q() {
        super(f25934r, "Ease In Out Sine");
    }

    @Override
    public float G0(float x10) {
        return (float) ((-(Math.cos(x10 * 3.141592653589793d) - 1.0d)) / 2.0d);
    }
}
