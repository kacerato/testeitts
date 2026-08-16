package org.eclipse.jdt.internal.compiler.parser;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;

public class RecoveredType extends RecoveredStatement implements TerminalTokens {
    public static final int MAX_TYPE_DEPTH = 256;
    public int annotationCount;
    public RecoveredAnnotation[] annotations;
    public int bodyEnd;
    public int fieldCount;
    public RecoveredField[] fields;
    public boolean insideEnumConstantPart;
    public int memberTypeCount;
    public RecoveredType[] memberTypes;
    public int methodCount;
    public RecoveredMethod[] methods;
    public int modifiers;
    public int modifiersStart;
    int pendingAnnotationCount;
    RecoveredAnnotation[] pendingAnnotations;
    int pendingModifersSourceStart;
    int pendingModifiers;
    public TypeParameter[] pendingTypeParameters;
    public int pendingTypeParametersStart;
    public boolean preserveContent;
    public TypeDeclaration typeDeclaration;

    public RecoveredType(TypeDeclaration typeDeclaration, RecoveredElement recoveredElement, int i10) {
        super(typeDeclaration, recoveredElement, i10);
        this.preserveContent = false;
        this.insideEnumConstantPart = false;
        this.pendingModifersSourceStart = -1;
        this.typeDeclaration = typeDeclaration;
        QualifiedAllocationExpression qualifiedAllocationExpression = typeDeclaration.allocation;
        if (qualifiedAllocationExpression == null || qualifiedAllocationExpression.type != null) {
            this.foundOpeningBrace = !bodyStartsAtHeaderEnd();
        } else {
            this.foundOpeningBrace = true;
        }
        this.insideEnumConstantPart = TypeDeclaration.kind(typeDeclaration.modifiers) == 3;
        if (this.foundOpeningBrace) {
            this.bracketBalance++;
        }
        this.preserveContent = parser().methodRecoveryActivated || parser().statementRecoveryActivated;
    }

    @Override
    public RecoveredElement add(AbstractMethodDeclaration abstractMethodDeclaration, int i10) {
        int i11 = this.typeDeclaration.declarationSourceEnd;
        if (i11 != 0 && abstractMethodDeclaration.declarationSourceStart > i11) {
            this.pendingTypeParameters = null;
            resetPendingModifiers();
            return this.parent.add(abstractMethodDeclaration, i10);
        }
        RecoveredMethod[] recoveredMethodArr = this.methods;
        if (recoveredMethodArr == null) {
            this.methods = new RecoveredMethod[5];
            this.methodCount = 0;
        } else {
            int i12 = this.methodCount;
            if (i12 == recoveredMethodArr.length) {
                RecoveredMethod[] recoveredMethodArr2 = new RecoveredMethod[i12 * 2];
                this.methods = recoveredMethodArr2;
                System.arraycopy(recoveredMethodArr, 0, recoveredMethodArr2, 0, i12);
            }
        }
        RecoveredMethod recoveredMethod = new RecoveredMethod(abstractMethodDeclaration, this, i10, this.recoveringParser);
        RecoveredMethod[] recoveredMethodArr3 = this.methods;
        int i13 = this.methodCount;
        this.methodCount = i13 + 1;
        recoveredMethodArr3[i13] = recoveredMethod;
        TypeParameter[] typeParameterArr = this.pendingTypeParameters;
        if (typeParameterArr != null) {
            recoveredMethod.attach(typeParameterArr, this.pendingTypeParametersStart);
            this.pendingTypeParameters = null;
        }
        int i14 = this.pendingAnnotationCount;
        if (i14 > 0 || this.pendingModifiers != 0) {
            recoveredMethod.attach(this.pendingAnnotations, i14, this.pendingModifiers, this.pendingModifersSourceStart);
        }
        resetPendingModifiers();
        this.insideEnumConstantPart = false;
        if (!this.foundOpeningBrace) {
            this.foundOpeningBrace = true;
            this.bracketBalance++;
        }
        return abstractMethodDeclaration.declarationSourceEnd == 0 ? recoveredMethod : this;
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

    public void annotationsConsumed(Annotation[] annotationArr) {
        int i10 = this.pendingAnnotationCount;
        RecoveredAnnotation[] recoveredAnnotationArr = new RecoveredAnnotation[i10];
        int length = annotationArr.length;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            Annotation annotation = this.pendingAnnotations[i12].annotation;
            int i13 = 0;
            while (true) {
                if (i13 >= length) {
                    recoveredAnnotationArr[i11] = this.pendingAnnotations[i12];
                    i11++;
                    break;
                } else if (annotationArr[i13] == annotation) {
                    break;
                } else {
                    i13++;
                }
            }
        }
        if (i11 != this.pendingAnnotationCount) {
            this.pendingAnnotations = recoveredAnnotationArr;
            this.pendingAnnotationCount = i11;
        }
    }

