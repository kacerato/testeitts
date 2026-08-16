package org.eclipse.jdt.internal.compiler.parser;

import java.util.HashSet;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ExportsStatement;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;

public class RecoveredUnit extends RecoveredElement {
    public int importCount;
    public RecoveredImport[] imports;
    public RecoveredModule module;
    int pendingAnnotationCount;
    RecoveredAnnotation[] pendingAnnotations;
    int pendingModifersSourceStart;
    int pendingModifiers;
    public int typeCount;
    public RecoveredType[] types;
    public CompilationUnitDeclaration unitDeclaration;

    public RecoveredUnit(CompilationUnitDeclaration compilationUnitDeclaration, int i10, Parser parser) {
        super(null, i10, parser);
        this.pendingModifersSourceStart = -1;
        this.unitDeclaration = compilationUnitDeclaration;
    }

    @Override
    public RecoveredElement add(AbstractMethodDeclaration abstractMethodDeclaration, int i10) {
        int i11 = this.typeCount;
        if (i11 <= 0) {
            return this;
        }
        RecoveredType recoveredType = this.types[i11 - 1];
        int i12 = recoveredType.bodyEnd;
        TypeDeclaration typeDeclaration = recoveredType.typeDeclaration;
        int i13 = typeDeclaration.bodyEnd;
        recoveredType.bodyEnd = 0;
        typeDeclaration.declarationSourceEnd = 0;
        typeDeclaration.bodyEnd = 0;
        int kind = TypeDeclaration.kind(typeDeclaration.modifiers);
        if (i12 > 0 && i12 < i13 && kind != 2 && kind != 4) {
            Block block = new Block(0);
            block.sourceEnd = i13;
            block.sourceStart = i13;
            Initializer initializer = new Initializer(block, 0);
            initializer.bodyStart = i13;
            initializer.bodyEnd = i13;
            initializer.declarationSourceStart = i13;
            initializer.declarationSourceEnd = i13;
            initializer.sourceStart = i13;
            initializer.sourceEnd = i13;
            recoveredType.add((FieldDeclaration) initializer, i10);
        }
        resetPendingModifiers();
        return recoveredType.add(abstractMethodDeclaration, i10);
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
    public int getLastStart() {
        int i10;
        int i11 = this.typeCount;
        if (i11 <= 0 || -1 >= (i10 = this.types[i11 - 1].typeDeclaration.declarationSourceStart) || i10 == 0) {
            return -1;
        }
        return i10;
    }

    @Override
    public ASTNode parseTree() {
        return this.unitDeclaration;
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
        return this.unitDeclaration.sourceEnd;
    }

    @Override
    public String toString(int i10) {
        StringBuffer stringBuffer = new StringBuffer(tabString(i10));
        stringBuffer.append("Recovered unit: [\n");
        int i11 = i10 + 1;
        this.unitDeclaration.print(i11, stringBuffer);
        stringBuffer.append(tabString(i11));
        stringBuffer.append("]");
        if (this.imports != null) {
            for (int i12 = 0; i12 < this.importCount; i12++) {
                stringBuffer.append("\n");
                stringBuffer.append(this.imports[i12].toString(i11));
            }
        }
        if (this.types != null) {
            for (int i13 = 0; i13 < this.typeCount; i13++) {
                stringBuffer.append("\n");
                stringBuffer.append(this.types[i13].toString(i11));
            }
        }
        return stringBuffer.toString();
    }

    @Override
    public void updateParseTree() {
        updatedCompilationUnitDeclaration();
    }

    @Override
    public void updateSourceEndIfNecessary(int i10, int i11) {
        CompilationUnitDeclaration compilationUnitDeclaration = this.unitDeclaration;
        if (compilationUnitDeclaration.sourceEnd == 0) {
            compilationUnitDeclaration.sourceEnd = i11;
        }
    }

    public CompilationUnitDeclaration updatedCompilationUnitDeclaration() {
        int i10;
        int i11 = this.importCount;
        if (i11 > 0) {
            ImportReference[] importReferenceArr = new ImportReference[i11];
            for (int i12 = 0; i12 < this.importCount; i12++) {
                importReferenceArr[i12] = this.imports[i12].updatedImportReference();
            }
            this.unitDeclaration.imports = importReferenceArr;
        }
        RecoveredModule recoveredModule = this.module;
        if (recoveredModule != null) {
            this.unitDeclaration.moduleDeclaration = recoveredModule.updatedModuleDeclaration();
        }
        int i13 = this.typeCount;
        if (i13 > 0) {
            TypeDeclaration[] typeDeclarationArr = this.unitDeclaration.types;
            int length = typeDeclarationArr == null ? 0 : typeDeclarationArr.length;
            TypeDeclaration[] typeDeclarationArr2 = new TypeDeclaration[i13 + length];
            if (length > 0) {
                System.arraycopy(typeDeclarationArr, 0, typeDeclarationArr2, 0, length);
            }
            RecoveredType[] recoveredTypeArr = this.types;
            int i14 = this.typeCount;
            if (recoveredTypeArr[i14 - 1].typeDeclaration.declarationSourceEnd == 0) {
                TypeDeclaration typeDeclaration = recoveredTypeArr[i14 - 1].typeDeclaration;
                int i15 = this.unitDeclaration.sourceEnd;
                typeDeclaration.declarationSourceEnd = i15;
                recoveredTypeArr[i14 - 1].typeDeclaration.bodyEnd = i15;
            }
            HashSet hashSet = new HashSet();
            int i16 = 0;
            int i17 = length;
            while (true) {
                i10 = this.typeCount;
                if (i16 >= i10) {
                    break;
                }
                TypeDeclaration updatedTypeDeclaration = this.types[i16].updatedTypeDeclaration(0, hashSet);
                if (updatedTypeDeclaration != null && (updatedTypeDeclaration.bits & 256) == 0) {
                    typeDeclarationArr2[i17] = updatedTypeDeclaration;
                    i17++;
                }
                i16++;
            }
            if (i17 != i10) {
                int i18 = length + i17;
                TypeDeclaration[] typeDeclarationArr3 = new TypeDeclaration[i18];
                System.arraycopy(typeDeclarationArr2, 0, typeDeclarationArr3, 0, i18);
                typeDeclarationArr2 = typeDeclarationArr3;
            }
            this.unitDeclaration.types = typeDeclarationArr2;
        }
        return this.unitDeclaration;
    }

    @Override
    public RecoveredElement add(FieldDeclaration fieldDeclaration, int i10) {
        int i11 = this.typeCount;
        if (i11 <= 0) {
            return this;
        }
        RecoveredType recoveredType = this.types[i11 - 1];
        recoveredType.bodyEnd = 0;
        TypeDeclaration typeDeclaration = recoveredType.typeDeclaration;
        typeDeclaration.declarationSourceEnd = 0;
        typeDeclaration.bodyEnd = 0;
        resetPendingModifiers();
        return recoveredType.add(fieldDeclaration, i10);
    }

    public RecoveredElement add(ExportsStatement exportsStatement, int i10) {
        RecoveredModule recoveredModule = this.module;
        if (recoveredModule != null) {
            return recoveredModule.add(exportsStatement, i10);
        }
        return null;
    }

    @Override
    public RecoveredElement add(ImportReference importReference, int i10) {
        resetPendingModifiers();
        RecoveredImport[] recoveredImportArr = this.imports;
        if (recoveredImportArr == null) {
            this.imports = new RecoveredImport[5];
            this.importCount = 0;
        } else {
            int i11 = this.importCount;
            if (i11 == recoveredImportArr.length) {
                RecoveredImport[] recoveredImportArr2 = new RecoveredImport[i11 * 2];
                this.imports = recoveredImportArr2;
                System.arraycopy(recoveredImportArr, 0, recoveredImportArr2, 0, i11);
            }
        }
        RecoveredImport recoveredImport = new RecoveredImport(importReference, this, i10);
        RecoveredImport[] recoveredImportArr3 = this.imports;
        int i12 = this.importCount;
        this.importCount = i12 + 1;
        recoveredImportArr3[i12] = recoveredImport;
        return importReference.declarationSourceEnd == 0 ? recoveredImport : this;
    }

    @Override
    public RecoveredElement add(ModuleDeclaration moduleDeclaration, int i10) {
        RecoveredModule recoveredModule = new RecoveredModule(moduleDeclaration, this, i10);
        this.module = recoveredModule;
        return recoveredModule;
    }

    @Override
    public RecoveredElement add(TypeDeclaration typeDeclaration, int i10) {
        int i11;
        if ((typeDeclaration.bits & 512) != 0 && (i11 = this.typeCount) > 0) {
            RecoveredType recoveredType = this.types[i11 - 1];
            recoveredType.bodyEnd = 0;
            TypeDeclaration typeDeclaration2 = recoveredType.typeDeclaration;
            typeDeclaration2.bodyEnd = 0;
            typeDeclaration2.declarationSourceEnd = 0;
            recoveredType.bracketBalance++;
            resetPendingModifiers();
            return recoveredType.add(typeDeclaration, i10);
        }
        RecoveredType[] recoveredTypeArr = this.types;
        if (recoveredTypeArr == null) {
            this.types = new RecoveredType[5];
            this.typeCount = 0;
        } else {
            int i12 = this.typeCount;
            if (i12 == recoveredTypeArr.length) {
                RecoveredType[] recoveredTypeArr2 = new RecoveredType[i12 * 2];
                this.types = recoveredTypeArr2;
                System.arraycopy(recoveredTypeArr, 0, recoveredTypeArr2, 0, i12);
            }
        }
        RecoveredType recoveredType2 = new RecoveredType(typeDeclaration, this, i10);
        RecoveredType[] recoveredTypeArr3 = this.types;
        int i13 = this.typeCount;
        this.typeCount = i13 + 1;
        recoveredTypeArr3[i13] = recoveredType2;
        int i14 = this.pendingAnnotationCount;
        if (i14 > 0) {
            recoveredType2.attach(this.pendingAnnotations, i14, this.pendingModifiers, this.pendingModifersSourceStart);
        }
        resetPendingModifiers();
        return typeDeclaration.declarationSourceEnd == 0 ? recoveredType2 : this;
    }
}
