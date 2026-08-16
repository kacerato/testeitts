package n0;

import androidx.exifinterface.media.ExifInterface;
import org.eclipse.jdt.core.Signature;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class H {
    private static final Cf.a $ENTRIES;
    private static final H[] $VALUES;

    public static final H f97568X = new H("X", 0);

    public static final H f97569Y = new H("Y", 1);

    public static final H f97570Z = new H(Signature.SIG_BOOLEAN, 2);

    public static final H f97567W = new H(ExifInterface.LONGITUDE_WEST, 3);

    public static final H f97564R = new H("R", 4);

    public static final H f97561G = new H("G", 5);

    public static final H f97560B = new H(Signature.SIG_BYTE, 6);

    public static final H f97559A = new H(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, 7);

    public static final H f97565S = new H("S", 8);

    public static final H f97566T = new H(ExifInterface.GPS_DIRECTION_TRUE, 9);

    public static final H f97562P = new H("P", 10);

    public static final H f97563Q = new H("Q", 11);

    static {
        H[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public H(String str, int i10) {
    }

    public static final H[] a() {
        return new H[]{f97568X, f97569Y, f97570Z, f97567W, f97564R, f97561G, f97560B, f97559A, f97565S, f97566T, f97562P, f97563Q};
    }

    @NotNull
    public static Cf.a<H> b() {
        return $ENTRIES;
    }

    public static H valueOf(String str) {
        return (H) Enum.valueOf(H.class, str);
    }

    public static H[] values() {
        return (H[]) $VALUES.clone();
    }
}
