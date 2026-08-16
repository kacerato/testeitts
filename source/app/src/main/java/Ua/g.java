package Ua;

public class g extends AbstractC3121a {

    public static final String f25924r = "EaseInExpo";

    static {
        AbstractC3121a.H0(g.class, f25924r, "Ease In Expo");
    }

    public g() {
        super(f25924r, "Ease In Expo");
    }

    @Override
    public float G0(float x10) {
        if (x10 == 0.0f) {
            return 0.0f;
        }
        return (float) Math.pow(2.0d, (x10 * 10.0f) - 10.0f);
    }
}
