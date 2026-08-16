package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import w2.C15883c;

public class JavadocReturnStatement extends ReturnStatement {
    public JavadocReturnStatement(int i10, int i11) {
        super(null, i10, i11);
        this.bits |= 294912;
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("return");
        if ((this.bits & 262144) == 0) {
            stringBuffer.append(C15883c.f126249O);
            stringBuffer.append(" <not empty>");
        }
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        Binding binding;
        ReferenceContext referenceContext = blockScope.methodScope().referenceContext;
        if (referenceContext instanceof AbstractMethodDeclaration) {
            MethodBinding methodBinding = ((AbstractMethodDeclaration) referenceContext).binding;
            binding = methodBinding == null ? null : methodBinding.returnType;
        } else {
            binding = TypeBinding.VOID;
        }
        if (binding == null || binding == TypeBinding.VOID) {
            blockScope.problemReporter().javadocUnexpectedTag(this.sourceStart, this.sourceEnd);
        } else if ((this.bits & 262144) != 0) {
            blockScope.problemReporter().javadocEmptyReturnTag(this.sourceStart, this.sourceEnd, blockScope.getDeclarationModifiers());
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }

    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        aSTVisitor.visit(this, classScope);
        aSTVisitor.endVisit(this, classScope);
    }
}
