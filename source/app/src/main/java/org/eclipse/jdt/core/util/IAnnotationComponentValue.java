package org.eclipse.jdt.core.util;

public interface IAnnotationComponentValue {
    public static final int ANNOTATION_TAG = 64;
    public static final int ARRAY_TAG = 91;
    public static final int BOOLEAN_TAG = 90;
    public static final int BYTE_TAG = 66;
    public static final int CHAR_TAG = 67;
    public static final int CLASS_TAG = 99;
    public static final int DOUBLE_TAG = 68;
    public static final int ENUM_TAG = 101;
    public static final int FLOAT_TAG = 70;
    public static final int INTEGER_TAG = 73;
    public static final int LONG_TAG = 74;
    public static final int SHORT_TAG = 83;
    public static final int STRING_TAG = 115;

    IAnnotationComponentValue[] getAnnotationComponentValues();

    IAnnotation getAnnotationValue();

    IConstantPoolEntry getClassInfo();

    int getClassInfoIndex();

    IConstantPoolEntry getConstantValue();

    int getConstantValueIndex();

    char[] getEnumConstantName();

    int getEnumConstantNameIndex();

    char[] getEnumConstantTypeName();

    int getEnumConstantTypeNameIndex();

    int getTag();

    int getValuesNumber();
}
