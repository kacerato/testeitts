package com.jme3.util;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jdt.core.JavaCore;

public final class ReflectionAllocator implements BufferAllocator {
    private static Method freeMethod;
    private static Method viewedBufferMethod;
    private static Method cleanerMethod = loadMethod("sun.nio.ch.DirectBuffer", "cleaner");
    private static Method cleanMethod = loadMethod("sun.misc.Cleaner", JavaCore.CLEAN);

    static {
        Method loadMethod = loadMethod("sun.nio.ch.DirectBuffer", "viewedBuffer");
        viewedBufferMethod = loadMethod;
        if (loadMethod == null) {
            viewedBufferMethod = loadMethod("sun.nio.ch.DirectBuffer", "attachment");
        }
        try {
            freeMethod = ByteBuffer.allocateDirect(1).getClass().getMethod("free", null);
        } catch (NoSuchMethodException | SecurityException unused) {
        }
    }

    private static Method loadMethod(String str, String str2) {
        try {
            Method method = Class.forName(str).getMethod(str2, null);
            method.setAccessible(true);
            return method;
        } catch (ClassNotFoundException | NoSuchMethodException | SecurityException unused) {
            return null;
        } catch (Throwable th2) {
            if (th2.getClass().getName().equals("java.lang.reflect.InaccessibleObjectException")) {
                return null;
            }
            throw th2;
        }
    }

    @Override
    public ByteBuffer allocate(int i10) {
        return ByteBuffer.allocateDirect(i10);
    }

    @Override
    public void destroyDirectBuffer(Buffer buffer) {
        try {
            Method method = freeMethod;
            if (method != null) {
                method.invoke(buffer, null);
                return;
            }
            Method method2 = cleanerMethod;
            if (method2 == null) {
                method2 = loadMethod(buffer.getClass().getName(), "cleaner");
            }
            if (method2 == null) {
                Logger.getLogger(BufferUtils.class.getName()).log(Level.SEVERE, "Buffer cannot be destroyed: {0}", buffer);
                return;
            }
            Object invoke = method2.invoke(buffer, null);
            if (invoke != null) {
                Method method3 = cleanMethod;
                if (method3 == null) {
                    method3 = invoke instanceof Runnable ? loadMethod(Runnable.class.getName(), "run") : loadMethod(invoke.getClass().getName(), JavaCore.CLEAN);
                }
                if (method3 == null) {
                    Logger.getLogger(BufferUtils.class.getName()).log(Level.SEVERE, "Buffer cannot be destroyed: {0}", buffer);
                    return;
                } else {
                    method3.invoke(invoke, null);
                    return;
                }
            }
            Method method4 = viewedBufferMethod;
            if (method4 == null) {
                method4 = loadMethod(buffer.getClass().getName(), "viewedBuffer");
            }
            if (method4 == null) {
                Logger.getLogger(BufferUtils.class.getName()).log(Level.SEVERE, "Buffer cannot be destroyed: {0}", buffer);
                return;
            }
            Object invoke2 = method4.invoke(buffer, null);
            if (invoke2 == null) {
                Logger.getLogger(BufferUtils.class.getName()).log(Level.SEVERE, "Buffer cannot be destroyed: {0}", buffer);
            } else if (invoke2 instanceof Buffer) {
                destroyDirectBuffer((Buffer) invoke2);
            }
        } catch (IllegalAccessException e10) {
            e = e10;
            Logger.getLogger(BufferUtils.class.getName()).log(Level.SEVERE, "{0}", e);
        } catch (IllegalArgumentException e11) {
            e = e11;
            Logger.getLogger(BufferUtils.class.getName()).log(Level.SEVERE, "{0}", e);
        } catch (SecurityException e12) {
            e = e12;
            Logger.getLogger(BufferUtils.class.getName()).log(Level.SEVERE, "{0}", e);
        } catch (InvocationTargetException e13) {
            e = e13;
            Logger.getLogger(BufferUtils.class.getName()).log(Level.SEVERE, "{0}", e);
        }
    }
}
