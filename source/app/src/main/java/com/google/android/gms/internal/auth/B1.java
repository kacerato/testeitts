package com.google.android.gms.internal.auth;

import com.google.android.gms.internal.auth.B1;
import com.google.android.gms.internal.auth.C12011z1;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class B1<MessageType extends B1<MessageType, BuilderType>, BuilderType extends C12011z1<MessageType, BuilderType>> extends V0<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    private int zzd = -1;
    protected H2 zzc = H2.a();

    public static B1 b(Class cls) {
        Map map = zzb;
        B1 b12 = (B1) map.get(cls);
        if (b12 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                b12 = (B1) map.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (b12 == null) {
            b12 = (B1) ((B1) Q2.e(cls)).m(6, null, null);
            if (b12 == null) {
                throw new IllegalStateException();
            }
            map.put(cls, b12);
        }
        return b12;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
    
        if (r1 != false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static B1 d(B1 b12, byte[] bArr) throws zzfb {
        byte byteValue;
        B1 n10 = n(b12, bArr, 0, bArr.length, C11979r1.f61827c);
        if (n10 != null && (byteValue = ((Byte) n10.m(1, null, null)).byteValue()) != 1) {
            if (byteValue != 0) {
                boolean f10 = C11961m2.a().b(n10.getClass()).f(n10);
                n10.m(2, true != f10 ? null : n10, null);
            }
            zzfb zza = new zzgy(n10).zza();
            zza.zze(n10);
            throw zza;
        }
        return n10;
    }

    public static F1 e() {
        return C11965n2.b();
    }

    public static Object f(Method method, Object obj, Object... objArr) {
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

    public static Object g(InterfaceC11925d2 interfaceC11925d2, String str, Object[] objArr) {
        return new C11969o2(interfaceC11925d2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", objArr);
    }

    public static void j(Class cls, B1 b12) {
        b12.i();
        zzb.put(cls, b12);
    }

    public static B1 n(B1 b12, byte[] bArr, int i10, int i11, C11979r1 c11979r1) throws zzfb {
        B1 c10 = b12.c();
        try {
            InterfaceC11973p2 b10 = C11961m2.a().b(c10.getClass());
            b10.d(c10, bArr, 0, i11, new Y0(c11979r1));
            b10.a(c10);
            return c10;
        } catch (zzfb e10) {
            e10.zze(c10);
            throw e10;
        } catch (zzgy e11) {
            zzfb zza = e11.zza();
            zza.zze(c10);
            throw zza;
        } catch (IOException e12) {
            if (e12.getCause() instanceof zzfb) {
                throw ((zzfb) e12.getCause());
            }
            zzfb zzfbVar = new zzfb(e12);
            zzfbVar.zze(c10);
            throw zzfbVar;
        } catch (IndexOutOfBoundsException unused) {
            zzfb zzf = zzfb.zzf();
            zzf.zze(c10);
            throw zzf;
        }
    }

    @Override
    public final InterfaceC11925d2 R1() {
        return (B1) m(6, null, null);
    }

    public final int a() {
        return C11961m2.a().b(getClass()).b(this);
    }

    public final B1 c() {
        return (B1) m(4, null, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return C11961m2.a().b(getClass()).c(this, (B1) obj);
    }

    public final void h() {
        C11961m2.a().b(getClass()).a(this);
        i();
    }

    public final int hashCode() {
        if (l()) {
            return a();
        }
        int i10 = this.zza;
        if (i10 != 0) {
            return i10;
        }
        int a10 = a();
        this.zza = a10;
        return a10;
    }

    public final void i() {
        this.zzd &= Integer.MAX_VALUE;
    }

    public final void k(int i10) {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final boolean l() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    public abstract Object m(int i10, Object obj, Object obj2);

    public final String toString() {
        return C11933f2.a(this, super.toString());
    }
}
