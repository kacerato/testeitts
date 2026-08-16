package Ua;

public class A extends AbstractC3121a {

    public static final String f25900r = "EaseOutExpo";

    static {
        AbstractC3121a.H0(A.class, f25900r, "Ease Out Expo");
    }

    public A() {
        super(f25900r, "Ease Out Expo");
    }

    @Override
    public float G0(float x10) {
        if (x10 == 1.0f) {
            return 1.0f;
        }
        return (float) (1.0d - Math.pow(2.0d, x10 * (-10.0f)));
    }
}
