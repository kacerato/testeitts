package java.lang.invoke;

import jdk.internal.loader.BuiltinClassLoader;
import jdk.internal.misc.CDS;

final class LambdaProxyClassArchive {
    private static native void addToArchive(Class<?> cls, String str, MethodType methodType, MethodType methodType2, MemberName memberName, MethodType methodType3, Class<?> cls2);

    private static native Class<?> findFromArchive(Class<?> cls, String str, MethodType methodType, MethodType methodType2, MemberName memberName, MethodType methodType3);

    LambdaProxyClassArchive() {
    }

    static boolean loadedByBuiltinLoader(Class<?> cls) {
        ClassLoader cl2 = cls.getClassLoader();
        return cl2 == null || (cl2 instanceof BuiltinClassLoader);
    }

    public static boolean register(Class<?> caller, String interfaceMethodName, MethodType factoryType, MethodType interfaceMethodType, MethodHandle implementation, MethodType dynamicMethodType, boolean isSerializable, Class<?>[] altInterfaces, MethodType[] altMethods, Class<?> lambdaProxyClass) {
        if (!CDS.isDumpingArchive()) {
            throw new IllegalStateException("should only register lambda proxy class at dump time");
        }
        if (loadedByBuiltinLoader(caller) && !isSerializable && altInterfaces.length == 0 && altMethods.length == 0) {
            addToArchive(caller, interfaceMethodName, factoryType, interfaceMethodType, implementation.internalMemberName(), dynamicMethodType, lambdaProxyClass);
            return true;
        }
        return false;
    }

    public static Class<?> find(Class<?> caller, String interfaceMethodName, MethodType factoryType, MethodType interfaceMethodType, MethodHandle implementation, MethodType dynamicMethodType, boolean isSerializable, Class<?>[] altInterfaces, MethodType[] altMethods) {
        if (!loadedByBuiltinLoader(caller) || !CDS.isUsingArchive() || isSerializable || altInterfaces.length > 0 || altMethods.length > 0) {
            return null;
        }
        return findFromArchive(caller, interfaceMethodName, factoryType, interfaceMethodType, implementation.internalMemberName(), dynamicMethodType);
    }
}
