package org.eclipse.jdt.internal.core.hierarchy;

import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryNestedType;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;
import org.eclipse.jdt.internal.compiler.env.ITypeAnnotationWalker;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;

public class HierarchyBinaryType implements IBinaryType {
    private char[] enclosingTypeName;
    private char[] genericSignature;
    private int modifiers;
    private char[] name;
    private char[] sourceName;
    private char[][] superInterfaces = IBinaryType.NoInterface;
    private char[] superclass;
    private char[][] typeParameterSignatures;

    public HierarchyBinaryType(int i10, char[] cArr, char[] cArr2, char[] cArr3, char[][] cArr4, char c10) {
        this.modifiers = i10;
        this.sourceName = cArr2;
        if (cArr3 == null) {
            this.name = CharOperation.concat(cArr, cArr2, '/');
        } else {
            this.name = CharOperation.concat(cArr, '/', cArr3, '$', cArr2);
            char[] concat = CharOperation.concat(cArr, cArr3, '/');
            this.enclosingTypeName = concat;
            CharOperation.replace(concat, '.', '/');
        }
        this.typeParameterSignatures = cArr4;
        CharOperation.replace(this.name, '.', '/');
    }

    @Override
    public ITypeAnnotationWalker enrichWithExternalAnnotationsFor(ITypeAnnotationWalker iTypeAnnotationWalker, Object obj, LookupEnvironment lookupEnvironment) {
        return iTypeAnnotationWalker;
    }

    @Override
    public IBinaryAnnotation[] getAnnotations() {
        return null;
    }

    @Override
    public char[] getEnclosingMethod() {
        return null;
    }

    @Override
    public char[] getEnclosingTypeName() {
        return this.enclosingTypeName;
    }

    @Override
    public BinaryTypeBinding.ExternalAnnotationStatus getExternalAnnotationStatus() {
        return BinaryTypeBinding.ExternalAnnotationStatus.NOT_EEA_CONFIGURED;
    }

    @Override
    public IBinaryField[] getFields() {
        return null;
    }

    @Override
    public char[] getFileName() {
        return null;
    }

    @Override
    public char[] getGenericSignature() {
        if (this.typeParameterSignatures != null && this.genericSignature == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append('<');
            int length = this.typeParameterSignatures.length;
            for (int i10 = 0; i10 < length; i10++) {
                stringBuffer.append(this.typeParameterSignatures[i10]);
            }
            stringBuffer.append('>');
            char[] cArr = this.superclass;
            if (cArr == null) {
                stringBuffer.append(Signature.createTypeSignature("java.lang.Object", true));
            } else {
                stringBuffer.append(Signature.createTypeSignature(cArr, true));
            }
            char[][] cArr2 = this.superInterfaces;
            if (cArr2 != null) {
                int length2 = cArr2.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    stringBuffer.append(Signature.createTypeSignature(this.superInterfaces[i11], true));
                }
            }
            char[] charArray = stringBuffer.toString().toCharArray();
            this.genericSignature = charArray;
            CharOperation.replace(charArray, '.', '/');
        }
        return this.genericSignature;
    }

    @Override
    public char[][] getInterfaceNames() {
        return this.superInterfaces;
    }

    @Override
    public IBinaryNestedType[] getMemberTypes() {
        return null;
    }

    @Override
    public IBinaryMethod[] getMethods() {
        return null;
    }

    @Override
    public char[][][] getMissingTypeNames() {
        return null;
    }

    @Override
    public int getModifiers() {
        return this.modifiers;
    }

    @Override
    public char[] getModule() {
        return null;
    }

    @Override
    public char[] getName() {
        return this.name;
    }

    @Override
    public char[] getSourceName() {
        return this.sourceName;
    }

    @Override
    public char[] getSuperclassName() {
        return this.superclass;
    }

    @Override
    public long getTagBits() {
        return 0L;
    }

    @Override
    public IBinaryTypeAnnotation[] getTypeAnnotations() {
        return null;
    }

    @Override
    public boolean isAnonymous() {
        return false;
    }

    @Override
    public boolean isBinaryType() {
        return true;
    }

    @Override
    public boolean isLocal() {
        return false;
    }

    @Override
    public boolean isMember() {
        return false;
    }

    public void recordInterface(char[] cArr) {
        char[][] cArr2 = this.superInterfaces;
        if (cArr2 == IBinaryType.NoInterface) {
            this.superInterfaces = new char[][]{cArr};
            return;
        }
        int length = cArr2.length;
        char[][] cArr3 = new char[length + 1];
        this.superInterfaces = cArr3;
        System.arraycopy(cArr2, 0, cArr3, 0, length);
        this.superInterfaces[length] = cArr;
    }

    public void recordSuperType(char[] cArr, char[] cArr2, char c10) {
        if (cArr2 != null) {
            if (cArr2[cArr2.length - 1] == '$') {
                cArr = CharOperation.concat(CharOperation.lastSegment(cArr2, '.'), cArr);
                cArr2 = CharOperation.subarray(cArr2, 0, (r1 - r2.length) - 1);
            }
        }
        if (c10 != 'C') {
            char[] concat = CharOperation.concat(cArr2, cArr, '/');
            CharOperation.replace(concat, '.', '/');
            recordInterface(concat);
        } else {
            if (TypeDeclaration.kind(this.modifiers) == 2) {
                return;
            }
            char[] concat2 = CharOperation.concat(cArr2, cArr, '/');
            CharOperation.replace(concat2, '.', '/');
            recordSuperclass(concat2);
        }
    }

    public void recordSuperclass(char[] cArr) {
        this.superclass = cArr;
    }

    @Override
    public char[] sourceFileName() {
        return null;
    }

    public String toString() {
        int length;
        StringBuffer stringBuffer = new StringBuffer();
        if (this.modifiers == 1) {
            stringBuffer.append("public ");
        }
        int kind = TypeDeclaration.kind(this.modifiers);
        if (kind == 1) {
            stringBuffer.append(ExternalAnnotationProvider.CLASS_PREFIX);
        } else if (kind == 2) {
            stringBuffer.append("interface ");
        } else if (kind == 3) {
            stringBuffer.append("enum ");
        }
        char[] cArr = this.name;
        if (cArr != null) {
            stringBuffer.append(cArr);
        }
        if (this.superclass != null) {
            stringBuffer.append("\n  extends ");
            stringBuffer.append(this.superclass);
        }
        char[][] cArr2 = this.superInterfaces;
        if (cArr2 != null && (length = cArr2.length) != 0) {
            stringBuffer.append("\n implements ");
            for (int i10 = 0; i10 < length; i10++) {
                stringBuffer.append(this.superInterfaces[i10]);
                if (i10 != length - 1) {
                    stringBuffer.append(", ");
                }
            }
        }
        return stringBuffer.toString();
    }

    public HierarchyBinaryType(int i10, char[] cArr, char[] cArr2, char[] cArr3, char[][] cArr4) {
        this.modifiers = i10;
        this.sourceName = cArr2;
        this.name = cArr;
        this.enclosingTypeName = cArr3;
        this.typeParameterSignatures = cArr4;
        if (cArr4 != null) {
            for (char[] cArr5 : cArr4) {
                if (cArr5 == null) {
                    throw new IllegalArgumentException("Parameter's type signature must not be null");
                }
            }
        }
    }
}
