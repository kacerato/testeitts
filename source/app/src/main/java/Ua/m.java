package Ua;

public class m extends AbstractC3121a {

    public static final String f25930r = "EaseInOutExpo";

    static {
        AbstractC3121a.H0(m.class, f25930r, "Ease In Out Expo");
    }

    public m() {
        super(f25930r, "Ease In Out Expo");
    }

    @Override
    public float G0(float x10) {
        if (x10 == 0.0f) {
            return 0.0f;
        }
        if (x10 == 1.0f) {
            return 1.0f;
        }
        return x10 < 0.5f ? ((float) Math.pow(2.0d, (x10 * 20.0f) - 10.0f)) / 2.0f : (float) ((2.0d - Math.pow(2.0d, (x10 * (-20.0f)) + 10.0f)) / 2.0d);
    }
}
