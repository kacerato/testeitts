package java.lang.invoke;

import java.lang.constant.ClassDesc;
import java.lang.invoke.VarHandle;
import java.lang.reflect.Field;
import java.util.Objects;
import java.util.Optional;
import jdk.internal.util.Preconditions;
import jdk.internal.vm.annotation.ForceInline;

final class VarHandleBooleans {
    VarHandleBooleans() {
    }

    public static class FieldInstanceReadOnly extends VarHandle {
        final long fieldOffset;
        final Class<?> receiverType;
        static final VarForm FORM = new VarForm(FieldInstanceReadOnly.class, Object.class, Boolean.TYPE, new Class[0]);

        public FieldInstanceReadOnly(Class<?> receiverType, long fieldOffset) {
            this(receiverType, fieldOffset, FORM, false);
        }

        protected FieldInstanceReadOnly(Class<?> receiverType, long fieldOffset, VarForm form, boolean exact) {
            super(form, exact);
            this.fieldOffset = fieldOffset;
            this.receiverType = receiverType;
        }

        @Override
        public FieldInstanceReadOnly withInvokeExactBehavior() {
            if (hasInvokeExactBehavior()) {
                return this;
            }
            return new FieldInstanceReadOnly(this.receiverType, this.fieldOffset, this.vform, true);
        }

        @Override
        public FieldInstanceReadOnly withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new FieldInstanceReadOnly(this.receiverType, this.fieldOffset, this.vform, false);
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(this.receiverType, Boolean.TYPE, new Class[0]);
        }

        @Override
        public Optional<VarHandle.VarHandleDesc> describeConstable() {
            Optional<ClassDesc> receiverTypeRef = this.receiverType.describeConstable();
            Optional<ClassDesc> fieldTypeRef = Boolean.TYPE.describeConstable();
            if (!receiverTypeRef.isPresent() || !fieldTypeRef.isPresent()) {
                return Optional.empty();
            }
            String name = VarHandles.getFieldFromReceiverAndOffset(this.receiverType, this.fieldOffset, Boolean.TYPE).getName();
            return Optional.of(VarHandle.VarHandleDesc.ofField(receiverTypeRef.get(), name, fieldTypeRef.get()));
        }

