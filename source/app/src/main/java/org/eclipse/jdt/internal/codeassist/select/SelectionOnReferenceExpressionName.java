package org.eclipse.jdt.internal.codeassist.select;

import android.provider.CallLog;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PolyTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class SelectionOnReferenceExpressionName extends ReferenceExpression {
    public SelectionOnReferenceExpressionName(Scanner scanner) {
        super(scanner);
    }

    @Override
    public boolean isConstructorReference() {
        return CharOperation.equals(this.selector, CallLog.Calls.NEW.toCharArray());
    }

    @Override
    public boolean isMethodReference() {
        return !CharOperation.equals(this.selector, CallLog.Calls.NEW.toCharArray());
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<SelectionOnReferenceExpressionName:");
        super.printExpression(i10, stringBuffer);
        stringBuffer.append('>');
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        TypeBinding resolveType = super.resolveType(blockScope);
        if (resolveType == null || (resolveType instanceof ProblemReferenceBinding) || (resolveType instanceof PolyTypeBinding)) {
            return resolveType;
        }
        MethodBinding methodBinding = getMethodBinding();
        if (methodBinding == null || !methodBinding.isValidBinding() || methodBinding.isSynthetic()) {
            throw new SelectionNodeFound();
        }
        throw new SelectionNodeFound(this.actualMethodBinding);
    }
}
