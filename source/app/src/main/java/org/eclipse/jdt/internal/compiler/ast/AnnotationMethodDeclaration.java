package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import w2.C15883c;

public class AnnotationMethodDeclaration extends MethodDeclaration {
    public Expression defaultValue;
    public int extendedDimensions;

    public AnnotationMethodDeclaration(CompilationResult compilationResult) {
        super(compilationResult);
    }

    @Override
    public void generateCode(ClassFile classFile) {
        classFile.generateMethodInfoHeader(this.binding);
        classFile.completeMethodInfo(this.binding, classFile.contentsOffset, classFile.generateMethodInfoAttributes(this.binding, this));
    }

    @Override
    public boolean isAnnotationMethod() {
        return true;
    }

    @Override
    public boolean isMethod() {
        return false;
    }

    @Override
    public void parseStatements(Parser parser, CompilationUnitDeclaration compilationUnitDeclaration) {
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        ASTNode.printModifiers(this.modifiers, stringBuffer);
        Annotation[] annotationArr = this.annotations;
        if (annotationArr != null) {
            ASTNode.printAnnotations(annotationArr, stringBuffer);
            stringBuffer.append(C15883c.f126249O);
        }
        TypeParameter[] typeParameters = typeParameters();
        if (typeParameters != null) {
            stringBuffer.append('<');
            int length = typeParameters.length - 1;
            for (int i11 = 0; i11 < length; i11++) {
                typeParameters[i11].print(0, stringBuffer);
                stringBuffer.append(", ");
            }
            typeParameters[length].print(0, stringBuffer);
            stringBuffer.append('>');
        }
        StringBuffer printReturnType = printReturnType(0, stringBuffer);
        printReturnType.append(this.selector);
        printReturnType.append('(');
        if (this.arguments != null) {
            for (int i12 = 0; i12 < this.arguments.length; i12++) {
                if (i12 > 0) {
                    stringBuffer.append(", ");
                }
                this.arguments[i12].print(0, stringBuffer);
            }
        }
        stringBuffer.append(')');
        if (this.thrownExceptions != null) {
            stringBuffer.append(" throws ");
            for (int i13 = 0; i13 < this.thrownExceptions.length; i13++) {
                if (i13 > 0) {
                    stringBuffer.append(", ");
                }
                this.thrownExceptions[i13].print(0, stringBuffer);
            }
        }
        if (this.defaultValue != null) {
            stringBuffer.append(" default ");
            this.defaultValue.print(0, stringBuffer);
        }
        printBody(i10 + 1, stringBuffer);
        return stringBuffer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0065, code lost:
    
        if (r1.isAnnotationType() == false) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009b  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void resolveStatements() {
        TypeBinding typeBinding;
        Expression expression;
        super.resolveStatements();
        if (this.arguments != null || this.receiver != null) {
            this.scope.problemReporter().annotationMembersCannotHaveParameters(this);
        }
        if (this.typeParameters != null) {
            this.scope.problemReporter().annotationMembersCannotHaveTypeParameters(this);
        }
        if (this.extendedDimensions != 0) {
            this.scope.problemReporter().illegalExtendedDimensions(this);
        }
        MethodBinding methodBinding = this.binding;
        if (methodBinding == null || (typeBinding = methodBinding.returnType) == null) {
            return;
        }
        TypeBinding leafComponentType = typeBinding.leafComponentType();
        if (typeBinding.dimensions() <= 1) {
            int i10 = leafComponentType.erasure().f102482id;
            if (i10 != 2 && i10 != 3 && i10 != 4 && i10 != 5 && i10 != 16) {
                switch (i10) {
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                        break;
                    default:
                        if (!leafComponentType.isEnum()) {
                            break;
                        }
                        break;
                }
            }
            expression = this.defaultValue;
            if (expression != null) {
                this.binding.setDefaultValue(null);
                return;
            }
            MemberValuePair memberValuePair = new MemberValuePair(this.selector, this.sourceStart, this.sourceEnd, expression);
            memberValuePair.binding = this.binding;
            if (memberValuePair.value.resolvedType == null) {
                memberValuePair.resolveTypeExpecting(this.scope, typeBinding);
            }
            this.binding.setDefaultValue(ElementValuePair.getValue(this.defaultValue));
            return;
        }
        this.scope.problemReporter().invalidAnnotationMemberType(this);
        expression = this.defaultValue;
        if (expression != null) {
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        if (aSTVisitor.visit(this, classScope)) {
            Annotation[] annotationArr = this.annotations;
            if (annotationArr != null) {
                int length = annotationArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.annotations[i10].traverse(aSTVisitor, this.scope);
                }
            }
            TypeReference typeReference = this.returnType;
            if (typeReference != null) {
                typeReference.traverse(aSTVisitor, this.scope);
            }
            Expression expression = this.defaultValue;
            if (expression != null) {
                expression.traverse(aSTVisitor, this.scope);
            }
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
