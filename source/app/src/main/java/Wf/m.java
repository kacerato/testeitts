package Wf;

import nf.InterfaceC14422l0;
import nf.InterfaceC14438u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface m extends InterfaceC3184b {

    public static final class a {
        @InterfaceC14422l0(version = "1.1")
        public static void a() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        private static final Cf.a $ENTRIES;
        private static final b[] $VALUES;
        public static final b INSTANCE = new b("INSTANCE", 0);

        @InterfaceC14438u
        public static final b CONTEXT = new b("CONTEXT", 1);
        public static final b EXTENSION_RECEIVER = new b("EXTENSION_RECEIVER", 2);
        public static final b VALUE = new b("VALUE", 3);

        static {
            b[] a10 = a();
            $VALUES = a10;
            $ENTRIES = Cf.c.c(a10);
        }

        public b(String str, int i10) {
        }

        public static final b[] a() {
            return new b[]{INSTANCE, CONTEXT, EXTENSION_RECEIVER, VALUE};
        }

        @NotNull
        public static Cf.a<b> b() {
            return $ENTRIES;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }
    }

    int getIndex();

    @NotNull
    b getKind();

    @Nullable
    String getName();

    @NotNull
    r getType();

    boolean k();

    boolean w();
}
