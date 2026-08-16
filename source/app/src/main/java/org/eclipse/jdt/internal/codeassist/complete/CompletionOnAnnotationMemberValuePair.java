package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.NormalAnnotation;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class CompletionOnAnnotationMemberValuePair extends NormalAnnotation {
    public MemberValuePair completedMemberValuePair;

    public CompletionOnAnnotationMemberValuePair(TypeReference typeReference, int i10, MemberValuePair[] memberValuePairArr, MemberValuePair memberValuePair) {
        super(typeReference, i10);
        this.memberValuePairs = memberValuePairArr;
        this.completedMemberValuePair = memberValuePair;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append('@');
        this.type.printExpression(0, stringBuffer);
        stringBuffer.append('(');
        MemberValuePair[] memberValuePairArr = this.memberValuePairs;
        if (memberValuePairArr != null) {
            int length = memberValuePairArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                if (i11 > 0) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                this.memberValuePairs[i11].print(i10, stringBuffer);
            }
            stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
        }
        this.completedMemberValuePair.print(i10, stringBuffer);
        stringBuffer.append(')');
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        super.resolveType(blockScope);
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding == null || !typeBinding.isValidBinding()) {
            throw new CompletionNodeFound();
        }
        throw new CompletionNodeFound(this.completedMemberValuePair, blockScope);
    }
}
