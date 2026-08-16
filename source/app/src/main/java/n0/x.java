package n0;

import androidx.exifinterface.media.ExifInterface;
import org.eclipse.jdt.core.Signature;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class x {
    private static final Cf.a $ENTRIES;
    private static final x[] $VALUES;

    public static final x f97696X = new x("X", 0);

    public static final x f97697Y = new x("Y", 1);

    public static final x f97698Z = new x(Signature.SIG_BOOLEAN, 2);

    public static final x f97695W = new x(ExifInterface.LONGITUDE_WEST, 3);

    static {
        x[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public x(String str, int i10) {
    }

    public static final x[] a() {
        return new x[]{f97696X, f97697Y, f97698Z, f97695W};
    }

    @NotNull
    public static Cf.a<x> b() {
        return $ENTRIES;
    }

    public static x valueOf(String str) {
        return (x) Enum.valueOf(x.class, str);
    }

    public static x[] values() {
        return (x[]) $VALUES.clone();
    }
}
