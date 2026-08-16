package java.lang.invoke;

import java.io.Serializable;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Objects;

public final class LambdaMetafactory {
    public static final int FLAG_SERIALIZABLE = 1;
    public static final int FLAG_MARKERS = 2;
    public static final int FLAG_BRIDGES = 4;
    private static final Class<?>[] EMPTY_CLASS_ARRAY = new Class[0];
    private static final MethodType[] EMPTY_MT_ARRAY = new MethodType[0];

    private LambdaMetafactory() {
    }

    public static CallSite metafactory(MethodHandles.Lookup caller, String interfaceMethodName, MethodType factoryType, MethodType interfaceMethodType, MethodHandle implementation, MethodType dynamicMethodType) throws LambdaConversionException {
        AbstractValidatingLambdaMetafactory mf2 = new InnerClassLambdaMetafactory((MethodHandles.Lookup) Objects.requireNonNull(caller), (MethodType) Objects.requireNonNull(factoryType), (String) Objects.requireNonNull(interfaceMethodName), (MethodType) Objects.requireNonNull(interfaceMethodType), (MethodHandle) Objects.requireNonNull(implementation), (MethodType) Objects.requireNonNull(dynamicMethodType), false, EMPTY_CLASS_ARRAY, EMPTY_MT_ARRAY);
        mf2.validateMetafactoryArgs();
        return mf2.buildCallSite();
    }

    public static CallSite altMetafactory(MethodHandles.Lookup caller, String interfaceMethodName, MethodType factoryType, Object... args) throws LambdaConversionException {
        Objects.requireNonNull(caller);
        Objects.requireNonNull(interfaceMethodName);
        Objects.requireNonNull(factoryType);
        Objects.requireNonNull(args);
        int argIndex = 0 + 1;
        MethodType interfaceMethodType = (MethodType) extractArg(args, 0, MethodType.class);
        int argIndex2 = argIndex + 1;
        MethodHandle implementation = (MethodHandle) extractArg(args, argIndex, MethodHandle.class);
        int argIndex3 = argIndex2 + 1;
        MethodType dynamicMethodType = (MethodType) extractArg(args, argIndex2, MethodType.class);
        int argIndex4 = argIndex3 + 1;
        int flags = ((Integer) extractArg(args, argIndex3, Integer.class)).intValue();
        Class<?>[] altInterfaces = EMPTY_CLASS_ARRAY;
        MethodType[] altMethods = EMPTY_MT_ARRAY;
        if ((flags & 2) != 0) {
            argIndex4++;
            int altInterfaceCount = ((Integer) extractArg(args, argIndex4, Integer.class)).intValue();
            if (altInterfaceCount < 0) {
                throw new IllegalArgumentException("negative argument count");
            }
            if (altInterfaceCount > 0) {
                altInterfaces = (Class[]) extractArgs(args, argIndex4, Class.class, altInterfaceCount);
                argIndex4 += altInterfaceCount;
            }
        }
        if ((flags & 4) != 0) {
            int i10 = argIndex4;
            argIndex4++;
            int altMethodCount = ((Integer) extractArg(args, i10, Integer.class)).intValue();
            if (altMethodCount < 0) {
                throw new IllegalArgumentException("negative argument count");
            }
            if (altMethodCount > 0) {
                altMethods = (MethodType[]) extractArgs(args, argIndex4, MethodType.class, altMethodCount);
                argIndex4 += altMethodCount;
            }
        }
        if (argIndex4 < args.length) {
            throw new IllegalArgumentException("too many arguments");
        }
        boolean isSerializable = (flags & 1) != 0;
        if (isSerializable) {
            boolean foundSerializableSupertype = Serializable.class.isAssignableFrom(factoryType.returnType());
            for (Class<?> c10 : altInterfaces) {
                foundSerializableSupertype |= Serializable.class.isAssignableFrom(c10);
            }
            if (!foundSerializableSupertype) {
                altInterfaces = (Class[]) Arrays.copyOf(altInterfaces, altInterfaces.length + 1);
                altInterfaces[altInterfaces.length - 1] = Serializable.class;
            }
        }
        AbstractValidatingLambdaMetafactory mf2 = new InnerClassLambdaMetafactory(caller, factoryType, interfaceMethodName, interfaceMethodType, implementation, dynamicMethodType, isSerializable, altInterfaces, altMethods);
        mf2.validateMetafactoryArgs();
        return mf2.buildCallSite();
    }

    private static <T> T extractArg(Object[] args, int index, Class<T> type) {
        if (index >= args.length) {
            throw new IllegalArgumentException("missing argument");
        }
        Object result = Objects.requireNonNull(args[index]);
        if (!type.isInstance(result)) {
            throw new IllegalArgumentException("argument has wrong type");
        }
        return type.cast(result);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> T[] extractArgs(Object[] objArr, int i10, Class<T> cls, int i11) {
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i11));
        for (int i12 = 0; i12 < i11; i12++) {
            tArr[i12] = extractArg(objArr, i10 + i12, cls);
        }
        return tArr;
    }
}
