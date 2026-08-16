package java.lang.invoke;

import java.lang.invoke.BoundMethodHandle;
import java.lang.invoke.LambdaForm;
import java.lang.invoke.MethodHandleImpl;
import java.lang.ref.SoftReference;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import org.openjdk.tools.doclint.DocLint;
import sun.invoke.util.Wrapper;

public class LambdaFormEditor {
    final LambdaForm lambdaForm;
    private static final byte BIND_ARG = 1;
    private static final byte ADD_ARG = 2;
    private static final byte DUP_ARG = 3;
    private static final byte SPREAD_ARGS = 4;
    private static final byte FILTER_ARG = 5;
    private static final byte FILTER_RETURN = 6;
    private static final byte COLLECT_ARGS = 7;
    private static final byte COLLECT_ARGS_TO_VOID = 8;
    private static final byte REPEAT_FILTER_ARGS = 9;
    private static final byte FOLD_ARGS = 10;
    private static final byte FOLD_ARGS_TO_VOID = 11;
    private static final byte PERMUTE_ARGS = 12;
    private static final byte LOCAL_TYPES = 13;
    private static final byte FILTER_SELECT_ARGS = 14;
    private static final byte FOLD_SELECT_ARGS = 15;
    private static final int MIN_CACHE_ARRAY_SIZE = 4;
    private static final int MAX_CACHE_ARRAY_SIZE = 16;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !LambdaFormEditor.class.desiredAssertionStatus();
    }

    private LambdaFormEditor(LambdaForm lambdaForm) {
        this.lambdaForm = lambdaForm;
    }

    public static LambdaFormEditor lambdaFormEditor(LambdaForm lambdaForm) {
        return new LambdaFormEditor(lambdaForm.uncustomize());
    }

    public static final class Transform extends SoftReference<LambdaForm> {
        final long packedBytes;
        final byte[] fullBytes;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !LambdaFormEditor.class.desiredAssertionStatus();
        }

        private Transform(long packedBytes, byte[] fullBytes, LambdaForm result) {
            super(result);
            this.packedBytes = packedBytes;
            this.fullBytes = fullBytes;
        }

        public boolean equals(Object obj) {
            if (obj instanceof TransformKey) {
                TransformKey key = (TransformKey) obj;
                return equals(key);
            }
            if (obj instanceof Transform) {
                Transform transform = (Transform) obj;
                if (equals(transform)) {
                    return true;
                }
            }
            return false;
        }

        private boolean equals(TransformKey that) {
            return this.packedBytes == that.packedBytes && Arrays.equals(this.fullBytes, that.fullBytes);
        }

        private boolean equals(Transform that) {
            return this.packedBytes == that.packedBytes && Arrays.equals(this.fullBytes, that.fullBytes);
        }

        public int hashCode() {
            if (this.packedBytes != 0) {
                if ($assertionsDisabled || this.fullBytes == null) {
                    return Long.hashCode(this.packedBytes);
                }
                throw new AssertionError();
            }
            return Arrays.hashCode(this.fullBytes);
        }

        public String toString() {
            StringBuilder buf = new StringBuilder();
            buf.append(new TransformKey(this.packedBytes, this.fullBytes).toString());
            LambdaForm result = get();
            if (result != null) {
                buf.append(" result=");
                buf.append((Object) result);
            }
            return buf.toString();
        }
    }

    public static final class TransformKey {
        final long packedBytes;
        final byte[] fullBytes;
        private static final boolean STRESS_TEST = false;
        private static final int PACKED_BYTE_SIZE = 4;
        private static final int PACKED_BYTE_MASK = 15;
        private static final int PACKED_BYTE_MAX_LENGTH = 16;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !LambdaFormEditor.class.desiredAssertionStatus();
        }

        private TransformKey(long packedBytes) {
            this.packedBytes = packedBytes;
            this.fullBytes = null;
        }

        private TransformKey(byte[] fullBytes) {
            if (!$assertionsDisabled && packedBytes(fullBytes) != 0) {
                throw new AssertionError();
            }
            this.fullBytes = fullBytes;
            this.packedBytes = 0L;
        }

        private TransformKey(long packedBytes, byte[] fullBytes) {
            if (!$assertionsDisabled && fullBytes != null && packedBytes != 0) {
                throw new AssertionError();
            }
            this.fullBytes = fullBytes;
            this.packedBytes = packedBytes;
        }

        private static byte bval(int b10) {
            if ($assertionsDisabled || (b10 & 255) == b10) {
                return (byte) b10;
            }
            throw new AssertionError();
        }

        private static int ival(int b10) {
            if ($assertionsDisabled || (b10 & 255) == b10) {
                return b10;
            }
            throw new AssertionError();
        }

        static TransformKey of(byte k10, int b12) {
            byte b02 = bval(k10);
            if (inRange(b02 | b12)) {
                return new TransformKey(packedBytes(b02, b12));
            }
            return new TransformKey(fullBytes(b02, b12));
        }

        static TransformKey of(byte b02, int b12, int b22) {
            if (inRange(b02 | b12 | b22)) {
                return new TransformKey(packedBytes(b02, b12, b22));
            }
            return new TransformKey(fullBytes(b02, b12, b22));
        }

        static TransformKey of(byte b02, int b12, int b22, int b32) {
            if (inRange(b02 | b12 | b22 | b32)) {
                return new TransformKey(packedBytes(b02, b12, b22, b32));
            }
            return new TransformKey(fullBytes(b02, b12, b22, b32));
        }

        static TransformKey of(byte kind, int... b123) {
            long packedBytes = packedBytes(kind, b123);
            if (packedBytes != 0) {
                return new TransformKey(packedBytes);
            }
            byte[] fullBytes = new byte[b123.length + 1];
            fullBytes[0] = kind;
            for (int i10 = 0; i10 < b123.length; i10++) {
                fullBytes[i10 + 1] = bval(b123[i10]);
            }
            return new TransformKey(fullBytes);
        }

        static TransformKey of(byte kind, int b12, int... b234) {
            long packedBytes = packedBytes(kind, b12, b234);
            if (packedBytes != 0) {
                return new TransformKey(packedBytes);
            }
            byte[] fullBytes = new byte[b234.length + 2];
            fullBytes[0] = kind;
            fullBytes[1] = bval(b12);
            for (int i10 = 0; i10 < b234.length; i10++) {
                fullBytes[i10 + 2] = bval(b234[i10]);
            }
            return new TransformKey(fullBytes);
        }

        static TransformKey of(byte kind, int b12, int b22, int... b345) {
            long packedBytes = packedBytes(kind, b12, b22, b345);
            if (packedBytes != 0) {
                return new TransformKey(packedBytes);
            }
            byte[] fullBytes = new byte[b345.length + 3];
            fullBytes[0] = kind;
            fullBytes[1] = bval(b12);
            fullBytes[2] = bval(b22);
            for (int i10 = 0; i10 < b345.length; i10++) {
                fullBytes[i10 + 3] = bval(b345[i10]);
            }
            return new TransformKey(fullBytes);
        }

        private static long packedBytes(byte b02, int b12, int b22, int[] b345) {
            if (b345.length + 3 > 16) {
                return 0L;
            }
            long pb2 = 0;
            int bitset = b02 | b12 | b22;
            for (int i10 = 0; i10 < b345.length; i10++) {
                int b10 = ival(b345[i10]);
                bitset |= b10;
                pb2 |= b10 << ((i10 + 3) * 4);
            }
            if (!inRange(bitset)) {
                return 0L;
            }
            return pb2 | packedBytes(b02, b12, b22);
        }

        private static long packedBytes(byte b02, int b12, int[] b234) {
            if (b234.length + 2 > 16) {
                return 0L;
            }
            long pb2 = 0;
            int bitset = b02 | b12;
            for (int i10 = 0; i10 < b234.length; i10++) {
                int b10 = ival(b234[i10]);
                bitset |= b10;
                pb2 |= b10 << ((i10 + 2) * 4);
            }
            if (!inRange(bitset)) {
                return 0L;
            }
            return pb2 | packedBytes(b02, b12);
        }

        private static long packedBytes(byte b02, int[] b123) {
            if (b123.length + 1 > 16) {
                return 0L;
            }
            long pb2 = 0;
            int bitset = b02;
            for (int i10 = 0; i10 < b123.length; i10++) {
                int b10 = ival(b123[i10]);
                bitset |= b10;
                pb2 |= b10 << ((i10 + 1) * 4);
            }
            if (!inRange(bitset)) {
                return 0L;
            }
            return pb2 | b02;
        }

        private static long packedBytes(byte[] bytes) {
            if (!inRange(bytes[0]) || bytes.length > 16) {
                return 0L;
            }
            long pb2 = 0;
            int bitset = 0;
            for (int i10 = 0; i10 < bytes.length; i10++) {
                int b10 = bytes[i10] & 255;
                bitset |= b10;
                pb2 |= b10 << (i10 * 4);
            }
            if (!inRange(bitset)) {
                return 0L;
            }
            return pb2;
        }

        private static long packedBytes(int b02, int b12) {
            if ($assertionsDisabled || inRange(b02 | b12)) {
                return b02 | (b12 << 4);
            }
            throw new AssertionError();
        }

        private static long packedBytes(int b02, int b12, int b22) {
            if ($assertionsDisabled || inRange(b02 | b12 | b22)) {
                return b02 | (b12 << 4) | (b22 << 8);
            }
            throw new AssertionError();
        }

        private static long packedBytes(int b02, int b12, int b22, int b32) {
            if ($assertionsDisabled || inRange(b02 | b12 | b22 | b32)) {
                return b02 | (b12 << 4) | (b22 << 8) | (b32 << 12);
            }
            throw new AssertionError();
        }

        private static boolean inRange(int bitset) {
            if ($assertionsDisabled || (bitset & 255) == bitset) {
                return (bitset & (-16)) == 0;
            }
            throw new AssertionError();
        }

        private static byte[] fullBytes(int... byteValues) {
            byte[] bytes = new byte[byteValues.length];
            int i10 = 0;
            for (int bv : byteValues) {
                int i11 = i10;
                i10++;
                bytes[i11] = bval(bv);
            }
            if ($assertionsDisabled || packedBytes(bytes) == 0) {
                return bytes;
            }
            throw new AssertionError();
        }

        Transform withResult(LambdaForm result) {
            return new Transform(this.packedBytes, this.fullBytes, result);
        }

        public String toString() {
            StringBuilder buf = new StringBuilder();
            long bits = this.packedBytes;
            if (bits != 0) {
                buf.append("(");
                while (bits != 0) {
                    buf.append(bits & 15);
                    bits >>>= 4;
                    if (bits != 0) {
                        buf.append(DocLint.SEPARATOR);
                    }
                }
                buf.append(")");
            }
            if (this.fullBytes != null) {
                buf.append("unpacked");
                buf.append(Arrays.toString(this.fullBytes));
            }
            return buf.toString();
        }

        public boolean equals(Object obj) {
            if (obj instanceof TransformKey) {
                TransformKey key = (TransformKey) obj;
                return equals(key);
            }
            if (obj instanceof Transform) {
                Transform transform = (Transform) obj;
                if (equals(transform)) {
                    return true;
                }
            }
            return false;
        }

        private boolean equals(TransformKey that) {
            return this.packedBytes == that.packedBytes && Arrays.equals(this.fullBytes, that.fullBytes);
        }

        private boolean equals(Transform that) {
            return this.packedBytes == that.packedBytes && Arrays.equals(this.fullBytes, that.fullBytes);
        }

        public int hashCode() {
            if (this.packedBytes != 0) {
                return Long.hashCode(this.packedBytes);
            }
            return Arrays.hashCode(this.fullBytes);
        }
    }

    private LambdaForm getInCache(TransformKey key) {
        Transform t10;
        Object c10 = this.lambdaForm.transformCache;
        Transform k10 = null;
        if (!(c10 instanceof ConcurrentHashMap)) {
            if (c10 == null) {
                return null;
            }
            if (c10 instanceof Transform) {
                Transform t11 = (Transform) c10;
                if (t11.equals(key)) {
                    k10 = t11;
                }
            } else {
                Transform[] ta2 = (Transform[]) c10;
                int i10 = 0;
                while (true) {
                    if (i10 >= ta2.length || (t10 = ta2[i10]) == null) {
                        break;
                    }
                    if (t10.equals(key)) {
                        k10 = t10;
                        break;
                    }
                    i10++;
                }
            }
        } else {
            ConcurrentHashMap<Transform, Transform> m10 = (ConcurrentHashMap) c10;
            k10 = m10.get(key);
        }
        if (!$assertionsDisabled && k10 != null && !key.equals(k10)) {
            throw new AssertionError();
        }
        if (k10 != null) {
            return k10.get();
        }
        return null;
    }

    private LambdaForm putInCache(TransformKey key, LambdaForm form) {
        Transform[] ta2;
        int stale;
        int i10;
        Transform k10;
        Transform transform = key.withResult(form);
        int pass = 0;
        while (true) {
            Object c10 = this.lambdaForm.transformCache;
            if (c10 instanceof ConcurrentHashMap) {
                ConcurrentHashMap<Transform, Transform> m10 = (ConcurrentHashMap) c10;
                Transform k11 = m10.putIfAbsent(transform, transform);
                if (k11 == null) {
                    return form;
                }
                LambdaForm result = k11.get();
                if (result != null) {
                    return result;
                }
                if (m10.replace(transform, k11, transform)) {
                    return form;
                }
            } else {
                if (!$assertionsDisabled && pass != 0) {
                    throw new AssertionError();
                }
                synchronized (this.lambdaForm) {
                    Object c11 = this.lambdaForm.transformCache;
                    if (!(c11 instanceof ConcurrentHashMap)) {
                        if (c11 == null) {
                            this.lambdaForm.transformCache = transform;
                            return form;
                        }
                        if (c11 instanceof Transform) {
                            Transform k12 = (Transform) c11;
                            if (k12.equals(key)) {
                                LambdaForm result2 = k12.get();
                                if (result2 == null) {
                                    this.lambdaForm.transformCache = transform;
                                    return form;
                                }
                                return result2;
                            }
                            if (k12.get() == null) {
                                this.lambdaForm.transformCache = transform;
                                return form;
                            }
                            ta2 = new Transform[4];
                            ta2[0] = k12;
                            this.lambdaForm.transformCache = ta2;
                        } else {
                            ta2 = (Transform[]) c11;
                        }
                        int len = ta2.length;
                        stale = -1;
                        i10 = 0;
                        while (i10 < len && (k10 = ta2[i10]) != null) {
                            if (k10.equals(transform)) {
                                LambdaForm result3 = k10.get();
                                if (result3 == null) {
                                    ta2[i10] = transform;
                                    return form;
                                }
                                return result3;
                            }
                            if (stale < 0 && k10.get() == null) {
                                stale = i10;
                            }
                            i10++;
                        }
                        if (i10 < len || stale >= 0) {
                            break;
                        }
                        if (len < 16) {
                            ta2 = (Transform[]) Arrays.copyOf(ta2, Math.min(len * 2, 16));
                            this.lambdaForm.transformCache = ta2;
                            break;
                        }
                        ConcurrentHashMap<Transform, Transform> m11 = new ConcurrentHashMap<>(32);
                        for (Transform k13 : ta2) {
                            m11.put(k13, k13);
                        }
                        this.lambdaForm.transformCache = m11;
                    }
                }
            }
            pass++;
        }
        int idx = stale >= 0 ? stale : i10;
        ta2[idx] = transform;
        return form;
    }

    private LambdaFormBuffer buffer() {
        return new LambdaFormBuffer(this.lambdaForm);
    }

    private BoundMethodHandle.SpeciesData oldSpeciesData() {
        return BoundMethodHandle.speciesDataFor(this.lambdaForm);
    }

    private BoundMethodHandle.SpeciesData newSpeciesData(LambdaForm.BasicType type) {
        return oldSpeciesData().extendWith(type);
    }

    public BoundMethodHandle bindArgumentL(BoundMethodHandle mh2, int pos, Object value) {
        if (!$assertionsDisabled && mh2.speciesData() != oldSpeciesData()) {
            throw new AssertionError();
        }
        LambdaForm.BasicType bt = LambdaForm.BasicType.L_TYPE;
        MethodType type2 = bindArgumentType(mh2, pos, bt);
        LambdaForm form2 = bindArgumentForm(1 + pos);
        return mh2.copyWithExtendL(type2, form2, value);
    }

    public BoundMethodHandle bindArgumentI(BoundMethodHandle mh2, int pos, int value) {
        if (!$assertionsDisabled && mh2.speciesData() != oldSpeciesData()) {
            throw new AssertionError();
        }
        LambdaForm.BasicType bt = LambdaForm.BasicType.I_TYPE;
        MethodType type2 = bindArgumentType(mh2, pos, bt);
        LambdaForm form2 = bindArgumentForm(1 + pos);
        return mh2.copyWithExtendI(type2, form2, value);
    }

    public BoundMethodHandle bindArgumentJ(BoundMethodHandle mh2, int pos, long value) {
        if (!$assertionsDisabled && mh2.speciesData() != oldSpeciesData()) {
            throw new AssertionError();
        }
        LambdaForm.BasicType bt = LambdaForm.BasicType.J_TYPE;
        MethodType type2 = bindArgumentType(mh2, pos, bt);
        LambdaForm form2 = bindArgumentForm(1 + pos);
        return mh2.copyWithExtendJ(type2, form2, value);
    }

    public BoundMethodHandle bindArgumentF(BoundMethodHandle mh2, int pos, float value) {
        if (!$assertionsDisabled && mh2.speciesData() != oldSpeciesData()) {
            throw new AssertionError();
        }
        LambdaForm.BasicType bt = LambdaForm.BasicType.F_TYPE;
        MethodType type2 = bindArgumentType(mh2, pos, bt);
        LambdaForm form2 = bindArgumentForm(1 + pos);
        return mh2.copyWithExtendF(type2, form2, value);
    }

    public BoundMethodHandle bindArgumentD(BoundMethodHandle mh2, int pos, double value) {
        if (!$assertionsDisabled && mh2.speciesData() != oldSpeciesData()) {
            throw new AssertionError();
        }
        LambdaForm.BasicType bt = LambdaForm.BasicType.D_TYPE;
        MethodType type2 = bindArgumentType(mh2, pos, bt);
        LambdaForm form2 = bindArgumentForm(1 + pos);
        return mh2.copyWithExtendD(type2, form2, value);
    }

    private MethodType bindArgumentType(BoundMethodHandle mh2, int pos, LambdaForm.BasicType bt) {
        if (!$assertionsDisabled && mh2.form.uncustomize() != this.lambdaForm) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && mh2.form.names[1 + pos].type != bt) {
            throw new AssertionError();
        }
        if ($assertionsDisabled || LambdaForm.BasicType.basicType(mh2.type().parameterType(pos)) == bt) {
            return mh2.type().dropParameterTypes(pos, pos + 1);
        }
        throw new AssertionError();
    }

    LambdaForm bindArgumentForm(int pos) {
        TransformKey key = TransformKey.of((byte) 1, pos);
        LambdaForm form = getInCache(key);
        if (form != null) {
            if ($assertionsDisabled || form.parameterConstraint(0) == newSpeciesData(this.lambdaForm.parameterType(pos))) {
                return form;
            }
            throw new AssertionError();
        }
        LambdaFormBuffer buf = buffer();
        buf.startEdit();
        BoundMethodHandle.SpeciesData oldData = oldSpeciesData();
        BoundMethodHandle.SpeciesData newData = newSpeciesData(this.lambdaForm.parameterType(pos));
        LambdaForm.Name oldBaseAddress = this.lambdaForm.parameter(0);
        LambdaForm.NamedFunction getter = newData.getterFunction(oldData.fieldCount());
        if (pos != 0) {
            buf.replaceFunctions(oldData.getterFunctions(), newData.getterFunctions(), oldBaseAddress);
            LambdaForm.Name newBaseAddress = oldBaseAddress.withConstraint(newData);
            buf.renameParameter(0, newBaseAddress);
            buf.replaceParameterByNewExpression(pos, new LambdaForm.Name(getter, newBaseAddress));
        } else {
            if (!$assertionsDisabled && oldData != BoundMethodHandle.SPECIALIZER.topSpecies()) {
                throw new AssertionError();
            }
            LambdaForm.Name newBaseAddress2 = new LambdaForm.Name(LambdaForm.BasicType.L_TYPE).withConstraint(newData);
            buf.replaceParameterByNewExpression(0, new LambdaForm.Name(getter, newBaseAddress2));
            buf.insertParameter(0, newBaseAddress2);
        }
        return putInCache(key, buf.endEdit());
    }

    public LambdaForm addArgumentForm(int pos, LambdaForm.BasicType type) {
        TransformKey key = TransformKey.of((byte) 2, pos, type.ordinal());
        LambdaForm form = getInCache(key);
        if (form != null) {
            if (!$assertionsDisabled && form.arity != this.lambdaForm.arity + 1) {
                throw new AssertionError();
            }
            if ($assertionsDisabled || form.parameterType(pos) == type) {
                return form;
            }
            throw new AssertionError();
        }
        LambdaFormBuffer buf = buffer();
        buf.startEdit();
        buf.insertParameter(pos, new LambdaForm.Name(type));
        return putInCache(key, buf.endEdit());
    }

    public LambdaForm dupArgumentForm(int srcPos, int dstPos) {
        TransformKey key = TransformKey.of((byte) 3, srcPos, dstPos);
        LambdaForm form = getInCache(key);
        if (form != null) {
            if ($assertionsDisabled || form.arity == this.lambdaForm.arity - 1) {
                return form;
            }
            throw new AssertionError();
        }
        LambdaFormBuffer buf = buffer();
        buf.startEdit();
        if (!$assertionsDisabled && this.lambdaForm.parameter(srcPos).constraint != null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.lambdaForm.parameter(dstPos).constraint != null) {
            throw new AssertionError();
        }
        buf.replaceParameterByCopy(dstPos, srcPos);
        return putInCache(key, buf.endEdit());
    }

    public LambdaForm spreadArgumentsForm(int pos, Class<?> arrayType, int arrayLength) {
        Class<?> elementType = arrayType.getComponentType();
        Class<?> erasedArrayType = arrayType;
        if (!elementType.isPrimitive()) {
            erasedArrayType = Object[].class;
        }
        LambdaForm.BasicType bt = LambdaForm.BasicType.basicType(elementType);
        int elementTypeKey = bt.ordinal();
        if (bt.basicTypeClass() != elementType && elementType.isPrimitive()) {
            elementTypeKey = LambdaForm.BasicType.TYPE_LIMIT + Wrapper.forPrimitiveType(elementType).ordinal();
        }
        TransformKey key = TransformKey.of((byte) 4, pos, elementTypeKey, arrayLength);
        LambdaForm form = getInCache(key);
        if (form != null) {
            if ($assertionsDisabled || form.arity == (this.lambdaForm.arity - arrayLength) + 1) {
                return form;
            }
            throw new AssertionError();
        }
        LambdaFormBuffer buf = buffer();
        buf.startEdit();
        if (!$assertionsDisabled && pos > 255) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && pos + arrayLength > this.lambdaForm.arity) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && pos <= 0) {
            throw new AssertionError();
        }
        LambdaForm.Name spreadParam = new LambdaForm.Name(LambdaForm.BasicType.L_TYPE);
        LambdaForm.Name checkSpread = new LambdaForm.Name(MethodHandleImpl.getFunction((byte) 0), spreadParam, Integer.valueOf(arrayLength));
        int exprPos = this.lambdaForm.arity();
        int exprPos2 = exprPos + 1;
        buf.insertExpression(exprPos, checkSpread);
        MethodHandle aload = MethodHandles.arrayElementGetter(erasedArrayType);
        for (int i10 = 0; i10 < arrayLength; i10++) {
            LambdaForm.Name loadArgument = new LambdaForm.Name(new LambdaForm.NamedFunction(MethodHandleImpl.makeIntrinsic(aload, MethodHandleImpl.Intrinsic.ARRAY_LOAD)), spreadParam, Integer.valueOf(i10));
            buf.insertExpression(exprPos2 + i10, loadArgument);
            buf.replaceParameterByCopy(pos + i10, exprPos2 + i10);
        }
        buf.insertParameter(pos, spreadParam);
        return putInCache(key, buf.endEdit());
    }

    public LambdaForm collectArgumentsForm(int pos, MethodType collectorType) {
        int collectorArity = collectorType.parameterCount();
        boolean dropResult = collectorType.returnType() == Void.TYPE;
        if (collectorArity == 1 && !dropResult) {
            return filterArgumentForm(pos, LambdaForm.BasicType.basicType(collectorType.parameterType(0)));
        }
        int[] newTypes = LambdaForm.BasicType.basicTypesOrd(collectorType.ptypes());
        byte kind = dropResult ? (byte) 8 : (byte) 7;
        if (dropResult && collectorArity == 0) {
            pos = 1;
        }
        TransformKey key = TransformKey.of(kind, pos, collectorArity, newTypes);
        LambdaForm form = getInCache(key);
        if (form != null) {
            if (!$assertionsDisabled) {
                if (form.arity != (this.lambdaForm.arity - (dropResult ? 0 : 1)) + collectorArity) {
                    throw new AssertionError();
                }
            }
            return form;
        }
        return putInCache(key, makeArgumentCombinationForm(pos, collectorType, false, dropResult));
    }

    public LambdaForm filterArgumentForm(int pos, LambdaForm.BasicType newType) {
        TransformKey key = TransformKey.of((byte) 5, pos, newType.ordinal());
        LambdaForm form = getInCache(key);
        if (form != null) {
            if (!$assertionsDisabled && form.arity != this.lambdaForm.arity) {
                throw new AssertionError();
            }
            if ($assertionsDisabled || form.parameterType(pos) == newType) {
                return form;
            }
            throw new AssertionError();
        }
        LambdaForm.BasicType oldType = this.lambdaForm.parameterType(pos);
        MethodType filterType = MethodType.methodType(oldType.basicTypeClass(), newType.basicTypeClass());
        return putInCache(key, makeArgumentCombinationForm(pos, filterType, false, false));
    }

    public LambdaForm filterRepeatedArgumentForm(LambdaForm.BasicType newType, int... argPositions) {
        if (!$assertionsDisabled && argPositions.length <= 1) {
            throw new AssertionError();
        }
        TransformKey key = TransformKey.of((byte) 9, newType.ordinal(), argPositions);
        LambdaForm form = getInCache(key);
        if (form != null) {
            if (!$assertionsDisabled && (form.arity != this.lambdaForm.arity || !formParametersMatch(form, newType, argPositions))) {
                throw new AssertionError();
            }
            return form;
        }
        LambdaForm.BasicType oldType = this.lambdaForm.parameterType(argPositions[0]);
        MethodType filterType = MethodType.methodType(oldType.basicTypeClass(), newType.basicTypeClass());
        LambdaForm form2 = makeRepeatedFilterForm(filterType, argPositions);
        if ($assertionsDisabled || formParametersMatch(form2, newType, argPositions)) {
            return putInCache(key, form2);
        }
        throw new AssertionError();
    }

    private boolean formParametersMatch(LambdaForm form, LambdaForm.BasicType newType, int... argPositions) {
        for (int i10 : argPositions) {
            if (form.parameterType(i10) != newType) {
                return false;
            }
        }
        return true;
    }

    private LambdaForm makeRepeatedFilterForm(MethodType combinerType, int... positions) {
        if (!$assertionsDisabled && (combinerType.parameterCount() != 1 || combinerType != combinerType.basicType() || combinerType.returnType() == Void.TYPE)) {
            throw new AssertionError();
        }
        LambdaFormBuffer buf = buffer();
        buf.startEdit();
        BoundMethodHandle.SpeciesData oldData = oldSpeciesData();
        BoundMethodHandle.SpeciesData newData = newSpeciesData(LambdaForm.BasicType.L_TYPE);
        LambdaForm.Name oldBaseAddress = this.lambdaForm.parameter(0);
        buf.replaceFunctions(oldData.getterFunctions(), newData.getterFunctions(), oldBaseAddress);
        LambdaForm.Name newBaseAddress = oldBaseAddress.withConstraint(newData);
        buf.renameParameter(0, newBaseAddress);
        int exprPos = this.lambdaForm.arity();
        LambdaForm.Name getCombiner = new LambdaForm.Name(newData.getterFunction(oldData.fieldCount()), newBaseAddress);
        int exprPos2 = exprPos + 1;
        buf.insertExpression(exprPos, getCombiner);
        TreeMap<LambdaForm.Name, Integer> newParameters = new TreeMap<>(new Comparator<LambdaForm.Name>(this) {
            {
                Objects.requireNonNull(this);
            }

            @Override
            public int compare(LambdaForm.Name n12, LambdaForm.Name n22) {
                return n12.index - n22.index;
            }
        });
        for (int i10 = positions.length - 1; i10 >= 0; i10--) {
            int pos = positions[i10];
            if (!$assertionsDisabled && (pos <= 0 || pos > 255 || pos >= this.lambdaForm.arity)) {
                throw new AssertionError();
            }
            LambdaForm.Name newParameter = new LambdaForm.Name(pos, LambdaForm.BasicType.basicType(combinerType.parameterType(0)));
            Object[] combinerArgs = {getCombiner, newParameter};
            LambdaForm.Name callCombiner = new LambdaForm.Name(combinerType, combinerArgs);
            int i11 = exprPos2;
            exprPos2++;
            buf.insertExpression(i11, callCombiner);
            newParameters.put(newParameter, Integer.valueOf(exprPos2));
        }
        int offset = 0;
        for (Map.Entry<LambdaForm.Name, Integer> entry : newParameters.entrySet()) {
            LambdaForm.Name newParameter2 = entry.getKey();
            int from = entry.getValue().intValue();
            buf.insertParameter(newParameter2.index() + 1 + offset, newParameter2);
            buf.replaceParameterByCopy(newParameter2.index() + offset, from + offset);
            offset++;
        }
        return buf.endEdit();
    }

    private LambdaForm makeArgumentCombinationForm(int pos, MethodType combinerType, boolean keepArguments, boolean dropResult) {
        LambdaForm.Name[] newParams;
        LambdaFormBuffer buf = buffer();
        buf.startEdit();
        int combinerArity = combinerType.parameterCount();
        int resultArity = dropResult ? 0 : 1;
        if (!$assertionsDisabled && pos > 255) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled) {
            if (pos + resultArity + (keepArguments ? combinerArity : 0) > this.lambdaForm.arity) {
                throw new AssertionError();
            }
        }
        if (!$assertionsDisabled && pos <= 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && combinerType != combinerType.basicType()) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && combinerType.returnType() == Void.TYPE && !dropResult) {
            throw new AssertionError();
        }
        BoundMethodHandle.SpeciesData oldData = oldSpeciesData();
        BoundMethodHandle.SpeciesData newData = newSpeciesData(LambdaForm.BasicType.L_TYPE);
        LambdaForm.Name oldBaseAddress = this.lambdaForm.parameter(0);
        buf.replaceFunctions(oldData.getterFunctions(), newData.getterFunctions(), oldBaseAddress);
        LambdaForm.Name newBaseAddress = oldBaseAddress.withConstraint(newData);
        buf.renameParameter(0, newBaseAddress);
        LambdaForm.Name getCombiner = new LambdaForm.Name(newData.getterFunction(oldData.fieldCount()), newBaseAddress);
        Object[] combinerArgs = new Object[1 + combinerArity];
        combinerArgs[0] = getCombiner;
        if (keepArguments) {
            newParams = new LambdaForm.Name[0];
            System.arraycopy(this.lambdaForm.names, pos + resultArity, combinerArgs, 1, combinerArity);
        } else {
            newParams = new LambdaForm.Name[combinerArity];
            for (int i10 = 0; i10 < newParams.length; i10++) {
                newParams[i10] = new LambdaForm.Name(pos + i10, LambdaForm.BasicType.basicType(combinerType.parameterType(i10)));
            }
            System.arraycopy(newParams, 0, combinerArgs, 1, combinerArity);
        }
        LambdaForm.Name callCombiner = new LambdaForm.Name(combinerType, combinerArgs);
        int exprPos = this.lambdaForm.arity();
        buf.insertExpression(exprPos + 0, getCombiner);
        buf.insertExpression(exprPos + 1, callCombiner);
        int argPos = pos + resultArity;
        for (LambdaForm.Name newParam : newParams) {
            int i11 = argPos;
            argPos++;
            buf.insertParameter(i11, newParam);
        }
        if (!$assertionsDisabled && buf.lastIndexOf(callCombiner) != exprPos + 1 + newParams.length) {
            throw new AssertionError();
        }
        if (!dropResult) {
            buf.replaceParameterByCopy(pos, exprPos + 1 + newParams.length);
        }
        return buf.endEdit();
    }

    private LambdaForm makeArgumentCombinationForm(int pos, MethodType combinerType, int[] argPositions, boolean keepArguments, boolean dropResult) {
        LambdaFormBuffer buf = buffer();
        buf.startEdit();
        int combinerArity = combinerType.parameterCount();
        if (!$assertionsDisabled && combinerArity != argPositions.length) {
            throw new AssertionError();
        }
        int resultArity = dropResult ? 0 : 1;
        if (!$assertionsDisabled && pos > this.lambdaForm.arity) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && pos <= 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && combinerType != combinerType.basicType()) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && combinerType.returnType() == Void.TYPE && !dropResult) {
            throw new AssertionError();
        }
        BoundMethodHandle.SpeciesData oldData = oldSpeciesData();
        BoundMethodHandle.SpeciesData newData = newSpeciesData(LambdaForm.BasicType.L_TYPE);
        LambdaForm.Name oldBaseAddress = this.lambdaForm.parameter(0);
        buf.replaceFunctions(oldData.getterFunctions(), newData.getterFunctions(), oldBaseAddress);
        LambdaForm.Name newBaseAddress = oldBaseAddress.withConstraint(newData);
        buf.renameParameter(0, newBaseAddress);
        LambdaForm.Name getCombiner = new LambdaForm.Name(newData.getterFunction(oldData.fieldCount()), newBaseAddress);
        Object[] combinerArgs = new Object[1 + combinerArity];
        combinerArgs[0] = getCombiner;
        LambdaForm.Name newParam = null;
        if (keepArguments) {
            for (int i10 = 0; i10 < combinerArity; i10++) {
                combinerArgs[i10 + 1] = this.lambdaForm.parameter(1 + argPositions[i10]);
                if (!$assertionsDisabled && LambdaForm.BasicType.basicType(combinerType.parameterType(i10)) != this.lambdaForm.parameterType(1 + argPositions[i10])) {
                    throw new AssertionError();
                }
            }
        } else {
            newParam = new LambdaForm.Name(pos, LambdaForm.BasicType.basicType(combinerType.returnType()));
            for (int i11 = 0; i11 < combinerArity; i11++) {
                int argPos = 1 + argPositions[i11];
                if (argPos == pos) {
                    combinerArgs[i11 + 1] = newParam;
                } else {
                    combinerArgs[i11 + 1] = this.lambdaForm.parameter(argPos);
                }
                if (!$assertionsDisabled && LambdaForm.BasicType.basicType(combinerType.parameterType(i11)) != this.lambdaForm.parameterType(1 + argPositions[i11])) {
                    throw new AssertionError();
                }
            }
        }
        LambdaForm.Name callCombiner = new LambdaForm.Name(combinerType, combinerArgs);
        int exprPos = this.lambdaForm.arity();
        buf.insertExpression(exprPos + 0, getCombiner);
        buf.insertExpression(exprPos + 1, callCombiner);
        int argPos2 = pos + resultArity;
        if (newParam != null) {
            int i12 = argPos2 + 1;
            buf.insertParameter(argPos2, newParam);
            exprPos++;
        }
        if (!$assertionsDisabled && buf.lastIndexOf(callCombiner) != exprPos + 1) {
            throw new AssertionError();
        }
        if (!dropResult) {
            buf.replaceParameterByCopy(pos, exprPos + 1);
        }
        return buf.endEdit();
    }

    public LambdaForm filterReturnForm(LambdaForm.BasicType newType, boolean constantZero) {
        LambdaForm.Name callFilter;
        TransformKey key = TransformKey.of((byte) 6, constantZero ? 1 : 0, newType.ordinal());
        LambdaForm form = getInCache(key);
        if (form != null) {
            if (!$assertionsDisabled && form.arity != this.lambdaForm.arity) {
                throw new AssertionError();
            }
            if ($assertionsDisabled || form.returnType() == newType) {
                return form;
            }
            throw new AssertionError();
        }
        LambdaFormBuffer buf = buffer();
        buf.startEdit();
        int insPos = this.lambdaForm.names.length;
        if (constantZero) {
            if (newType == LambdaForm.BasicType.V_TYPE) {
                callFilter = null;
            } else {
                callFilter = new LambdaForm.Name(LambdaForm.identity(newType), newType.btWrapper.zero());
            }
        } else {
            BoundMethodHandle.SpeciesData oldData = oldSpeciesData();
            BoundMethodHandle.SpeciesData newData = newSpeciesData(LambdaForm.BasicType.L_TYPE);
            LambdaForm.Name oldBaseAddress = this.lambdaForm.parameter(0);
            buf.replaceFunctions(oldData.getterFunctions(), newData.getterFunctions(), oldBaseAddress);
            LambdaForm.Name newBaseAddress = oldBaseAddress.withConstraint(newData);
            buf.renameParameter(0, newBaseAddress);
            LambdaForm.Name getFilter = new LambdaForm.Name(newData.getterFunction(oldData.fieldCount()), newBaseAddress);
            insPos++;
            buf.insertExpression(insPos, getFilter);
            LambdaForm.BasicType oldType = this.lambdaForm.returnType();
            if (oldType == LambdaForm.BasicType.V_TYPE) {
                MethodType filterType = MethodType.methodType(newType.basicTypeClass());
                callFilter = new LambdaForm.Name(filterType, getFilter);
            } else {
                MethodType filterType2 = MethodType.methodType(newType.basicTypeClass(), oldType.basicTypeClass());
                callFilter = new LambdaForm.Name(filterType2, getFilter, this.lambdaForm.names[this.lambdaForm.result]);
            }
        }
        if (callFilter != null) {
            int i10 = insPos;
            int i11 = insPos + 1;
            buf.insertExpression(i10, callFilter);
        }
        buf.setResult(callFilter);
        return putInCache(key, buf.endEdit());
    }

    public LambdaForm collectReturnValueForm(MethodType combinerType) {
        LambdaFormBuffer buf = buffer();
        buf.startEdit();
        int combinerArity = combinerType.parameterCount();
        int argPos = this.lambdaForm.arity();
        int exprPos = this.lambdaForm.names.length;
        BoundMethodHandle.SpeciesData oldData = oldSpeciesData();
        BoundMethodHandle.SpeciesData newData = newSpeciesData(LambdaForm.BasicType.L_TYPE);
        LambdaForm.Name oldBaseAddress = this.lambdaForm.parameter(0);
        buf.replaceFunctions(oldData.getterFunctions(), newData.getterFunctions(), oldBaseAddress);
        LambdaForm.Name newBaseAddress = oldBaseAddress.withConstraint(newData);
        buf.renameParameter(0, newBaseAddress);
        LambdaForm.Name getCombiner = new LambdaForm.Name(newData.getterFunction(oldData.fieldCount()), newBaseAddress);
        Object[] combinerArgs = new Object[combinerArity + 1];
        combinerArgs[0] = getCombiner;
        LambdaForm.Name[] newParams = new LambdaForm.Name[combinerArity - 1];
        for (int i10 = 0; i10 < newParams.length; i10++) {
            newParams[i10] = new LambdaForm.Name(argPos + i10, LambdaForm.BasicType.basicType(combinerType.parameterType(i10)));
        }
        System.arraycopy(newParams, 0, combinerArgs, 1, combinerArity - 1);
        combinerArgs[combinerArity] = buf.name(this.lambdaForm.names.length - 1);
        LambdaForm.Name callCombiner = new LambdaForm.Name(combinerType, combinerArgs);
        buf.insertExpression(exprPos, getCombiner);
        buf.insertExpression(exprPos + 1, callCombiner);
        int insPos = argPos;
        for (LambdaForm.Name newParam : newParams) {
            int i11 = insPos;
            insPos++;
            buf.insertParameter(i11, newParam);
        }
        buf.setResult(callCombiner);
        return buf.endEdit();
    }

    public LambdaForm foldArgumentsForm(int foldPos, boolean dropResult, MethodType combinerType) {
        int combinerArity = combinerType.parameterCount();
        byte kind = dropResult ? (byte) 11 : (byte) 10;
        TransformKey key = TransformKey.of(kind, foldPos, combinerArity);
        LambdaForm form = getInCache(key);
        if (form != null) {
            if (!$assertionsDisabled) {
                if (form.arity != this.lambdaForm.arity - (kind == 10 ? 1 : 0)) {
                    throw new AssertionError();
                }
            }
            return form;
        }
        return putInCache(key, makeArgumentCombinationForm(foldPos, combinerType, true, dropResult));
    }

    public LambdaForm foldArgumentsForm(int foldPos, boolean dropResult, MethodType combinerType, int... argPositions) {
        TransformKey key = TransformKey.of((byte) 15, foldPos, dropResult ? 1 : 0, argPositions);
        LambdaForm form = getInCache(key);
        if (form != null) {
            if (!$assertionsDisabled) {
                if (form.arity != this.lambdaForm.arity - (dropResult ? 0 : 1)) {
                    throw new AssertionError();
                }
            }
            return form;
        }
        return putInCache(key, makeArgumentCombinationForm(foldPos, combinerType, argPositions, true, dropResult));
    }

    public LambdaForm filterArgumentsForm(int filterPos, MethodType combinerType, int... argPositions) {
        TransformKey key = TransformKey.of((byte) 14, filterPos, argPositions);
        LambdaForm form = getInCache(key);
        if (form != null) {
            if ($assertionsDisabled || form.arity == this.lambdaForm.arity) {
                return form;
            }
            throw new AssertionError();
        }
        return putInCache(key, makeArgumentCombinationForm(filterPos, combinerType, argPositions, false, false));
    }

    public LambdaForm permuteArgumentsForm(int skip, int[] reorder) {
        if (!$assertionsDisabled && skip != 1) {
            throw new AssertionError();
        }
        int length = this.lambdaForm.names.length;
        int outArgs = reorder.length;
        int inTypes = 0;
        boolean nullPerm = true;
        for (int i10 = 0; i10 < reorder.length; i10++) {
            int inArg = reorder[i10];
            if (inArg != i10) {
                nullPerm = false;
            }
            inTypes = Math.max(inTypes, inArg + 1);
        }
        if (!$assertionsDisabled && skip + reorder.length != this.lambdaForm.arity) {
            throw new AssertionError();
        }
        if (nullPerm) {
            return this.lambdaForm;
        }
        TransformKey key = TransformKey.of((byte) 12, reorder);
        LambdaForm form = getInCache(key);
        if (form != null) {
            if ($assertionsDisabled || form.arity == skip + inTypes) {
                return form;
            }
            throw new AssertionError(form);
        }
        LambdaForm.BasicType[] types = new LambdaForm.BasicType[inTypes];
        for (int i11 = 0; i11 < outArgs; i11++) {
            types[reorder[i11]] = this.lambdaForm.names[skip + i11].type;
        }
        if (!$assertionsDisabled && skip + outArgs != this.lambdaForm.arity) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && !permutedTypesMatch(reorder, types, this.lambdaForm.names, skip)) {
            throw new AssertionError();
        }
        int pos = 0;
        while (pos < outArgs && reorder[pos] == pos) {
            pos++;
        }
        LambdaForm.Name[] names2 = new LambdaForm.Name[(length - outArgs) + inTypes];
        System.arraycopy(this.lambdaForm.names, 0, names2, 0, skip + pos);
        int bodyLength = length - this.lambdaForm.arity;
        System.arraycopy(this.lambdaForm.names, skip + outArgs, names2, skip + inTypes, bodyLength);
        int arity2 = names2.length - bodyLength;
        int result2 = this.lambdaForm.result;
        if (result2 >= skip) {
            if (result2 < skip + outArgs) {
                result2 = reorder[result2 - skip] + skip;
            } else {
                result2 = (result2 - outArgs) + inTypes;
            }
        }
        for (int j10 = pos; j10 < outArgs; j10++) {
            LambdaForm.Name n10 = this.lambdaForm.names[skip + j10];
            int i12 = reorder[j10];
            LambdaForm.Name n22 = names2[skip + i12];
            if (n22 == null) {
                LambdaForm.Name name = new LambdaForm.Name(types[i12]);
                n22 = name;
                names2[skip + i12] = name;
            } else if (!$assertionsDisabled && n22.type != types[i12]) {
                throw new AssertionError();
            }
            for (int k10 = arity2; k10 < names2.length; k10++) {
                names2[k10] = names2[k10].replaceName(n10, n22);
            }
        }
        for (int i13 = skip + pos; i13 < arity2; i13++) {
            if (names2[i13] == null) {
                names2[i13] = LambdaForm.argument(i13, types[i13 - skip]);
            }
        }
        for (int j11 = this.lambdaForm.arity; j11 < this.lambdaForm.names.length; j11++) {
            int i14 = (j11 - this.lambdaForm.arity) + arity2;
            LambdaForm.Name n11 = this.lambdaForm.names[j11];
            LambdaForm.Name n23 = names2[i14];
            if (n11 != n23) {
                for (int k11 = i14 + 1; k11 < names2.length; k11++) {
                    names2[k11] = names2[k11].replaceName(n11, n23);
                }
            }
        }
        return putInCache(key, LambdaForm.create(arity2, names2, result2));
    }

    public LambdaForm noteLoopLocalTypesForm(int pos, LambdaForm.BasicType[] localTypes) {
        if (!$assertionsDisabled && !this.lambdaForm.isLoop(pos)) {
            throw new AssertionError();
        }
        int[] desc = LambdaForm.BasicType.basicTypeOrds(localTypes);
        int[] desc2 = Arrays.copyOf(desc, desc.length + 1);
        desc2[desc2.length - 1] = pos;
        TransformKey key = TransformKey.of((byte) 13, desc2);
        LambdaForm form = getInCache(key);
        if (form != null) {
            return form;
        }
        LambdaForm.Name invokeLoop = this.lambdaForm.names[pos + 1];
        if (!$assertionsDisabled && !invokeLoop.function.equals(MethodHandleImpl.getFunction((byte) 4))) {
            throw new AssertionError();
        }
        Object[] args = Arrays.copyOf(invokeLoop.arguments, invokeLoop.arguments.length);
        if (!$assertionsDisabled && args[0] != null) {
            throw new AssertionError();
        }
        args[0] = localTypes;
        LambdaFormBuffer buf = buffer();
        buf.startEdit();
        buf.changeName(pos + 1, new LambdaForm.Name(MethodHandleImpl.getFunction((byte) 4), args));
        return putInCache(key, buf.endEdit());
    }

    static boolean permutedTypesMatch(int[] reorder, LambdaForm.BasicType[] types, LambdaForm.Name[] names, int skip) {
        for (int i10 = 0; i10 < reorder.length; i10++) {
            if (!$assertionsDisabled && !names[skip + i10].isParam()) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && names[skip + i10].type != types[reorder[i10]]) {
                throw new AssertionError();
            }
        }
        return true;
    }
}
