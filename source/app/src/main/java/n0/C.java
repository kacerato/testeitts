package n0;

import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class C {
    private static final Cf.a $ENTRIES;
    private static final C[] $VALUES;
    public static final C XYZ;
    public static final C XZY;
    public static final C YXZ;
    public static final C YZX;
    public static final C ZXY;
    public static final C ZYX;

    @NotNull
    private final H pitch;

    @NotNull
    private final H roll;

    @NotNull
    private final H yaw;

    static {
        H h10 = H.f97568X;
        H h11 = H.f97569Y;
        H h12 = H.f97570Z;
        XYZ = new C("XYZ", 0, h10, h11, h12);
        XZY = new C("XZY", 1, h10, h12, h11);
        YXZ = new C("YXZ", 2, h11, h10, h12);
        YZX = new C("YZX", 3, h11, h12, h10);
        ZXY = new C("ZXY", 4, h12, h10, h11);
        ZYX = new C("ZYX", 5, h12, h11, h10);
        C[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public C(String str, int i10, H h10, H h11, H h12) {
        this.yaw = h10;
        this.pitch = h11;
        this.roll = h12;
    }

    public static final C[] a() {
        return new C[]{XYZ, XZY, YXZ, YZX, ZXY, ZYX};
    }

    @NotNull
    public static Cf.a<C> b() {
        return $ENTRIES;
    }

    public static C valueOf(String str) {
        return (C) Enum.valueOf(C.class, str);
    }

    public static C[] values() {
        return (C[]) $VALUES.clone();
    }

    @NotNull
    public final H c() {
        return this.pitch;
    }

    @NotNull
    public final H d() {
        return this.roll;
    }

    @NotNull
    public final H e() {
        return this.yaw;
    }
}
