package Ua;

public class t extends AbstractC3121a {

    public static final String f25937r = "EaseInQuint";

    static {
        AbstractC3121a.H0(t.class, f25937r, "Ease In Quint");
    }

    public t() {
        super(f25937r, "Ease In Quint");
    }

    @Override
    public float G0(float x10) {
        return x10 * x10 * x10 * x10 * x10;
    }
}
