package org.eclipse.jdt.core.util;

public interface IClassFileReader {
    public static final int ALL = 65535;
    public static final int ALL_BUT_METHOD_BODIES = 65503;
    public static final int CLASSFILE_ATTRIBUTES = 17;
    public static final int CONSTANT_POOL = 1;
    public static final int FIELD_INFOS = 5;
    public static final int METHOD_BODIES = 32;
    public static final int METHOD_INFOS = 3;
    public static final int SUPER_INTERFACES = 9;

    int getAccessFlags();

    int getAttributeCount();

    IClassFileAttribute[] getAttributes();

    int getClassIndex();

    char[] getClassName();

    IConstantPool getConstantPool();

    IFieldInfo[] getFieldInfos();

    int getFieldsCount();

    IInnerClassesAttribute getInnerClassesAttribute();

    int[] getInterfaceIndexes();

    char[][] getInterfaceNames();

    int getMagic();

    int getMajorVersion();

    IMethodInfo[] getMethodInfos();

    int getMethodsCount();

    int getMinorVersion();

    default INestMembersAttribute getNestMembersAttribute() {
        return null;
    }

    ISourceAttribute getSourceFileAttribute();

    int getSuperclassIndex();

    char[] getSuperclassName();

    boolean isClass();

    boolean isInterface();
}
