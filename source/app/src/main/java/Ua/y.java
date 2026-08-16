package Ua;

public class y extends AbstractC3121a {

    public static final String f25942r = "EaseOutCubic";

    static {
        AbstractC3121a.H0(y.class, f25942r, "Ease Out Cubic");
    }

    public y() {
        super(f25942r, "Ease Out Cubic");
    }

    @Override
    public float G0(float x10) {
        return (float) (1.0d - Math.pow(1.0f - x10, 3.0d));
    }
}