    public void attach(RecoveredAnnotation[] recoveredAnnotationArr, int i10, int i11, int i12) {
        if (i10 > 0) {
            Annotation[] annotationArr = this.typeDeclaration.annotations;
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

    public int bodyEnd() {
        int i10 = this.bodyEnd;
        return i10 == 0 ? this.typeDeclaration.declarationSourceEnd : i10;
    }

    public boolean bodyStartsAtHeaderEnd() {
        TypeDeclaration typeDeclaration = this.typeDeclaration;
        TypeReference[] typeReferenceArr = typeDeclaration.superInterfaces;
        if (typeReferenceArr != null) {
            return typeDeclaration.bodyStart == typeReferenceArr[typeReferenceArr.length - 1].sourceEnd + 1;
        }
        TypeReference typeReference = typeDeclaration.superclass;
        if (typeReference != null) {
            return typeDeclaration.bodyStart == typeReference.sourceEnd + 1;
        }
        TypeParameter[] typeParameterArr = typeDeclaration.typeParameters;
        return typeParameterArr == null ? typeDeclaration.bodyStart == typeDeclaration.sourceEnd + 1 : typeDeclaration.bodyStart == typeParameterArr[typeParameterArr.length - 1].sourceEnd + 1;
    }

    @Override
    public RecoveredType enclosingType() {
        for (RecoveredElement recoveredElement = this.parent; recoveredElement != null; recoveredElement = recoveredElement.parent) {
            if (recoveredElement instanceof RecoveredType) {
                return (RecoveredType) recoveredElement;
            }
        }
        return null;
    }

    @Override
    public int getLastStart() {
        int i10;
        int i11;
        int i12;
        int i13 = this.typeDeclaration.bodyStart;
        int i14 = this.fieldCount;
        if (i14 > 0 && i13 < (i12 = this.fields[i14 - 1].fieldDeclaration.declarationSourceStart) && i12 != 0) {
            i13 = i12;
        }
        int i15 = this.methodCount;
        if (i15 > 0 && i13 < (i11 = this.methods[i15 - 1].methodDeclaration.declarationSourceStart) && i11 != 0) {
            i13 = i11;
        }
        int i16 = this.memberTypeCount;
        return (i16 <= 0 || i13 >= (i10 = this.memberTypes[i16 + (-1)].typeDeclaration.declarationSourceStart) || i10 == 0) ? i13 : i10;
    }

    public int lastMemberEnd() {
        int i10;
        int i11;
        int i12;
        int i13 = this.typeDeclaration.bodyStart;
        int i14 = this.fieldCount;
        if (i14 > 0 && i13 < (i12 = this.fields[i14 - 1].fieldDeclaration.declarationSourceEnd) && i12 != 0) {
            i13 = i12;
        }
        int i15 = this.methodCount;
        if (i15 > 0 && i13 < (i11 = this.methods[i15 - 1].methodDeclaration.declarationSourceEnd) && i11 != 0) {
            i13 = i11;
        }
        int i16 = this.memberTypeCount;
        return (i16 <= 0 || i13 >= (i10 = this.memberTypes[i16 + (-1)].typeDeclaration.declarationSourceEnd) || i10 == 0) ? i13 : i10;
    }

    public char[] name() {
        return this.typeDeclaration.name;
    }

    @Override
    public ASTNode parseTree() {
        return this.typeDeclaration;
    }

    @Override
    public void resetPendingModifiers() {
        this.pendingAnnotations = null;
        this.pendingAnnotationCount = 0;
        this.pendingModifiers = 0;
        this.pendingModifersSourceStart = -1;
    }

    @Override
    public int sourceEnd() {
        return this.typeDeclaration.declarationSourceEnd;
    }

    @Override
    public String toString(int i10) {
        StringBuffer stringBuffer = new StringBuffer(tabString(i10));
        stringBuffer.append("Recovered type:\n");
        if ((this.typeDeclaration.bits & 512) != 0) {
            stringBuffer.append(tabString(i10));
            stringBuffer.append(" ");
        }
        int i11 = i10 + 1;
        this.typeDeclaration.print(i11, stringBuffer);
        if (this.annotations != null) {
            for (int i12 = 0; i12 < this.annotationCount; i12++) {
                stringBuffer.append("\n");
                stringBuffer.append(this.annotations[i12].toString(i11));
            }
        }
        if (this.memberTypes != null) {
            for (int i13 = 0; i13 < this.memberTypeCount; i13++) {
                stringBuffer.append("\n");
                stringBuffer.append(this.memberTypes[i13].toString(i11));
            }
        }
        if (this.fields != null) {
            for (int i14 = 0; i14 < this.fieldCount; i14++) {
                stringBuffer.append("\n");
                stringBuffer.append(this.fields[i14].toString(i11));
            }
        }
        if (this.methods != null) {
            for (int i15 = 0; i15 < this.methodCount; i15++) {
                stringBuffer.append("\n");
                stringBuffer.append(this.methods[i15].toString(i11));
            }
        }
        return stringBuffer.toString();
    }

    @Override
    public void updateBodyStart(int i10) {
        this.foundOpeningBrace = true;
        this.typeDeclaration.bodyStart = i10;
    }

    @Override
    public void updateFromParserState() {
        int i10;
        if (bodyStartsAtHeaderEnd() && this.typeDeclaration.allocation == null) {
            Parser parser = parser();
            if (parser.listLength > 0 && (i10 = parser.astLengthPtr) > 0) {
                int i11 = parser.astLengthStack[i10];
                int i12 = parser.astPtr - i11;
                boolean z10 = i12 >= 0;
                if (z10) {
                    if (!(parser.astStack[i12] instanceof TypeDeclaration)) {
                        z10 = false;
                    }
                    int i13 = i11 + 1;
                    for (int i14 = 1; i14 < i13; i14++) {
                        if (!(parser.astStack[i12 + i14] instanceof TypeReference)) {
                            z10 = false;
                        }
                    }
                }
                if (z10) {
                    parser.consumeClassHeaderImplements();
                    return;
                }
                return;
            }
            int i15 = parser.listTypeParameterLength;
            if (i15 > 0) {
                int i16 = parser.genericsPtr;
                boolean z11 = i16 + 1 >= i15 && parser.astPtr > -1;
                if (z11) {
                    if (!(parser.astStack[parser.astPtr] instanceof TypeDeclaration)) {
                        z11 = false;
                    }
                    int i17 = i16;
                    while (i17 + 1 > i15 && !(parser.genericsStack[i17] instanceof TypeParameter)) {
                        i17--;
                    }
                    for (int i18 = 0; i18 < i15; i18++) {
                        if (!(parser.genericsStack[i17 - i18] instanceof TypeParameter)) {
                            z11 = false;
                        }
                    }
                    i16 = i17;
                }
                if (z11) {
                    TypeDeclaration typeDeclaration = (TypeDeclaration) parser.astStack[parser.astPtr];
                    TypeParameter[] typeParameterArr = new TypeParameter[i15];
                    typeDeclaration.typeParameters = typeParameterArr;
                    System.arraycopy(parser.genericsStack, (i16 - i15) + 1, typeParameterArr, 0, i15);
                    int i19 = typeDeclaration.typeParameters[i15 - 1].declarationSourceEnd + 1;
                    typeDeclaration.bodyStart = i19;
                    parser.listTypeParameterLength = 0;
                    parser.lastCheckPoint = i19;
                }
            }
        }
    }

    @Override
    public RecoveredElement updateOnClosingBrace(int i10, int i11) {
        int i12 = this.bracketBalance - 1;
        this.bracketBalance = i12;
        if (i12 > 0 || this.parent == null) {
            return this;
        }
        updateSourceEndIfNecessary(i10, i11);
        this.bodyEnd = i10 - 1;
        return this.parent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001c, code lost:
    
        if (r0.recoveredStaticInitializerStart == 0) goto L16;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RecoveredElement updateOnOpeningBrace(int i10, int i11) {
        Initializer initializer;
        if (this.bracketBalance == 0) {
            Parser parser = parser();
            int i12 = parser.lastIgnoredToken;
            if (i12 != -1 && i12 != 86 && i12 != 123) {
                switch (i12) {
                    case 14:
                    case 15:
                    case 16:
                        break;
                    default:
                        this.foundOpeningBrace = true;
                        this.bracketBalance = 1;
                        break;
                }
            }
        }
        if (this.bracketBalance != 1) {
            return super.updateOnOpeningBrace(i10, i11);
        }
        Block block = new Block(0);
        Parser parser2 = parser();
        block.sourceStart = parser2.scanner.startPosition;
        if (parser2.recoveredStaticInitializerStart == 0) {
            initializer = new Initializer(block, 0);
        } else {
            initializer = new Initializer(block, 8);
            initializer.declarationSourceStart = parser2.recoveredStaticInitializerStart;
        }
        initializer.bodyStart = parser2.scanner.currentPosition;
        return add((FieldDeclaration) initializer, 1);
    }

    @Override
    public void updateParseTree() {
        updatedTypeDeclaration(0, new HashSet());
    }

    @Override
    public void updateSourceEndIfNecessary(int i10, int i11) {
        TypeDeclaration typeDeclaration = this.typeDeclaration;
        if (typeDeclaration.declarationSourceEnd == 0) {
            this.bodyEnd = 0;
            typeDeclaration.declarationSourceEnd = i11;
            typeDeclaration.bodyEnd = i11;
        }
    }

    @Override
    public Statement updatedStatement(int i10, Set set) {
        if ((this.typeDeclaration.bits & 512) != 0 && !this.preserveContent) {
            return null;
        }
        TypeDeclaration updatedTypeDeclaration = updatedTypeDeclaration(i10 + 1, set);
        if (updatedTypeDeclaration == null || (updatedTypeDeclaration.bits & 512) == 0) {
            return updatedTypeDeclaration;
        }
        QualifiedAllocationExpression qualifiedAllocationExpression = updatedTypeDeclaration.allocation;
        if (qualifiedAllocationExpression.statementEnd == -1) {
            qualifiedAllocationExpression.statementEnd = updatedTypeDeclaration.declarationSourceEnd;
        }
        return qualifiedAllocationExpression;
    }

    public TypeDeclaration updatedTypeDeclaration(int i10, Set<TypeDeclaration> set) {
        boolean z10;
        boolean z11;
        boolean z12;
        int i11;
        int i12;
        int i13;
        if (i10 >= 256 || set.contains(this.typeDeclaration)) {
            return null;
        }
        set.add(this.typeDeclaration);
        TypeDeclaration typeDeclaration = this.typeDeclaration;
        int i14 = typeDeclaration.bodyStart;
        int i15 = this.modifiers;
        if (i15 != 0) {
            typeDeclaration.modifiers = i15 | typeDeclaration.modifiers;
            int i16 = this.modifiersStart;
            if (i16 < typeDeclaration.declarationSourceStart) {
                typeDeclaration.declarationSourceStart = i16;
            }
        }
        int i17 = this.annotationCount;
        if (i17 > 0) {
            Annotation[] annotationArr = typeDeclaration.annotations;
            int length = annotationArr == null ? 0 : annotationArr.length;
            Annotation[] annotationArr2 = new Annotation[length + i17];
            if (length > 0) {
                System.arraycopy(annotationArr, 0, annotationArr2, i17, length);
            }
            for (int i18 = 0; i18 < this.annotationCount; i18++) {
                annotationArr2[i18] = this.annotations[i18].updatedAnnotationReference();
            }
            TypeDeclaration typeDeclaration2 = this.typeDeclaration;
            typeDeclaration2.annotations = annotationArr2;
            int i19 = this.annotations[0].annotation.sourceStart;
            if (i19 < typeDeclaration2.declarationSourceStart) {
                typeDeclaration2.declarationSourceStart = i19;
            }
        }
        int i20 = this.memberTypeCount;
        if (i20 > 0) {
            TypeDeclaration[] typeDeclarationArr = this.typeDeclaration.memberTypes;
            int length2 = typeDeclarationArr == null ? 0 : typeDeclarationArr.length;
            TypeDeclaration[] typeDeclarationArr2 = new TypeDeclaration[i20 + length2];
            if (length2 > 0) {
                System.arraycopy(typeDeclarationArr, 0, typeDeclarationArr2, 0, length2);
            }
            if (this.memberTypes[this.memberTypeCount - 1].typeDeclaration.declarationSourceEnd == 0) {
                int bodyEnd = bodyEnd();
                RecoveredType[] recoveredTypeArr = this.memberTypes;
                int i21 = this.memberTypeCount;
                recoveredTypeArr[i21 - 1].typeDeclaration.declarationSourceEnd = bodyEnd;
                recoveredTypeArr[i21 - 1].typeDeclaration.bodyEnd = bodyEnd;
            }
            int i22 = 0;
            int i23 = 0;
            while (true) {
                i13 = this.memberTypeCount;
                if (i22 >= i13) {
                    break;
                }
                TypeDeclaration updatedTypeDeclaration = this.memberTypes[i22].updatedTypeDeclaration(i10 + 1, set);
                if (updatedTypeDeclaration != null) {
                    typeDeclarationArr2[i23 + length2] = updatedTypeDeclaration;
                    i23++;
                }
                i22++;
            }
            if (i23 < i13) {
                int i24 = length2 + i23;
                TypeDeclaration[] typeDeclarationArr3 = new TypeDeclaration[i24];
                System.arraycopy(typeDeclarationArr2, 0, typeDeclarationArr3, 0, i24);
                typeDeclarationArr2 = typeDeclarationArr3;
            }
            if (typeDeclarationArr2.length > 0) {
                this.typeDeclaration.memberTypes = typeDeclarationArr2;
                if (typeDeclarationArr2[typeDeclarationArr2.length - 1].declarationSourceEnd > i14) {
                    i14 = typeDeclarationArr2[typeDeclarationArr2.length - 1].declarationSourceEnd;
                }
            }
        }
        int i25 = this.fieldCount;
        if (i25 > 0) {
            FieldDeclaration[] fieldDeclarationArr = this.typeDeclaration.fields;
            int length3 = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
            int i26 = i25 + length3;
            FieldDeclaration[] fieldDeclarationArr2 = new FieldDeclaration[i26];
            if (length3 > 0) {
                System.arraycopy(fieldDeclarationArr, 0, fieldDeclarationArr2, 0, length3);
            }
            if (this.fields[this.fieldCount - 1].fieldDeclaration.declarationSourceEnd == 0) {
                int bodyEnd2 = bodyEnd();
                FieldDeclaration fieldDeclaration = this.fields[this.fieldCount - 1].fieldDeclaration;
                if (bodyEnd2 == 0 && (i12 = fieldDeclaration.sourceEnd) > 0) {
                    if (i14 > i12) {
                        i14 = i12;
                        bodyEnd2 = i14;
                    } else {
                        bodyEnd2 = i12;
                    }
                }
                fieldDeclaration.declarationSourceEnd = bodyEnd2;
                fieldDeclaration.declarationEnd = bodyEnd2;
            }
            int i27 = i14;
            int i28 = 0;
            while (true) {
                i11 = this.fieldCount;
                if (i28 >= i11) {
                    break;
                }
                fieldDeclarationArr2[length3 + i28] = this.fields[i28].updatedFieldDeclaration(i10, set);
                i28++;
            }
            for (int i29 = i11 - 1; i29 > 0; i29--) {
                int i30 = length3 + i29;
                FieldDeclaration fieldDeclaration2 = fieldDeclarationArr2[i30 - 1];
                int i31 = fieldDeclaration2.declarationSourceStart;
                FieldDeclaration fieldDeclaration3 = fieldDeclarationArr2[i30];
                if (i31 == fieldDeclaration3.declarationSourceStart) {
                    fieldDeclaration2.declarationSourceEnd = fieldDeclaration3.declarationSourceEnd;
                    fieldDeclaration2.declarationEnd = fieldDeclaration3.declarationEnd;
                }
            }
            this.typeDeclaration.fields = fieldDeclarationArr2;
            i14 = fieldDeclarationArr2[i26 - 1].declarationSourceEnd;
            if (i14 <= i27) {
                i14 = i27;
            }
        }
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = this.typeDeclaration.methods;
        int length4 = abstractMethodDeclarationArr == null ? 0 : abstractMethodDeclarationArr.length;
        int i32 = this.methodCount;
        int i33 = -1;
        if (i32 > 0) {
            int i34 = i32 + length4;
            AbstractMethodDeclaration[] abstractMethodDeclarationArr2 = new AbstractMethodDeclaration[i34];
            boolean z13 = false;
            for (int i35 = 0; i35 < length4; i35++) {
                AbstractMethodDeclaration abstractMethodDeclaration = this.typeDeclaration.methods[i35];
                if (abstractMethodDeclaration.isDefaultConstructor()) {
                    i33 = i35;
                }
                if (abstractMethodDeclaration.isAbstract()) {
                    z13 = true;
                }
                abstractMethodDeclarationArr2[i35] = abstractMethodDeclaration;
            }
            if (this.methods[this.methodCount - 1].methodDeclaration.declarationSourceEnd == 0) {
                int bodyEnd3 = bodyEnd();
                RecoveredMethod[] recoveredMethodArr = this.methods;
                int i36 = this.methodCount;
                recoveredMethodArr[i36 - 1].methodDeclaration.declarationSourceEnd = bodyEnd3;
                recoveredMethodArr[i36 - 1].methodDeclaration.bodyEnd = bodyEnd3;
            }
            int i37 = length4;
            z11 = false;
            boolean z14 = z13;
            for (int i38 = 0; i38 < this.methodCount; i38++) {
                int i39 = 0;
                while (true) {
                    if (i39 >= length4) {
                        AbstractMethodDeclaration updatedMethodDeclaration = this.methods[i38].updatedMethodDeclaration(i10, set);
                        if (updatedMethodDeclaration.isConstructor()) {
                            z11 = true;
                        }
                        if (updatedMethodDeclaration.isAbstract()) {
                            z14 = true;
                        }
                        abstractMethodDeclarationArr2[i37] = updatedMethodDeclaration;
                        i37++;
                    } else {
                        if (abstractMethodDeclarationArr2[i39] == this.methods[i38].methodDeclaration) {
                            break;
                        }
                        i39++;
                    }
                }
            }
            if (i37 != i34) {
                AbstractMethodDeclaration[] abstractMethodDeclarationArr3 = new AbstractMethodDeclaration[i37];
                System.arraycopy(abstractMethodDeclarationArr2, 0, abstractMethodDeclarationArr3, 0, i37);
                abstractMethodDeclarationArr2 = abstractMethodDeclarationArr3;
            }
            TypeDeclaration typeDeclaration3 = this.typeDeclaration;
            typeDeclaration3.methods = abstractMethodDeclarationArr2;
            if (abstractMethodDeclarationArr2[abstractMethodDeclarationArr2.length - 1].declarationSourceEnd > i14) {
                i14 = abstractMethodDeclarationArr2[abstractMethodDeclarationArr2.length - 1].declarationSourceEnd;
            }
            if (z14) {
                typeDeclaration3.bits |= 2048;
            }
            z10 = typeDeclaration3.checkConstructors(parser());
        } else {
            z10 = false;
            for (int i40 = 0; i40 < length4; i40++) {
                if (this.typeDeclaration.methods[i40].isConstructor()) {
                    z10 = true;
                }
            }
            z11 = false;
        }
        if (this.typeDeclaration.needClassInitMethod()) {
            int i41 = 0;
            while (true) {
                if (i41 >= length4) {
                    this.typeDeclaration.addClinit();
                    break;
                }
                if (this.typeDeclaration.methods[i41].isClinit()) {
                    break;
                }
                i41++;
            }
        }
        if (i33 < 0 || !z11) {
            int kind = TypeDeclaration.kind(this.typeDeclaration.modifiers);
            if (!z10 && kind != 2 && kind != 4 && this.typeDeclaration.allocation == null) {
                RecoveredElement recoveredElement = this.parent;
                while (true) {
                    if (recoveredElement == null) {
                        z12 = false;
                        break;
                    }
                    if (recoveredElement instanceof RecoveredField) {
                        z12 = true;
                        break;
                    }
                    recoveredElement = recoveredElement.parent;
                }
                this.typeDeclaration.createDefaultConstructor(!parser().diet || z12, true);
            }
        } else {
            AbstractMethodDeclaration[] abstractMethodDeclarationArr4 = this.typeDeclaration.methods;
            AbstractMethodDeclaration[] abstractMethodDeclarationArr5 = new AbstractMethodDeclaration[abstractMethodDeclarationArr4.length - 1];
            if (i33 != 0) {
                System.arraycopy(abstractMethodDeclarationArr4, 0, abstractMethodDeclarationArr5, 0, i33);
            }
            AbstractMethodDeclaration[] abstractMethodDeclarationArr6 = this.typeDeclaration.methods;
            if (i33 != abstractMethodDeclarationArr6.length - 1) {
                System.arraycopy(abstractMethodDeclarationArr6, i33 + 1, abstractMethodDeclarationArr5, i33, (abstractMethodDeclarationArr6.length - i33) - 1);
            }
            this.typeDeclaration.methods = abstractMethodDeclarationArr5;
        }
        RecoveredElement recoveredElement2 = this.parent;
        if (recoveredElement2 instanceof RecoveredType) {
            this.typeDeclaration.bits |= 1024;
        } else if (recoveredElement2 instanceof RecoveredMethod) {
            this.typeDeclaration.bits |= 256;
        }
        TypeDeclaration typeDeclaration4 = this.typeDeclaration;
        if (typeDeclaration4.declarationSourceEnd == 0) {
            typeDeclaration4.declarationSourceEnd = i14;
            typeDeclaration4.bodyEnd = i14;
        }
        return typeDeclaration4;
    }

    @Override
    public RecoveredElement add(Block block, int i10) {
        this.pendingTypeParameters = null;
        resetPendingModifiers();
        return add((FieldDeclaration) new Initializer(block, parser().recoveredStaticInitializerStart != 0 ? 8 : 0), i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0074 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0075 A[RETURN] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RecoveredElement add(FieldDeclaration fieldDeclaration, int i10) {
        RecoveredField recoveredField;
        int i11;
        this.pendingTypeParameters = null;
        int i12 = this.typeDeclaration.declarationSourceEnd;
        if (i12 != 0 && fieldDeclaration.declarationSourceStart > i12) {
            resetPendingModifiers();
            return this.parent.add(fieldDeclaration, i10);
        }
        RecoveredField[] recoveredFieldArr = this.fields;
        if (recoveredFieldArr == null) {
            this.fields = new RecoveredField[5];
            this.fieldCount = 0;
        } else {
            int i13 = this.fieldCount;
            if (i13 == recoveredFieldArr.length) {
                RecoveredField[] recoveredFieldArr2 = new RecoveredField[i13 * 2];
                this.fields = recoveredFieldArr2;
                System.arraycopy(recoveredFieldArr, 0, recoveredFieldArr2, 0, i13);
            }
        }
        int kind = fieldDeclaration.getKind();
        if (kind != 1) {
            if (kind == 2) {
                recoveredField = new RecoveredInitializer(fieldDeclaration, this, i10);
                RecoveredField[] recoveredFieldArr3 = this.fields;
                int i14 = this.fieldCount;
                this.fieldCount = i14 + 1;
                recoveredFieldArr3[i14] = recoveredField;
                i11 = this.pendingAnnotationCount;
                if (i11 > 0) {
                    recoveredField.attach(this.pendingAnnotations, i11, this.pendingModifiers, this.pendingModifersSourceStart);
                }
                resetPendingModifiers();
                if (!this.foundOpeningBrace) {
                    this.foundOpeningBrace = true;
                    this.bracketBalance++;
                }
                return fieldDeclaration.declarationSourceEnd != 0 ? recoveredField : this;
            }
            if (kind != 3) {
                return this;
            }
        }
        recoveredField = new RecoveredField(fieldDeclaration, this, i10);
        RecoveredField[] recoveredFieldArr32 = this.fields;
        int i142 = this.fieldCount;
        this.fieldCount = i142 + 1;
        recoveredFieldArr32[i142] = recoveredField;
        i11 = this.pendingAnnotationCount;
        if (i11 > 0) {
        }
        resetPendingModifiers();
        if (!this.foundOpeningBrace) {
        }
        if (fieldDeclaration.declarationSourceEnd != 0) {
        }
    }

    @Override
    public RecoveredElement add(TypeDeclaration typeDeclaration, int i10) {
        this.pendingTypeParameters = null;
        int i11 = this.typeDeclaration.declarationSourceEnd;
        if (i11 != 0 && typeDeclaration.declarationSourceStart > i11) {
            resetPendingModifiers();
            return this.parent.add(typeDeclaration, i10);
        }
        this.insideEnumConstantPart = false;
        if ((typeDeclaration.bits & 512) != 0) {
            int i12 = this.methodCount;
            if (i12 <= 0) {
                return this;
            }
            RecoveredMethod recoveredMethod = this.methods[i12 - 1];
            AbstractMethodDeclaration abstractMethodDeclaration = recoveredMethod.methodDeclaration;
            abstractMethodDeclaration.bodyEnd = 0;
            abstractMethodDeclaration.declarationSourceEnd = 0;
            recoveredMethod.bracketBalance++;
            resetPendingModifiers();
            return recoveredMethod.add(typeDeclaration, i10);
        }
        RecoveredType[] recoveredTypeArr = this.memberTypes;
        if (recoveredTypeArr == null) {
            this.memberTypes = new RecoveredType[5];
            this.memberTypeCount = 0;
        } else {
            int i13 = this.memberTypeCount;
            if (i13 == recoveredTypeArr.length) {
                RecoveredType[] recoveredTypeArr2 = new RecoveredType[i13 * 2];
                this.memberTypes = recoveredTypeArr2;
                System.arraycopy(recoveredTypeArr, 0, recoveredTypeArr2, 0, i13);
            }
        }
        RecoveredType recoveredType = new RecoveredType(typeDeclaration, this, i10);
        RecoveredType[] recoveredTypeArr3 = this.memberTypes;
        int i14 = this.memberTypeCount;
        this.memberTypeCount = i14 + 1;
        recoveredTypeArr3[i14] = recoveredType;
        int i15 = this.pendingAnnotationCount;
        if (i15 > 0) {
            recoveredType.attach(this.pendingAnnotations, i15, this.pendingModifiers, this.pendingModifersSourceStart);
        }
        resetPendingModifiers();
        if (!this.foundOpeningBrace) {
            this.foundOpeningBrace = true;
            this.bracketBalance++;
        }
        return typeDeclaration.declarationSourceEnd == 0 ? recoveredType : this;
    }

    public void add(TypeParameter[] typeParameterArr, int i10) {
        this.pendingTypeParameters = typeParameterArr;
        this.pendingTypeParametersStart = i10;
    }
}
