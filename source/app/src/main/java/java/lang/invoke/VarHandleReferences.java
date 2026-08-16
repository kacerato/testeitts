package java.lang.invoke;

import java.lang.constant.ClassDesc;
import java.lang.invoke.VarHandle;
import java.lang.reflect.Field;
import java.util.Objects;
import java.util.Optional;
import jdk.internal.util.Preconditions;
import jdk.internal.vm.annotation.ForceInline;

final class VarHandleReferences {
    VarHandleReferences() {
    }

    public static class FieldInstanceReadOnly extends VarHandle {
        final long fieldOffset;
        final Class<?> receiverType;
        final Class<?> fieldType;
        static final VarForm FORM = new VarForm(FieldInstanceReadOnly.class, Object.class, Object.class, new Class[0]);

        public FieldInstanceReadOnly(Class<?> receiverType, long fieldOffset, Class<?> fieldType) {
            this(receiverType, fieldOffset, fieldType, FORM, false);
        }

        protected FieldInstanceReadOnly(Class<?> receiverType, long fieldOffset, Class<?> fieldType, VarForm form, boolean exact) {
            super(form, exact);
            this.fieldOffset = fieldOffset;
            this.receiverType = receiverType;
            this.fieldType = fieldType;
        }

        @Override
        public FieldInstanceReadOnly withInvokeExactBehavior() {
            if (hasInvokeExactBehavior()) {
                return this;
            }
            return new FieldInstanceReadOnly(this.receiverType, this.fieldOffset, this.fieldType, this.vform, true);
        }

        @Override
        public FieldInstanceReadOnly withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new FieldInstanceReadOnly(this.receiverType, this.fieldOffset, this.fieldType, this.vform, false);
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(this.receiverType, this.fieldType, new Class[0]);
        }

        @Override
        public Optional<VarHandle.VarHandleDesc> describeConstable() {
            Optional<ClassDesc> receiverTypeRef = this.receiverType.describeConstable();
            Optional<ClassDesc> fieldTypeRef = this.fieldType.describeConstable();
            if (!receiverTypeRef.isPresent() || !fieldTypeRef.isPresent()) {
                return Optional.empty();
            }
            String name = VarHandles.getFieldFromReceiverAndOffset(this.receiverType, this.fieldOffset, this.fieldType).getName();
            return Optional.of(VarHandle.VarHandleDesc.ofField(receiverTypeRef.get(), name, fieldTypeRef.get()));
        }

        @ForceInline
        static Object get(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getReference(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static Object getVolatile(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getReferenceVolatile(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static Object getOpaque(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getReferenceOpaque(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static Object getAcquire(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getReferenceAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }
    }

    public static final class FieldInstanceReadWrite extends FieldInstanceReadOnly {
        static final VarForm FORM = new VarForm(FieldInstanceReadWrite.class, Object.class, Object.class, new Class[0]);

        public FieldInstanceReadWrite(Class<?> receiverType, long fieldOffset, Class<?> fieldType) {
            this(receiverType, fieldOffset, fieldType, false);
        }

        private FieldInstanceReadWrite(Class<?> receiverType, long fieldOffset, Class<?> fieldType, boolean exact) {
            super(receiverType, fieldOffset, fieldType, FORM, exact);
        }

        @Override
        public FieldInstanceReadWrite withInvokeExactBehavior() {
            if (hasInvokeExactBehavior()) {
                return this;
            }
            return new FieldInstanceReadWrite(this.receiverType, this.fieldOffset, this.fieldType, true);
        }

        @Override
        public FieldInstanceReadWrite withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new FieldInstanceReadWrite(this.receiverType, this.fieldOffset, this.fieldType, false);
        }

        @ForceInline
        static void set(VarHandle ob2, Object holder, Object value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putReference(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, handle.fieldType.cast(value));
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object holder, Object value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putReferenceVolatile(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, handle.fieldType.cast(value));
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object holder, Object value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putReferenceOpaque(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, handle.fieldType.cast(value));
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object holder, Object value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putReferenceRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, handle.fieldType.cast(value));
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, Object holder, Object expected, Object value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndSetReference(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, handle.fieldType.cast(expected), handle.fieldType.cast(value));
        }

        @ForceInline
        static Object compareAndExchange(VarHandle ob2, Object holder, Object expected, Object value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeReference(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, handle.fieldType.cast(expected), handle.fieldType.cast(value));
        }

        @ForceInline
        static Object compareAndExchangeAcquire(VarHandle ob2, Object holder, Object expected, Object value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeReferenceAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, handle.fieldType.cast(expected), handle.fieldType.cast(value));
        }

        @ForceInline
        static Object compareAndExchangeRelease(VarHandle ob2, Object holder, Object expected, Object value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeReferenceRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, handle.fieldType.cast(expected), handle.fieldType.cast(value));
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, Object holder, Object expected, Object value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetReferencePlain(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, handle.fieldType.cast(expected), handle.fieldType.cast(value));
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, Object holder, Object expected, Object value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetReference(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, handle.fieldType.cast(expected), handle.fieldType.cast(value));
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, Object holder, Object expected, Object value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetReferenceAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, handle.fieldType.cast(expected), handle.fieldType.cast(value));
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, Object holder, Object expected, Object value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetReferenceRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, handle.fieldType.cast(expected), handle.fieldType.cast(value));
        }

