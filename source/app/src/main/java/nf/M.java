package nf;

import android.security.keystore.KeyProperties;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class M {
    private static final Cf.a $ENTRIES;
    private static final M[] $VALUES;
    public static final M SYNCHRONIZED = new M("SYNCHRONIZED", 0);
    public static final M PUBLICATION = new M("PUBLICATION", 1);
    public static final M NONE = new M(KeyProperties.DIGEST_NONE, 2);

    static {
        M[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public M(String str, int i10) {
    }

    public static final M[] a() {
        return new M[]{SYNCHRONIZED, PUBLICATION, NONE};
    }

    @NotNull
    public static Cf.a<M> b() {
        return $ENTRIES;
    }

    public static M valueOf(String str) {
        return (M) Enum.valueOf(M.class, str);
    }

    public static M[] values() {
        return (M[]) $VALUES.clone();
    }
}
