package Ua;

public class u extends AbstractC3121a {

    public static final String f25938r = "EaseInSine";

    static {
        AbstractC3121a.H0(u.class, f25938r, "Ease In Sine");
    }

    public u() {
        super(f25938r, "Ease In Sine");
    }

    @Override
    public float G0(float x10) {
        return (float) (1.0d - Math.cos((x10 * 3.141592653589793d) / 2.0d));
    }
}
