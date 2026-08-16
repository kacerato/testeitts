package com.android.tools.r8.internal;

import java.util.logging.Level;
import java.util.logging.Logger;
import og.ExecutorC14502a;
import org.luaj.vm2.Lua;

public abstract class AbstractC5322Ie extends AbstractC6373a8 {

    public static final Logger f41156a = Logger.getLogger(AbstractC5322Ie.class.getName());

    public static final boolean f41157b = AbstractC6671bw0.f46897e;

    public static int a(long j10) {
        int i10;
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (j10 < 0) {
            return 10;
        }
        if (((-34359738368L) & j10) != 0) {
            j10 >>>= 28;
            i10 = 6;
        } else {
            i10 = 2;
        }
        if ((ExecutorC14502a.f98708y & j10) != 0) {
            i10 += 2;
            j10 >>>= 14;
        }
        return (j10 & (-16384)) != 0 ? i10 + 1 : i10;
    }

    public static long b(long j10) {
        return (j10 >> 63) ^ (j10 << 1);
    }

    public static int c(int i10) {
        if ((i10 & (-128)) == 0) {
            return 1;
        }
        if ((i10 & Lua.MASK_Bx) == 0) {
            return 2;
        }
        if (((-2097152) & i10) == 0) {
            return 3;
        }
        return (i10 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int d(int i10) {
        return (i10 >> 31) ^ (i10 << 1);
    }

    public abstract void a(byte b10);

    public abstract void a(int i10, long j10);

    public abstract void a(int i10, String str);

    public abstract void a(int i10, boolean z10);

    public abstract void a(int i10, byte[] bArr);

    public abstract void a(InterfaceC8095kW interfaceC8095kW);

    public abstract void a(AbstractC8373m8 abstractC8373m8);

    public abstract void b(int i10, int i11);

    public abstract void b(int i10, long j10);

    public abstract void b(int i10, InterfaceC8095kW interfaceC8095kW);

    public abstract void b(int i10, AbstractC8373m8 abstractC8373m8);

    public abstract void b(String str);

    public abstract void c(int i10, int i11);

    public abstract void c(int i10, InterfaceC8095kW interfaceC8095kW);

    public abstract void c(int i10, AbstractC8373m8 abstractC8373m8);

    public abstract void c(long j10);

    public abstract void d(int i10, int i11);

    public abstract void d(long j10);

    public abstract void e(int i10);

    public abstract void e(int i10, int i11);

    public abstract void f(int i10);

    public abstract void g(int i10);

    public static int a(int i10, int i11) {
        return b(i10) + (i11 >= 0 ? c(i11) : 10);
    }

    public static int b(int i10) {
        return c(i10 << 3);
    }

    public static int a(int i10, AbstractC8373m8 abstractC8373m8) {
        int b10 = b(i10);
        int size = abstractC8373m8.size();
        return AbstractC5559Mg.a(size, size, b10);
    }

    public static int a(int i10, InterfaceC8095kW interfaceC8095kW) {
        int b10 = b(i10);
        int serializedSize = interfaceC8095kW.getSerializedSize();
        return AbstractC5559Mg.a(serializedSize, serializedSize, b10);
    }

    public static int a(int i10) {
        if (i10 >= 0) {
            return c(i10);
        }
        return 10;
    }

    public static int a(String str) {
        int length;
        try {
            length = AbstractC9672tw0.a(str);
        } catch (C9172qw0 unused) {
            length = str.getBytes(YI.f45965b).length;
        }
        return c(length) + length;
    }

    public final void a(String str, C9172qw0 c9172qw0) {
        f41156a.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) c9172qw0);
        byte[] bytes = str.getBytes(YI.f45965b);
        try {
            g(bytes.length);
            a(bytes, 0, bytes.length);
        } catch (C5148Fe e10) {
            throw e10;
        } catch (IndexOutOfBoundsException e11) {
            throw new C5148Fe(e11);
        }
    }
}
