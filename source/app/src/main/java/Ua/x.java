package Ua;

public class x extends AbstractC3121a {

    public static final String f25941r = "EaseOutCirc";

    static {
        AbstractC3121a.H0(x.class, f25941r, "Ease Out Circ");
    }

    public x() {
        super(f25941r, "Ease Out Circ");
    }

    @Override
    public float G0(float x10) {
        return (float) Math.sqrt(1.0d - Math.pow(x10 - 1.0f, 2.0d));
    }
}
