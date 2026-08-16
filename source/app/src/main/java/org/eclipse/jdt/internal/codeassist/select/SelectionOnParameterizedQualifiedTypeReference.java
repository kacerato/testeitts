package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnParameterizedQualifiedTypeReference extends ParameterizedQualifiedTypeReference {
    public SelectionOnParameterizedQualifiedTypeReference(char[][] cArr, char[] cArr2, TypeReference[][] typeReferenceArr, TypeReference[] typeReferenceArr2, long[] jArr) {
        super(CharOperation.arrayConcat(cArr, cArr2), typeReferenceArr, 0, jArr);
        TypeReference[][] typeReferenceArr3 = this.typeArguments;
        int length = typeReferenceArr3.length;
        TypeReference[][] typeReferenceArr4 = new TypeReference[length + 1];
        this.typeArguments = typeReferenceArr4;
        System.arraycopy(typeReferenceArr3, 0, typeReferenceArr4, 0, length);
        this.typeArguments[length] = typeReferenceArr2;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<SelectOnType:");
        int length = this.tokens.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (i11 != 0) {
                stringBuffer.append('.');
            }
            stringBuffer.append(this.tokens[i11]);
            TypeReference[] typeReferenceArr = this.typeArguments[i11];
            if (typeReferenceArr != null) {
                stringBuffer.append('<');
                int length2 = typeReferenceArr.length - 1;
                for (int i12 = 0; i12 < length2; i12++) {
                    typeReferenceArr[i12].print(0, stringBuffer);
                    stringBuffer.append(", ");
                }
                typeReferenceArr[length2].print(0, stringBuffer);
                stringBuffer.append('>');
            }
        }
        stringBuffer.append('>');
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope, boolean z10, int i10) {
        super.resolveType(blockScope, z10, i10);
        throw new SelectionNodeFound(this.resolvedType);
    }

    @Override
    public TypeBinding resolveType(ClassScope classScope, int i10) {
        super.resolveType(classScope, i10);
        throw new SelectionNodeFound(this.resolvedType);
    }
}
