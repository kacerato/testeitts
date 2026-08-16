package v3;

public class c {

    public static final int f121171a = 12;

    public static final int f121172b = 2;

    public static final int f121173c = 14;

    public static final float f121174d = 35.0f;

    public static n f121177g;

    public static b f121175e = b.Disable;

    public static P4.b f121176f = null;

    public static a f121178h = a.Local;

    public enum a {
        Local,
        Global
    }

    public enum b {
        Disable,
        Position,
        Rotation,
        Scale,
        SPosition,
        SScale,
        UIScale,
        UIAnchor,
        HPOPAdd,
        HPOPRemove,
        TerrainUpper,
        TerrainDown,
        Custom
    }

    public static b a() {
        return f121175e;
    }

    public static P4.b b() {
        return f121176f;
    }

    public static a c() {
        return f121178h;
    }

    public static void d(b axis, boolean callTopbarListener, boolean callCustomAxisListener) {
        P4.b bVar;
        if (f121175e != axis) {
            f121175e = axis;
            if (axis != b.Custom && (bVar = f121176f) != null) {
                P4.a aVar = bVar.f20685a;
                if (aVar != null && callCustomAxisListener) {
                    aVar.b();
                }
                f121176f.g();
                P4.a aVar2 = f121176f.f20685a;
                if (aVar2 != null) {
                    aVar2.a();
                }
                f121176f = null;
            }
            n nVar = f121177g;
            if (nVar == null || !callTopbarListener) {
                return;
            }
            nVar.b();
        }
    }

    public static void e(P4.b customAxis) {
        P4.b bVar = f121176f;
        if (bVar != null) {
            bVar.g();
            P4.a aVar = f121176f.f20685a;
            if (aVar != null) {
                aVar.a();
            }
        }
        f121176f = customAxis;
        if (customAxis != null) {
            d(b.Custom, true, true);
        } else {
            d(b.Disable, true, true);
        }
    }
}
