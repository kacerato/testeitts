package java.lang.classfile;

import java.lang.classfile.constantpool.AnnotationConstantValueEntry;
import java.lang.classfile.constantpool.DoubleEntry;
import java.lang.classfile.constantpool.FloatEntry;
import java.lang.classfile.constantpool.IntegerEntry;
import java.lang.classfile.constantpool.LongEntry;
import java.lang.classfile.constantpool.Utf8Entry;
import java.lang.constant.ClassDesc;
import java.lang.constant.Constable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import jdk.internal.classfile.impl.AnnotationImpl;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.Util;

public interface AnnotationValue {
    public static final int TAG_BYTE = 66;
    public static final int TAG_CHAR = 67;
    public static final int TAG_DOUBLE = 68;
    public static final int TAG_FLOAT = 70;
    public static final int TAG_INT = 73;
    public static final int TAG_LONG = 74;
    public static final int TAG_SHORT = 83;
    public static final int TAG_BOOLEAN = 90;
    public static final int TAG_STRING = 115;
    public static final int TAG_ENUM = 101;
    public static final int TAG_CLASS = 99;
    public static final int TAG_ANNOTATION = 64;
    public static final int TAG_ARRAY = 91;

    public interface OfAnnotation extends AnnotationValue {
        Annotation annotation();
    }

    public interface OfArray extends AnnotationValue {
        List<AnnotationValue> values();
    }

    public interface OfConstant extends AnnotationValue {
        AnnotationConstantValueEntry constant();

        Constable resolvedValue();
    }

    int tag();

    public interface OfString extends OfConstant {
        @Override
        Utf8Entry constant();

        String stringValue();

        @Override
        default String resolvedValue() {
            return stringValue();
        }
    }

    public interface OfDouble extends OfConstant {
        @Override
        DoubleEntry constant();

        double doubleValue();

        @Override
        default Double resolvedValue() {
            return Double.valueOf(doubleValue());
        }
    }

    public interface OfFloat extends OfConstant {
        @Override
        FloatEntry constant();

        float floatValue();

        @Override
        default Float resolvedValue() {
            return Float.valueOf(floatValue());
        }
    }

    public interface OfLong extends OfConstant {
        @Override
        LongEntry constant();

        long longValue();

        @Override
        default Long resolvedValue() {
            return Long.valueOf(longValue());
        }
    }

    public interface OfInt extends OfConstant {
        @Override
        IntegerEntry constant();

        int intValue();

        @Override
        default Integer resolvedValue() {
            return Integer.valueOf(intValue());
        }
    }

    public interface OfShort extends OfConstant {
        @Override
        IntegerEntry constant();

        short shortValue();

        @Override
        default Short resolvedValue() {
            return Short.valueOf(shortValue());
        }
    }

    public interface OfChar extends OfConstant {
        @Override
        IntegerEntry constant();

        char charValue();

        @Override
        default Character resolvedValue() {
            return Character.valueOf(charValue());
        }
    }

    public interface OfByte extends OfConstant {
        @Override
        IntegerEntry constant();

        byte byteValue();

        @Override
        default Byte resolvedValue() {
            return Byte.valueOf(byteValue());
        }
    }

    public interface OfBoolean extends OfConstant {
        @Override
        IntegerEntry constant();

        boolean booleanValue();

        @Override
        default Boolean resolvedValue() {
            return Boolean.valueOf(booleanValue());
        }
    }

    public interface OfClass extends AnnotationValue {
        Utf8Entry className();

        default ClassDesc classSymbol() {
            return Util.fieldTypeSymbol(className());
        }
    }

    public interface OfEnum extends AnnotationValue {
        Utf8Entry className();

        Utf8Entry constantName();

        default ClassDesc classSymbol() {
            return Util.fieldTypeSymbol(className());
        }
    }

    static OfEnum ofEnum(Utf8Entry className, Utf8Entry constantName) {
        Objects.requireNonNull(className);
        Objects.requireNonNull(constantName);
        return new AnnotationImpl.OfEnumImpl(className, constantName);
    }

