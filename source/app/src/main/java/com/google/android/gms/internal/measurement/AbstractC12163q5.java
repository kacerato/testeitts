package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC12163q5;
import com.google.android.gms.internal.measurement.C12127m5;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class AbstractC12163q5<MessageType extends AbstractC12163q5<MessageType, BuilderType>, BuilderType extends C12127m5<MessageType, BuilderType>> extends C4<MessageType, BuilderType> {
    private static final Map zzd = new ConcurrentHashMap();
    private int zzb = -1;
    protected C12190t6 zzc = C12190t6.a();

    public static InterfaceC12243z5 A(InterfaceC12243z5 interfaceC12243z5) {
        int size = interfaceC12243z5.size();
        return interfaceC12243z5.K0(size + size);
    }

    public static final boolean C(AbstractC12163q5 abstractC12163q5, boolean z10) {
        byte byteValue = ((Byte) abstractC12163q5.D(1, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean e10 = C12056e6.a().b(abstractC12163q5.getClass()).e(abstractC12163q5);
        if (z10) {
            abstractC12163q5.D(2, true != e10 ? null : abstractC12163q5, null);
        }
        return e10;
    }

    public static AbstractC12163q5 s(Class cls) {
        Map map = zzd;
        AbstractC12163q5 abstractC12163q5 = (AbstractC12163q5) map.get(cls);
        if (abstractC12163q5 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC12163q5 = (AbstractC12163q5) map.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (abstractC12163q5 == null) {
            abstractC12163q5 = (AbstractC12163q5) ((AbstractC12163q5) C12244z6.h(cls)).D(6, null, null);
            if (abstractC12163q5 == null) {
                throw new IllegalStateException();
            }
            map.put(cls, abstractC12163q5);
        }
        return abstractC12163q5;
    }

    public static void t(Class cls, AbstractC12163q5 abstractC12163q5) {
        abstractC12163q5.l();
        zzd.put(cls, abstractC12163q5);
    }

    public static Object u(W5 w52, String str, Object[] objArr) {
        return new C12074g6(w52, str, objArr);
    }

    public static Object v(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static InterfaceC12225x5 w() {
        return C12171r5.b();
    }

    public static InterfaceC12234y5 x() {
        return J5.b();
    }

    public static InterfaceC12234y5 y(InterfaceC12234y5 interfaceC12234y5) {
        int size = interfaceC12234y5.size();
        return interfaceC12234y5.K0(size + size);
    }

    public static InterfaceC12243z5 z() {
        return C12065f6.b();
    }

    public abstract Object D(int i10, Object obj, Object obj2);

    @Override
    public final V5 b() {
        return (C12127m5) D(5, null, null);
    }

    @Override
    public final void c(W4 w42) throws IOException {
        C12056e6.a().b(getClass()).c(this, X4.M(w42));
    }

    @Override
    public final boolean d() {
        return C(this, true);
    }

    @Override
    public final W5 e() {
        return (AbstractC12163q5) D(6, null, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return C12056e6.a().b(getClass()).h(this, (AbstractC12163q5) obj);
    }

    @Override
    public final int f() {
        int i10;
        if (k()) {
            i10 = j(null);
            if (i10 < 0) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 42);
                sb2.append("serialized size must be non-negative, was ");
                sb2.append(i10);
                throw new IllegalStateException(sb2.toString());
            }
        } else {
            i10 = this.zzb & Integer.MAX_VALUE;
            if (i10 == Integer.MAX_VALUE) {
                i10 = j(null);
                if (i10 < 0) {
                    StringBuilder sb3 = new StringBuilder(String.valueOf(i10).length() + 42);
                    sb3.append("serialized size must be non-negative, was ");
                    sb3.append(i10);
                    throw new IllegalStateException(sb3.toString());
                }
                this.zzb = (this.zzb & Integer.MIN_VALUE) | i10;
            }
        }
        return i10;
    }

    @Override
    public final int h(InterfaceC12083h6 interfaceC12083h6) {
        if (k()) {
            int a10 = interfaceC12083h6.a(this);
            if (a10 >= 0) {
                return a10;
            }
            StringBuilder sb2 = new StringBuilder(String.valueOf(a10).length() + 42);
            sb2.append("serialized size must be non-negative, was ");
            sb2.append(a10);
            throw new IllegalStateException(sb2.toString());
        }
        int i10 = this.zzb & Integer.MAX_VALUE;
        if (i10 != Integer.MAX_VALUE) {
            return i10;
        }
        int a11 = interfaceC12083h6.a(this);
        if (a11 >= 0) {
            this.zzb = (this.zzb & Integer.MIN_VALUE) | a11;
            return a11;
        }
        StringBuilder sb3 = new StringBuilder(String.valueOf(a11).length() + 42);
        sb3.append("serialized size must be non-negative, was ");
        sb3.append(a11);
        throw new IllegalStateException(sb3.toString());
    }

    public final int hashCode() {
        if (k()) {
            return n();
        }
        int i10 = this.zza;
        if (i10 != 0) {
            return i10;
        }
        int n10 = n();
        this.zza = n10;
        return n10;
    }

    public final int j(InterfaceC12083h6 interfaceC12083h6) {
        return C12056e6.a().b(getClass()).a(this);
    }

    public final boolean k() {
        return (this.zzb & Integer.MIN_VALUE) != 0;
    }

    public final void l() {
        this.zzb &= Integer.MAX_VALUE;
    }

    public final AbstractC12163q5 m() {
        return (AbstractC12163q5) D(4, null, null);
    }

    public final int n() {
        return C12056e6.a().b(getClass()).b(this);
    }

    public final void o() {
        C12056e6.a().b(getClass()).f(this);
        l();
    }

    public final C12127m5 p() {
        return (C12127m5) D(5, null, null);
    }

    public final C12127m5 q() {
        C12127m5 c12127m5 = (C12127m5) D(5, null, null);
        c12127m5.r(this);
        return c12127m5;
    }

    public final void r(int i10) {
        this.zzb = (this.zzb & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final String toString() {
        return Y5.a(this, super.toString());
    }
}
