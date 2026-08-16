package org.eclipse.jdt.internal.compiler.parser;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;

public class RecoveredLocalVariable extends RecoveredStatement {
    public boolean alreadyCompletedLocalInitialization;
    public int annotationCount;
    public RecoveredAnnotation[] annotations;
    public LocalDeclaration localDeclaration;
    public int modifiers;
    public int modifiersStart;

    public RecoveredLocalVariable(LocalDeclaration localDeclaration, RecoveredElement recoveredElement, int i10) {
        super(localDeclaration, recoveredElement, i10);
        this.localDeclaration = localDeclaration;
        this.alreadyCompletedLocalInitialization = localDeclaration.initialization != null;
    }

    @Override
    public RecoveredElement add(Statement statement, int i10) {
        if (!this.alreadyCompletedLocalInitialization && (statement instanceof Expression)) {
            Expression expression = (Expression) statement;
            if (expression.isTrulyExpression()) {
                this.alreadyCompletedLocalInitialization = true;
                LocalDeclaration localDeclaration = this.localDeclaration;
                localDeclaration.initialization = expression;
                int i11 = statement.sourceEnd;
                localDeclaration.declarationSourceEnd = i11;
                localDeclaration.declarationEnd = i11;
                return this;
            }
        }
        return super.add(statement, i10);
    }

    public void attach(RecoveredAnnotation[] recoveredAnnotationArr, int i10, int i11, int i12) {
        if (i10 > 0) {
            Annotation[] annotationArr = this.localDeclaration.annotations;
            if (annotationArr != null) {
                this.annotations = new RecoveredAnnotation[i10];
                this.annotationCount = 0;
                for (int i13 = 0; i13 < i10; i13++) {
                    int i14 = 0;
                    while (true) {
                        if (i14 >= annotationArr.length) {
                            RecoveredAnnotation[] recoveredAnnotationArr2 = this.annotations;
                            int i15 = this.annotationCount;
                            this.annotationCount = i15 + 1;
                            recoveredAnnotationArr2[i15] = recoveredAnnotationArr[i13];
                            break;
                        }
                        if (recoveredAnnotationArr[i13].annotation == annotationArr[i14]) {
                            break;
                        } else {
                            i14++;
                        }
                    }
                }
            } else {
                this.annotations = recoveredAnnotationArr;
                this.annotationCount = i10;
            }
        }
        if (i11 != 0) {
            this.modifiers = i11;
            this.modifiersStart = i12;
        }
    }

    @Override
    public ASTNode parseTree() {
        return this.localDeclaration;
    }

    @Override
    public int sourceEnd() {
        return this.localDeclaration.declarationSourceEnd;
    }

    @Override
    public String toString(int i10) {
        return String.valueOf(tabString(i10)) + "Recovered local variable:\n" + ((Object) this.localDeclaration.print(i10 + 1, new StringBuffer(10)));
    }

    @Override
    public RecoveredElement updateOnClosingBrace(int i10, int i11) {
        int i12 = this.bracketBalance;
        if (i12 <= 0) {
            RecoveredElement recoveredElement = this.parent;
            return recoveredElement != null ? recoveredElement.updateOnClosingBrace(i10, i11) : this;
        }
        int i13 = i12 - 1;
        this.bracketBalance = i13;
        if (i13 == 0) {
            this.alreadyCompletedLocalInitialization = true;
        }
        return this;
    }

    @Override
    public RecoveredElement updateOnOpeningBrace(int i10, int i11) {
        LocalDeclaration localDeclaration = this.localDeclaration;
        if (localDeclaration.declarationSourceEnd == 0) {
            TypeReference typeReference = localDeclaration.type;
            if (((typeReference instanceof ArrayTypeReference) || (typeReference instanceof ArrayQualifiedTypeReference)) && !this.alreadyCompletedLocalInitialization) {
                this.bracketBalance++;
                return null;
            }
        }
        updateSourceEndIfNecessary(i10 - 1, i11 - 1);
        return this.parent.updateOnOpeningBrace(i10, i11);
    }

    @Override
    public void updateParseTree() {
        updatedStatement(0, new HashSet());
    }

    @Override
    public void updateSourceEndIfNecessary(int i10, int i11) {
        LocalDeclaration localDeclaration = this.localDeclaration;
        if (localDeclaration.declarationSourceEnd == 0) {
            localDeclaration.declarationSourceEnd = i11;
            localDeclaration.declarationEnd = i11;
        }
    }

    @Override
    public Statement updatedStatement(int i10, Set set) {
        int i11 = this.modifiers;
        if (i11 != 0) {
            LocalDeclaration localDeclaration = this.localDeclaration;
            localDeclaration.modifiers = i11 | localDeclaration.modifiers;
            int i12 = this.modifiersStart;
            if (i12 < localDeclaration.declarationSourceStart) {
                localDeclaration.declarationSourceStart = i12;
            }
        }
        int i13 = this.annotationCount;
        if (i13 > 0) {
            Annotation[] annotationArr = this.localDeclaration.annotations;
            int length = annotationArr == null ? 0 : annotationArr.length;
            Annotation[] annotationArr2 = new Annotation[length + i13];
            if (length > 0) {
                System.arraycopy(annotationArr, 0, annotationArr2, i13, length);
            }
            for (int i14 = 0; i14 < this.annotationCount; i14++) {
                annotationArr2[i14] = this.annotations[i14].updatedAnnotationReference();
            }
            LocalDeclaration localDeclaration2 = this.localDeclaration;
            localDeclaration2.annotations = annotationArr2;
            int i15 = this.annotations[0].annotation.sourceStart;
            if (i15 < localDeclaration2.declarationSourceStart) {
                localDeclaration2.declarationSourceStart = i15;
            }
        }
        return this.localDeclaration;
    }
}
