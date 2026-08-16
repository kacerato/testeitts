package Ua;

public class k extends AbstractC3121a {

    public static final String f25928r = "EaseInOutCubic";

    static {
        AbstractC3121a.H0(k.class, f25928r, "Ease In Out Cubic");
    }

    public k() {
        super(f25928r, "Ease In Out Cubic");
    }

    @Override
    public float G0(float x10) {
        return x10 < 0.5f ? 4.0f * x10 * x10 * x10 : (float) (1.0d - (Math.pow((x10 * (-2.0f)) + 2.0f, 3.0d) / 2.0d));
    }
}
