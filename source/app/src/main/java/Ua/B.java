package Ua;

public class B extends AbstractC3121a {

    public static final String f25901r = "EaseOutQuad";

    static {
        AbstractC3121a.H0(B.class, f25901r, "Ease Out Quad");
    }

    public B() {
        super(f25901r, "Ease Out Quad");
    }

    @Override
    public float G0(float x10) {
        float f10 = 1.0f - x10;
        return 1.0f - (f10 * f10);
    }
}
