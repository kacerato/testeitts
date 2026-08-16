package org.eclipse.jdt.internal.compiler.parser;

import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class RecoveredInitializer extends RecoveredField implements TerminalTokens {
    public RecoveredBlock initializerBody;
    public int localTypeCount;
    public RecoveredType[] localTypes;
    int pendingAnnotationCount;
    RecoveredAnnotation[] pendingAnnotations;
    int pendingModifersSourceStart;
    int pendingModifiers;

    public RecoveredInitializer(FieldDeclaration fieldDeclaration, RecoveredElement recoveredElement, int i10) {
        this(fieldDeclaration, recoveredElement, i10, null);
    }

    @Override
    public RecoveredElement add(Block block, int i10) {
        int i11 = this.fieldDeclaration.declarationSourceEnd;
        if (i11 > 0 && block.sourceStart > i11) {
            resetPendingModifiers();
            RecoveredElement recoveredElement = this.parent;
            return recoveredElement == null ? this : recoveredElement.add(block, i10);
        }
        if (!this.foundOpeningBrace) {
            this.foundOpeningBrace = true;
            this.bracketBalance++;
        }
        RecoveredBlock recoveredBlock = this.initializerBody;
        if (recoveredBlock == null) {
            RecoveredBlock recoveredBlock2 = new RecoveredBlock(block, this, i10);
            this.initializerBody = recoveredBlock2;
            return recoveredBlock2;
        }
        recoveredBlock.blockDeclaration.sourceEnd = 0;
        return block.sourceEnd == 0 ? recoveredBlock : recoveredBlock.add((Statement) block, i10, true);
    }

    @Override
    public RecoveredElement addAnnotationName(int i10, int i11, int i12, int i13) {
        RecoveredAnnotation[] recoveredAnnotationArr = this.pendingAnnotations;
        if (recoveredAnnotationArr == null) {
            this.pendingAnnotations = new RecoveredAnnotation[5];
            this.pendingAnnotationCount = 0;
        } else {
            int i14 = this.pendingAnnotationCount;
            if (i14 == recoveredAnnotationArr.length) {
                RecoveredAnnotation[] recoveredAnnotationArr2 = new RecoveredAnnotation[i14 * 2];
                this.pendingAnnotations = recoveredAnnotationArr2;
                System.arraycopy(recoveredAnnotationArr, 0, recoveredAnnotationArr2, 0, i14);
            }
        }
        RecoveredAnnotation recoveredAnnotation = new RecoveredAnnotation(i10, i11, i12, this, i13);
        RecoveredAnnotation[] recoveredAnnotationArr3 = this.pendingAnnotations;
        int i15 = this.pendingAnnotationCount;
        this.pendingAnnotationCount = i15 + 1;
        recoveredAnnotationArr3[i15] = recoveredAnnotation;
        return recoveredAnnotation;
    }

    @Override
    public void addModifier(int i10, int i11) {
        this.pendingModifiers = i10 | this.pendingModifiers;
        if (this.pendingModifersSourceStart < 0) {
            this.pendingModifersSourceStart = i11;
        }
    }

    @Override
    public void resetPendingModifiers() {
        this.pendingAnnotations = null;
        this.pendingAnnotationCount = 0;
        this.pendingModifiers = 0;
        this.pendingModifersSourceStart = -1;
    }

    @Override
    public String toString(int i10) {
        StringBuffer stringBuffer = new StringBuffer(tabString(i10));
        stringBuffer.append("Recovered initializer:\n");
        int i11 = i10 + 1;
        this.fieldDeclaration.print(i11, stringBuffer);
        if (this.annotations != null) {
            for (int i12 = 0; i12 < this.annotationCount; i12++) {
                stringBuffer.append("\n");
                stringBuffer.append(this.annotations[i12].toString(i11));
            }
        }
        if (this.initializerBody != null) {
            stringBuffer.append("\n");
            stringBuffer.append(this.initializerBody.toString(i11));
        }
        return stringBuffer.toString();
    }

    @Override
    public RecoveredElement updateOnClosingBrace(int i10, int i11) {
        int i12 = this.bracketBalance - 1;
        this.bracketBalance = i12;
        if (i12 > 0 || this.parent == null) {
            return this;
        }
        updateSourceEndIfNecessary(i10, i11);
        return this.parent;
    }

    @Override
    public RecoveredElement updateOnOpeningBrace(int i10, int i11) {
        this.bracketBalance++;
        return this;
    }

    @Override
    public void updateSourceEndIfNecessary(int i10, int i11) {
        FieldDeclaration fieldDeclaration = this.fieldDeclaration;
        if (fieldDeclaration.declarationSourceEnd == 0) {
            Initializer initializer = (Initializer) fieldDeclaration;
            if (parser().rBraceSuccessorStart >= i11) {
                if (initializer.bodyStart < parser().rBraceEnd) {
                    initializer.declarationSourceEnd = parser().rBraceEnd;
                } else {
                    initializer.declarationSourceEnd = initializer.bodyStart;
                }
                if (initializer.bodyStart < parser().rBraceStart) {
                    initializer.bodyEnd = parser().rBraceStart;
                } else {
                    initializer.bodyEnd = initializer.bodyStart;
                }
            } else {
                int i12 = initializer.declarationSourceStart;
                if (i11 < i12) {
                    initializer.declarationSourceEnd = i12;
                    initializer.bodyEnd = i12;
                } else {
                    initializer.declarationSourceEnd = i11;
                    initializer.bodyEnd = i10 - 1;
                }
                int i13 = initializer.bodyStart;
                int i14 = initializer.declarationSourceEnd;
                if (i13 > i14) {
                    initializer.bodyStart = i14;
                    Block block = initializer.block;
                    if (block != null) {
                        block.sourceStart = i12;
                    }
                }
            }
            Block block2 = initializer.block;
            if (block2 != null) {
                block2.sourceEnd = initializer.declarationSourceEnd;
            }
        }
    }

    @Override
    public FieldDeclaration updatedFieldDeclaration(int i10, Set<TypeDeclaration> set) {
        RecoveredBlock recoveredBlock = this.initializerBody;
        if (recoveredBlock != null) {
            Block updatedBlock = recoveredBlock.updatedBlock(i10, set);
            if (updatedBlock != null) {
                Initializer initializer = (Initializer) this.fieldDeclaration;
                initializer.block = updatedBlock;
                if (initializer.declarationSourceEnd == 0) {
                    int i11 = updatedBlock.sourceEnd;
                    initializer.declarationSourceEnd = i11;
                    initializer.bodyEnd = i11;
                }
            }
            if (this.localTypeCount > 0) {
                this.fieldDeclaration.bits |= 2;
            }
        }
        FieldDeclaration fieldDeclaration = this.fieldDeclaration;
        if (fieldDeclaration.sourceEnd == 0) {
            fieldDeclaration.sourceEnd = fieldDeclaration.declarationSourceEnd;
        }
        return fieldDeclaration;
    }

    public RecoveredInitializer(FieldDeclaration fieldDeclaration, RecoveredElement recoveredElement, int i10, Parser parser) {
        super(fieldDeclaration, recoveredElement, i10, parser);
        this.pendingModifersSourceStart = -1;
        this.foundOpeningBrace = true;
    }

    @Override
    public RecoveredElement add(FieldDeclaration fieldDeclaration, int i10) {
        TypeReference typeReference;
        RecoveredElement recoveredElement;
        resetPendingModifiers();
        if ((fieldDeclaration.modifiers & (-17)) == 0 && (typeReference = fieldDeclaration.type) != null) {
            char[][] typeName = typeReference.getTypeName();
            if (typeName.length != 1 || !CharOperation.equals(typeName[0], TypeBinding.VOID.sourceName())) {
                int i11 = this.fieldDeclaration.declarationSourceEnd;
                return (i11 <= 0 || fieldDeclaration.declarationSourceStart <= i11 || (recoveredElement = this.parent) == null) ? this : recoveredElement.add(fieldDeclaration, i10);
            }
        }
        if (this.parent == null) {
            return this;
        }
        updateSourceEndIfNecessary(previousAvailableLineEnd(fieldDeclaration.declarationSourceStart - 1));
        return this.parent.add(fieldDeclaration, i10);
    }

    @Override
    public RecoveredElement add(LocalDeclaration localDeclaration, int i10) {
        int i11 = this.fieldDeclaration.declarationSourceEnd;
        if (i11 != 0 && localDeclaration.declarationSourceStart > i11) {
            resetPendingModifiers();
            RecoveredElement recoveredElement = this.parent;
            return recoveredElement == null ? this : recoveredElement.add(localDeclaration, i10);
        }
        RecoveredBlock recoveredBlock = this.initializerBody;
        if (recoveredBlock == null) {
            Block block = new Block(0);
            block.sourceStart = ((Initializer) this.fieldDeclaration).sourceStart;
            RecoveredElement add = add(block, 1);
            if (this.bracketBalance > 0) {
                for (int i12 = 0; i12 < this.bracketBalance - 1; i12++) {
                    add = add.add(new Block(0), 1);
                }
                this.bracketBalance = 1;
            }
            return add.add(localDeclaration, i10);
        }
        recoveredBlock.attachPendingModifiers(this.pendingAnnotations, this.pendingAnnotationCount, this.pendingModifiers, this.pendingModifersSourceStart);
        resetPendingModifiers();
        return this.initializerBody.add(localDeclaration, i10, true);
    }

    @Override
    public RecoveredElement add(Statement statement, int i10) {
        int i11 = this.fieldDeclaration.declarationSourceEnd;
        if (i11 != 0 && statement.sourceStart > i11) {
            resetPendingModifiers();
            RecoveredElement recoveredElement = this.parent;
            return recoveredElement == null ? this : recoveredElement.add(statement, i10);
        }
        Block block = new Block(0);
        block.sourceStart = ((Initializer) this.fieldDeclaration).sourceStart;
        RecoveredElement add = add(block, 1);
        RecoveredBlock recoveredBlock = this.initializerBody;
        if (recoveredBlock != null) {
            recoveredBlock.attachPendingModifiers(this.pendingAnnotations, this.pendingAnnotationCount, this.pendingModifiers, this.pendingModifersSourceStart);
        }
        resetPendingModifiers();
        return add.add(statement, i10);
    }

    @Override
    public RecoveredElement add(TypeDeclaration typeDeclaration, int i10) {
        int i11 = this.fieldDeclaration.declarationSourceEnd;
        if (i11 != 0 && typeDeclaration.declarationSourceStart > i11) {
            resetPendingModifiers();
            RecoveredElement recoveredElement = this.parent;
            return recoveredElement == null ? this : recoveredElement.add(typeDeclaration, i10);
        }
        if ((typeDeclaration.bits & 256) == 0 && !parser().methodRecoveryActivated && !parser().statementRecoveryActivated) {
            RecoveredType[] recoveredTypeArr = this.localTypes;
            if (recoveredTypeArr == null) {
                this.localTypes = new RecoveredType[5];
                this.localTypeCount = 0;
            } else {
                int i12 = this.localTypeCount;
                if (i12 == recoveredTypeArr.length) {
                    RecoveredType[] recoveredTypeArr2 = new RecoveredType[i12 * 2];
                    this.localTypes = recoveredTypeArr2;
                    System.arraycopy(recoveredTypeArr, 0, recoveredTypeArr2, 0, i12);
                }
            }
            RecoveredType recoveredType = new RecoveredType(typeDeclaration, this, i10);
            RecoveredType[] recoveredTypeArr3 = this.localTypes;
            int i13 = this.localTypeCount;
            this.localTypeCount = i13 + 1;
            recoveredTypeArr3[i13] = recoveredType;
            int i14 = this.pendingAnnotationCount;
            if (i14 > 0) {
                recoveredType.attach(this.pendingAnnotations, i14, this.pendingModifiers, this.pendingModifersSourceStart);
            }
            resetPendingModifiers();
            if (!this.foundOpeningBrace) {
                this.foundOpeningBrace = true;
                this.bracketBalance++;
            }
            return recoveredType;
        }
        Block block = new Block(0);
        block.sourceStart = ((Initializer) this.fieldDeclaration).sourceStart;
        RecoveredElement add = add(block, 1);
        RecoveredBlock recoveredBlock = this.initializerBody;
        if (recoveredBlock != null) {
            recoveredBlock.attachPendingModifiers(this.pendingAnnotations, this.pendingAnnotationCount, this.pendingModifiers, this.pendingModifersSourceStart);
        }
        resetPendingModifiers();
        return add.add(typeDeclaration, i10);
    }
}
