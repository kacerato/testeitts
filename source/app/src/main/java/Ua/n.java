package Ua;

public class n extends AbstractC3121a {

    public static final String f25931r = "EaseInOutQuad";

    static {
        AbstractC3121a.H0(n.class, f25931r, "Ease In Out Quad");
    }

    public n() {
        super(f25931r, "Ease In Out Quad");
    }

    @Override
    public float G0(float x10) {
        return x10 < 0.5f ? 2.0f * x10 * x10 : (float) (1.0d - (Math.pow((x10 * (-2.0f)) + 2.0f, 2.0d) / 2.0d));
    }
}
