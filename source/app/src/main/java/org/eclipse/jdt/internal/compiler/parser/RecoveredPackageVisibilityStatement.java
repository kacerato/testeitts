package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;
import org.eclipse.jdt.internal.compiler.ast.PackageVisibilityStatement;

public class RecoveredPackageVisibilityStatement extends RecoveredModuleStatement {
    RecoveredImport pkgRef;
    int targetCount;
    RecoveredModuleReference[] targets;

    public RecoveredPackageVisibilityStatement(PackageVisibilityStatement packageVisibilityStatement, RecoveredElement recoveredElement, int i10) {
        super(packageVisibilityStatement, recoveredElement, i10);
        this.targetCount = 0;
    }

    @Override
    public RecoveredElement add(ImportReference importReference, int i10) {
        this.pkgRef = new RecoveredImport(importReference, this, i10);
        return this;
    }

    @Override
    public String toString(int i10) {
        return super.toString();
    }

    @Override
    public void updateParseTree() {
        updatedPackageVisibilityStatement();
    }

    public PackageVisibilityStatement updatedPackageVisibilityStatement() {
        PackageVisibilityStatement packageVisibilityStatement = (PackageVisibilityStatement) this.moduleStatement;
        RecoveredImport recoveredImport = this.pkgRef;
        if (recoveredImport != null) {
            packageVisibilityStatement.pkgRef = recoveredImport.updatedImportReference();
        }
        int i10 = this.targetCount;
        if (i10 > 0) {
            ModuleReference[] moduleReferenceArr = packageVisibilityStatement.targets;
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
            packageVisibilityStatement.targets = moduleReferenceArr2;
        }
        return packageVisibilityStatement;
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
        return this;
    }
}