    static OfEnum ofEnum(ClassDesc className, String constantName) {
        return ofEnum(TemporaryConstantPool.INSTANCE.utf8Entry(className), TemporaryConstantPool.INSTANCE.utf8Entry(constantName));
    }

    static OfClass ofClass(Utf8Entry className) {
        Objects.requireNonNull(className);
        return new AnnotationImpl.OfClassImpl(className);
    }

    static OfClass ofClass(ClassDesc className) {
        return ofClass(TemporaryConstantPool.INSTANCE.utf8Entry(className));
    }

    static OfString ofString(Utf8Entry value) {
        Objects.requireNonNull(value);
        return new AnnotationImpl.OfStringImpl(value);
    }

    static OfString ofString(String value) {
        return ofString(TemporaryConstantPool.INSTANCE.utf8Entry(value));
    }

    static OfDouble ofDouble(DoubleEntry value) {
        Objects.requireNonNull(value);
        return new AnnotationImpl.OfDoubleImpl(value);
    }

    static OfDouble ofDouble(double value) {
        return ofDouble(TemporaryConstantPool.INSTANCE.doubleEntry(value));
    }

    static OfFloat ofFloat(FloatEntry value) {
        Objects.requireNonNull(value);
        return new AnnotationImpl.OfFloatImpl(value);
    }

    static OfFloat ofFloat(float value) {
        return ofFloat(TemporaryConstantPool.INSTANCE.floatEntry(value));
    }

    static OfLong ofLong(LongEntry value) {
        Objects.requireNonNull(value);
        return new AnnotationImpl.OfLongImpl(value);
    }

    static OfLong ofLong(long value) {
        return ofLong(TemporaryConstantPool.INSTANCE.longEntry(value));
    }

    static OfInt ofInt(IntegerEntry value) {
        Objects.requireNonNull(value);
        return new AnnotationImpl.OfIntImpl(value);
    }

    static OfInt ofInt(int value) {
        return ofInt(TemporaryConstantPool.INSTANCE.intEntry(value));
    }

    static OfShort ofShort(IntegerEntry value) {
        Objects.requireNonNull(value);
        return new AnnotationImpl.OfShortImpl(value);
    }

    static OfShort ofShort(short value) {
        return ofShort(TemporaryConstantPool.INSTANCE.intEntry(value));
    }

    static OfChar ofChar(IntegerEntry value) {
        Objects.requireNonNull(value);
        return new AnnotationImpl.OfCharImpl(value);
    }

    static OfChar ofChar(char value) {
        return ofChar(TemporaryConstantPool.INSTANCE.intEntry(value));
    }

    static OfByte ofByte(IntegerEntry value) {
        Objects.requireNonNull(value);
        return new AnnotationImpl.OfByteImpl(value);
    }

    static OfByte ofByte(byte value) {
        return ofByte(TemporaryConstantPool.INSTANCE.intEntry(value));
    }

    static OfBoolean ofBoolean(IntegerEntry value) {
        Objects.requireNonNull(value);
        return new AnnotationImpl.OfBooleanImpl(value);
    }

    static OfBoolean ofBoolean(boolean value) {
        int i10 = value ? 1 : 0;
        return ofBoolean(TemporaryConstantPool.INSTANCE.intEntry(i10));
    }

    static OfAnnotation ofAnnotation(Annotation value) {
        Objects.requireNonNull(value);
        return new AnnotationImpl.OfAnnotationImpl(value);
    }

    static OfArray ofArray(List<AnnotationValue> values) {
        return new AnnotationImpl.OfArrayImpl(values);
    }

    static OfArray ofArray(AnnotationValue... values) {
        return ofArray((List<AnnotationValue>) List.of(values));
    }

