package java.lang.invoke;

import java.lang.constant.ClassDesc;
import java.lang.invoke.VarHandle;
import java.lang.reflect.Field;
import java.util.Objects;
import java.util.Optional;
import jdk.internal.util.Preconditions;
import jdk.internal.vm.annotation.ForceInline;

final class VarHandleFloats {
    VarHandleFloats() {
    }

    public static class FieldInstanceReadOnly extends VarHandle {
        final long fieldOffset;
        final Class<?> receiverType;
        static final VarForm FORM = new VarForm(FieldInstanceReadOnly.class, Object.class, Float.TYPE, new Class[0]);

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
            return at.accessModeType(this.receiverType, Float.TYPE, new Class[0]);
        }

        @Override
        public Optional<VarHandle.VarHandleDesc> describeConstable() {
            Optional<ClassDesc> receiverTypeRef = this.receiverType.describeConstable();
            Optional<ClassDesc> fieldTypeRef = Float.TYPE.describeConstable();
            if (!receiverTypeRef.isPresent() || !fieldTypeRef.isPresent()) {
                return Optional.empty();
            }
            String name = VarHandles.getFieldFromReceiverAndOffset(this.receiverType, this.fieldOffset, Float.TYPE).getName();
            return Optional.of(VarHandle.VarHandleDesc.ofField(receiverTypeRef.get(), name, fieldTypeRef.get()));
        }

