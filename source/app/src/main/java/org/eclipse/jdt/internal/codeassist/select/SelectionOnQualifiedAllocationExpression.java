package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnQualifiedAllocationExpression extends QualifiedAllocationExpression {
    public SelectionOnQualifiedAllocationExpression() {
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        if (this.enclosingInstance == null) {
            stringBuffer.append("<SelectOnAllocationExpression:");
        } else {
            stringBuffer.append("<SelectOnQualifiedAllocationExpression:");
        }
        StringBuffer printExpression = super.printExpression(i10, stringBuffer);
        printExpression.append('>');
        return printExpression;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        super.resolveType(blockScope);
        MethodBinding methodBinding = this.binding;
        if (methodBinding == null) {
            throw new SelectionNodeFound();
        }
        if (!methodBinding.isValidBinding()) {
            int problemId = this.binding.problemId();
            if (problemId == 1) {
                TypeBinding typeBinding = this.resolvedType;
                if (typeBinding == null || !typeBinding.isValidBinding()) {
                    throw new SelectionNodeFound();
                }
                throw new SelectionNodeFound(this.resolvedType);
            }
            if (problemId != 2) {
                throw new SelectionNodeFound();
            }
        }
        TypeDeclaration typeDeclaration = this.anonymousType;
        if (typeDeclaration == null) {
            throw new SelectionNodeFound(this.binding);
        }
        SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
        if (sourceTypeBinding == null) {
            if (this.resolvedType.isInterface()) {
                throw new SelectionNodeFound(this.resolvedType);
            }
            throw new SelectionNodeFound(this.binding);
        }
        LocalTypeBinding localTypeBinding = (LocalTypeBinding) sourceTypeBinding;
        if (localTypeBinding.superInterfaces != Binding.NO_SUPERINTERFACES) {
            throw new SelectionNodeFound(localTypeBinding.superInterfaces[0]);
        }
        ConstructorDeclaration constructorDeclaration = (ConstructorDeclaration) typeDeclaration.declarationOf(this.binding.original());
        if (constructorDeclaration != null) {
            throw new SelectionNodeFound(constructorDeclaration.constructorCall.binding);
        }
        throw new SelectionNodeFound(this.binding);
    }

    public SelectionOnQualifiedAllocationExpression(TypeDeclaration typeDeclaration) {
        super(typeDeclaration);
    }
}
