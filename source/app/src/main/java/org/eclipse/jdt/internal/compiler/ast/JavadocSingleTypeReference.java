package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class JavadocSingleTypeReference extends SingleTypeReference {
    public PackageBinding packageBinding;
    public int tagSourceEnd;
    public int tagSourceStart;

    public JavadocSingleTypeReference(char[] cArr, long j10, int i10, int i11) {
        super(cArr, j10);
        this.tagSourceStart = i10;
        this.tagSourceEnd = i11;
        this.bits |= 32768;
    }

    @Override
    public TypeBinding internalResolveType(Scope scope, int i10) {
        TypeBinding closestMatch;
        LocalTypeBinding localTypeBinding;
        ClassScope classScope;
        this.constant = Constant.NotAConstant;
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding != null) {
            if (typeBinding.isValidBinding()) {
                return this.resolvedType;
            }
            int problemId = this.resolvedType.problemId();
            if (problemId == 1 || problemId == 2 || problemId == 5) {
                return this.resolvedType.closestMatch();
            }
            return null;
        }
        TypeBinding typeBinding2 = getTypeBinding(scope);
        this.resolvedType = typeBinding2;
        if ((typeBinding2 instanceof LocalTypeBinding) && (classScope = (localTypeBinding = (LocalTypeBinding) typeBinding2).scope) != null && classScope.parent == scope) {
            this.resolvedType = new ProblemReferenceBinding(new char[][]{localTypeBinding.sourceName}, (ReferenceBinding) this.resolvedType, 1);
        }
        TypeBinding typeBinding3 = this.resolvedType;
        if (typeBinding3 == null) {
            return null;
        }
        if (typeBinding3.isValidBinding()) {
            if (isTypeUseDeprecated(this.resolvedType, scope)) {
                reportDeprecatedType(this.resolvedType, scope);
            }
            if (this.resolvedType.isGenericType() || this.resolvedType.isParameterizedType()) {
                this.resolvedType = scope.environment().convertToRawType(this.resolvedType, true);
            }
            return this.resolvedType;
        }
        Binding typeOrPackage = scope.getTypeOrPackage(new char[][]{this.token});
        if (typeOrPackage instanceof PackageBinding) {
            this.packageBinding = (PackageBinding) typeOrPackage;
        } else {
            if (this.resolvedType.problemId() == 7 && (closestMatch = this.resolvedType.closestMatch()) != null && closestMatch.isTypeVariable()) {
                this.resolvedType = closestMatch;
                return closestMatch;
            }
            reportInvalidType(scope);
        }
        return null;
    }

    @Override
    public void reportDeprecatedType(TypeBinding typeBinding, Scope scope) {
        scope.problemReporter().javadocDeprecatedType(typeBinding, this, scope.getDeclarationModifiers());
    }

    @Override
    public void reportInvalidType(Scope scope) {
        scope.problemReporter().javadocInvalidType(this, this.resolvedType, scope.getDeclarationModifiers());
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        aSTVisitor.visit(this, classScope);
        aSTVisitor.endVisit(this, classScope);
    }
}
