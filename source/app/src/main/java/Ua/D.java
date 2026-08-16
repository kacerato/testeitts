package Ua;

public class D extends AbstractC3121a {

    public static final String f25903r = "EaseOutQuint";

    static {
        AbstractC3121a.H0(D.class, f25903r, "Ease Out Quint");
    }

    public D() {
        super(f25903r, "Ease Out Quint");
    }

    @Override
    public float G0(float x10) {
        return (float) (1.0d - Math.pow(1.0f - x10, 5.0d));
    }
}
