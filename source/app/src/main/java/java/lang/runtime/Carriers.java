package java.lang.runtime;

import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import jdk.internal.misc.Unsafe;
import jdk.internal.util.ReferencedKeyMap;

final class Carriers {
    public static final int MAX_COMPONENTS = 254;
    static final int LONG_SLOTS = 2;
    private static final MethodHandle FLOAT_TO_INT;
    private static final MethodHandle INT_TO_FLOAT;
    private static final MethodHandle DOUBLE_TO_LONG;
    private static final MethodHandle LONG_TO_DOUBLE;

    static {
        try {
            MethodHandles.Lookup lookup = MethodHandles.lookup();
            FLOAT_TO_INT = lookup.findStatic(Float.class, "floatToRawIntBits", MethodType.methodType(Integer.TYPE, Float.TYPE));
            INT_TO_FLOAT = lookup.findStatic(Float.class, "intBitsToFloat", MethodType.methodType(Float.TYPE, Integer.TYPE));
            DOUBLE_TO_LONG = lookup.findStatic(Double.class, "doubleToRawLongBits", MethodType.methodType(Long.TYPE, Double.TYPE));
            LONG_TO_DOUBLE = lookup.findStatic(Double.class, "longBitsToDouble", MethodType.methodType(Double.TYPE, Long.TYPE));
        } catch (ReflectiveOperationException ex) {
            throw new AssertionError("carrier static init fail", ex);
        }
    }

    static MethodHandle reshapeInitializer(CarrierShape carrierShape, MethodHandle initializer) {
        int from;
        int count = carrierShape.count();
        Class<?>[] ptypes = carrierShape.ptypes();
        int objectIndex = carrierShape.objectOffset() + 1;
        int intIndex = carrierShape.intOffset() + 1;
        int longIndex = carrierShape.longOffset() + 1;
        int[] reorder = new int[count + 1];
        Class<?>[] permutePTypes = new Class[count + 1];
        MethodHandle[] filters = new MethodHandle[count + 1];
        boolean hasFilters = false;
        permutePTypes[0] = CarrierObject.class;
        reorder[0] = 0;
        int index = 1;
        for (Class<?> ptype : ptypes) {
            MethodHandle filter = null;
            if (!ptype.isPrimitive()) {
                int i10 = objectIndex;
                objectIndex++;
                from = i10;
                ptype = Object.class;
            } else if (ptype == Double.TYPE) {
                int i11 = longIndex;
                longIndex++;
                from = i11;
                filter = DOUBLE_TO_LONG;
            } else if (ptype == Float.TYPE) {
                int i12 = intIndex;
                intIndex++;
                from = i12;
                filter = FLOAT_TO_INT;
            } else if (ptype == Long.TYPE) {
                int i13 = longIndex;
                longIndex++;
                from = i13;
            } else {
                int i14 = intIndex;
                intIndex++;
                from = i14;
                ptype = Integer.TYPE;
            }
            permutePTypes[index] = ptype;
            int i15 = index;
            index++;
            reorder[from] = i15;
            if (filter != null) {
                filters[from] = filter;
                hasFilters = true;
            }
        }
        if (hasFilters) {
            initializer = MethodHandles.filterArguments(initializer, 0, filters);
        }
        MethodType permutedMethodType = MethodType.methodType(initializer.type().returnType(), permutePTypes);
        return MethodHandles.explicitCastArguments(MethodHandles.permuteArguments(initializer, permutedMethodType, reorder), MethodType.methodType((Class<?>) CarrierObject.class, ptypes).insertParameterTypes(0, CarrierObject.class));
    }

