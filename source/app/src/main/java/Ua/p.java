package Ua;

public class p extends AbstractC3121a {

    public static final String f25933r = "EaseInOutQuint";

    static {
        AbstractC3121a.H0(p.class, f25933r, "Ease In Out Quint");
    }

    public p() {
        super(f25933r, "Ease In Out Quint");
    }

    @Override
    public float G0(float x10) {
        return x10 < 0.5f ? 16.0f * x10 * x10 * x10 * x10 * x10 : (float) (1.0d - (Math.pow((x10 * (-2.0f)) + 2.0f, 5.0d) / 2.0d));
    }
}
