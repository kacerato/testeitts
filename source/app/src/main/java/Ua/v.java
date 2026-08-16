package Ua;

public class v extends AbstractC3121a {

    public static final String f25939r = "EaseOutBack";

    static {
        AbstractC3121a.H0(v.class, f25939r, "Ease Out Back");
    }

    public v() {
        super(f25939r, "Ease Out Back");
    }

    @Override
    public float G0(float x10) {
        float f10 = x10 - 1.0f;
        return (2.70158f * f10 * f10 * f10) + 1.0f + (1.70158f * f10 * f10);
    }
}
