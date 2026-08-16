package java.lang.reflect;

import jdk.internal.vm.annotation.IntrinsicCandidate;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/Array.class
 */
public final class Array {
    @IntrinsicCandidate
    public static native int getLength(Object obj) throws IllegalArgumentException;

    public static native Object get(Object obj, int i10) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    public static native boolean getBoolean(Object obj, int i10) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    public static native byte getByte(Object obj, int i10) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    public static native char getChar(Object obj, int i10) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    public static native short getShort(Object obj, int i10) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    public static native int getInt(Object obj, int i10) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    public static native long getLong(Object obj, int i10) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    public static native float getFloat(Object obj, int i10) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    public static native double getDouble(Object obj, int i10) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    public static native void set(Object obj, int i10, Object obj2) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    public static native void setBoolean(Object obj, int i10, boolean z10) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    public static native void setByte(Object obj, int i10, byte b10) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    public static native void setChar(Object obj, int i10, char c10) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    public static native void setShort(Object obj, int i10, short s10) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    public static native void setInt(Object obj, int i10, int i11) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    public static native void setLong(Object obj, int i10, long j10) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    public static native void setFloat(Object obj, int i10, float f10) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    public static native void setDouble(Object obj, int i10, double d10) throws IllegalArgumentException, ArrayIndexOutOfBoundsException;

    @IntrinsicCandidate
    private static native Object newArray(Class<?> cls, int i10) throws NegativeArraySizeException;

    private static native Object multiNewArray(Class<?> cls, int[] iArr) throws IllegalArgumentException, NegativeArraySizeException;

    private Array() {
    }

    public static Object newInstance(Class<?> componentType, int length) throws NegativeArraySizeException {
        return newArray(componentType, length);
    }

    public static Object newInstance(Class<?> componentType, int... dimensions) throws IllegalArgumentException, NegativeArraySizeException {
        return multiNewArray(componentType, dimensions);
    }
}
