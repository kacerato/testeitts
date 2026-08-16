package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class QualifiedSuperReference extends QualifiedThisReference {
    public QualifiedSuperReference(TypeReference typeReference, int i10, int i11) {
        super(typeReference, i10, i11);
    }

    @Override
    public int findCompatibleEnclosing(ReferenceBinding referenceBinding, TypeBinding typeBinding, BlockScope blockScope) {
        if (!typeBinding.isInterface()) {
            return super.findCompatibleEnclosing(referenceBinding, typeBinding, blockScope);
        }
        CompilerOptions compilerOptions = blockScope.compilerOptions();
        ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
        int length = superInterfaces.length;
        long j10 = compilerOptions.complianceLevel;
        boolean z10 = true;
        boolean z11 = j10 >= ClassFileConstants.JDK1_8;
        ReferenceBinding referenceBinding2 = null;
        char[][] cArr = null;
        for (int i10 = 0; i10 < length; i10++) {
            if (TypeBinding.equalsEquals(superInterfaces[i10].erasure(), typeBinding)) {
                referenceBinding2 = superInterfaces[i10];
                this.currentCompatibleType = referenceBinding2;
            } else if (superInterfaces[i10].erasure().isCompatibleWith(typeBinding)) {
                ReferenceBinding referenceBinding3 = superInterfaces[i10];
                cArr = referenceBinding3.compoundName;
                if (referenceBinding2 == null) {
                    referenceBinding2 = referenceBinding3;
                }
                z10 = false;
            }
        }
        if (!z10 || !z11) {
            this.currentCompatibleType = null;
            this.resolvedType = new ProblemReferenceBinding(cArr, referenceBinding2, z11 ? 21 : 29);
        }
        return 0;
    }

    @Override
    public boolean isQualifiedSuper() {
        return true;
    }

    @Override
    public boolean isSuper() {
        return true;
    }

    @Override
    public boolean isThis() {
        return false;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        StringBuffer print = this.qualification.print(0, stringBuffer);
        print.append(".super");
        return print;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        if ((this.bits & ASTNode.ParenthesizedMASK) != 0) {
            blockScope.problemReporter().invalidParenthesizedExpression(this);
            return null;
        }
        super.resolveType(blockScope);
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding != null && !typeBinding.isValidBinding()) {
            blockScope.problemReporter().illegalSuperAccess(this.qualification.resolvedType, this.resolvedType, this);
            return null;
        }
        ReferenceBinding referenceBinding = this.currentCompatibleType;
        if (referenceBinding == null) {
            return null;
        }
        if (referenceBinding.f102482id == 1) {
            blockScope.problemReporter().cannotUseSuperInJavaLangObject(this);
            return null;
        }
        ReferenceBinding superclass = referenceBinding.isInterface() ? this.currentCompatibleType : this.currentCompatibleType.superclass();
        this.resolvedType = superclass;
        return superclass;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.qualification.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        if (aSTVisitor.visit(this, classScope)) {
            this.qualification.traverse(aSTVisitor, classScope);
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
