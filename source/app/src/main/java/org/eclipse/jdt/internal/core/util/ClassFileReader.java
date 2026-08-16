package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAttributeNamesConstants;
import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.IClassFileReader;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IFieldInfo;
import org.eclipse.jdt.core.util.IInnerClassesAttribute;
import org.eclipse.jdt.core.util.IMethodInfo;
import org.eclipse.jdt.core.util.INestMembersAttribute;
import org.eclipse.jdt.core.util.ISourceAttribute;

public class ClassFileReader extends ClassFileStruct implements IClassFileReader {
    private static final IFieldInfo[] NO_FIELD_INFOS = new IFieldInfo[0];
    private static final char[][] NO_INTERFACES_NAMES = CharOperation.NO_CHAR_CHAR;
    private static final IMethodInfo[] NO_METHOD_INFOS = new IMethodInfo[0];
    private int accessFlags;
    private IClassFileAttribute[] attributes;
    private int attributesCount;
    private char[] className;
    private int classNameIndex;
    private IConstantPool constantPool;
    private IFieldInfo[] fields;
    private int fieldsCount;
    private IInnerClassesAttribute innerClassesAttribute;
    private int[] interfaceIndexes;
    private char[][] interfaceNames;
    private int interfacesCount;
    private int magicNumber;
    private int majorVersion;
    private IMethodInfo[] methods;
    private int methodsCount;
    private int minorVersion;
    private INestMembersAttribute nestMembersAttribute;
    private ISourceAttribute sourceFileAttribute;
    private char[] superclassName;
    private int superclassNameIndex;

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x02f0. Please report as an issue. */
    public ClassFileReader(byte[] bArr, int i10) throws ClassFormatException {
        int i11;
        int i12;
        try {
            int u4At = (int) u4At(bArr, 0, 0);
            this.magicNumber = u4At;
            if (u4At != -889275714) {
                throw new ClassFormatException(8);
            }
            this.minorVersion = u2At(bArr, 4, 0);
            this.majorVersion = u2At(bArr, 6, 0);
            if ((i10 & 1) == 0) {
                return;
            }
            int u2At = u2At(bArr, 8, 0);
            int[] iArr = new int[u2At];
            int i13 = 10;
            int i14 = 1;
            while (i14 < u2At) {
                switch (u1At(bArr, i13, 0)) {
                    case 1:
                        iArr[i14] = i13;
                        i13 += u2At(bArr, i13 + 1, 0);
                        i13 += 3;
                        i14++;
                    case 2:
                    case 13:
                    case 14:
                    default:
                        throw new ClassFormatException(7);
                    case 3:
                        iArr[i14] = i13;
                        i13 += 5;
                        i14++;
                    case 4:
                        iArr[i14] = i13;
                        i13 += 5;
                        i14++;
                    case 5:
                        iArr[i14] = i13;
                        i13 += 9;
                        i14++;
                        i14++;
                    case 6:
                        iArr[i14] = i13;
                        i13 += 9;
                        i14++;
                        i14++;
                    case 7:
                        iArr[i14] = i13;
                        i13 += 3;
                        i14++;
                    case 8:
                        iArr[i14] = i13;
                        i13 += 3;
                        i14++;
                    case 9:
                        iArr[i14] = i13;
                        i13 += 5;
                        i14++;
                    case 10:
                        iArr[i14] = i13;
                        i13 += 5;
                        i14++;
                    case 11:
                        iArr[i14] = i13;
                        i13 += 5;
                        i14++;
                    case 12:
                        iArr[i14] = i13;
                        i13 += 5;
                        i14++;
                    case 15:
                        iArr[i14] = i13;
                        i13 += 4;
                        i14++;
                    case 16:
                        iArr[i14] = i13;
                        i13 += 3;
                        i14++;
                    case 17:
                        iArr[i14] = i13;
                        i13 += 5;
                        i14++;
                    case 18:
                        iArr[i14] = i13;
                        i13 += 5;
                        i14++;
                    case 19:
                        iArr[i14] = i13;
                        i13 += 3;
                        i14++;
                    case 20:
                        iArr[i14] = i13;
                        i13 += 3;
                        i14++;
                }
            }
            this.constantPool = new ConstantPool(bArr, iArr);
            this.accessFlags = u2At(bArr, i13, 0);
            int u2At2 = u2At(bArr, i13 + 2, 0);
            this.classNameIndex = u2At2;
            this.className = getConstantClassNameAt(bArr, iArr, u2At2);
            int u2At3 = u2At(bArr, i13 + 4, 0);
            this.superclassNameIndex = u2At3;
            int i15 = i13 + 6;
            if (u2At3 != 0) {
                this.superclassName = getConstantClassNameAt(bArr, iArr, u2At3);
            }
            int u2At4 = u2At(bArr, i15, 0);
            this.interfacesCount = u2At4;
            int i16 = i13 + 8;
            this.interfaceNames = NO_INTERFACES_NAMES;
            this.interfaceIndexes = org.eclipse.jdt.internal.compiler.util.Util.EMPTY_INT_ARRAY;
            if (u2At4 != 0) {
                if ((i10 & 9) != 1) {
                    this.interfaceNames = new char[u2At4];
                    this.interfaceIndexes = new int[u2At4];
                    for (int i17 = 0; i17 < this.interfacesCount; i17++) {
                        this.interfaceIndexes[i17] = u2At(bArr, i16, 0);
                        this.interfaceNames[i17] = getConstantClassNameAt(bArr, iArr, this.interfaceIndexes[i17]);
                        i16 += 2;
                    }
                } else {
                    i16 += u2At4 * 2;
                }
            }
            int u2At5 = u2At(bArr, i16, 0);
            this.fieldsCount = u2At5;
            int i18 = i16 + 2;
            this.fields = NO_FIELD_INFOS;
            if (u2At5 != 0) {
                if ((i10 & 5) != 1) {
                    this.fields = new FieldInfo[u2At5];
                    for (int i19 = 0; i19 < this.fieldsCount; i19++) {
                        FieldInfo fieldInfo = new FieldInfo(bArr, this.constantPool, i18);
                        this.fields[i19] = fieldInfo;
                        i18 += fieldInfo.sizeInBytes();
                    }
                } else {
                    for (int i20 = 0; i20 < this.fieldsCount; i20++) {
                        int u2At6 = u2At(bArr, 6, i18);
                        i18 += 8;
                        if (u2At6 != 0) {
                            for (int i21 = 0; i21 < u2At6; i21++) {
                                i18 += ((int) u4At(bArr, 2, i18)) + 6;
                            }
                        }
                    }
                }
            }
            int u2At7 = u2At(bArr, i18, 0);
            this.methodsCount = u2At7;
            int i22 = i18 + 2;
            this.methods = NO_METHOD_INFOS;
            if (u2At7 != 0) {
                if ((i10 & 3) != 1) {
                    this.methods = new MethodInfo[u2At7];
                    for (int i23 = 0; i23 < this.methodsCount; i23++) {
                        MethodInfo methodInfo = new MethodInfo(bArr, this.constantPool, i22, i10);
                        this.methods[i23] = methodInfo;
                        i22 += methodInfo.sizeInBytes();
                    }
                } else {
                    for (int i24 = 0; i24 < this.methodsCount; i24++) {
                        int u2At8 = u2At(bArr, 6, i22);
                        i22 += 8;
                        if (u2At8 != 0) {
                            for (int i25 = 0; i25 < u2At8; i25++) {
                                i22 += ((int) u4At(bArr, 2, i22)) + 6;
                            }
                        }
                    }
                }
            }
            int u2At9 = u2At(bArr, i22, 0);
            this.attributesCount = u2At9;
            int i26 = i22 + 2;
            this.attributes = ClassFileAttribute.NO_ATTRIBUTES;
            if (u2At9 != 0) {
                if ((i10 & 17) != 1) {
                    this.attributes = new IClassFileAttribute[u2At9];
                    int i27 = 0;
                    for (int i28 = 0; i28 < this.attributesCount; i28++) {
                        int i29 = iArr[u2At(bArr, i26, 0)];
                        char[] utf8At = utf8At(bArr, i29 + 3, 0, u2At(bArr, i29 + 1, 0));
                        if (equals(utf8At, IAttributeNamesConstants.INNER_CLASSES)) {
                            InnerClassesAttribute innerClassesAttribute = new InnerClassesAttribute(bArr, this.constantPool, i26);
                            this.innerClassesAttribute = innerClassesAttribute;
                            i12 = i27 + 1;
                            this.attributes[i27] = innerClassesAttribute;
                        } else if (equals(utf8At, IAttributeNamesConstants.SOURCE)) {
                            SourceFileAttribute sourceFileAttribute = new SourceFileAttribute(bArr, this.constantPool, i26);
                            this.sourceFileAttribute = sourceFileAttribute;
                            i12 = i27 + 1;
                            this.attributes[i27] = sourceFileAttribute;
                        } else {
                            if (equals(utf8At, IAttributeNamesConstants.ENCLOSING_METHOD)) {
                                i11 = i27 + 1;
                                this.attributes[i27] = new EnclosingMethodAttribute(bArr, this.constantPool, i26);
                            } else if (equals(utf8At, IAttributeNamesConstants.SIGNATURE)) {
                                i11 = i27 + 1;
                                this.attributes[i27] = new SignatureAttribute(bArr, this.constantPool, i26);
                            } else if (equals(utf8At, IAttributeNamesConstants.RUNTIME_VISIBLE_ANNOTATIONS)) {
                                i11 = i27 + 1;
                                this.attributes[i27] = new RuntimeVisibleAnnotationsAttribute(bArr, this.constantPool, i26);
                            } else if (equals(utf8At, IAttributeNamesConstants.RUNTIME_INVISIBLE_ANNOTATIONS)) {
                                i11 = i27 + 1;
                                this.attributes[i27] = new RuntimeInvisibleAnnotationsAttribute(bArr, this.constantPool, i26);
                            } else if (equals(utf8At, IAttributeNamesConstants.BOOTSTRAP_METHODS)) {
                                i11 = i27 + 1;
                                this.attributes[i27] = new BootstrapMethodsAttribute(bArr, this.constantPool, i26);
                            } else if (equals(utf8At, IAttributeNamesConstants.RUNTIME_VISIBLE_TYPE_ANNOTATIONS)) {
                                i11 = i27 + 1;
                                this.attributes[i27] = new RuntimeVisibleTypeAnnotationsAttribute(bArr, this.constantPool, i26);
                            } else if (equals(utf8At, IAttributeNamesConstants.RUNTIME_INVISIBLE_TYPE_ANNOTATIONS)) {
                                i11 = i27 + 1;
                                this.attributes[i27] = new RuntimeInvisibleTypeAnnotationsAttribute(bArr, this.constantPool, i26);
                            } else if (equals(utf8At, IAttributeNamesConstants.MODULE)) {
                                i11 = i27 + 1;
                                this.attributes[i27] = new ModuleAttribute(bArr, this.constantPool, i26);
                            } else if (equals(utf8At, IAttributeNamesConstants.MODULE_PACKAGES)) {
                                i11 = i27 + 1;
                                this.attributes[i27] = new ModulePackagesAttribute(bArr, this.constantPool, i26);
                            } else if (equals(utf8At, IAttributeNamesConstants.MODULE_MAIN_CLASS)) {
                                i11 = i27 + 1;
                                this.attributes[i27] = new ModuleMainClassAttribute(bArr, this.constantPool, i26);
                            } else if (equals(utf8At, IAttributeNamesConstants.NEST_HOST)) {
                                i11 = i27 + 1;
                                this.attributes[i27] = new NestHostAttribute(bArr, this.constantPool, i26);
                            } else if (equals(utf8At, IAttributeNamesConstants.NEST_MEMBERS)) {
                                NestMembersAttribute nestMembersAttribute = new NestMembersAttribute(bArr, this.constantPool, i26);
                                this.nestMembersAttribute = nestMembersAttribute;
                                i12 = i27 + 1;
                                this.attributes[i27] = nestMembersAttribute;
                            } else {
                                i11 = i27 + 1;
                                this.attributes[i27] = new ClassFileAttribute(bArr, this.constantPool, i26);
                            }
                            i27 = i11;
                            i26 = (int) (i26 + u4At(bArr, i26 + 2, 0) + 6);
                        }
                        i27 = i12;
                        i26 = (int) (i26 + u4At(bArr, i26 + 2, 0) + 6);
                    }
                } else {
                    for (int i30 = 0; i30 < this.attributesCount; i30++) {
                        i26 = (int) (i26 + u4At(bArr, i26 + 2, 0) + 6);
                    }
                }
            }
            if (i26 != bArr.length) {
                throw new ClassFormatException(4);
            }
        } catch (ClassFormatException e10) {
            throw e10;
        } catch (Exception e11) {
            e11.printStackTrace();
            throw new ClassFormatException(2);
        }
    }

