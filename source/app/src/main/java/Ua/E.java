package Ua;

public class E extends AbstractC3121a {

    public static final String f25904r = "EaseOutSine";

    static {
        AbstractC3121a.H0(E.class, f25904r, "Ease Out Sine");
    }

    public E() {
        super(f25904r, "Ease Out Sine");
    }

    @Override
    public float G0(float x10) {
        return (float) Math.sin((x10 * 3.141592653589793d) / 2.0d);
    }
}
