package java.lang.invoke;

import java.lang.constant.ClassDesc;
import java.lang.invoke.VarHandle;
import java.lang.reflect.Field;
import java.util.Objects;
import java.util.Optional;
import jdk.internal.util.Preconditions;
import jdk.internal.vm.annotation.ForceInline;

final class VarHandleShorts {
    VarHandleShorts() {
    }

    public static class FieldInstanceReadOnly extends VarHandle {
        final long fieldOffset;
        final Class<?> receiverType;
        static final VarForm FORM = new VarForm(FieldInstanceReadOnly.class, Object.class, Short.TYPE, new Class[0]);

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
            return at.accessModeType(this.receiverType, Short.TYPE, new Class[0]);
        }

        @Override
        public Optional<VarHandle.VarHandleDesc> describeConstable() {
            Optional<ClassDesc> receiverTypeRef = this.receiverType.describeConstable();
            Optional<ClassDesc> fieldTypeRef = Short.TYPE.describeConstable();
            if (!receiverTypeRef.isPresent() || !fieldTypeRef.isPresent()) {
                return Optional.empty();
            }
            String name = VarHandles.getFieldFromReceiverAndOffset(this.receiverType, this.fieldOffset, Short.TYPE).getName();
            return Optional.of(VarHandle.VarHandleDesc.ofField(receiverTypeRef.get(), name, fieldTypeRef.get()));
        }

