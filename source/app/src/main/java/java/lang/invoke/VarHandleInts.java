package java.lang.invoke;

import java.lang.constant.ClassDesc;
import java.lang.invoke.VarHandle;
import java.lang.reflect.Field;
import java.util.Objects;
import java.util.Optional;
import jdk.internal.util.Preconditions;
import jdk.internal.vm.annotation.ForceInline;

final class VarHandleInts {
    VarHandleInts() {
    }

    public static class FieldInstanceReadOnly extends VarHandle {
        final long fieldOffset;
        final Class<?> receiverType;
        static final VarForm FORM = new VarForm(FieldInstanceReadOnly.class, Object.class, Integer.TYPE, new Class[0]);

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
            return at.accessModeType(this.receiverType, Integer.TYPE, new Class[0]);
        }

        @Override
        public Optional<VarHandle.VarHandleDesc> describeConstable() {
            Optional<ClassDesc> receiverTypeRef = this.receiverType.describeConstable();
            Optional<ClassDesc> fieldTypeRef = Integer.TYPE.describeConstable();
            if (!receiverTypeRef.isPresent() || !fieldTypeRef.isPresent()) {
                return Optional.empty();
            }
            String name = VarHandles.getFieldFromReceiverAndOffset(this.receiverType, this.fieldOffset, Integer.TYPE).getName();
            return Optional.of(VarHandle.VarHandleDesc.ofField(receiverTypeRef.get(), name, fieldTypeRef.get()));
        }

