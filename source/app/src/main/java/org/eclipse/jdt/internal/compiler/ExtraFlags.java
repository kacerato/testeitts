package org.eclipse.jdt.internal.compiler;

import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.env.IBinaryNestedType;

public final class ExtraFlags {
    public static final int HasNonPrivateStaticMemberTypes = 1;
    public static final int IsLocalType = 4;
    public static final int IsMemberType = 2;
    public static final int ParameterTypesStoredAsSignature = 16;

    public static int getExtraFlags(ClassFileReader classFileReader) {
        int i10 = classFileReader.isNestedType() ? 2 : 0;
        if (classFileReader.isLocal()) {
            i10 |= 4;
        }
        IBinaryNestedType[] memberTypes = classFileReader.getMemberTypes();
        int length = memberTypes == null ? 0 : memberTypes.length;
        if (length <= 0) {
            return i10;
        }
        for (int i11 = 0; i11 < length; i11++) {
            int modifiers = memberTypes[i11].getModifiers();
            if ((modifiers & 8) != 0 && (modifiers & 2) == 0) {
                return i10 | 1;
            }
        }
        return i10;
    }

    public static int getExtraFlags(IType iType) throws JavaModelException {
        int i10 = iType.isMember() ? 2 : 0;
        if (iType.isLocal()) {
            i10 |= 4;
        }
        IType[] types = iType.getTypes();
        int length = types == null ? 0 : types.length;
        if (length <= 0) {
            return i10;
        }
        for (int i11 = 0; i11 < length; i11++) {
            int flags = types[i11].getFlags();
            if ((flags & 8) != 0 && (flags & 2) == 0) {
                return i10 | 1;
            }
        }
        return i10;
    }

    public static int getExtraFlags(TypeDeclaration typeDeclaration) {
        int i10 = typeDeclaration.enclosingType != null ? 2 : 0;
        TypeDeclaration[] typeDeclarationArr = typeDeclaration.memberTypes;
        int length = typeDeclarationArr == null ? 0 : typeDeclarationArr.length;
        if (length <= 0) {
            return i10;
        }
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = typeDeclarationArr[i11].modifiers;
            if ((i12 & 8) != 0 && (i12 & 2) == 0) {
                return i10 | 1;
            }
        }
        return i10;
    }
}