    static List<MethodHandle> reshapeComponents(CarrierShape carrierShape, MethodHandle[] components) {
        MethodHandle methodHandle;
        int count = carrierShape.count();
        Class<?>[] ptypes = carrierShape.ptypes();
        MethodHandle[] reorder = new MethodHandle[count];
        int objectIndex = carrierShape.objectOffset();
        int intIndex = carrierShape.intOffset();
        int longIndex = carrierShape.longOffset();
        int index = 0;
        for (Class<?> ptype : ptypes) {
            if (!ptype.isPrimitive()) {
                int i10 = objectIndex;
                objectIndex++;
                methodHandle = components[i10];
            } else if (ptype == Double.TYPE) {
                int i11 = longIndex;
                longIndex++;
                methodHandle = MethodHandles.filterReturnValue(components[i11], LONG_TO_DOUBLE);
            } else if (ptype == Float.TYPE) {
                int i12 = intIndex;
                intIndex++;
                methodHandle = MethodHandles.filterReturnValue(components[i12], INT_TO_FLOAT);
            } else if (ptype == Long.TYPE) {
                int i13 = longIndex;
                longIndex++;
                methodHandle = components[i13];
            } else {
                int i14 = intIndex;
                intIndex++;
                methodHandle = components[i14];
            }
            MethodHandle component = methodHandle;
            MethodType methodType = MethodType.methodType(ptype, (Class<?>) CarrierObject.class);
            int i15 = index;
            index++;
            reorder[i15] = MethodHandles.explicitCastArguments(component, methodType);
        }
        return List.of(reorder);
    }

    public static final class CarrierObjectFactory {
        private static final Unsafe UNSAFE;
        private static final MethodHandle CONSTRUCTOR;
        private static final MethodHandle GET_LONG;
        private static final MethodHandle PUT_LONG;
        private static final MethodHandle GET_INTEGER;
        private static final MethodHandle PUT_INTEGER;
        private static final MethodHandle GET_OBJECT;
        private static final MethodHandle PUT_OBJECT;
        private static final Map<MethodType, CarrierElements> methodTypeCache;

        CarrierObjectFactory() {
        }

        static {
            try {
                UNSAFE = Unsafe.getUnsafe();
                MethodHandles.Lookup lookup = MethodHandles.lookup();
                CONSTRUCTOR = lookup.findConstructor(CarrierObject.class, MethodType.methodType(Void.TYPE, Integer.TYPE, (Class<?>[]) new Class[]{Integer.TYPE}));
                GET_LONG = lookup.findVirtual(CarrierObject.class, "getLong", MethodType.methodType(Long.TYPE, Integer.TYPE));
                PUT_LONG = lookup.findVirtual(CarrierObject.class, "putLong", MethodType.methodType((Class<?>) CarrierObject.class, Integer.TYPE, (Class<?>[]) new Class[]{Long.TYPE}));
                GET_INTEGER = lookup.findVirtual(CarrierObject.class, "getInteger", MethodType.methodType(Integer.TYPE, Integer.TYPE));
                PUT_INTEGER = lookup.findVirtual(CarrierObject.class, "putInteger", MethodType.methodType((Class<?>) CarrierObject.class, Integer.TYPE, (Class<?>[]) new Class[]{Integer.TYPE}));
                GET_OBJECT = lookup.findVirtual(CarrierObject.class, "getObject", MethodType.methodType((Class<?>) Object.class, Integer.TYPE));
                PUT_OBJECT = lookup.findVirtual(CarrierObject.class, "putObject", MethodType.methodType((Class<?>) CarrierObject.class, Integer.TYPE, (Class<?>[]) new Class[]{Object.class}));
                methodTypeCache = ReferencedKeyMap.create(false, ConcurrentHashMap::new);
            } catch (ReflectiveOperationException ex) {
                throw new AssertionError("carrier static init fail", ex);
            }
        }

        MethodHandle constructor(CarrierShape carrierShape) {
            int objectCount = carrierShape.objectCount();
            int primitiveCount = carrierShape.primitiveCount();
            MethodHandle constructor = MethodHandles.insertArguments(CONSTRUCTOR, 0, Integer.valueOf(primitiveCount), Integer.valueOf(objectCount));
            return constructor;
        }

