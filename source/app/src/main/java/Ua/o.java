package Ua;

public class o extends AbstractC3121a {

    public static final String f25932r = "EaseInOutQuart";

    static {
        AbstractC3121a.H0(o.class, f25932r, "Ease In Out Quart");
    }

    public o() {
        super(f25932r, "Ease In Out Quart");
    }

    @Override
    public float G0(float x10) {
        return x10 < 0.5f ? 8.0f * x10 * x10 * x10 * x10 : (float) (1.0d - (Math.pow((x10 * (-2.0f)) + 2.0f, 4.0d) / 2.0d));
    }
}
