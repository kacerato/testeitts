package org.eclipse.jdt.internal.compiler.parser;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;

public class RecoveredField extends RecoveredElement {
    boolean alreadyCompletedFieldInitialization;
    public int annotationCount;
    public RecoveredAnnotation[] annotations;
    public int anonymousTypeCount;
    public RecoveredType[] anonymousTypes;
    public FieldDeclaration fieldDeclaration;
    public int modifiers;
    public int modifiersStart;

    public RecoveredField(FieldDeclaration fieldDeclaration, RecoveredElement recoveredElement, int i10) {
        this(fieldDeclaration, recoveredElement, i10, null);
    }

    @Override
    public RecoveredElement add(LocalDeclaration localDeclaration, int i10) {
        return this.lambdaNestLevel > 0 ? this : super.add(localDeclaration, i10);
    }

    public void attach(RecoveredAnnotation[] recoveredAnnotationArr, int i10, int i11, int i12) {
        if (i10 > 0) {
            Annotation[] annotationArr = this.fieldDeclaration.annotations;
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
        return this.fieldDeclaration;
    }

    @Override
    public int sourceEnd() {
        return this.fieldDeclaration.declarationSourceEnd;
    }

    @Override
    public String toString(int i10) {
        StringBuffer stringBuffer = new StringBuffer(tabString(i10));
        stringBuffer.append("Recovered field:\n");
        int i11 = i10 + 1;
        this.fieldDeclaration.print(i11, stringBuffer);
        if (this.annotations != null) {
            for (int i12 = 0; i12 < this.annotationCount; i12++) {
                stringBuffer.append("\n");
                stringBuffer.append(this.annotations[i12].toString(i11));
            }
        }
        if (this.anonymousTypes != null) {
            for (int i13 = 0; i13 < this.anonymousTypeCount; i13++) {
                stringBuffer.append("\n");
                stringBuffer.append(this.anonymousTypes[i13].toString(i11));
            }
        }
        return stringBuffer.toString();
    }

    @Override
    public RecoveredElement updateOnClosingBrace(int i10, int i11) {
        int i12 = this.bracketBalance;
        if (i12 <= 0) {
            if (i12 == 0) {
                this.alreadyCompletedFieldInitialization = true;
                updateSourceEndIfNecessary(i11 - 1);
            }
            RecoveredElement recoveredElement = this.parent;
            return recoveredElement != null ? recoveredElement.updateOnClosingBrace(i10, i11) : this;
        }
        int i13 = i12 - 1;
        this.bracketBalance = i13;
        if (i13 == 0) {
            if (this.fieldDeclaration.getKind() == 3) {
                updateSourceEndIfNecessary(i11);
                return this.parent;
            }
            if (this.fieldDeclaration.declarationSourceEnd > 0) {
                this.alreadyCompletedFieldInitialization = true;
            }
        }
        return this;
    }

    @Override
    public RecoveredElement updateOnOpeningBrace(int i10, int i11) {
        FieldDeclaration fieldDeclaration = this.fieldDeclaration;
        int i12 = fieldDeclaration.declarationSourceEnd;
        if (i12 == 0) {
            TypeReference typeReference = fieldDeclaration.type;
            if (!(typeReference instanceof ArrayTypeReference) && !(typeReference instanceof ArrayQualifiedTypeReference)) {
                this.bracketBalance++;
                return null;
            }
            if (!this.alreadyCompletedFieldInitialization) {
                this.bracketBalance++;
                return null;
            }
        }
        if (i12 == 0 && fieldDeclaration.getKind() == 3) {
            this.bracketBalance++;
            return null;
        }
        updateSourceEndIfNecessary(i10 - 1, i11 - 1);
        return this.parent.updateOnOpeningBrace(i10, i11);
    }

    @Override
    public void updateParseTree() {
        updatedFieldDeclaration(0, new HashSet());
    }

    @Override
    public void updateSourceEndIfNecessary(int i10, int i11) {
        FieldDeclaration fieldDeclaration = this.fieldDeclaration;
        if (fieldDeclaration.declarationSourceEnd == 0) {
            fieldDeclaration.declarationSourceEnd = i11;
            fieldDeclaration.declarationEnd = i11;
        }
    }

    public FieldDeclaration updatedFieldDeclaration(int i10, Set<TypeDeclaration> set) {
        ArrayInitializer arrayInitializer;
        int i11;
        TypeDeclaration updatedTypeDeclaration;
        int i12 = this.modifiers;
        if (i12 != 0) {
            FieldDeclaration fieldDeclaration = this.fieldDeclaration;
            fieldDeclaration.modifiers = i12 | fieldDeclaration.modifiers;
            int i13 = this.modifiersStart;
            if (i13 < fieldDeclaration.declarationSourceStart) {
                fieldDeclaration.declarationSourceStart = i13;
            }
        }
        int i14 = this.annotationCount;
        if (i14 > 0) {
            Annotation[] annotationArr = this.fieldDeclaration.annotations;
            int length = annotationArr == null ? 0 : annotationArr.length;
            Annotation[] annotationArr2 = new Annotation[length + i14];
            if (length > 0) {
                System.arraycopy(annotationArr, 0, annotationArr2, i14, length);
            }
            for (int i15 = 0; i15 < this.annotationCount; i15++) {
                annotationArr2[i15] = this.annotations[i15].updatedAnnotationReference();
            }
            FieldDeclaration fieldDeclaration2 = this.fieldDeclaration;
            fieldDeclaration2.annotations = annotationArr2;
            int i16 = this.annotations[0].annotation.sourceStart;
            if (i16 < fieldDeclaration2.declarationSourceStart) {
                fieldDeclaration2.declarationSourceStart = i16;
            }
        }
        if (this.anonymousTypes != null) {
            FieldDeclaration fieldDeclaration3 = this.fieldDeclaration;
            if (fieldDeclaration3.initialization == null) {
                if (this.anonymousTypeCount > 1) {
                    arrayInitializer = new ArrayInitializer();
                    arrayInitializer.expressions = new Expression[this.anonymousTypeCount];
                } else {
                    arrayInitializer = null;
                }
                ArrayInitializer arrayInitializer2 = arrayInitializer;
                int i17 = 0;
                int i18 = 0;
                while (true) {
                    i11 = this.anonymousTypeCount;
                    if (i17 >= i11) {
                        break;
                    }
                    RecoveredType recoveredType = this.anonymousTypes[i17];
                    TypeDeclaration typeDeclaration = recoveredType.typeDeclaration;
                    if (typeDeclaration.declarationSourceEnd == 0) {
                        int i19 = this.fieldDeclaration.declarationSourceEnd;
                        typeDeclaration.declarationSourceEnd = i19;
                        typeDeclaration.bodyEnd = i19;
                    }
                    if (recoveredType.preserveContent && (updatedTypeDeclaration = recoveredType.updatedTypeDeclaration(i10 + 1, set)) != null) {
                        if (this.anonymousTypeCount > 1) {
                            if (i18 == 0) {
                                this.fieldDeclaration.initialization = arrayInitializer2;
                            }
                            arrayInitializer2.expressions[i18] = updatedTypeDeclaration.allocation;
                            i18++;
                        } else {
                            this.fieldDeclaration.initialization = updatedTypeDeclaration.allocation;
                        }
                        int i20 = updatedTypeDeclaration.declarationSourceEnd;
                        FieldDeclaration fieldDeclaration4 = this.fieldDeclaration;
                        if (i20 > fieldDeclaration4.declarationSourceEnd) {
                            fieldDeclaration4.declarationSourceEnd = i20;
                            fieldDeclaration4.declarationEnd = i20;
                        }
                    }
                    i17++;
                }
                if (i11 > 0) {
                    this.fieldDeclaration.bits |= 2;
                    if (arrayInitializer2 != null) {
                        RecoveredType[] recoveredTypeArr = this.anonymousTypes;
                        arrayInitializer2.sourceStart = recoveredTypeArr[0].typeDeclaration.sourceStart;
                        arrayInitializer2.sourceEnd = recoveredTypeArr[i11 - 1].typeDeclaration.sourceEnd;
                    }
                }
            } else if (fieldDeclaration3.getKind() == 3) {
                for (int i21 = 0; i21 < this.anonymousTypeCount; i21++) {
                    RecoveredType recoveredType2 = this.anonymousTypes[i21];
                    TypeDeclaration typeDeclaration2 = recoveredType2.typeDeclaration;
                    if (typeDeclaration2.declarationSourceEnd == 0) {
                        int i22 = this.fieldDeclaration.declarationSourceEnd;
                        typeDeclaration2.declarationSourceEnd = i22;
                        typeDeclaration2.bodyEnd = i22;
                    }
                    recoveredType2.updatedTypeDeclaration(i10, set);
                }
            }
        }
        return this.fieldDeclaration;
    }

    public RecoveredField(FieldDeclaration fieldDeclaration, RecoveredElement recoveredElement, int i10, Parser parser) {
        super(recoveredElement, i10, parser);
        this.fieldDeclaration = fieldDeclaration;
        this.alreadyCompletedFieldInitialization = fieldDeclaration.initialization != null;
    }

    @Override
    public RecoveredElement add(FieldDeclaration fieldDeclaration, int i10) {
        resetPendingModifiers();
        if (this.parent == null) {
            return this;
        }
        FieldDeclaration fieldDeclaration2 = this.fieldDeclaration;
        int i11 = fieldDeclaration2.declarationSourceStart;
        int i12 = fieldDeclaration.declarationSourceStart;
        if (i11 == i12) {
            Expression expression = fieldDeclaration2.initialization;
            if (expression != null) {
                updateSourceEndIfNecessary(expression.sourceEnd);
            } else {
                updateSourceEndIfNecessary(fieldDeclaration2.sourceEnd);
            }
        } else {
            updateSourceEndIfNecessary(previousAvailableLineEnd(i12 - 1));
        }
        return this.parent.add(fieldDeclaration, i10);
    }

    @Override
    public RecoveredElement add(Statement statement, int i10) {
        if (!this.alreadyCompletedFieldInitialization && (statement instanceof Expression)) {
            Expression expression = (Expression) statement;
            if (expression.isTrulyExpression()) {
                if (statement.sourceEnd > 0) {
                    this.alreadyCompletedFieldInitialization = true;
                }
                if (!(statement instanceof AllocationExpression) && this.fieldDeclaration.getKind() == 3) {
                    AllocationExpression allocationExpression = new AllocationExpression();
                    allocationExpression.arguments = new Expression[]{expression};
                    this.fieldDeclaration.initialization = allocationExpression;
                } else {
                    FieldDeclaration fieldDeclaration = this.fieldDeclaration;
                    fieldDeclaration.initialization = expression;
                    int i11 = statement.sourceEnd;
                    fieldDeclaration.declarationSourceEnd = i11;
                    fieldDeclaration.declarationEnd = i11;
                }
                return this;
            }
        }
        return super.add(statement, i10);
    }

    @Override
    public RecoveredElement add(TypeDeclaration typeDeclaration, int i10) {
        int i11;
        if (!this.alreadyCompletedFieldInitialization && (typeDeclaration.bits & 512) != 0 && ((i11 = this.fieldDeclaration.declarationSourceEnd) == 0 || typeDeclaration.sourceStart <= i11)) {
            RecoveredType[] recoveredTypeArr = this.anonymousTypes;
            if (recoveredTypeArr == null) {
                this.anonymousTypes = new RecoveredType[5];
                this.anonymousTypeCount = 0;
            } else {
                int i12 = this.anonymousTypeCount;
                if (i12 == recoveredTypeArr.length) {
                    RecoveredType[] recoveredTypeArr2 = new RecoveredType[i12 * 2];
                    this.anonymousTypes = recoveredTypeArr2;
                    System.arraycopy(recoveredTypeArr, 0, recoveredTypeArr2, 0, i12);
                }
            }
            RecoveredType recoveredType = new RecoveredType(typeDeclaration, this, i10);
            RecoveredType[] recoveredTypeArr3 = this.anonymousTypes;
            int i13 = this.anonymousTypeCount;
            this.anonymousTypeCount = i13 + 1;
            recoveredTypeArr3[i13] = recoveredType;
            return recoveredType;
        }
        return super.add(typeDeclaration, i10);
    }
}
