package Bi;

import android.security.KeyChain;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public abstract class M implements InterfaceC2377i {
    public static final M ASCII = new a("ASCII", 0);
    public static final M UTF8 = new M("UTF8", 1) {
        {
            a aVar = null;
        }

        @Override
        public byte[] a(char[] cArr) {
            return L.c(cArr);
        }

        @Override
        public String getType() {
            return "UTF8";
        }
    };
    public static final M PKCS12 = new M(KeyChain.EXTRA_PKCS12, 2) {
        {
            a aVar = null;
        }

        @Override
        public byte[] a(char[] cArr) {
            return L.a(cArr);
        }

        @Override
        public String getType() {
            return KeyChain.EXTRA_PKCS12;
        }
    };
    private static final M[] $VALUES = b();

    public enum a extends M {
        public a(String str, int i10) {
            super(str, i10, null);
        }

        @Override
        public byte[] a(char[] cArr) {
            return L.b(cArr);
        }

        @Override
        public String getType() {
            return "ASCII";
        }
    }

    public M(String str, int i10) {
    }

    public static M[] b() {
        return new M[]{ASCII, UTF8, PKCS12};
    }

    public static M valueOf(String str) {
        return (M) Enum.valueOf(M.class, str);
    }

    public static M[] values() {
        return (M[]) $VALUES.clone();
    }

    public M(String str, int i10, a aVar) {
        this(str, i10);
    }
}
