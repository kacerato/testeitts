package Ua;

public class C3124d extends AbstractC3121a {

    public static final String f25921r = "EaseInCirc";

    static {
        AbstractC3121a.H0(C3124d.class, f25921r, "Ease In Circ");
    }

    public C3124d() {
        super(f25921r, "Ease In Circ");
    }

    @Override
    public float G0(float x10) {
        return (float) (1.0d - Math.sqrt(1.0f - (x10 * x10)));
    }
}
