package net.jpountz.lz4;

import java.io.PrintStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public final class i {

    public static i f98017g;

    public static i f98018h;

    public static i f98019i;

    public final String f98020a;

    public final d f98021b;

    public final d f98022c;

    public final j f98023d;

    public final y f98024e;

    public final d[] f98025f;

    public i(String str) throws ClassNotFoundException, NoSuchFieldException, SecurityException, IllegalArgumentException, IllegalAccessException, NoSuchMethodException, InstantiationException, InvocationTargetException {
        d[] dVarArr = new d[18];
        this.f98025f = dVarArr;
        this.f98020a = str;
        this.f98021b = (d) a("net.jpountz.lz4.LZ4" + str + "Compressor");
        d dVar = (d) a("net.jpountz.lz4.LZ4HC" + str + "Compressor");
        this.f98022c = dVar;
        this.f98023d = (j) a("net.jpountz.lz4.LZ4" + str + "FastDecompressor");
        this.f98024e = (y) a("net.jpountz.lz4.LZ4" + str + "SafeDecompressor");
        Constructor<?> declaredConstructor = dVar.getClass().getDeclaredConstructor(Integer.TYPE);
        dVarArr[9] = dVar;
        for (int i10 = 1; i10 <= 17; i10++) {
            if (i10 != 9) {
                this.f98025f[i10] = (d) declaredConstructor.newInstance(Integer.valueOf(i10));
            }
        }
        byte[] bArr = {Opcodes.OPC_ladd, Opcodes.OPC_fadd, Opcodes.OPC_dadd, 100, 32, 32, 32, 32, 32, 32, Opcodes.OPC_ladd, Opcodes.OPC_fadd, Opcodes.OPC_dadd, 100, 101, 102, Opcodes.OPC_dsub, Opcodes.OPC_imul, 105, 106};
        for (d dVar2 : Arrays.asList(this.f98021b, this.f98022c)) {
            int h10 = dVar2.h(20);
            byte[] bArr2 = new byte[h10];
            int c10 = dVar2.c(bArr, 0, 20, bArr2, 0, h10);
            byte[] bArr3 = new byte[20];
            this.f98023d.a(bArr2, 0, bArr3, 0, 20);
            if (!Arrays.equals(bArr, bArr3)) {
                throw new AssertionError();
            }
            Arrays.fill(bArr3, (byte) 0);
            if (this.f98024e.b(bArr2, 0, c10, bArr3, 0) != 20 || !Arrays.equals(bArr, bArr3)) {
                throw new AssertionError();
            }
        }
    }

    public static <T> T a(String str) throws NoSuchFieldException, SecurityException, ClassNotFoundException, IllegalArgumentException, IllegalAccessException {
        ClassLoader classLoader = i.class.getClassLoader();
        if (classLoader == null) {
            classLoader = ClassLoader.getSystemClassLoader();
        }
        return (T) classLoader.loadClass(str).getField("INSTANCE").get(null);
    }

    public static i e() {
        if (!net.jpountz.util.b.c() && net.jpountz.util.b.class.getClassLoader() != ClassLoader.getSystemClassLoader()) {
            return f();
        }
        try {
            return k();
        } catch (Throwable unused) {
            return f();
        }
    }

    public static i f() {
        if (!net.jpountz.util.e.a()) {
            return m();
        }
        try {
            return o();
        } catch (Throwable unused) {
            return m();
        }
    }

    public static i i(String str) {
        try {
            return new i(str);
        } catch (Exception e10) {
            throw new AssertionError(e10);
        }
    }

    public static void j(String[] strArr) {
        PrintStream printStream = System.out;
        printStream.println("Fastest instance is " + ((Object) e()));
        printStream.println("Fastest Java instance is " + ((Object) f()));
    }

    public static synchronized i k() {
        i iVar;
        synchronized (i.class) {
            try {
                if (f98017g == null) {
                    f98017g = i("JNI");
                }
                iVar = f98017g;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVar;
    }

    public static synchronized i m() {
        i iVar;
        synchronized (i.class) {
            try {
                if (f98019i == null) {
                    f98019i = i("JavaSafe");
                }
                iVar = f98019i;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVar;
    }

    public static synchronized i o() {
        i iVar;
        synchronized (i.class) {
            try {
                if (f98018h == null) {
                    f98018h = i("JavaUnsafe");
                }
                iVar = f98018h;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVar;
    }

    public g b() {
        return d();
    }

    public d c() {
        return this.f98021b;
    }

    public j d() {
        return this.f98023d;
    }

    public d g() {
        return this.f98022c;
    }

    public d h(int i10) {
        if (i10 > 17) {
            i10 = 17;
        } else if (i10 < 1) {
            i10 = 9;
        }
        return this.f98025f[i10];
    }

    public y l() {
        return this.f98024e;
    }

    public A n() {
        return l();
    }

    public String toString() {
        return i.class.getSimpleName() + b3.s.f32937c + this.f98020a;
    }
}