        @ForceInline
        static Object getAndSet(VarHandle ob2, Object holder, Object value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetReference(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, handle.fieldType.cast(value));
        }

        @ForceInline
        static Object getAndSetAcquire(VarHandle ob2, Object holder, Object value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetReferenceAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, handle.fieldType.cast(value));
        }

        @ForceInline
        static Object getAndSetRelease(VarHandle ob2, Object holder, Object value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetReferenceRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, handle.fieldType.cast(value));
        }
    }

    public static class FieldStaticReadOnly extends VarHandle {
        final Class<?> declaringClass;
        final Object base;
        final long fieldOffset;
        final Class<?> fieldType;
        static final VarForm FORM = new VarForm(FieldStaticReadOnly.class, null, Object.class, new Class[0]);

        public FieldStaticReadOnly(Class<?> declaringClass, Object base, long fieldOffset, Class<?> fieldType) {
            this(declaringClass, base, fieldOffset, fieldType, FORM, false);
        }

        protected FieldStaticReadOnly(Class<?> declaringClass, Object base, long fieldOffset, Class<?> fieldType, VarForm form, boolean exact) {
            super(form, exact);
            this.declaringClass = declaringClass;
            this.base = base;
            this.fieldOffset = fieldOffset;
            this.fieldType = fieldType;
        }

        @Override
        public FieldStaticReadOnly withInvokeExactBehavior() {
            if (hasInvokeExactBehavior()) {
                return this;
            }
            return new FieldStaticReadOnly(this.declaringClass, this.base, this.fieldOffset, this.fieldType, this.vform, true);
        }

        @Override
        public FieldStaticReadOnly withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new FieldStaticReadOnly(this.declaringClass, this.base, this.fieldOffset, this.fieldType, this.vform, false);
        }

        @Override
        public Optional<VarHandle.VarHandleDesc> describeConstable() {
            Optional<ClassDesc> fieldTypeRef = this.fieldType.describeConstable();
            if (!fieldTypeRef.isPresent()) {
                return Optional.empty();
            }
            Field staticField = VarHandles.getStaticFieldFromBaseAndOffset(this.declaringClass, this.fieldOffset, this.fieldType);
            Optional<ClassDesc> declaringTypeRef = this.declaringClass.describeConstable();
            if (!declaringTypeRef.isPresent()) {
                return Optional.empty();
            }
            return Optional.of(VarHandle.VarHandleDesc.ofStaticField(declaringTypeRef.get(), staticField.getName(), fieldTypeRef.get()));
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(null, this.fieldType, new Class[0]);
        }

        @ForceInline
        static Object get(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getReference(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static Object getVolatile(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getReferenceVolatile(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static Object getOpaque(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getReferenceOpaque(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static Object getAcquire(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getReferenceAcquire(handle.base, handle.fieldOffset);
        }
    }

    public static final class FieldStaticReadWrite extends FieldStaticReadOnly {
        static final VarForm FORM = new VarForm(FieldStaticReadWrite.class, null, Object.class, new Class[0]);

        public FieldStaticReadWrite(Class<?> declaringClass, Object base, long fieldOffset, Class<?> fieldType) {
            this(declaringClass, base, fieldOffset, fieldType, false);
        }

        private FieldStaticReadWrite(Class<?> declaringClass, Object base, long fieldOffset, Class<?> fieldType, boolean exact) {
            super(declaringClass, base, fieldOffset, fieldType, FORM, exact);
        }

        @Override
        public FieldStaticReadWrite withInvokeExactBehavior() {
            if (hasInvokeExactBehavior()) {
                return this;
            }
            return new FieldStaticReadWrite(this.declaringClass, this.base, this.fieldOffset, this.fieldType, true);
        }

        @Override
        public FieldStaticReadWrite withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new FieldStaticReadWrite(this.declaringClass, this.base, this.fieldOffset, this.fieldType, false);
        }

        @ForceInline
        static void set(VarHandle ob2, Object value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putReference(handle.base, handle.fieldOffset, handle.fieldType.cast(value));
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putReferenceVolatile(handle.base, handle.fieldOffset, handle.fieldType.cast(value));
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putReferenceOpaque(handle.base, handle.fieldOffset, handle.fieldType.cast(value));
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putReferenceRelease(handle.base, handle.fieldOffset, handle.fieldType.cast(value));
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, Object expected, Object value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndSetReference(handle.base, handle.fieldOffset, handle.fieldType.cast(expected), handle.fieldType.cast(value));
        }

        @ForceInline
        static Object compareAndExchange(VarHandle ob2, Object expected, Object value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeReference(handle.base, handle.fieldOffset, handle.fieldType.cast(expected), handle.fieldType.cast(value));
        }

        @ForceInline
        static Object compareAndExchangeAcquire(VarHandle ob2, Object expected, Object value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeReferenceAcquire(handle.base, handle.fieldOffset, handle.fieldType.cast(expected), handle.fieldType.cast(value));
        }

        @ForceInline
        static Object compareAndExchangeRelease(VarHandle ob2, Object expected, Object value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeReferenceRelease(handle.base, handle.fieldOffset, handle.fieldType.cast(expected), handle.fieldType.cast(value));
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, Object expected, Object value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetReferencePlain(handle.base, handle.fieldOffset, handle.fieldType.cast(expected), handle.fieldType.cast(value));
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, Object expected, Object value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetReference(handle.base, handle.fieldOffset, handle.fieldType.cast(expected), handle.fieldType.cast(value));
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, Object expected, Object value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetReferenceAcquire(handle.base, handle.fieldOffset, handle.fieldType.cast(expected), handle.fieldType.cast(value));
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, Object expected, Object value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetReferenceRelease(handle.base, handle.fieldOffset, handle.fieldType.cast(expected), handle.fieldType.cast(value));
        }

        @ForceInline
        static Object getAndSet(VarHandle ob2, Object value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetReference(handle.base, handle.fieldOffset, handle.fieldType.cast(value));
        }

        @ForceInline
        static Object getAndSetAcquire(VarHandle ob2, Object value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetReferenceAcquire(handle.base, handle.fieldOffset, handle.fieldType.cast(value));
        }

        @ForceInline
        static Object getAndSetRelease(VarHandle ob2, Object value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetReferenceRelease(handle.base, handle.fieldOffset, handle.fieldType.cast(value));
        }
    }

    public static final class Array extends VarHandle {
        final int abase;
        final int ashift;
        final Class<?> arrayType;
        final Class<?> componentType;
        static final VarForm FORM = new VarForm(Array.class, Object[].class, Object.class, Integer.TYPE);

        public Array(int abase, int ashift, Class<?> arrayType) {
            this(abase, ashift, arrayType, false);
        }

        private Array(int abase, int ashift, Class<?> arrayType, boolean exact) {
            super(FORM, exact);
            this.abase = abase;
            this.ashift = ashift;
            this.arrayType = arrayType;
            this.componentType = arrayType.getComponentType();
        }

        @Override
        public Array withInvokeExactBehavior() {
            if (hasInvokeExactBehavior()) {
                return this;
            }
            return new Array(this.abase, this.ashift, this.arrayType, true);
        }

        @Override
        public Array withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new Array(this.abase, this.ashift, this.arrayType, false);
        }

        @Override
        public Optional<VarHandle.VarHandleDesc> describeConstable() {
            Optional<ClassDesc> arrayTypeRef = this.arrayType.describeConstable();
            if (!arrayTypeRef.isPresent()) {
                return Optional.empty();
            }
            return Optional.of(VarHandle.VarHandleDesc.ofArray(arrayTypeRef.get()));
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(this.arrayType, this.arrayType.getComponentType(), Integer.TYPE);
        }

        @ForceInline
        static Object runtimeTypeCheck(Array handle, Object[] oarray, Object value) {
            if (handle.arrayType == oarray.getClass()) {
                return handle.componentType.cast(value);
            }
            return reflectiveTypeCheck(oarray, value);
        }

        @ForceInline
        static Object reflectiveTypeCheck(Object[] oarray, Object value) {
            try {
                return oarray.getClass().getComponentType().cast(value);
            } catch (ClassCastException e10) {
                throw new ArrayStoreException();
            }
        }

        @ForceInline
        static Object get(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            return array[index];
        }

        @ForceInline
        static void set(VarHandle ob2, Object oarray, int index, Object value) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            array[index] = handle.componentType.cast(value);
        }

        @ForceInline
        static Object getVolatile(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            return MethodHandleStatics.UNSAFE.getReferenceVolatile(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object oarray, int index, Object value) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            MethodHandleStatics.UNSAFE.putReferenceVolatile(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, runtimeTypeCheck(handle, array, value));
        }

        @ForceInline
        static Object getOpaque(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            return MethodHandleStatics.UNSAFE.getReferenceOpaque(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object oarray, int index, Object value) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            MethodHandleStatics.UNSAFE.putReferenceOpaque(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, runtimeTypeCheck(handle, array, value));
        }

        @ForceInline
        static Object getAcquire(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            return MethodHandleStatics.UNSAFE.getReferenceAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object oarray, int index, Object value) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            MethodHandleStatics.UNSAFE.putReferenceRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, runtimeTypeCheck(handle, array, value));
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, Object oarray, int index, Object expected, Object value) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            return MethodHandleStatics.UNSAFE.compareAndSetReference(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, handle.componentType.cast(expected), runtimeTypeCheck(handle, array, value));
        }

        @ForceInline
        static Object compareAndExchange(VarHandle ob2, Object oarray, int index, Object expected, Object value) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            return MethodHandleStatics.UNSAFE.compareAndExchangeReference(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, handle.componentType.cast(expected), runtimeTypeCheck(handle, array, value));
        }

        @ForceInline
        static Object compareAndExchangeAcquire(VarHandle ob2, Object oarray, int index, Object expected, Object value) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            return MethodHandleStatics.UNSAFE.compareAndExchangeReferenceAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, handle.componentType.cast(expected), runtimeTypeCheck(handle, array, value));
        }

        @ForceInline
        static Object compareAndExchangeRelease(VarHandle ob2, Object oarray, int index, Object expected, Object value) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            return MethodHandleStatics.UNSAFE.compareAndExchangeReferenceRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, handle.componentType.cast(expected), runtimeTypeCheck(handle, array, value));
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, Object oarray, int index, Object expected, Object value) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            return MethodHandleStatics.UNSAFE.weakCompareAndSetReferencePlain(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, handle.componentType.cast(expected), runtimeTypeCheck(handle, array, value));
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, Object oarray, int index, Object expected, Object value) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            return MethodHandleStatics.UNSAFE.weakCompareAndSetReference(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, handle.componentType.cast(expected), runtimeTypeCheck(handle, array, value));
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, Object oarray, int index, Object expected, Object value) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            return MethodHandleStatics.UNSAFE.weakCompareAndSetReferenceAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, handle.componentType.cast(expected), runtimeTypeCheck(handle, array, value));
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, Object oarray, int index, Object expected, Object value) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            return MethodHandleStatics.UNSAFE.weakCompareAndSetReferenceRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, handle.componentType.cast(expected), runtimeTypeCheck(handle, array, value));
        }

        @ForceInline
        static Object getAndSet(VarHandle ob2, Object oarray, int index, Object value) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            return MethodHandleStatics.UNSAFE.getAndSetReference(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, runtimeTypeCheck(handle, array, value));
        }

        @ForceInline
        static Object getAndSetAcquire(VarHandle ob2, Object oarray, int index, Object value) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            return MethodHandleStatics.UNSAFE.getAndSetReferenceAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, runtimeTypeCheck(handle, array, value));
        }

        @ForceInline
        static Object getAndSetRelease(VarHandle ob2, Object oarray, int index, Object value) {
            Array handle = (Array) ob2;
            Object[] array = (Object[]) handle.arrayType.cast(oarray);
            return MethodHandleStatics.UNSAFE.getAndSetReferenceRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, runtimeTypeCheck(handle, array, value));
        }
    }
}
