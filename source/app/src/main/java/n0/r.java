package n0;

import androidx.exifinterface.media.ExifInterface;
import org.eclipse.jdt.core.Signature;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class r {
    private static final Cf.a $ENTRIES;
    private static final r[] $VALUES;

    public static final r f97673X = new r("X", 0);

    public static final r f97674Y = new r("Y", 1);

    public static final r f97675Z = new r(Signature.SIG_BOOLEAN, 2);

    public static final r f97672W = new r(ExifInterface.LONGITUDE_WEST, 3);

    static {
        r[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public r(String str, int i10) {
    }

    public static final r[] a() {
        return new r[]{f97673X, f97674Y, f97675Z, f97672W};
    }

    @NotNull
    public static Cf.a<r> b() {
        return $ENTRIES;
    }

    public static r valueOf(String str) {
        return (r) Enum.valueOf(r.class, str);
    }

    public static r[] values() {
        return (r[]) $VALUES.clone();
    }
}
