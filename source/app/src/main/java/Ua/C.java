package Ua;

public class C extends AbstractC3121a {

    public static final String f25902r = "EaseOutQuart";

    static {
        AbstractC3121a.H0(C.class, f25902r, "Ease Out Quart");
    }

    public C() {
        super(f25902r, "Ease Out Quart");
    }

    @Override
    public float G0(float x10) {
        return (float) (1.0d - Math.pow(1.0f - x10, 4.0d));
    }
}