        @ForceInline
        static boolean get(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getBoolean(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static boolean getVolatile(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getBooleanVolatile(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static boolean getOpaque(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getBooleanOpaque(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static boolean getAcquire(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getBooleanAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }
    }

    public static final class FieldInstanceReadWrite extends FieldInstanceReadOnly {
        static final VarForm FORM = new VarForm(FieldInstanceReadWrite.class, Object.class, Boolean.TYPE, new Class[0]);

        public FieldInstanceReadWrite(Class<?> receiverType, long fieldOffset) {
            this(receiverType, fieldOffset, false);
        }

        private FieldInstanceReadWrite(Class<?> receiverType, long fieldOffset, boolean exact) {
            super(receiverType, fieldOffset, FORM, exact);
        }

        @Override
        public FieldInstanceReadWrite withInvokeExactBehavior() {
            if (hasInvokeExactBehavior()) {
                return this;
            }
            return new FieldInstanceReadWrite(this.receiverType, this.fieldOffset, true);
        }

        @Override
        public FieldInstanceReadWrite withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new FieldInstanceReadWrite(this.receiverType, this.fieldOffset, false);
        }

        @ForceInline
        static void set(VarHandle ob2, Object holder, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putBoolean(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object holder, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putBooleanVolatile(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object holder, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putBooleanOpaque(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object holder, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putBooleanRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, Object holder, boolean expected, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndSetBoolean(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean compareAndExchange(VarHandle ob2, Object holder, boolean expected, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeBoolean(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean compareAndExchangeAcquire(VarHandle ob2, Object holder, boolean expected, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeBooleanAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean compareAndExchangeRelease(VarHandle ob2, Object holder, boolean expected, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeBooleanRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, Object holder, boolean expected, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetBooleanPlain(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, Object holder, boolean expected, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetBoolean(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, Object holder, boolean expected, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetBooleanAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, Object holder, boolean expected, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetBooleanRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean getAndSet(VarHandle ob2, Object holder, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetBoolean(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndSetAcquire(VarHandle ob2, Object holder, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetBooleanAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndSetRelease(VarHandle ob2, Object holder, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetBooleanRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseOr(VarHandle ob2, Object holder, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrBoolean(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseOrRelease(VarHandle ob2, Object holder, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrBooleanRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseOrAcquire(VarHandle ob2, Object holder, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrBooleanAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseAnd(VarHandle ob2, Object holder, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndBoolean(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseAndRelease(VarHandle ob2, Object holder, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndBooleanRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseAndAcquire(VarHandle ob2, Object holder, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndBooleanAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseXor(VarHandle ob2, Object holder, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorBoolean(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseXorRelease(VarHandle ob2, Object holder, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorBooleanRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseXorAcquire(VarHandle ob2, Object holder, boolean value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorBooleanAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }
    }

    public static class FieldStaticReadOnly extends VarHandle {
        final Class<?> declaringClass;
        final Object base;
        final long fieldOffset;
        static final VarForm FORM = new VarForm(FieldStaticReadOnly.class, null, Boolean.TYPE, new Class[0]);

        public FieldStaticReadOnly(Class<?> declaringClass, Object base, long fieldOffset) {
            this(declaringClass, base, fieldOffset, FORM, false);
        }

        protected FieldStaticReadOnly(Class<?> declaringClass, Object base, long fieldOffset, VarForm form, boolean exact) {
            super(form, exact);
            this.declaringClass = declaringClass;
            this.base = base;
            this.fieldOffset = fieldOffset;
        }

        @Override
        public FieldStaticReadOnly withInvokeExactBehavior() {
            if (hasInvokeExactBehavior()) {
                return this;
            }
            return new FieldStaticReadOnly(this.declaringClass, this.base, this.fieldOffset, this.vform, true);
        }

        @Override
        public FieldStaticReadOnly withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new FieldStaticReadOnly(this.declaringClass, this.base, this.fieldOffset, this.vform, false);
        }

        @Override
        public Optional<VarHandle.VarHandleDesc> describeConstable() {
            Optional<ClassDesc> fieldTypeRef = Boolean.TYPE.describeConstable();
            if (!fieldTypeRef.isPresent()) {
                return Optional.empty();
            }
            Field staticField = VarHandles.getStaticFieldFromBaseAndOffset(this.declaringClass, this.fieldOffset, Boolean.TYPE);
            Optional<ClassDesc> declaringTypeRef = this.declaringClass.describeConstable();
            if (!declaringTypeRef.isPresent()) {
                return Optional.empty();
            }
            return Optional.of(VarHandle.VarHandleDesc.ofStaticField(declaringTypeRef.get(), staticField.getName(), fieldTypeRef.get()));
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(null, Boolean.TYPE, new Class[0]);
        }

        @ForceInline
        static boolean get(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getBoolean(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static boolean getVolatile(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getBooleanVolatile(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static boolean getOpaque(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getBooleanOpaque(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static boolean getAcquire(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getBooleanAcquire(handle.base, handle.fieldOffset);
        }
    }

    public static final class FieldStaticReadWrite extends FieldStaticReadOnly {
        static final VarForm FORM = new VarForm(FieldStaticReadWrite.class, null, Boolean.TYPE, new Class[0]);

        public FieldStaticReadWrite(Class<?> declaringClass, Object base, long fieldOffset) {
            this(declaringClass, base, fieldOffset, false);
        }

        private FieldStaticReadWrite(Class<?> declaringClass, Object base, long fieldOffset, boolean exact) {
            super(declaringClass, base, fieldOffset, FORM, exact);
        }

        @Override
        public FieldStaticReadWrite withInvokeExactBehavior() {
            if (hasInvokeExactBehavior()) {
                return this;
            }
            return new FieldStaticReadWrite(this.declaringClass, this.base, this.fieldOffset, true);
        }

        @Override
        public FieldStaticReadWrite withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new FieldStaticReadWrite(this.declaringClass, this.base, this.fieldOffset, false);
        }

        @ForceInline
        static void set(VarHandle ob2, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putBoolean(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putBooleanVolatile(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putBooleanOpaque(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static void setRelease(VarHandle ob2, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putBooleanRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, boolean expected, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndSetBoolean(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean compareAndExchange(VarHandle ob2, boolean expected, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeBoolean(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean compareAndExchangeAcquire(VarHandle ob2, boolean expected, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeBooleanAcquire(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean compareAndExchangeRelease(VarHandle ob2, boolean expected, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeBooleanRelease(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, boolean expected, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetBooleanPlain(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, boolean expected, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetBoolean(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, boolean expected, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetBooleanAcquire(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, boolean expected, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetBooleanRelease(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean getAndSet(VarHandle ob2, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetBoolean(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndSetAcquire(VarHandle ob2, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetBooleanAcquire(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndSetRelease(VarHandle ob2, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetBooleanRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseOr(VarHandle ob2, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrBoolean(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseOrRelease(VarHandle ob2, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrBooleanRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseOrAcquire(VarHandle ob2, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrBooleanAcquire(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseAnd(VarHandle ob2, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndBoolean(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseAndRelease(VarHandle ob2, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndBooleanRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseAndAcquire(VarHandle ob2, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndBooleanAcquire(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseXor(VarHandle ob2, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorBoolean(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseXorRelease(VarHandle ob2, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorBooleanRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static boolean getAndBitwiseXorAcquire(VarHandle ob2, boolean value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorBooleanAcquire(handle.base, handle.fieldOffset, value);
        }
    }

    public static final class Array extends VarHandle {
        final int abase;
        final int ashift;
        static final VarForm FORM = new VarForm(Array.class, boolean[].class, Boolean.TYPE, Integer.TYPE);

        public Array(int abase, int ashift) {
            this(abase, ashift, false);
        }

        private Array(int abase, int ashift, boolean exact) {
            super(FORM, exact);
            this.abase = abase;
            this.ashift = ashift;
        }

        @Override
        public Array withInvokeExactBehavior() {
            if (hasInvokeExactBehavior()) {
                return this;
            }
            return new Array(this.abase, this.ashift, true);
        }

        @Override
        public Array withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new Array(this.abase, this.ashift, false);
        }

        @Override
        public Optional<VarHandle.VarHandleDesc> describeConstable() {
            Optional<ClassDesc> arrayTypeRef = boolean[].class.describeConstable();
            if (!arrayTypeRef.isPresent()) {
                return Optional.empty();
            }
            return Optional.of(VarHandle.VarHandleDesc.ofArray(arrayTypeRef.get()));
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(boolean[].class, Boolean.TYPE, Integer.TYPE);
        }

        @ForceInline
        static boolean get(VarHandle ob2, Object oarray, int index) {
            boolean[] array = (boolean[]) oarray;
            return array[index];
        }

        @ForceInline
        static void set(VarHandle ob2, Object oarray, int index, boolean value) {
            boolean[] array = (boolean[]) oarray;
            array[index] = value;
        }

        @ForceInline
        static boolean getVolatile(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.getBooleanVolatile(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object oarray, int index, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            MethodHandleStatics.UNSAFE.putBooleanVolatile(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean getOpaque(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.getBooleanOpaque(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object oarray, int index, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            MethodHandleStatics.UNSAFE.putBooleanOpaque(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean getAcquire(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.getBooleanAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object oarray, int index, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            MethodHandleStatics.UNSAFE.putBooleanRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, Object oarray, int index, boolean expected, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndSetBoolean(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean compareAndExchange(VarHandle ob2, Object oarray, int index, boolean expected, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndExchangeBoolean(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean compareAndExchangeAcquire(VarHandle ob2, Object oarray, int index, boolean expected, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndExchangeBooleanAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean compareAndExchangeRelease(VarHandle ob2, Object oarray, int index, boolean expected, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndExchangeBooleanRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, Object oarray, int index, boolean expected, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetBooleanPlain(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, Object oarray, int index, boolean expected, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetBoolean(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, Object oarray, int index, boolean expected, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetBooleanAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, Object oarray, int index, boolean expected, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetBooleanRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean getAndSet(VarHandle ob2, Object oarray, int index, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndSetBoolean(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean getAndSetAcquire(VarHandle ob2, Object oarray, int index, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndSetBooleanAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean getAndSetRelease(VarHandle ob2, Object oarray, int index, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndSetBooleanRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean getAndBitwiseOr(VarHandle ob2, Object oarray, int index, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrBoolean(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean getAndBitwiseOrRelease(VarHandle ob2, Object oarray, int index, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrBooleanRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean getAndBitwiseOrAcquire(VarHandle ob2, Object oarray, int index, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrBooleanAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean getAndBitwiseAnd(VarHandle ob2, Object oarray, int index, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndBoolean(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean getAndBitwiseAndRelease(VarHandle ob2, Object oarray, int index, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndBooleanRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean getAndBitwiseAndAcquire(VarHandle ob2, Object oarray, int index, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndBooleanAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean getAndBitwiseXor(VarHandle ob2, Object oarray, int index, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorBoolean(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean getAndBitwiseXorRelease(VarHandle ob2, Object oarray, int index, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorBooleanRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean getAndBitwiseXorAcquire(VarHandle ob2, Object oarray, int index, boolean value) {
            Array handle = (Array) ob2;
            boolean[] array = (boolean[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorBooleanAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }
    }
}
