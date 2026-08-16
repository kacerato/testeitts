package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;

public class JavadocSingleNameReference extends SingleNameReference {
    public int tagSourceEnd;
    public int tagSourceStart;

    public JavadocSingleNameReference(char[] cArr, long j10, int i10, int i11) {
        super(cArr, j10);
        this.tagSourceStart = i10;
        this.tagSourceEnd = i11;
        this.bits |= 32768;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        resolve(blockScope, true, blockScope.compilerOptions().reportUnusedParameterIncludeDocCommentReference);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }

    public void resolve(BlockScope blockScope, boolean z10, boolean z11) {
        LocalVariableBinding findVariable = blockScope.findVariable(this.token);
        if (findVariable != null && findVariable.isValidBinding() && (findVariable.tagBits & 1024) != 0) {
            this.binding = findVariable;
            if (z11) {
                findVariable.useFlag = 1;
                return;
            }
            return;
        }
        if (z10) {
            try {
                blockScope.problemReporter().javadocUndeclaredParamTagName(this.token, this.sourceStart, this.sourceEnd, ((MethodScope) blockScope).referenceMethod().modifiers);
            } catch (Exception unused) {
                blockScope.problemReporter().javadocUndeclaredParamTagName(this.token, this.sourceStart, this.sourceEnd, -1);
            }
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        aSTVisitor.visit(this, classScope);
        aSTVisitor.endVisit(this, classScope);
    }
}
