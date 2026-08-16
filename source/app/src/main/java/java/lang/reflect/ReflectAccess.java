package java.lang.reflect;

import jdk.internal.access.JavaLangReflectAccess;
import jdk.internal.reflect.ConstructorAccessor;

final class ReflectAccess implements JavaLangReflectAccess {
    public <T> Constructor<T> newConstructorWithAccessor(Constructor<T> original, ConstructorAccessor accessor) {
        return original.newWithAccessor(accessor);
    }

    public byte[] getExecutableTypeAnnotationBytes(Executable ex) {
        return ex.getTypeAnnotationBytes();
    }

    public Class<?>[] getExecutableSharedParameterTypes(Executable ex) {
        return ex.getSharedParameterTypes();
    }

    public Class<?>[] getExecutableSharedExceptionTypes(Executable ex) {
        return ex.getSharedExceptionTypes();
    }

    public Method copyMethod(Method arg) {
        return arg.copy();
    }

    public Field copyField(Field arg) {
        return arg.copy();
    }

    public <T> Constructor<T> copyConstructor(Constructor<T> arg) {
        return arg.copy();
    }

    public <T extends AccessibleObject> T getRoot(T t10) {
        return (T) t10.getRoot();
    }

    public boolean isTrustedFinalField(Field f10) {
        return f10.isTrustedFinal();
    }

    public <T> T newInstance(Constructor<T> ctor, Object[] args, Class<?> caller) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        return ctor.newInstanceWithCaller(args, true, caller);
    }
}
