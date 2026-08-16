package Cf;

import java.io.Serializable;
import java.lang.Enum;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class e<E extends Enum<E>> implements Serializable {

    @NotNull
    public static final a f4311c = new a(null);

    public static final long f4312d = 0;

    @NotNull
    public final Class<E> f4313b;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public e(@NotNull E[] entries) {
        M.p(entries, "entries");
        Class<E> cls = (Class<E>) entries.getClass().getComponentType();
        M.m(cls);
        this.f4313b = cls;
    }

    public final Object a() {
        E[] enumConstants = this.f4313b.getEnumConstants();
        M.o(enumConstants, "getEnumConstants(...)");
        return c.c(enumConstants);
    }
}
