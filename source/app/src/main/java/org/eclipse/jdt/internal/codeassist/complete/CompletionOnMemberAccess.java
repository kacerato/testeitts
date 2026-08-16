package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnMemberAccess extends FieldReference {
    public boolean isInsideAnnotation;

    public CompletionOnMemberAccess(char[] cArr, long j10, boolean z10) {
        super(cArr, j10);
        this.isInsideAnnotation = z10;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<CompleteOnMemberAccess:");
        StringBuffer printExpression = super.printExpression(0, stringBuffer);
        printExpression.append('>');
        return printExpression;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        TypeBinding resolveType = this.receiver.resolveType(blockScope);
        this.actualReceiverType = resolveType;
        if (resolveType == null || !resolveType.isValidBinding()) {
            Expression expression = this.receiver;
            if (expression instanceof MessageSend) {
                MessageSend messageSend = (MessageSend) expression;
                if (messageSend.receiver instanceof ThisReference) {
                    Expression[] expressionArr = messageSend.arguments;
                    int length = expressionArr == null ? 0 : expressionArr.length;
                    TypeBinding[] typeBindingArr = new TypeBinding[length];
                    for (int i10 = 0; i10 < length; i10++) {
                        TypeBinding typeBinding = expressionArr[i10].resolvedType;
                        typeBindingArr[i10] = typeBinding;
                        if (typeBinding == null || !typeBinding.isValidBinding()) {
                            throw new CompletionNodeFound();
                        }
                    }
                    throw new CompletionNodeFound(this, new ProblemMethodBinding(messageSend.selector, typeBindingArr, 1), blockScope);
                }
            }
        }
        TypeBinding typeBinding2 = this.actualReceiverType;
        if (typeBinding2 == null || !typeBinding2.isValidBinding()) {
            throw new CompletionNodeFound();
        }
        throw new CompletionNodeFound(this, this.actualReceiverType, blockScope);
    }
}
