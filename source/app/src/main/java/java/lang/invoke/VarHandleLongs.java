package java.lang.invoke;

import java.lang.constant.ClassDesc;
import java.lang.invoke.VarHandle;
import java.lang.reflect.Field;
import java.util.Objects;
import java.util.Optional;
import jdk.internal.util.Preconditions;
import jdk.internal.vm.annotation.ForceInline;

final class VarHandleLongs {
    VarHandleLongs() {
    }

    public static class FieldInstanceReadOnly extends VarHandle {
        final long fieldOffset;
        final Class<?> receiverType;
        static final VarForm FORM = new VarForm(FieldInstanceReadOnly.class, Object.class, Long.TYPE, new Class[0]);

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
            return at.accessModeType(this.receiverType, Long.TYPE, new Class[0]);
        }

        @Override
        public Optional<VarHandle.VarHandleDesc> describeConstable() {
            Optional<ClassDesc> receiverTypeRef = this.receiverType.describeConstable();
            Optional<ClassDesc> fieldTypeRef = Long.TYPE.describeConstable();
            if (!receiverTypeRef.isPresent() || !fieldTypeRef.isPresent()) {
                return Optional.empty();
            }
            String name = VarHandles.getFieldFromReceiverAndOffset(this.receiverType, this.fieldOffset, Long.TYPE).getName();
            return Optional.of(VarHandle.VarHandleDesc.ofField(receiverTypeRef.get(), name, fieldTypeRef.get()));
        }