        MethodHandle initializer(CarrierShape carrierShape) {
            int longCount = carrierShape.longCount();
            int intCount = carrierShape.intCount();
            int objectCount = carrierShape.objectCount();
            MethodHandle initializer = MethodHandles.identity(CarrierObject.class);
            int index = 0;
            for (int i10 = 0; i10 < longCount; i10++) {
                int i11 = index;
                index++;
                MethodHandle put = MethodHandles.insertArguments(PUT_LONG, 1, Integer.valueOf(i11));
                initializer = MethodHandles.collectArguments(put, 0, initializer);
            }
            int index2 = index * 2;
            for (int i12 = 0; i12 < intCount; i12++) {
                int i13 = index2;
                index2++;
                MethodHandle put2 = MethodHandles.insertArguments(PUT_INTEGER, 1, Integer.valueOf(i13));
                initializer = MethodHandles.collectArguments(put2, 0, initializer);
            }
            for (int i14 = 0; i14 < objectCount; i14++) {
                MethodHandle put3 = MethodHandles.insertArguments(PUT_OBJECT, 1, Integer.valueOf(i14));
                initializer = MethodHandles.collectArguments(put3, 0, initializer);
            }
            return initializer;
        }

        MethodHandle[] createComponents(CarrierShape carrierShape) {
            int longCount = carrierShape.longCount();
            int intCount = carrierShape.intCount();
            int objectCount = carrierShape.objectCount();
            MethodHandle[] components = new MethodHandle[carrierShape.ptypes().length];
            int index = 0;
            int comIndex = 0;
            for (int i10 = 0; i10 < longCount; i10++) {
                int i11 = comIndex;
                comIndex++;
                int i12 = index;
                index++;
                components[i11] = MethodHandles.insertArguments(GET_LONG, 1, Integer.valueOf(i12));
            }
            int index2 = index * 2;
            for (int i13 = 0; i13 < intCount; i13++) {
                int i14 = comIndex;
                comIndex++;
                int i15 = index2;
                index2++;
                components[i14] = MethodHandles.insertArguments(GET_INTEGER, 1, Integer.valueOf(i15));
            }
            for (int i16 = 0; i16 < objectCount; i16++) {
                int i17 = comIndex;
                comIndex++;
                components[i17] = MethodHandles.insertArguments(GET_OBJECT, 1, Integer.valueOf(i16));
            }
            return components;
        }

        CarrierElements carrier(CarrierShape carrierShape) {
            return methodTypeCache.computeIfAbsent(carrierShape.methodType, mt -> {
                MethodHandle constructor = constructor(carrierShape);
                MethodHandle initializer = initializer(carrierShape);
                MethodHandle[] components = createComponents(carrierShape);
                return new CarrierElements(carrierShape, CarrierObject.class, constructor, Carriers.reshapeInitializer(carrierShape, initializer), Carriers.reshapeComponents(carrierShape, components));
            });
        }
    }

    static class CarrierObject {
        private final long[] primitives;
        private final Object[] objects;

        protected CarrierObject(int primitiveCount, int objectCount) {
            this.primitives = createPrimitivesArray(primitiveCount);
            this.objects = createObjectsArray(objectCount);
        }

        private long[] createPrimitivesArray(int primitiveCount) {
            if (primitiveCount != 0) {
                return new long[(primitiveCount + 1) / 2];
            }
            return null;
        }

        private Object[] createObjectsArray(int objectCount) {
            if (objectCount != 0) {
                return new Object[objectCount];
            }
            return null;
        }

        private static long offsetToLong(int i10) {
            return Unsafe.ARRAY_LONG_BASE_OFFSET + (i10 * Unsafe.ARRAY_LONG_INDEX_SCALE);
        }

        private static long offsetToInt(int i10) {
            return Unsafe.ARRAY_LONG_BASE_OFFSET + (i10 * Unsafe.ARRAY_INT_INDEX_SCALE);
        }

        private static long offsetToObject(int i10) {
            return Unsafe.ARRAY_OBJECT_BASE_OFFSET + (i10 * Unsafe.ARRAY_OBJECT_INDEX_SCALE);
        }

        private long getLong(int i10) {
            return CarrierObjectFactory.UNSAFE.getLong(this.primitives, offsetToLong(i10));
        }

        private CarrierObject putLong(int i10, long value) {
            CarrierObjectFactory.UNSAFE.putLong(this.primitives, offsetToLong(i10), value);
            return this;
        }

        private int getInteger(int i10) {
            return CarrierObjectFactory.UNSAFE.getInt(this.primitives, offsetToInt(i10));
        }