        @ForceInline
        static short get(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getShort(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static short getVolatile(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getShortVolatile(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static short getOpaque(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getShortOpaque(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static short getAcquire(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getShortAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }
    }

    public static final class FieldInstanceReadWrite extends FieldInstanceReadOnly {
        static final VarForm FORM = new VarForm(FieldInstanceReadWrite.class, Object.class, Short.TYPE, new Class[0]);

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
        static void set(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putShort(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putShortVolatile(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putShortOpaque(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putShortRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, Object holder, short expected, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndSetShort(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static short compareAndExchange(VarHandle ob2, Object holder, short expected, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeShort(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static short compareAndExchangeAcquire(VarHandle ob2, Object holder, short expected, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeShortAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static short compareAndExchangeRelease(VarHandle ob2, Object holder, short expected, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeShortRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, Object holder, short expected, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetShortPlain(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, Object holder, short expected, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetShort(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, Object holder, short expected, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetShortAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, Object holder, short expected, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetShortRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static short getAndSet(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetShort(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndSetAcquire(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetShortAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndSetRelease(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetShortRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndAdd(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndAddShort(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndAddAcquire(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndAddShortAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndAddRelease(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndAddShortRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseOr(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrShort(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseOrRelease(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrShortRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseOrAcquire(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrShortAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseAnd(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndShort(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseAndRelease(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndShortRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseAndAcquire(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndShortAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseXor(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorShort(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseXorRelease(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorShortRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseXorAcquire(VarHandle ob2, Object holder, short value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorShortAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }
    }

    public static class FieldStaticReadOnly extends VarHandle {
        final Class<?> declaringClass;
        final Object base;
        final long fieldOffset;
        static final VarForm FORM = new VarForm(FieldStaticReadOnly.class, null, Short.TYPE, new Class[0]);

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
            Optional<ClassDesc> fieldTypeRef = Short.TYPE.describeConstable();
            if (!fieldTypeRef.isPresent()) {
                return Optional.empty();
            }
            Field staticField = VarHandles.getStaticFieldFromBaseAndOffset(this.declaringClass, this.fieldOffset, Short.TYPE);
            Optional<ClassDesc> declaringTypeRef = this.declaringClass.describeConstable();
            if (!declaringTypeRef.isPresent()) {
                return Optional.empty();
            }
            return Optional.of(VarHandle.VarHandleDesc.ofStaticField(declaringTypeRef.get(), staticField.getName(), fieldTypeRef.get()));
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(null, Short.TYPE, new Class[0]);
        }

        @ForceInline
        static short get(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getShort(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static short getVolatile(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getShortVolatile(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static short getOpaque(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getShortOpaque(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static short getAcquire(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getShortAcquire(handle.base, handle.fieldOffset);
        }
    }

    public static final class FieldStaticReadWrite extends FieldStaticReadOnly {
        static final VarForm FORM = new VarForm(FieldStaticReadWrite.class, null, Short.TYPE, new Class[0]);

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
        static void set(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putShort(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putShortVolatile(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putShortOpaque(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static void setRelease(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putShortRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, short expected, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndSetShort(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static short compareAndExchange(VarHandle ob2, short expected, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeShort(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static short compareAndExchangeAcquire(VarHandle ob2, short expected, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeShortAcquire(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static short compareAndExchangeRelease(VarHandle ob2, short expected, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeShortRelease(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, short expected, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetShortPlain(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, short expected, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetShort(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, short expected, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetShortAcquire(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, short expected, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetShortRelease(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static short getAndSet(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetShort(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndSetAcquire(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetShortAcquire(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndSetRelease(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetShortRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndAdd(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndAddShort(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndAddAcquire(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndAddShortAcquire(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndAddRelease(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndAddShortRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseOr(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrShort(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseOrRelease(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrShortRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseOrAcquire(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrShortAcquire(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseAnd(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndShort(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseAndRelease(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndShortRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseAndAcquire(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndShortAcquire(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseXor(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorShort(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseXorRelease(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorShortRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static short getAndBitwiseXorAcquire(VarHandle ob2, short value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorShortAcquire(handle.base, handle.fieldOffset, value);
        }
    }

    public static final class Array extends VarHandle {
        final int abase;
        final int ashift;
        static final VarForm FORM = new VarForm(Array.class, short[].class, Short.TYPE, Integer.TYPE);

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
            Optional<ClassDesc> arrayTypeRef = short[].class.describeConstable();
            if (!arrayTypeRef.isPresent()) {
                return Optional.empty();
            }
            return Optional.of(VarHandle.VarHandleDesc.ofArray(arrayTypeRef.get()));
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(short[].class, Short.TYPE, Integer.TYPE);
        }

        @ForceInline
        static short get(VarHandle ob2, Object oarray, int index) {
            short[] array = (short[]) oarray;
            return array[index];
        }

        @ForceInline
        static void set(VarHandle ob2, Object oarray, int index, short value) {
            short[] array = (short[]) oarray;
            array[index] = value;
        }

        @ForceInline
        static short getVolatile(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getShortVolatile(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            MethodHandleStatics.UNSAFE.putShortVolatile(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static short getOpaque(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getShortOpaque(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            MethodHandleStatics.UNSAFE.putShortOpaque(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static short getAcquire(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getShortAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            MethodHandleStatics.UNSAFE.putShortRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, Object oarray, int index, short expected, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndSetShort(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static short compareAndExchange(VarHandle ob2, Object oarray, int index, short expected, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndExchangeShort(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static short compareAndExchangeAcquire(VarHandle ob2, Object oarray, int index, short expected, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndExchangeShortAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static short compareAndExchangeRelease(VarHandle ob2, Object oarray, int index, short expected, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndExchangeShortRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, Object oarray, int index, short expected, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetShortPlain(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, Object oarray, int index, short expected, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetShort(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, Object oarray, int index, short expected, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetShortAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, Object oarray, int index, short expected, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetShortRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static short getAndSet(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndSetShort(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static short getAndSetAcquire(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndSetShortAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static short getAndSetRelease(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndSetShortRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static short getAndAdd(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndAddShort(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static short getAndAddAcquire(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndAddShortAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static short getAndAddRelease(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndAddShortRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static short getAndBitwiseOr(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrShort(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static short getAndBitwiseOrRelease(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrShortRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static short getAndBitwiseOrAcquire(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseOrShortAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static short getAndBitwiseAnd(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndShort(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static short getAndBitwiseAndRelease(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndShortRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static short getAndBitwiseAndAcquire(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseAndShortAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static short getAndBitwiseXor(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorShort(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static short getAndBitwiseXorRelease(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorShortRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static short getAndBitwiseXorAcquire(VarHandle ob2, Object oarray, int index, short value) {
            Array handle = (Array) ob2;
            short[] array = (short[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndBitwiseXorShortAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }
    }
}
