package Ua;

public class j extends AbstractC3121a {

    public static final String f25927r = "EaseInOutCirc";

    static {
        AbstractC3121a.H0(j.class, f25927r, "Ease In Out Circ");
    }

    public j() {
        super(f25927r, "Ease In Out Circ");
    }

    @Override
    public float G0(float x10) {
        return x10 < 0.5f ? (float) ((1.0d - Math.sqrt(1.0d - Math.pow(x10 * 2.0f, 2.0d))) / 2.0d) : (float) ((Math.sqrt(1.0d - Math.pow((x10 * (-2.0f)) + 2.0f, 2.0d)) + 1.0d) / 2.0d);
    }
}
