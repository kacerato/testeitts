package Ua;

public class f extends AbstractC3121a {

    public static final String f25923r = "EaseInElastic";

    static {
        AbstractC3121a.H0(f.class, f25923r, "Ease In Elastic");
    }

    public f() {
        super(f25923r, "Ease In Elastic");
    }

    @Override
    public float G0(float x10) {
        if (x10 == 0.0f) {
            return 0.0f;
        }
        if (x10 == 1.0f) {
            return 1.0f;
        }
        return (float) ((-Math.pow(2.0d, r7 - 10.0f)) * Math.sin(((x10 * 10.0f) - 10.75d) * 2.094395160675049d));
    }
}