    static AnnotationValue of(Object value) {
        if (value instanceof String) {
            String s10 = (String) value;
            return ofString(s10);
        }
        if (value instanceof Byte) {
            Byte b10 = (Byte) value;
            return ofByte(b10.byteValue());
        }
        if (value instanceof Boolean) {
            Boolean b11 = (Boolean) value;
            return ofBoolean(b11.booleanValue());
        }
        if (value instanceof Short) {
            Short s11 = (Short) value;
            return ofShort(s11.shortValue());
        }
        if (value instanceof Character) {
            Character c10 = (Character) value;
            return ofChar(c10.charValue());
        }
        if (value instanceof Integer) {
            Integer i10 = (Integer) value;
            return ofInt(i10.intValue());
        }
        if (value instanceof Long) {
            Long l10 = (Long) value;
            return ofLong(l10.longValue());
        }
        if (value instanceof Float) {
            Float f10 = (Float) value;
            return ofFloat(f10.floatValue());
        }
        if (value instanceof Double) {
            Double d10 = (Double) value;
            return ofDouble(d10.doubleValue());
        }
        if (value instanceof ClassDesc) {
            ClassDesc clsDesc = (ClassDesc) value;
            return ofClass(clsDesc);
        }
        if (value instanceof byte[]) {
            byte[] arr = (byte[]) value;
            ArrayList<AnnotationValue> els = new ArrayList<>(arr.length);
            for (byte el2 : arr) {
                els.add(ofByte(el2));
            }
            return ofArray(els);
        }
        if (value instanceof boolean[]) {
            boolean[] arr2 = (boolean[]) value;
            ArrayList<AnnotationValue> els2 = new ArrayList<>(arr2.length);
            for (boolean el3 : arr2) {
                els2.add(ofBoolean(el3));
            }
            return ofArray(els2);
        }
        if (value instanceof short[]) {
            short[] arr3 = (short[]) value;
            ArrayList<AnnotationValue> els3 = new ArrayList<>(arr3.length);
            for (short el4 : arr3) {
                els3.add(ofShort(el4));
            }
            return ofArray(els3);
        }
        if (value instanceof char[]) {
            char[] arr4 = (char[]) value;
            ArrayList<AnnotationValue> els4 = new ArrayList<>(arr4.length);
            for (char el5 : arr4) {
                els4.add(ofChar(el5));
            }
            return ofArray(els4);
        }
        if (value instanceof int[]) {
            int[] arr5 = (int[]) value;
            ArrayList<AnnotationValue> els5 = new ArrayList<>(arr5.length);
            for (int el6 : arr5) {
                els5.add(ofInt(el6));
            }
            return ofArray(els5);
        }
        if (value instanceof long[]) {
            long[] arr6 = (long[]) value;
            ArrayList<AnnotationValue> els6 = new ArrayList<>(arr6.length);
            for (long el7 : arr6) {
                els6.add(ofLong(el7));
            }
            return ofArray(els6);
        }
        if (value instanceof float[]) {
            float[] arr7 = (float[]) value;
            ArrayList<AnnotationValue> els7 = new ArrayList<>(arr7.length);
            for (float el8 : arr7) {
                els7.add(ofFloat(el8));
            }
            return ofArray(els7);
        }
        if (value instanceof double[]) {
            double[] arr8 = (double[]) value;
            ArrayList<AnnotationValue> els8 = new ArrayList<>(arr8.length);
            for (double el9 : arr8) {
                els8.add(ofDouble(el9));
            }
            return ofArray(els8);
        }
        if (value instanceof Object[]) {
            Object[] arr9 = (Object[]) value;
            ArrayList<AnnotationValue> els9 = new ArrayList<>(arr9.length);
            for (Object el10 : arr9) {
                els9.add(of(el10));
            }
            return ofArray(els9);
        }
        if (value instanceof Enum) {
            Enum<?> e10 = (Enum) value;
            return ofEnum(ClassDesc.ofDescriptor(e10.getDeclaringClass().descriptorString()), e10.name());
        }
        throw new IllegalArgumentException("Illegal annotation constant value type " + ((Object) Objects.requireNonNull(value).getClass()));
    }
}
