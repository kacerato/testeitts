package w2;

import java.io.Serializable;
import java.lang.constant.ConstantDescs;
import java.util.Objects;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@InterfaceC15894k
@v2.b
public abstract class EnumC15884d {
    private static final EnumC15884d[] $VALUES;
    public static final EnumC15884d LOWER_CAMEL;
    public static final EnumC15884d LOWER_HYPHEN = new a("LOWER_HYPHEN", 0, AbstractC15885e.q('-'), "-");
    public static final EnumC15884d LOWER_UNDERSCORE;
    public static final EnumC15884d UPPER_CAMEL;
    public static final EnumC15884d UPPER_UNDERSCORE;
    private final AbstractC15885e wordBoundary;
    private final String wordSeparator;

    public enum a extends EnumC15884d {
        public a(String str, int i10, AbstractC15885e abstractC15885e, String str2) {
            super(str, i10, abstractC15885e, str2, null);
        }

        @Override
        public String c(EnumC15884d enumC15884d, String str) {
            return enumC15884d == EnumC15884d.LOWER_UNDERSCORE ? str.replace('-', '_') : enumC15884d == EnumC15884d.UPPER_UNDERSCORE ? C15883c.j(str.replace('-', '_')) : super.c(enumC15884d, str);
        }

        @Override
        public String h(String str) {
            return C15883c.g(str);
        }
    }

    public static final class f extends AbstractC15892i<String, String> implements Serializable {

        public static final long f126276f = 0;

        public final EnumC15884d f126277d;

        public final EnumC15884d f126278e;

        public f(EnumC15884d enumC15884d, EnumC15884d enumC15884d2) {
            this.f126277d = (EnumC15884d) H.E(enumC15884d);
            this.f126278e = (EnumC15884d) H.E(enumC15884d2);
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return this.f126277d.equals(fVar.f126277d) && this.f126278e.equals(fVar.f126278e);
        }

        public int hashCode() {
            return this.f126277d.hashCode() ^ this.f126278e.hashCode();
        }

        @Override
        public String g(String str) {
            return this.f126278e.i(this.f126277d, str);
        }

        @Override
        public String i(String str) {
            return this.f126277d.i(this.f126278e, str);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126277d);
            String valueOf2 = String.valueOf(this.f126278e);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 14 + valueOf2.length());
            sb2.append(valueOf);
            sb2.append(".converterTo(");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }
    }

    static {
        AbstractC15885e q10 = AbstractC15885e.q('_');
        String str = ConstantDescs.DEFAULT_NAME;
        LOWER_UNDERSCORE = new EnumC15884d("LOWER_UNDERSCORE", 1, q10, str) {
            {
                a aVar = null;
            }

            @Override
            public String c(EnumC15884d enumC15884d, String str2) {
                return enumC15884d == EnumC15884d.LOWER_HYPHEN ? str2.replace('_', '-') : enumC15884d == EnumC15884d.UPPER_UNDERSCORE ? C15883c.j(str2) : super.c(enumC15884d, str2);
            }

            @Override
            public String h(String str2) {
                return C15883c.g(str2);
            }
        };
        String str2 = "";
        LOWER_CAMEL = new EnumC15884d("LOWER_CAMEL", 2, AbstractC15885e.m(IIndexConstants.ANNOTATION_TYPE_SUFFIX, 'Z'), str2) {
            {
                a aVar = null;
            }

            @Override
            public String g(String str3) {
                return C15883c.g(str3);
            }

            @Override
            public String h(String str3) {
                return EnumC15884d.e(str3);
            }
        };
        UPPER_CAMEL = new EnumC15884d("UPPER_CAMEL", 3, AbstractC15885e.m(IIndexConstants.ANNOTATION_TYPE_SUFFIX, 'Z'), str2) {
            {
                a aVar = null;
            }

            @Override
            public String h(String str3) {
                return EnumC15884d.e(str3);
            }
        };
        UPPER_UNDERSCORE = new EnumC15884d("UPPER_UNDERSCORE", 4, AbstractC15885e.q('_'), str) {
            {
                a aVar = null;
            }

            @Override
            public String c(EnumC15884d enumC15884d, String str3) {
                return enumC15884d == EnumC15884d.LOWER_HYPHEN ? C15883c.g(str3.replace('_', '-')) : enumC15884d == EnumC15884d.LOWER_UNDERSCORE ? C15883c.g(str3) : super.c(enumC15884d, str3);
            }

            @Override
            public String h(String str3) {
                return C15883c.j(str3);
            }
        };
        $VALUES = a();
    }

    public EnumC15884d(String str, int i10, AbstractC15885e abstractC15885e, String str2, a aVar) {
        this(str, i10, abstractC15885e, str2);
    }

    public static EnumC15884d[] a() {
        return new EnumC15884d[]{LOWER_HYPHEN, LOWER_UNDERSCORE, LOWER_CAMEL, UPPER_CAMEL, UPPER_UNDERSCORE};
    }

    public static String e(String str) {
        if (str.isEmpty()) {
            return str;
        }
        char h10 = C15883c.h(str.charAt(0));
        String g10 = C15883c.g(str.substring(1));
        StringBuilder sb2 = new StringBuilder(String.valueOf(g10).length() + 1);
        sb2.append(h10);
        sb2.append(g10);
        return sb2.toString();
    }

    public static EnumC15884d valueOf(String str) {
        return (EnumC15884d) Enum.valueOf(EnumC15884d.class, str);
    }

    public static EnumC15884d[] values() {
        return (EnumC15884d[]) $VALUES.clone();
    }

    public String c(EnumC15884d enumC15884d, String str) {
        StringBuilder sb2 = null;
        int i10 = 0;
        int i11 = -1;
        while (true) {
            i11 = this.wordBoundary.o(str, i11 + 1);
            if (i11 == -1) {
                break;
            }
            if (i10 == 0) {
                sb2 = new StringBuilder(str.length() + (enumC15884d.wordSeparator.length() * 4));
                sb2.append(enumC15884d.g(str.substring(i10, i11)));
            } else {
                Objects.requireNonNull(sb2);
                sb2.append(enumC15884d.h(str.substring(i10, i11)));
            }
            sb2.append(enumC15884d.wordSeparator);
            i10 = this.wordSeparator.length() + i11;
        }
        if (i10 == 0) {
            return enumC15884d.g(str);
        }
        Objects.requireNonNull(sb2);
        sb2.append(enumC15884d.h(str.substring(i10)));
        return sb2.toString();
    }

    public AbstractC15892i<String, String> d(EnumC15884d enumC15884d) {
        return new f(this, enumC15884d);
    }

    public String g(String str) {
        return h(str);
    }

    public abstract String h(String str);

    public final String i(EnumC15884d enumC15884d, String str) {
        H.E(enumC15884d);
        H.E(str);
        return enumC15884d == this ? str : c(enumC15884d, str);
    }

    public EnumC15884d(String str, int i10, AbstractC15885e abstractC15885e, String str2) {
        this.wordBoundary = abstractC15885e;
        this.wordSeparator = str2;
    }
}
