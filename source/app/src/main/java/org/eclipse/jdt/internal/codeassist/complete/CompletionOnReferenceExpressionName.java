package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class CompletionOnReferenceExpressionName extends ReferenceExpression {
    public CompletionOnReferenceExpressionName(Scanner scanner) {
        super(scanner);
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<CompletionOnReferenceExpressionName:");
        this.lhs.print(0, stringBuffer);
        stringBuffer.append("::");
        if (this.typeArguments != null) {
            stringBuffer.append('<');
            int length = this.typeArguments.length - 1;
            for (int i11 = 0; i11 < length; i11++) {
                this.typeArguments[i11].print(0, stringBuffer);
                stringBuffer.append(", ");
            }
            this.typeArguments[length].print(0, stringBuffer);
            stringBuffer.append('>');
        }
        stringBuffer.append(this.selector);
        stringBuffer.append('>');
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        CompilerOptions compilerOptions = blockScope.compilerOptions();
        this.constant = Constant.NotAConstant;
        TypeBinding resolveType = this.lhs.resolveType(blockScope);
        TypeReference[] typeReferenceArr = this.typeArguments;
        if (typeReferenceArr != null) {
            int length = typeReferenceArr.length;
            boolean z10 = compilerOptions.sourceLevel < ClassFileConstants.JDK1_5;
            this.resolvedTypeArguments = new TypeBinding[length];
            for (int i10 = 0; i10 < length; i10++) {
                TypeReference typeReference = this.typeArguments[i10];
                TypeBinding[] typeBindingArr = this.resolvedTypeArguments;
                TypeBinding resolveType2 = typeReference.resolveType(blockScope, true);
                typeBindingArr[i10] = resolveType2;
                if (resolveType2 == null) {
                    z10 = true;
                }
                if (z10 && (typeReference instanceof Wildcard)) {
                    blockScope.problemReporter().illegalUsageOfWildcard(typeReference);
                }
            }
            if (z10 || resolveType == null) {
                throw new CompletionNodeFound();
            }
        }
        if (resolveType == null || !resolveType.isValidBinding()) {
            throw new CompletionNodeFound();
        }
        throw new CompletionNodeFound(this, resolveType, blockScope);
    }
}