    private char[] getConstantClassNameAt(byte[] bArr, int[] iArr, int i10) {
        int i11 = iArr[u2At(bArr, iArr[i10] + 1, 0)];
        return utf8At(bArr, i11 + 3, 0, u2At(bArr, i11 + 1, 0));
    }

    private boolean isModule() {
        return (getAccessFlags() & 32768) != 0;
    }

    @Override
    public int getAccessFlags() {
        return this.accessFlags;
    }

    @Override
    public int getAttributeCount() {
        return this.attributesCount;
    }

    @Override
    public IClassFileAttribute[] getAttributes() {
        return this.attributes;
    }

    @Override
    public int getClassIndex() {
        return this.classNameIndex;
    }

    @Override
    public char[] getClassName() {
        return this.className;
    }

    @Override
    public IConstantPool getConstantPool() {
        return this.constantPool;
    }

    @Override
    public IFieldInfo[] getFieldInfos() {
        return this.fields;
    }

    @Override
    public int getFieldsCount() {
        return this.fieldsCount;
    }

    @Override
    public IInnerClassesAttribute getInnerClassesAttribute() {
        return this.innerClassesAttribute;
    }

    @Override
    public int[] getInterfaceIndexes() {
        return this.interfaceIndexes;
    }

    @Override
    public char[][] getInterfaceNames() {
        return this.interfaceNames;
    }

    @Override
    public int getMagic() {
        return this.magicNumber;
    }

    @Override
    public int getMajorVersion() {
        return this.majorVersion;
    }

    @Override
    public IMethodInfo[] getMethodInfos() {
        return this.methods;
    }

    @Override
    public int getMethodsCount() {
        return this.methodsCount;
    }

    @Override
    public int getMinorVersion() {
        return this.minorVersion;
    }

    @Override
    public INestMembersAttribute getNestMembersAttribute() {
        return this.nestMembersAttribute;
    }

    @Override
    public ISourceAttribute getSourceFileAttribute() {
        return this.sourceFileAttribute;
    }

    @Override
    public int getSuperclassIndex() {
        return this.superclassNameIndex;
    }

    @Override
    public char[] getSuperclassName() {
        return this.superclassName;
    }

    @Override
    public boolean isClass() {
        return (isInterface() || isModule()) ? false : true;
    }

    @Override
    public boolean isInterface() {
        return (getAccessFlags() & 512) != 0;
    }
}
