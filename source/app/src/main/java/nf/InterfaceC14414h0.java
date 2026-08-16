package nf;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;
import org.jetbrains.annotations.NotNull;

@Target({ElementType.ANNOTATION_TYPE})
@of.e(EnumC14501a.BINARY)
@of.f(allowedTargets = {of.b.ANNOTATION_CLASS})
@Retention(RetentionPolicy.CLASS)
@InterfaceC14422l0(version = "1.3")
public @interface InterfaceC14414h0 {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final Cf.a $ENTRIES;
        private static final a[] $VALUES;
        public static final a WARNING = new a("WARNING", 0);
        public static final a ERROR = new a("ERROR", 1);

        static {
            a[] a10 = a();
            $VALUES = a10;
            $ENTRIES = Cf.c.c(a10);
        }

        public a(String str, int i10) {
        }

        public static final a[] a() {
            return new a[]{WARNING, ERROR};
        }

        @NotNull
        public static Cf.a<a> b() {
            return $ENTRIES;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    a level() default a.ERROR;

    String message() default "";
}
