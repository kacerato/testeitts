package com.android.tools.r8.internal;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

public final class C6339Zv0 extends AbstractC6504aw0 {
    public C6339Zv0(Unsafe unsafe) {
        super(unsafe);
    }

    @Override
    public final boolean a() {
        if (!super.a()) {
            return false;
        }
        try {
            Class<?> cls = this.f46653a.getClass();
            Class<Long> cls2 = Long.TYPE;
            cls.getMethod("getByte", Object.class, cls2);
            cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, cls2);
            cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, cls2);
            cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
            cls.getMethod("getDouble", Object.class, cls2);
            cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
            return true;
        } catch (Throwable th2) {
            Logger.getLogger(AbstractC6671bw0.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th2);
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003a, code lost:
    
        if (r5 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x003c, code lost:
    
        r9 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0051, code lost:
    
        if (r5.getType() == java.lang.Long.TYPE) goto L13;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean b() {
        Field field;
        Unsafe unsafe = this.f46653a;
        if (unsafe != null) {
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                Class<Long> cls2 = Long.TYPE;
                cls.getMethod("getLong", Object.class, cls2);
                Field field2 = null;
                if (AbstractC9690u2.a()) {
                    try {
                        field = Buffer.class.getDeclaredField("effectiveDirectAddress");
                    } catch (Throwable unused) {
                        field = null;
                    }
                }
                try {
                    field = Buffer.class.getDeclaredField("address");
                } catch (Throwable unused2) {
                    field = null;
                }
                if (field != null) {
                }
                if (field2 != null) {
                    try {
                        Class<?> cls3 = this.f46653a.getClass();
                        cls3.getMethod("getByte", cls2);
                        cls3.getMethod("putByte", cls2, Byte.TYPE);
                        cls3.getMethod("getInt", cls2);
                        cls3.getMethod("putInt", cls2, Integer.TYPE);
                        cls3.getMethod("getLong", cls2);
                        cls3.getMethod("putLong", cls2, cls2);
                        cls3.getMethod("copyMemory", cls2, cls2, cls2);
                        cls3.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                        return true;
                    } catch (Throwable th2) {
                        Logger.getLogger(AbstractC6671bw0.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th2);
                        return false;
                    }
                }
            } catch (Throwable th3) {
                Logger.getLogger(AbstractC6671bw0.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th3);
            }
        }
        return false;
    }

    @Override
    public final byte a(Object obj, long j10) {
        return this.f46653a.getByte(obj, j10);
    }

    @Override
    public final void a(Object obj, long j10, byte b10) {
        this.f46653a.putByte(obj, j10, b10);
    }

    @Override
    public final byte a(long j10) {
        return this.f46653a.getByte(j10);
    }

    @Override
    public final void a(long j10, byte[] bArr, long j11) {
        this.f46653a.copyMemory((Object) null, j10, bArr, AbstractC6671bw0.f46898f, j11);
    }
}
