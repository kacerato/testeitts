package com.google.protobuf;

import com.google.protobuf.AbstractC12719v0;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class C12666d0 {

    public static volatile boolean f69066b = false;

    public static boolean f69067c = true;

    public static final String f69068d = "com.google.protobuf.Extension";

    public static volatile C12666d0 f69069e;

    public static final C12666d0 f69070f = new C12666d0(true);

    public final Map<b, AbstractC12719v0.h<?, ?>> f69071a;

    public static class a {

        public static final Class<?> f69072a = a();

        public static Class<?> a() {
            return Z.class;
        }
    }

    public static final class b {

        public final Object f69073a;

        public final int f69074b;

        public b(final Object object, final int number) {
            this.f69073a = object;
            this.f69074b = number;
        }

        public boolean equals(final Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f69073a == bVar.f69073a && this.f69074b == bVar.f69074b;
        }

        public int hashCode() {
            return (System.identityHashCode(this.f69073a) * 65535) + this.f69074b;
        }
    }

    public C12666d0() {
        this.f69071a = new HashMap();
    }

    public static C12666d0 d() {
        if (!f69067c) {
            return f69070f;
        }
        C12666d0 c12666d0 = f69069e;
        if (c12666d0 == null) {
            synchronized (C12666d0.class) {
                try {
                    c12666d0 = f69069e;
                    if (c12666d0 == null) {
                        c12666d0 = C12662c0.b();
                        f69069e = c12666d0;
                    }
                } finally {
                }
            }
        }
        return c12666d0;
    }

    public static boolean f() {
        return f69066b;
    }

    public static C12666d0 g() {
        return f69067c ? C12662c0.a() : new C12666d0();
    }

    public static void h(boolean isEagerlyParse) {
        f69066b = isEagerlyParse;
    }

    public final void a(AbstractC12654a0<?, ?> extension) {
        if (AbstractC12719v0.h.class.isAssignableFrom(extension.getClass())) {
            b((AbstractC12719v0.h) extension);
        }
        if (f69067c && C12662c0.d(this)) {
            try {
                getClass().getMethod("add", a.f69072a).invoke(this, extension);
            } catch (Exception e10) {
                throw new IllegalArgumentException(String.format("Could not invoke ExtensionRegistry#add for %s", extension), e10);
            }
        }
    }

    public final void b(final AbstractC12719v0.h<?, ?> extension) {
        this.f69071a.put(new b(extension.h(), extension.d()), extension);
    }

    public <ContainingType extends InterfaceC12659b1> AbstractC12719v0.h<ContainingType, ?> c(final ContainingType containingTypeDefaultInstance, final int fieldNumber) {
        return (AbstractC12719v0.h) this.f69071a.get(new b(containingTypeDefaultInstance, fieldNumber));
    }

    public C12666d0 e() {
        return new C12666d0(this);
    }

    public C12666d0(C12666d0 other) {
        if (other == f69070f) {
            this.f69071a = Collections.emptyMap();
        } else {
            this.f69071a = Collections.unmodifiableMap(other.f69071a);
        }
    }

    public C12666d0(boolean empty) {
        this.f69071a = Collections.emptyMap();
    }
}
