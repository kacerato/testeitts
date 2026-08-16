package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ForeachStatement;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import w2.C15883c;

public class SelectionOnLocalName extends LocalDeclaration {
    public SelectionOnLocalName(char[] cArr, int i10, int i11) {
        super(cArr, i10, i11);
    }

    @Override
    public StringBuffer printAsExpression(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        stringBuffer.append("<SelectionOnLocalName:");
        ASTNode.printModifiers(this.modifiers, stringBuffer);
        StringBuffer print = this.type.print(0, stringBuffer);
        print.append(C15883c.f126249O);
        print.append(this.name);
        if (this.initialization != null) {
            stringBuffer.append(" = ");
            this.initialization.printExpression(0, stringBuffer);
        }
        stringBuffer.append('>');
        return stringBuffer;
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        printAsExpression(i10, stringBuffer);
        stringBuffer.append(';');
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        TypeBinding collectionElementType;
        super.resolve(blockScope);
        if (isTypeNameVar(blockScope) && (this.bits & 16) != 0) {
            Statement statement = blockScope.blockStatement;
            if (statement instanceof ForeachStatement) {
                Expression expression = ((ForeachStatement) statement).collection;
                TypeBinding resolveType = expression == null ? null : expression.resolveType((BlockScope) blockScope.parent);
                if (!TypeBinding.equalsEquals(TypeBinding.NULL, resolveType) && !TypeBinding.equalsEquals(TypeBinding.VOID, resolveType) && (collectionElementType = ForeachStatement.getCollectionElementType(blockScope, resolveType)) != null) {
                    patchType(collectionElementType);
                }
            }
        }
        throw new SelectionNodeFound(this.binding);
    }
}