        private CarrierObject putInteger(int i10, int value) {
            CarrierObjectFactory.UNSAFE.putInt(this.primitives, offsetToInt(i10), value);
            return this;
        }

        private Object getObject(int i10) {
            return CarrierObjectFactory.UNSAFE.getReference(this.objects, offsetToObject(i10));
        }

        private CarrierObject putObject(int i10, Object value) {
            CarrierObjectFactory.UNSAFE.putReference(this.objects, offsetToObject(i10), value);
            return this;
        }
    }

    public static final class CarrierCounts extends Record {
        private final int longCount;
        private final int intCount;
        private final int objectCount;

        private CarrierCounts(int longCount, int intCount, int objectCount) {
            this.longCount = longCount;
            this.intCount = intCount;
            this.objectCount = objectCount;
        }

        @Override
        public final String toString() {
            return (String) ObjectMethods.bootstrap(MethodHandles.lookup(), "toString", MethodType.methodType(String.class, CarrierCounts.class), CarrierCounts.class, "longCount;intCount;objectCount", "FIELD:Ljava/lang/runtime/Carriers$CarrierCounts;->longCount:I", "FIELD:Ljava/lang/runtime/Carriers$CarrierCounts;->intCount:I", "FIELD:Ljava/lang/runtime/Carriers$CarrierCounts;->objectCount:I").dynamicInvoker().invoke(this) /* invoke-custom */;
        }

        @Override
        public final int hashCode() {
            return (int) ObjectMethods.bootstrap(MethodHandles.lookup(), "hashCode", MethodType.methodType(Integer.TYPE, CarrierCounts.class), CarrierCounts.class, "longCount;intCount;objectCount", "FIELD:Ljava/lang/runtime/Carriers$CarrierCounts;->longCount:I", "FIELD:Ljava/lang/runtime/Carriers$CarrierCounts;->intCount:I", "FIELD:Ljava/lang/runtime/Carriers$CarrierCounts;->objectCount:I").dynamicInvoker().invoke(this) /* invoke-custom */;
        }

        @Override
        public final boolean equals(Object o10) {
            return (boolean) ObjectMethods.bootstrap(MethodHandles.lookup(), "equals", MethodType.methodType(Boolean.TYPE, CarrierCounts.class, Object.class), CarrierCounts.class, "longCount;intCount;objectCount", "FIELD:Ljava/lang/runtime/Carriers$CarrierCounts;->longCount:I", "FIELD:Ljava/lang/runtime/Carriers$CarrierCounts;->intCount:I", "FIELD:Ljava/lang/runtime/Carriers$CarrierCounts;->objectCount:I").dynamicInvoker().invoke(this, o10) /* invoke-custom */;
        }

        public int longCount() {
            return this.longCount;
        }

        public int intCount() {
            return this.intCount;
        }

        public int objectCount() {
            return this.objectCount;
        }

        static CarrierCounts tally(Class<?>[] ptypes) {
            return tally(ptypes, ptypes.length);
        }

        private static CarrierCounts tally(Class<?>[] ptypes, int n10) {
            int longCount = 0;
            int intCount = 0;
            int objectCount = 0;
            for (int i10 = 0; i10 < n10; i10++) {
                Class<?> ptype = ptypes[i10];
                if (!ptype.isPrimitive()) {
                    objectCount++;
                } else if (ptype == Long.TYPE || ptype == Double.TYPE) {
                    longCount++;
                } else {
                    intCount++;
                }
            }
            return new CarrierCounts(longCount, intCount, objectCount);
        }

        private int count() {
            return this.longCount + this.intCount + this.objectCount;
        }

        private int slotCount() {
            return (this.longCount * 2) + this.intCount + this.objectCount;
        }
    }

    private Carriers() {
        throw new AssertionError((Object) "private constructor");
    }

    public static class CarrierShape {
        final MethodType methodType;
        final CarrierCounts counts;

        public CarrierShape(MethodType methodType) {
            this.methodType = methodType;
            this.counts = CarrierCounts.tally(methodType.parameterArray());
        }

        int longCount() {
            return this.counts.longCount();
        }

        int intCount() {
            return this.counts.intCount();
        }

        int objectCount() {
            return this.counts.objectCount();
        }

