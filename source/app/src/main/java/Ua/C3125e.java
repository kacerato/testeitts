package Ua;

public class C3125e extends AbstractC3121a {

    public static final String f25922r = "EaseInCubic";

    static {
        AbstractC3121a.H0(C3125e.class, f25922r, "Ease In Cubic");
    }

    public C3125e() {
        super(f25922r, "Ease In Cubic");
    }

    @Override
    public float G0(float x10) {
        return x10 * x10 * x10;
    }
}