        @ForceInline
        static int get(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getInt(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static int getVolatile(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getIntVolatile(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static int getOpaque(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getIntOpaque(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static int getAcquire(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getIntAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }
    }

    public static final class FieldInstanceReadWrite extends FieldInstanceReadOnly {
        static final VarForm FORM = new VarForm(FieldInstanceReadWrite.class, Object.class, Integer.TYPE, new Class[0]);

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
        static void set(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putInt(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putIntVolatile(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putIntOpaque(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putIntRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, Object holder, int expected, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndSetInt(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static int compareAndExchange(VarHandle ob2, Object holder, int expected, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeInt(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static int compareAndExchangeAcquire(VarHandle ob2, Object holder, int expected, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeIntAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static int compareAndExchangeRelease(VarHandle ob2, Object holder, int expected, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeIntRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, Object holder, int expected, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetIntPlain(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, Object holder, int expected, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetInt(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, Object holder, int expected, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetIntAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, Object holder, int expected, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetIntRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static int getAndSet(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetInt(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndSetAcquire(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetIntAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndSetRelease(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetIntRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndAdd(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndAddInt(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndAddAcquire(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndAddIntAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndAddRelease(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndAddIntRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseOr(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrInt(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseOrRelease(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrIntRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseOrAcquire(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrIntAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseAnd(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndInt(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseAndRelease(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndIntRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseAndAcquire(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndIntAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseXor(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorInt(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseXorRelease(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorIntRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseXorAcquire(VarHandle ob2, Object holder, int value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorIntAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }
    }

    public static class FieldStaticReadOnly extends VarHandle {
        final Class<?> declaringClass;
        final Object base;
        final long fieldOffset;
        static final VarForm FORM = new VarForm(FieldStaticReadOnly.class, null, Integer.TYPE, new Class[0]);

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
            Optional<ClassDesc> fieldTypeRef = Integer.TYPE.describeConstable();
            if (!fieldTypeRef.isPresent()) {
                return Optional.empty();
            }
            Field staticField = VarHandles.getStaticFieldFromBaseAndOffset(this.declaringClass, this.fieldOffset, Integer.TYPE);
            Optional<ClassDesc> declaringTypeRef = this.declaringClass.describeConstable();
            if (!declaringTypeRef.isPresent()) {
                return Optional.empty();
            }
            return Optional.of(VarHandle.VarHandleDesc.ofStaticField(declaringTypeRef.get(), staticField.getName(), fieldTypeRef.get()));
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(null, Integer.TYPE, new Class[0]);
        }

        @ForceInline
        static int get(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getInt(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static int getVolatile(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getIntVolatile(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static int getOpaque(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getIntOpaque(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static int getAcquire(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getIntAcquire(handle.base, handle.fieldOffset);
        }
    }

    public static final class FieldStaticReadWrite extends FieldStaticReadOnly {
        static final VarForm FORM = new VarForm(FieldStaticReadWrite.class, null, Integer.TYPE, new Class[0]);

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
        static void set(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putInt(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putIntVolatile(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putIntOpaque(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static void setRelease(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putIntRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, int expected, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndSetInt(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static int compareAndExchange(VarHandle ob2, int expected, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeInt(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static int compareAndExchangeAcquire(VarHandle ob2, int expected, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeIntAcquire(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static int compareAndExchangeRelease(VarHandle ob2, int expected, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeIntRelease(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, int expected, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetIntPlain(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, int expected, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetInt(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, int expected, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetIntAcquire(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, int expected, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetIntRelease(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static int getAndSet(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetInt(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndSetAcquire(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetIntAcquire(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndSetRelease(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetIntRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndAdd(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndAddInt(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndAddAcquire(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndAddIntAcquire(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndAddRelease(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndAddIntRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseOr(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrInt(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseOrRelease(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrIntRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseOrAcquire(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrIntAcquire(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseAnd(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndInt(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseAndRelease(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndIntRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseAndAcquire(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndIntAcquire(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseXor(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorInt(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseXorRelease(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorIntRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static int getAndBitwiseXorAcquire(VarHandle ob2, int value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorIntAcquire(handle.base, handle.fieldOffset, value);
        }
    }

    public static final class Array extends VarHandle {
        final int abase;
        final int ashift;
        static final VarForm FORM = new VarForm(Array.class, int[].class, Integer.TYPE, Integer.TYPE);

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
            Optional<ClassDesc> arrayTypeRef = int[].class.describeConstable();
            if (!arrayTypeRef.isPresent()) {
                return Optional.empty();
            }
            return Optional.of(VarHandle.VarHandleDesc.ofArray(arrayTypeRef.get()));
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(int[].class, Integer.TYPE, Integer.TYPE);
        }

        @ForceInline
        static int get(VarHandle ob2, Object oarray, int index) {
            int[] array = (int[]) oarray;
            return array[index];
        }

        @ForceInline
        static void set(VarHandle ob2, Object oarray, int index, int value) {
            int[] array = (int[]) oarray;
            array[index] = value;
        }

        @ForceInline
        static int getVolatile(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getIntVolatile(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            MethodHandleStatics.UNSAFE.putIntVolatile(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static int getOpaque(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getIntOpaque(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            MethodHandleStatics.UNSAFE.putIntOpaque(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static int getAcquire(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getIntAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            MethodHandleStatics.UNSAFE.putIntRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, Object oarray, int index, int expected, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndSetInt(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static int compareAndExchange(VarHandle ob2, Object oarray, int index, int expected, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndExchangeInt(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static int compareAndExchangeAcquire(VarHandle ob2, Object oarray, int index, int expected, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndExchangeIntAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static int compareAndExchangeRelease(VarHandle ob2, Object oarray, int index, int expected, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndExchangeIntRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, Object oarray, int index, int expected, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetIntPlain(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, Object oarray, int index, int expected, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetInt(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, Object oarray, int index, int expected, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetIntAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, Object oarray, int index, int expected, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetIntRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static int getAndSet(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndSetInt(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static int getAndSetAcquire(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndSetIntAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static int getAndSetRelease(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndSetIntRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static int getAndAdd(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndAddInt(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static int getAndAddAcquire(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndAddIntAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static int getAndAddRelease(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndAddIntRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static int getAndBitwiseOr(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrInt(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static int getAndBitwiseOrRelease(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrIntRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static int getAndBitwiseOrAcquire(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrIntAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static int getAndBitwiseAnd(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndInt(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static int getAndBitwiseAndRelease(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndIntRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static int getAndBitwiseAndAcquire(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndIntAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static int getAndBitwiseXor(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorInt(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static int getAndBitwiseXorRelease(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorIntRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static int getAndBitwiseXorAcquire(VarHandle ob2, Object oarray, int index, int value) {
            Array handle = (Array) ob2;
            int[] array = (int[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorIntAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }
    }
}
