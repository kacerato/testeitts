package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ExportsStatement;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;

public class RecoveredExport extends RecoveredElement {
    public ExportsStatement exportReference;
    int targetCount;
    RecoveredModuleReference[] targets;

    public RecoveredExport(ExportsStatement exportsStatement, RecoveredElement recoveredElement, int i10) {
        super(recoveredElement, i10);
        this.targetCount = 0;
        this.exportReference = exportsStatement;
    }

    public RecoveredElement add(ModuleReference moduleReference, int i10) {
        RecoveredModuleReference[] recoveredModuleReferenceArr = this.targets;
        if (recoveredModuleReferenceArr == null) {
            this.targets = new RecoveredModuleReference[5];
            this.targetCount = 0;
        } else {
            int i11 = this.targetCount;
            if (i11 == recoveredModuleReferenceArr.length) {
                RecoveredModuleReference[] recoveredModuleReferenceArr2 = new RecoveredModuleReference[i11 * 2];
                this.targets = recoveredModuleReferenceArr2;
                System.arraycopy(recoveredModuleReferenceArr, 0, recoveredModuleReferenceArr2, 0, i11);
            }
        }
        RecoveredModuleReference recoveredModuleReference = new RecoveredModuleReference(moduleReference, this, i10);
        RecoveredModuleReference[] recoveredModuleReferenceArr3 = this.targets;
        int i12 = this.targetCount;
        this.targetCount = i12 + 1;
        recoveredModuleReferenceArr3[i12] = recoveredModuleReference;
        return moduleReference.sourceEnd == 0 ? recoveredModuleReference : this;
    }

    @Override
    public ASTNode parseTree() {
        return this.exportReference;
    }

    @Override
    public int sourceEnd() {
        return this.exportReference.declarationSourceEnd;
    }

    @Override
    public String toString(int i10) {
        return String.valueOf(tabString(i10)) + "Recovered export: " + this.exportReference.toString();
    }

    @Override
    public void updateParseTree() {
        updatedExportReference();
    }

    @Override
    public void updateSourceEndIfNecessary(int i10, int i11) {
        ExportsStatement exportsStatement = this.exportReference;
        if (exportsStatement.declarationSourceEnd == 0) {
            exportsStatement.declarationSourceEnd = i11;
            exportsStatement.declarationEnd = i11;
        }
    }

    public ExportsStatement updatedExportReference() {
        int i10 = this.targetCount;
        if (i10 > 0) {
            ModuleReference[] moduleReferenceArr = this.exportReference.targets;
            int i11 = 0;
            int length = moduleReferenceArr != null ? moduleReferenceArr.length : 0;
            ModuleReference[] moduleReferenceArr2 = new ModuleReference[i10 + length];
            if (length > 0) {
                System.arraycopy(moduleReferenceArr, 0, moduleReferenceArr2, 0, length);
            } else {
                length = 0;
            }
            int i12 = this.targetCount;
            while (i11 < i12) {
                moduleReferenceArr2[length] = this.targets[i11].updatedModuleReference();
                i11++;
                length++;
            }
            this.exportReference.targets = moduleReferenceArr2;
        }
        return this.exportReference;
    }
}
