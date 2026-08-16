package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnParameterizedSingleTypeReference extends ParameterizedSingleTypeReference {
    public SelectionOnParameterizedSingleTypeReference(char[] cArr, TypeReference[] typeReferenceArr, long j10) {
        super(cArr, typeReferenceArr, 0, j10);
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<SelectOnType:");
        stringBuffer.append(this.token);
        stringBuffer.append('<');
        int length = this.typeArguments.length - 1;
        for (int i11 = 0; i11 < length; i11++) {
            this.typeArguments[i11].print(0, stringBuffer);
            stringBuffer.append(", ");
        }
        this.typeArguments[length].print(0, stringBuffer);
        stringBuffer.append('>');
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
