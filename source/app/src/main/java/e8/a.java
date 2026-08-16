package E8;

import W7.b;

@Deprecated
public class a {

    public F8.a f5715a = new F8.a();

    @Deprecated
    public String f5716b = "highp";

    @Deprecated
    public String f5717c = "mediump";

    @Deprecated
    public String f5718d = "lowp";

    @Deprecated
    public EnumC0109a f5719e;

    public float f5720f;

    public enum EnumC0109a {
        GL2,
        GL3,
        GL31
    }

    public float a() {
        C8.a aVar = b.f27306f;
        int ordinal = aVar.f2459b.f5719e.ordinal();
        if (ordinal == 0) {
            return 2.0f;
        }
        if (ordinal == 1) {
            return 3.0f;
        }
        if (ordinal == 2) {
            return 3.1f;
        }
        try {
            throw new IllegalArgumentException("Invalid " + ((Object) aVar.f2459b.f5719e) + " version");
        } catch (IllegalArgumentException e10) {
            e10.printStackTrace();
            return 0.0f;
        }
    }
}