        int primitiveCount() {
            return (this.counts.longCount() * 2) + this.counts.intCount();
        }

        Class<?>[] ptypes() {
            return this.methodType.parameterArray();
        }

        int count() {
            return this.counts.count();
        }

        int slotCount() {
            return this.counts.slotCount();
        }

        int longOffset() {
            return 0;
        }

        int intOffset() {
            return longCount();
        }

        int objectOffset() {
            return longCount() + intCount();
        }
    }

    static final class CarrierFactory {
        private static final CarrierObjectFactory FACTORY = new CarrierObjectFactory();

        private CarrierFactory() {
            throw new AssertionError((Object) "private constructor");
        }

        static CarrierElements of(MethodType methodType) {
            Objects.requireNonNull(methodType, "methodType must not be null");
            MethodType constructorMT = methodType.changeReturnType(Object.class);
            CarrierShape carrierShape = new CarrierShape(constructorMT);
            int slotCount = carrierShape.slotCount();
            if (254 < slotCount) {
                throw new IllegalArgumentException("Exceeds maximum number of component slots");
            }
            return FACTORY.carrier(carrierShape);
        }

        static CarrierElements of(Class<?>... ptypes) {
            Objects.requireNonNull(ptypes, "ptypes must not be null");
            return of(MethodType.methodType((Class<?>) Object.class, ptypes));
        }
    }

    public static final class CarrierElements {
        private final int objectCount;
        private final int primitiveCount;
        private final Class<?> carrierClass;
        private final MethodHandle constructor;
        private final MethodHandle initializer;
        private final List<MethodHandle> components;

        private CarrierElements() {
            throw new AssertionError((Object) "private constructor");
        }

        CarrierElements(CarrierShape carrierShape, Class<?> carrierClass, MethodHandle constructor, MethodHandle initializer, List<MethodHandle> components) {
            this.objectCount = carrierShape.objectCount();
            this.primitiveCount = carrierShape.primitiveCount();
            this.carrierClass = carrierClass;
            this.constructor = constructor;
            this.initializer = initializer;
            this.components = components;
        }

        int objectCount() {
            return this.objectCount;
        }

        int primitiveCount() {
            return this.primitiveCount;
        }

        Class<?> carrierClass() {
            return this.carrierClass;
        }

        MethodHandle constructor() {
            return this.constructor;
        }

        MethodHandle initializer() {
            return this.initializer;
        }

        MethodHandle initializingConstructor() {
            return MethodHandles.foldArguments(this.initializer, 0, this.constructor);
        }

        List<MethodHandle> components() {
            return this.components;
        }

        MethodHandle component(int i10) {
            if (i10 < 0 || this.components.size() <= i10) {
                throw new IllegalArgumentException("i is out of bounds " + i10 + " of " + this.components.size());
            }
            return this.components.get(i10);
        }

        public String toString() {
            return "Carrier" + ((Object) this.constructor.type().parameterList());
        }
    }

    static Class<?> carrierClass(MethodType methodType) {
        return CarrierFactory.of(methodType).carrierClass();
    }

    static MethodHandle constructor(MethodType methodType) {
        MethodHandle constructor = CarrierFactory.of(methodType).constructor();
        return constructor.asType(constructor.type().changeReturnType(Object.class));
    }

    static MethodHandle initializer(MethodType methodType) {
        MethodHandle initializer = CarrierFactory.of(methodType).initializer();
        return initializer.asType(initializer.type().changeReturnType(Object.class).changeParameterType(0, Object.class));
    }

    static MethodHandle initializingConstructor(MethodType methodType) {
        MethodHandle constructor = CarrierFactory.of(methodType).initializingConstructor();
        return constructor.asType(constructor.type().changeReturnType(Object.class));
    }

    static List<MethodHandle> components(MethodType methodType) {
        return CarrierFactory.of(methodType).components().stream().map(c10 -> {
            return c10.asType(c10.type().changeParameterType(0, Object.class));
        }).toList();
    }

    static MethodHandle component(MethodType methodType, int i10) {
        MethodHandle component = CarrierFactory.of(methodType).component(i10);
        return component.asType(component.type().changeParameterType(0, Object.class));
    }
}
