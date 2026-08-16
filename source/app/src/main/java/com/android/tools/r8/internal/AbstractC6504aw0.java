package com.android.tools.r8.internal;

import java.lang.reflect.Field;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

public abstract class AbstractC6504aw0 {

    public final Unsafe f46653a;

    public AbstractC6504aw0(Unsafe unsafe) {
        this.f46653a = unsafe;
    }

    public abstract byte a(long j10);

    public abstract byte a(Object obj, long j10);

    public final long a(Field field) {
        return this.f46653a.objectFieldOffset(field);
    }

    public abstract void a(long j10, byte[] bArr, long j11);

    public abstract void a(Object obj, long j10, byte b10);

    public final int b(Class cls) {
        return this.f46653a.arrayIndexScale(cls);
    }

    public abstract boolean b();

    public final long c(Object obj, long j10) {
        return this.f46653a.getLong(obj, j10);
    }

    public final int a(Class cls) {
        return this.f46653a.arrayBaseOffset(cls);
    }

    public final int b(Object obj, long j10) {
        return this.f46653a.getInt(obj, j10);
    }

    public boolean a() {
        Unsafe unsafe = this.f46653a;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            Class<Long> cls2 = Long.TYPE;
            cls.getMethod("getInt", Object.class, cls2);
            cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
            cls.getMethod("getLong", Object.class, cls2);
            cls.getMethod("putLong", Object.class, cls2, cls2);
            cls.getMethod("getObject", Object.class, cls2);
            cls.getMethod("putObject", Object.class, cls2, Object.class);
            return true;
        } catch (Throwable th2) {
            Unsafe unsafe2 = AbstractC6671bw0.f46893a;
            Logger.getLogger(AbstractC6671bw0.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th2);
            return false;
        }
    }

    public final void a(Object obj, long j10, int i10) {
        this.f46653a.putInt(obj, j10, i10);
    }
}
