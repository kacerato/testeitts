package java.lang.runtime;

import java.lang.invoke.ConstantCallSite;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.invoke.StringConcatFactory;
import java.lang.invoke.TypeDescriptor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import okhttp3.v;

public final class ObjectMethods {
    private static final int MAX_STRING_CONCAT_SLOTS = 20;
    private static final MethodHandle FALSE;
    private static final MethodHandle TRUE;
    private static final MethodHandle ZERO;
    private static final MethodHandle CLASS_IS_INSTANCE;
    private static final MethodHandle OBJECTS_EQUALS;
    private static final MethodHandle OBJECTS_HASHCODE;
    private static final MethodHandle OBJECTS_TOSTRING;
    private static final MethodHandle OBJECT_EQ;
    private static final MethodHandle HASH_COMBINER;
    private static final HashMap<Class<?>, MethodHandle> primitiveEquals;
    private static final HashMap<Class<?>, MethodHandle> primitiveHashers;
    private static final HashMap<Class<?>, MethodHandle> primitiveToString;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !ObjectMethods.class.desiredAssertionStatus();
        FALSE = MethodHandles.zero(Boolean.TYPE);
        TRUE = MethodHandles.constant(Boolean.TYPE, true);
        ZERO = MethodHandles.zero(Integer.TYPE);
        primitiveEquals = new HashMap<>();
        primitiveHashers = new HashMap<>();
        primitiveToString = new HashMap<>();
        try {
            MethodHandles.Lookup publicLookup = MethodHandles.publicLookup();
            MethodHandles.Lookup lookup = MethodHandles.lookup();
            CLASS_IS_INSTANCE = publicLookup.findVirtual(Class.class, "isInstance", MethodType.methodType(Boolean.TYPE, (Class<?>) Object.class));
            OBJECTS_EQUALS = publicLookup.findStatic(Objects.class, "equals", MethodType.methodType(Boolean.TYPE, (Class<?>) Object.class, (Class<?>[]) new Class[]{Object.class}));
            OBJECTS_HASHCODE = publicLookup.findStatic(Objects.class, "hashCode", MethodType.methodType(Integer.TYPE, (Class<?>) Object.class));
            OBJECTS_TOSTRING = publicLookup.findStatic(Objects.class, "toString", MethodType.methodType((Class<?>) String.class, (Class<?>) Object.class));
            OBJECT_EQ = lookup.findStatic(ObjectMethods.class, "eq", MethodType.methodType(Boolean.TYPE, (Class<?>) Object.class, (Class<?>[]) new Class[]{Object.class}));
            HASH_COMBINER = lookup.findStatic(ObjectMethods.class, "hashCombiner", MethodType.methodType(Integer.TYPE, Integer.TYPE, (Class<?>[]) new Class[]{Integer.TYPE}));
            primitiveEquals.put(Byte.TYPE, lookup.findStatic(ObjectMethods.class, "eq", MethodType.methodType(Boolean.TYPE, Byte.TYPE, (Class<?>[]) new Class[]{Byte.TYPE})));
            primitiveEquals.put(Short.TYPE, lookup.findStatic(ObjectMethods.class, "eq", MethodType.methodType(Boolean.TYPE, Short.TYPE, (Class<?>[]) new Class[]{Short.TYPE})));
            primitiveEquals.put(Character.TYPE, lookup.findStatic(ObjectMethods.class, "eq", MethodType.methodType(Boolean.TYPE, Character.TYPE, (Class<?>[]) new Class[]{Character.TYPE})));
            primitiveEquals.put(Integer.TYPE, lookup.findStatic(ObjectMethods.class, "eq", MethodType.methodType(Boolean.TYPE, Integer.TYPE, (Class<?>[]) new Class[]{Integer.TYPE})));
            primitiveEquals.put(Long.TYPE, lookup.findStatic(ObjectMethods.class, "eq", MethodType.methodType(Boolean.TYPE, Long.TYPE, (Class<?>[]) new Class[]{Long.TYPE})));
            primitiveEquals.put(Float.TYPE, lookup.findStatic(ObjectMethods.class, "eq", MethodType.methodType(Boolean.TYPE, Float.TYPE, (Class<?>[]) new Class[]{Float.TYPE})));
            primitiveEquals.put(Double.TYPE, lookup.findStatic(ObjectMethods.class, "eq", MethodType.methodType(Boolean.TYPE, Double.TYPE, (Class<?>[]) new Class[]{Double.TYPE})));
            primitiveEquals.put(Boolean.TYPE, lookup.findStatic(ObjectMethods.class, "eq", MethodType.methodType(Boolean.TYPE, Boolean.TYPE, (Class<?>[]) new Class[]{Boolean.TYPE})));
            primitiveHashers.put(Byte.TYPE, lookup.findStatic(Byte.class, "hashCode", MethodType.methodType(Integer.TYPE, Byte.TYPE)));
            primitiveHashers.put(Short.TYPE, lookup.findStatic(Short.class, "hashCode", MethodType.methodType(Integer.TYPE, Short.TYPE)));
            primitiveHashers.put(Character.TYPE, lookup.findStatic(Character.class, "hashCode", MethodType.methodType(Integer.TYPE, Character.TYPE)));
            primitiveHashers.put(Integer.TYPE, lookup.findStatic(Integer.class, "hashCode", MethodType.methodType(Integer.TYPE, Integer.TYPE)));
            primitiveHashers.put(Long.TYPE, lookup.findStatic(Long.class, "hashCode", MethodType.methodType(Integer.TYPE, Long.TYPE)));
            primitiveHashers.put(Float.TYPE, lookup.findStatic(Float.class, "hashCode", MethodType.methodType(Integer.TYPE, Float.TYPE)));
            primitiveHashers.put(Double.TYPE, lookup.findStatic(Double.class, "hashCode", MethodType.methodType(Integer.TYPE, Double.TYPE)));
            primitiveHashers.put(Boolean.TYPE, lookup.findStatic(Boolean.class, "hashCode", MethodType.methodType(Integer.TYPE, Boolean.TYPE)));
            primitiveToString.put(Byte.TYPE, lookup.findStatic(Byte.class, "toString", MethodType.methodType((Class<?>) String.class, Byte.TYPE)));
            primitiveToString.put(Short.TYPE, lookup.findStatic(Short.class, "toString", MethodType.methodType((Class<?>) String.class, Short.TYPE)));
            primitiveToString.put(Character.TYPE, lookup.findStatic(Character.class, "toString", MethodType.methodType((Class<?>) String.class, Character.TYPE)));
            primitiveToString.put(Integer.TYPE, lookup.findStatic(Integer.class, "toString", MethodType.methodType((Class<?>) String.class, Integer.TYPE)));
            primitiveToString.put(Long.TYPE, lookup.findStatic(Long.class, "toString", MethodType.methodType((Class<?>) String.class, Long.TYPE)));
            primitiveToString.put(Float.TYPE, lookup.findStatic(Float.class, "toString", MethodType.methodType((Class<?>) String.class, Float.TYPE)));
            primitiveToString.put(Double.TYPE, lookup.findStatic(Double.class, "toString", MethodType.methodType((Class<?>) String.class, Double.TYPE)));
            primitiveToString.put(Boolean.TYPE, lookup.findStatic(Boolean.class, "toString", MethodType.methodType((Class<?>) String.class, Boolean.TYPE)));
        } catch (ReflectiveOperationException e10) {
            throw new RuntimeException(e10);
        }
    }

    private ObjectMethods() {
    }

    private static int hashCombiner(int x10, int y10) {
        return (x10 * 31) + y10;
    }

    private static boolean eq(Object a10, Object b10) {
        return a10 == b10;
    }

    private static boolean eq(byte a10, byte b10) {
        return a10 == b10;
    }

    private static boolean eq(short a10, short b10) {
        return a10 == b10;
    }

    private static boolean eq(char a10, char b10) {
        return a10 == b10;
    }

    private static boolean eq(int a10, int b10) {
        return a10 == b10;
    }

    private static boolean eq(long a10, long b10) {
        return a10 == b10;
    }

    private static boolean eq(float a10, float b10) {
        return Float.compare(a10, b10) == 0;
    }

    private static boolean eq(double a10, double b10) {
        return Double.compare(a10, b10) == 0;
    }

    private static boolean eq(boolean a10, boolean b10) {
        return a10 == b10;
    }

    private static MethodHandle equalator(Class<?> clazz) {
        return clazz.isPrimitive() ? primitiveEquals.get(clazz) : OBJECTS_EQUALS.asType(MethodType.methodType(Boolean.TYPE, clazz, (Class<?>[]) new Class[]{clazz}));
    }

    private static MethodHandle hasher(Class<?> clazz) {
        if (clazz.isPrimitive()) {
            return primitiveHashers.get(clazz);
        }
        return OBJECTS_HASHCODE.asType(MethodType.methodType(Integer.TYPE, clazz));
    }

    private static MethodHandle stringifier(Class<?> clazz) {
        if (clazz.isPrimitive()) {
            return primitiveToString.get(clazz);
        }
        return OBJECTS_TOSTRING.asType(MethodType.methodType((Class<?>) String.class, clazz));
    }

    private static MethodHandle makeEquals(Class<?> receiverClass, List<MethodHandle> getters) {
        MethodType rr = MethodType.methodType(Boolean.TYPE, receiverClass, (Class<?>[]) new Class[]{receiverClass});
        MethodType ro = MethodType.methodType(Boolean.TYPE, receiverClass, (Class<?>[]) new Class[]{Object.class});
        MethodHandle instanceFalse = MethodHandles.dropArguments(FALSE, 0, (Class<?>[]) new Class[]{receiverClass, Object.class});
        MethodHandle instanceTrue = MethodHandles.dropArguments(TRUE, 0, (Class<?>[]) new Class[]{receiverClass, Object.class});
        MethodHandle isSameObject = OBJECT_EQ.asType(ro);
        MethodHandle isInstance = MethodHandles.dropArguments(CLASS_IS_INSTANCE.bindTo(receiverClass), 0, (Class<?>[]) new Class[]{receiverClass});
        MethodHandle accumulator = MethodHandles.dropArguments(TRUE, 0, (Class<?>[]) new Class[]{receiverClass, receiverClass});
        for (MethodHandle getter : getters) {
            MethodHandle equalator = equalator(getter.type().returnType());
            MethodHandle thisFieldEqual = MethodHandles.filterArguments(equalator, 0, getter, getter);
            accumulator = MethodHandles.guardWithTest(thisFieldEqual, accumulator, instanceFalse.asType(rr));
        }
        return MethodHandles.guardWithTest(isSameObject, instanceTrue, MethodHandles.guardWithTest(isInstance, accumulator.asType(ro), instanceFalse));
    }

    private static MethodHandle makeHashCode(Class<?> receiverClass, List<MethodHandle> getters) {
        MethodHandle accumulator = MethodHandles.dropArguments(ZERO, 0, (Class<?>[]) new Class[]{receiverClass});
        for (MethodHandle getter : getters) {
            MethodHandle hasher = hasher(getter.type().returnType());
            MethodHandle hashThisField = MethodHandles.filterArguments(hasher, 0, getter);
            MethodHandle combineHashes = MethodHandles.filterArguments(HASH_COMBINER, 0, accumulator, hashThisField);
            accumulator = MethodHandles.permuteArguments(combineHashes, accumulator.type(), 0, 0);
        }
        return accumulator;
    }

    private static MethodHandle makeToString(MethodHandles.Lookup lookup, Class<?> receiverClass, MethodHandle[] getters, List<String> names) {
        List<List<MethodHandle>> splits;
        MethodHandle[] mhs;
        if (!$assertionsDisabled && getters.length != names.size()) {
            throw new AssertionError();
        }
        if (getters.length == 0) {
            MethodHandle emptyRecordCase = MethodHandles.constant(String.class, receiverClass.getSimpleName() + v.f99450n);
            return MethodHandles.dropArguments(emptyRecordCase, 0, (Class<?>[]) new Class[]{receiverClass});
        }
        boolean firstTime = true;
        MethodHandle[] toSplit = getters;
        int namesIndex = 0;
        do {
            splits = split(toSplit);
            mhs = new MethodHandle[splits.size()];
            for (int splitIndex = 0; splitIndex < splits.size(); splitIndex++) {
                String recipe = "";
                if (firstTime && splitIndex == 0) {
                    recipe = receiverClass.getSimpleName() + "[";
                }
                for (int i10 = 0; i10 < splits.get(splitIndex).size(); i10++) {
                    recipe = recipe + (firstTime ? names.get(namesIndex) + "=\u0001" : "\u0001");
                    if (firstTime && namesIndex != names.size() - 1) {
                        recipe = recipe + ", ";
                    }
                    namesIndex++;
                }
                if (firstTime && splitIndex == splits.size() - 1) {
                    recipe = recipe + "]";
                }
                Class<?>[] concatTypeArgs = new Class[splits.get(splitIndex).size()];
                MethodHandle[] currentSplitGetters = new MethodHandle[splits.get(splitIndex).size()];
                for (int j10 = 0; j10 < splits.get(splitIndex).size(); j10++) {
                    concatTypeArgs[j10] = splits.get(splitIndex).get(j10).type().returnType();
                    currentSplitGetters[j10] = splits.get(splitIndex).get(j10);
                }
                MethodType concatMT = MethodType.methodType((Class<?>) String.class, concatTypeArgs);
                try {
                    mhs[splitIndex] = StringConcatFactory.makeConcatWithConstants(lookup, "", concatMT, recipe, new Object[0]).getTarget();
                    mhs[splitIndex] = MethodHandles.filterArguments(mhs[splitIndex], 0, currentSplitGetters);
                    mhs[splitIndex] = MethodHandles.permuteArguments(mhs[splitIndex], MethodType.methodType((Class<?>) String.class, receiverClass), new int[splits.get(splitIndex).size()]);
                } catch (Throwable t10) {
                    throw new RuntimeException(t10);
                }
            }
            toSplit = mhs;
            firstTime = false;
        } while (splits.size() > 1);
        return mhs[0];
    }

    private static List<List<MethodHandle>> split(MethodHandle[] getters) {
        List<List<MethodHandle>> splits = new ArrayList<>();
        int slots = 0;
        List<MethodHandle> cArgs = new ArrayList<>();
        for (MethodHandle methodHandle : getters) {
            Class<?> returnType = methodHandle.type().returnType();
            int needSlots = (returnType == Long.TYPE || returnType == Double.TYPE) ? 2 : 1;
            if (slots + needSlots > 20) {
                splits.add(cArgs);
                cArgs = new ArrayList<>();
                slots = 0;
            }
            cArgs.add(methodHandle);
            slots += needSlots;
        }
        if (!cArgs.isEmpty()) {
            splits.add(cArgs);
        }
        return splits;
    }

    public static Object bootstrap(MethodHandles.Lookup lookup, String methodName, TypeDescriptor type, Class<?> recordClass, String names, MethodHandle... getters) throws Throwable {
        MethodType methodType;
        MethodHandle makeToString;
        Objects.requireNonNull(lookup);
        Objects.requireNonNull(methodName);
        Objects.requireNonNull(type);
        Objects.requireNonNull(recordClass);
        Objects.requireNonNull(names);
        Objects.requireNonNull(getters);
        Arrays.stream(getters).forEach((v0) -> {
            Objects.requireNonNull(v0);
        });
        if (type instanceof MethodType) {
            MethodType mt = (MethodType) type;
            methodType = mt;
        } else {
            methodType = null;
            if (!MethodHandle.class.equals(type)) {
                throw new IllegalArgumentException(type.toString());
            }
        }
        List<MethodHandle> getterList = List.of(getters);
        boolean z10 = -1;
        switch (methodName.hashCode()) {
            case -1776922004:
                if (methodName.equals("toString")) {
                    z10 = 2;
                    break;
                }
                break;
            case -1295482945:
                if (methodName.equals("equals")) {
                    z10 = false;
                    break;
                }
                break;
            case 147696667:
                if (methodName.equals("hashCode")) {
                    z10 = true;
                    break;
                }
                break;
        }
        switch (z10) {
            case false:
                if (methodType != null && !methodType.equals((Object) MethodType.methodType(Boolean.TYPE, recordClass, (Class<?>[]) new Class[]{Object.class}))) {
                    throw new IllegalArgumentException("Bad method type: " + ((Object) methodType));
                }
                makeToString = makeEquals(recordClass, getterList);
                break;
            case true:
                if (methodType != null && !methodType.equals((Object) MethodType.methodType(Integer.TYPE, recordClass))) {
                    throw new IllegalArgumentException("Bad method type: " + ((Object) methodType));
                }
                makeToString = makeHashCode(recordClass, getterList);
                break;
            case true:
                if (methodType != null && !methodType.equals((Object) MethodType.methodType((Class<?>) String.class, recordClass))) {
                    throw new IllegalArgumentException("Bad method type: " + ((Object) methodType));
                }
                List<String> nameList = "".equals(names) ? List.of() : List.of(names.split(";"));
                if (nameList.size() != getterList.size()) {
                    throw new IllegalArgumentException("Name list and accessor list do not match");
                }
                makeToString = makeToString(lookup, recordClass, getters, nameList);
                break;
            default:
                throw new IllegalArgumentException(methodName);
        }
        MethodHandle handle = makeToString;
        return methodType != null ? new ConstantCallSite(handle) : handle;
    }
}
