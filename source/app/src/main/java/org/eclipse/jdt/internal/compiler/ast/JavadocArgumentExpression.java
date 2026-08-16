package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class JavadocArgumentExpression extends Expression {
    public Argument argument;
    public char[] token;

    public JavadocArgumentExpression(char[] cArr, int i10, int i11, TypeReference typeReference) {
        this.token = cArr;
        this.sourceStart = i10;
        this.sourceEnd = i11;
        this.argument = new Argument(cArr, (i10 << 32) + i11, typeReference, 0);
        this.bits |= 32768;
    }

    private TypeBinding internalResolveType(Scope scope) {
        TypeReference typeReference;
        this.constant = Constant.NotAConstant;
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding != null) {
            if (typeBinding.isValidBinding()) {
                return this.resolvedType;
            }
            return null;
        }
        Argument argument = this.argument;
        if (argument == null || (typeReference = argument.type) == null) {
            return null;
        }
        TypeBinding typeBinding2 = typeReference.getTypeBinding(scope);
        this.resolvedType = typeBinding2;
        typeReference.resolvedType = typeBinding2;
        TypeBinding typeBinding3 = this.resolvedType;
        if (typeBinding3 == null) {
            return null;
        }
        if ((typeReference instanceof SingleTypeReference) && typeBinding3.leafComponentType().enclosingType() != null && scope.compilerOptions().complianceLevel <= ClassFileConstants.JDK1_4) {
            scope.problemReporter().javadocInvalidMemberTypeQualification(this.sourceStart, this.sourceEnd, scope.getDeclarationModifiers());
        } else if ((typeReference instanceof QualifiedTypeReference) && (r2 = this.resolvedType.leafComponentType().enclosingType()) != null) {
            int i10 = 2;
            while (true) {
                ReferenceBinding enclosingType = enclosingType.enclosingType();
                if (enclosingType == null) {
                    break;
                }
                i10++;
            }
            int length = typeReference.getTypeName().length;
            if (length != i10 && length != i10 + this.resolvedType.getPackage().compoundName.length) {
                scope.problemReporter().javadocInvalidMemberTypeQualification(typeReference.sourceStart, typeReference.sourceEnd, scope.getDeclarationModifiers());
            }
        }
        if (!this.resolvedType.isValidBinding()) {
            scope.problemReporter().javadocInvalidType(typeReference, this.resolvedType, scope.getDeclarationModifiers());
            return null;
        }
        if (isTypeUseDeprecated(this.resolvedType, scope)) {
            scope.problemReporter().javadocDeprecatedType(this.resolvedType, typeReference, scope.getDeclarationModifiers());
        }
        TypeBinding convertToRawType = scope.environment().convertToRawType(this.resolvedType, true);
        this.resolvedType = convertToRawType;
        return convertToRawType;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        Argument argument = this.argument;
        if (argument == null) {
            char[] cArr = this.token;
            if (cArr != null) {
                stringBuffer.append(cArr);
            }
        } else {
            argument.print(i10, stringBuffer);
        }
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        Argument argument = this.argument;
        if (argument != null) {
            argument.resolve(blockScope);
        }
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        return internalResolveType(blockScope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        Argument argument;
        if (aSTVisitor.visit(this, blockScope) && (argument = this.argument) != null) {
            argument.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public TypeBinding resolveType(ClassScope classScope) {
        return internalResolveType(classScope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        Argument argument;
        if (aSTVisitor.visit(this, classScope) && (argument = this.argument) != null) {
            argument.traverse(aSTVisitor, classScope);
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