        @ForceInline
        static long get(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getLong(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static long getVolatile(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getLongVolatile(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static long getOpaque(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getLongOpaque(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static long getAcquire(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getLongAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }
    }

    public static final class FieldInstanceReadWrite extends FieldInstanceReadOnly {
        static final VarForm FORM = new VarForm(FieldInstanceReadWrite.class, Object.class, Long.TYPE, new Class[0]);

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
        static void set(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putLong(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putLongVolatile(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putLongOpaque(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putLongRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, Object holder, long expected, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndSetLong(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static long compareAndExchange(VarHandle ob2, Object holder, long expected, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeLong(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static long compareAndExchangeAcquire(VarHandle ob2, Object holder, long expected, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeLongAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static long compareAndExchangeRelease(VarHandle ob2, Object holder, long expected, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeLongRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, Object holder, long expected, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetLongPlain(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, Object holder, long expected, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetLong(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, Object holder, long expected, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetLongAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, Object holder, long expected, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetLongRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static long getAndSet(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetLong(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndSetAcquire(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetLongAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndSetRelease(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetLongRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndAdd(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndAddLong(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndAddAcquire(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndAddLongAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndAddRelease(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndAddLongRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseOr(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrLong(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseOrRelease(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrLongRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseOrAcquire(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrLongAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseAnd(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndLong(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseAndRelease(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndLongRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseAndAcquire(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndLongAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseXor(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorLong(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseXorRelease(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorLongRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseXorAcquire(VarHandle ob2, Object holder, long value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorLongAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }
    }

    public static class FieldStaticReadOnly extends VarHandle {
        final Class<?> declaringClass;
        final Object base;
        final long fieldOffset;
        static final VarForm FORM = new VarForm(FieldStaticReadOnly.class, null, Long.TYPE, new Class[0]);

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
            Optional<ClassDesc> fieldTypeRef = Long.TYPE.describeConstable();
            if (!fieldTypeRef.isPresent()) {
                return Optional.empty();
            }
            Field staticField = VarHandles.getStaticFieldFromBaseAndOffset(this.declaringClass, this.fieldOffset, Long.TYPE);
            Optional<ClassDesc> declaringTypeRef = this.declaringClass.describeConstable();
            if (!declaringTypeRef.isPresent()) {
                return Optional.empty();
            }
            return Optional.of(VarHandle.VarHandleDesc.ofStaticField(declaringTypeRef.get(), staticField.getName(), fieldTypeRef.get()));
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(null, Long.TYPE, new Class[0]);
        }

        @ForceInline
        static long get(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getLong(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static long getVolatile(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getLongVolatile(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static long getOpaque(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getLongOpaque(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static long getAcquire(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getLongAcquire(handle.base, handle.fieldOffset);
        }
    }

    public static final class FieldStaticReadWrite extends FieldStaticReadOnly {
        static final VarForm FORM = new VarForm(FieldStaticReadWrite.class, null, Long.TYPE, new Class[0]);

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
        static void set(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putLong(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putLongVolatile(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putLongOpaque(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static void setRelease(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putLongRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, long expected, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndSetLong(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static long compareAndExchange(VarHandle ob2, long expected, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeLong(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static long compareAndExchangeAcquire(VarHandle ob2, long expected, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeLongAcquire(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static long compareAndExchangeRelease(VarHandle ob2, long expected, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeLongRelease(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, long expected, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetLongPlain(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, long expected, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetLong(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, long expected, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetLongAcquire(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, long expected, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetLongRelease(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static long getAndSet(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetLong(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndSetAcquire(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetLongAcquire(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndSetRelease(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetLongRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndAdd(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndAddLong(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndAddAcquire(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndAddLongAcquire(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndAddRelease(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndAddLongRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseOr(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrLong(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseOrRelease(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrLongRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseOrAcquire(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrLongAcquire(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseAnd(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndLong(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseAndRelease(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndLongRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseAndAcquire(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndLongAcquire(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseXor(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorLong(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseXorRelease(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorLongRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static long getAndBitwiseXorAcquire(VarHandle ob2, long value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorLongAcquire(handle.base, handle.fieldOffset, value);
        }
    }

    public static final class Array extends VarHandle {
        final int abase;
        final int ashift;
        static final VarForm FORM = new VarForm(Array.class, long[].class, Long.TYPE, Integer.TYPE);

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
            Optional<ClassDesc> arrayTypeRef = long[].class.describeConstable();
            if (!arrayTypeRef.isPresent()) {
                return Optional.empty();
            }
            return Optional.of(VarHandle.VarHandleDesc.ofArray(arrayTypeRef.get()));
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(long[].class, Long.TYPE, Integer.TYPE);
        }

        @ForceInline
        static long get(VarHandle ob2, Object oarray, int index) {
            long[] array = (long[]) oarray;
            return array[index];
        }

        @ForceInline
        static void set(VarHandle ob2, Object oarray, int index, long value) {
            long[] array = (long[]) oarray;
            array[index] = value;
        }

        @ForceInline
        static long getVolatile(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getLongVolatile(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            MethodHandleStatics.UNSAFE.putLongVolatile(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static long getOpaque(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getLongOpaque(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            MethodHandleStatics.UNSAFE.putLongOpaque(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static long getAcquire(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getLongAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            MethodHandleStatics.UNSAFE.putLongRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, Object oarray, int index, long expected, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndSetLong(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static long compareAndExchange(VarHandle ob2, Object oarray, int index, long expected, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndExchangeLong(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static long compareAndExchangeAcquire(VarHandle ob2, Object oarray, int index, long expected, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndExchangeLongAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static long compareAndExchangeRelease(VarHandle ob2, Object oarray, int index, long expected, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndExchangeLongRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, Object oarray, int index, long expected, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetLongPlain(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, Object oarray, int index, long expected, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetLong(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, Object oarray, int index, long expected, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetLongAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, Object oarray, int index, long expected, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetLongRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static long getAndSet(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndSetLong(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static long getAndSetAcquire(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndSetLongAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static long getAndSetRelease(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndSetLongRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static long getAndAdd(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndAddLong(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static long getAndAddAcquire(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndAddLongAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static long getAndAddRelease(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndAddLongRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static long getAndBitwiseOr(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrLong(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static long getAndBitwiseOrRelease(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrLongRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static long getAndBitwiseOrAcquire(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrLongAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static long getAndBitwiseAnd(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndLong(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static long getAndBitwiseAndRelease(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndLongRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static long getAndBitwiseAndAcquire(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndLongAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static long getAndBitwiseXor(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorLong(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static long getAndBitwiseXorRelease(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorLongRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static long getAndBitwiseXorAcquire(VarHandle ob2, Object oarray, int index, long value) {
            Array handle = (Array) ob2;
            long[] array = (long[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorLongAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }
    }
}