        @ForceInline
        static float get(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getFloat(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static float getVolatile(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getFloatVolatile(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static float getOpaque(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getFloatOpaque(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }

        @ForceInline
        static float getAcquire(VarHandle ob2, Object holder) {
            FieldInstanceReadOnly handle = (FieldInstanceReadOnly) ob2;
            return MethodHandleStatics.UNSAFE.getFloatAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset);
        }
    }

    public static final class FieldInstanceReadWrite extends FieldInstanceReadOnly {
        static final VarForm FORM = new VarForm(FieldInstanceReadWrite.class, Object.class, Float.TYPE, new Class[0]);

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
        static void set(VarHandle ob2, Object holder, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putFloat(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object holder, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putFloatVolatile(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object holder, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putFloatOpaque(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object holder, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            MethodHandleStatics.UNSAFE.putFloatRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, Object holder, float expected, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndSetFloat(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static float compareAndExchange(VarHandle ob2, Object holder, float expected, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeFloat(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static float compareAndExchangeAcquire(VarHandle ob2, Object holder, float expected, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeFloatAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static float compareAndExchangeRelease(VarHandle ob2, Object holder, float expected, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.compareAndExchangeFloatRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, Object holder, float expected, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetFloatPlain(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, Object holder, float expected, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetFloat(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, Object holder, float expected, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetFloatAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, Object holder, float expected, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetFloatRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, expected, value);
        }

        @ForceInline
        static float getAndSet(VarHandle ob2, Object holder, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetFloat(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static float getAndSetAcquire(VarHandle ob2, Object holder, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetFloatAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static float getAndSetRelease(VarHandle ob2, Object holder, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndSetFloatRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static float getAndAdd(VarHandle ob2, Object holder, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndAddFloat(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static float getAndAddAcquire(VarHandle ob2, Object holder, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndAddFloatAcquire(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }

        @ForceInline
        static float getAndAddRelease(VarHandle ob2, Object holder, float value) {
            FieldInstanceReadWrite handle = (FieldInstanceReadWrite) ob2;
            return MethodHandleStatics.UNSAFE.getAndAddFloatRelease(Objects.requireNonNull(handle.receiverType.cast(holder)), handle.fieldOffset, value);
        }
    }

    public static class FieldStaticReadOnly extends VarHandle {
        final Class<?> declaringClass;
        final Object base;
        final long fieldOffset;
        static final VarForm FORM = new VarForm(FieldStaticReadOnly.class, null, Float.TYPE, new Class[0]);

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
            Optional<ClassDesc> fieldTypeRef = Float.TYPE.describeConstable();
            if (!fieldTypeRef.isPresent()) {
                return Optional.empty();
            }
            Field staticField = VarHandles.getStaticFieldFromBaseAndOffset(this.declaringClass, this.fieldOffset, Float.TYPE);
            Optional<ClassDesc> declaringTypeRef = this.declaringClass.describeConstable();
            if (!declaringTypeRef.isPresent()) {
                return Optional.empty();
            }
            return Optional.of(VarHandle.VarHandleDesc.ofStaticField(declaringTypeRef.get(), staticField.getName(), fieldTypeRef.get()));
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(null, Float.TYPE, new Class[0]);
        }

        @ForceInline
        static float get(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getFloat(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static float getVolatile(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getFloatVolatile(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static float getOpaque(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getFloatOpaque(handle.base, handle.fieldOffset);
        }

        @ForceInline
        static float getAcquire(VarHandle ob2) {
            FieldStaticReadOnly handle = (FieldStaticReadOnly) ob2.target();
            return MethodHandleStatics.UNSAFE.getFloatAcquire(handle.base, handle.fieldOffset);
        }
    }

    public static final class FieldStaticReadWrite extends FieldStaticReadOnly {
        static final VarForm FORM = new VarForm(FieldStaticReadWrite.class, null, Float.TYPE, new Class[0]);

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
        static void set(VarHandle ob2, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putFloat(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putFloatVolatile(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putFloatOpaque(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static void setRelease(VarHandle ob2, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            MethodHandleStatics.UNSAFE.putFloatRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, float expected, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndSetFloat(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static float compareAndExchange(VarHandle ob2, float expected, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeFloat(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static float compareAndExchangeAcquire(VarHandle ob2, float expected, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeFloatAcquire(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static float compareAndExchangeRelease(VarHandle ob2, float expected, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.compareAndExchangeFloatRelease(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, float expected, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetFloatPlain(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, float expected, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetFloat(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, float expected, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetFloatAcquire(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, float expected, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.weakCompareAndSetFloatRelease(handle.base, handle.fieldOffset, expected, value);
        }

        @ForceInline
        static float getAndSet(VarHandle ob2, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetFloat(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static float getAndSetAcquire(VarHandle ob2, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetFloatAcquire(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static float getAndSetRelease(VarHandle ob2, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndSetFloatRelease(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static float getAndAdd(VarHandle ob2, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndAddFloat(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static float getAndAddAcquire(VarHandle ob2, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndAddFloatAcquire(handle.base, handle.fieldOffset, value);
        }

        @ForceInline
        static float getAndAddRelease(VarHandle ob2, float value) {
            FieldStaticReadWrite handle = (FieldStaticReadWrite) ob2.target();
            return MethodHandleStatics.UNSAFE.getAndAddFloatRelease(handle.base, handle.fieldOffset, value);
        }
    }

    public static final class Array extends VarHandle {
        final int abase;
        final int ashift;
        static final VarForm FORM = new VarForm(Array.class, float[].class, Float.TYPE, Integer.TYPE);

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
            Optional<ClassDesc> arrayTypeRef = float[].class.describeConstable();
            if (!arrayTypeRef.isPresent()) {
                return Optional.empty();
            }
            return Optional.of(VarHandle.VarHandleDesc.ofArray(arrayTypeRef.get()));
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(float[].class, Float.TYPE, Integer.TYPE);
        }

        @ForceInline
        static float get(VarHandle ob2, Object oarray, int index) {
            float[] array = (float[]) oarray;
            return array[index];
        }

        @ForceInline
        static void set(VarHandle ob2, Object oarray, int index, float value) {
            float[] array = (float[]) oarray;
            array[index] = value;
        }

        @ForceInline
        static float getVolatile(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            return MethodHandleStatics.UNSAFE.getFloatVolatile(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object oarray, int index, float value) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            MethodHandleStatics.UNSAFE.putFloatVolatile(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static float getOpaque(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            return MethodHandleStatics.UNSAFE.getFloatOpaque(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object oarray, int index, float value) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            MethodHandleStatics.UNSAFE.putFloatOpaque(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static float getAcquire(VarHandle ob2, Object oarray, int index) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            return MethodHandleStatics.UNSAFE.getFloatAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase);
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object oarray, int index, float value) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            MethodHandleStatics.UNSAFE.putFloatRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, Object oarray, int index, float expected, float value) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndSetFloat(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static float compareAndExchange(VarHandle ob2, Object oarray, int index, float expected, float value) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndExchangeFloat(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static float compareAndExchangeAcquire(VarHandle ob2, Object oarray, int index, float expected, float value) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndExchangeFloatAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static float compareAndExchangeRelease(VarHandle ob2, Object oarray, int index, float expected, float value) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            return MethodHandleStatics.UNSAFE.compareAndExchangeFloatRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, Object oarray, int index, float expected, float value) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetFloatPlain(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, Object oarray, int index, float expected, float value) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetFloat(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, Object oarray, int index, float expected, float value) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetFloatAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, Object oarray, int index, float expected, float value) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            return MethodHandleStatics.UNSAFE.weakCompareAndSetFloatRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, expected, value);
        }

        @ForceInline
        static float getAndSet(VarHandle ob2, Object oarray, int index, float value) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndSetFloat(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static float getAndSetAcquire(VarHandle ob2, Object oarray, int index, float value) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndSetFloatAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static float getAndSetRelease(VarHandle ob2, Object oarray, int index, float value) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndSetFloatRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static float getAndAdd(VarHandle ob2, Object oarray, int index, float value) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndAddFloat(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static float getAndAddAcquire(VarHandle ob2, Object oarray, int index, float value) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndAddFloatAcquire(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }

        @ForceInline
        static float getAndAddRelease(VarHandle ob2, Object oarray, int index, float value) {
            Array handle = (Array) ob2;
            float[] array = (float[]) oarray;
            return MethodHandleStatics.UNSAFE.getAndAddFloatRelease(array, (Preconditions.checkIndex(index, array.length, Preconditions.AIOOBE_FORMATTER) << handle.ashift) + handle.abase, value);
        }
    }
}
