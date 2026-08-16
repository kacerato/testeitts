package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceModuleBinding;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;

public abstract class PackageVisibilityStatement extends ModuleStatement {
    public char[] pkgName;
    public ImportReference pkgRef;
    public PackageBinding resolvedPackage;
    public ModuleReference[] targets;

    public PackageVisibilityStatement(ImportReference importReference, ModuleReference[] moduleReferenceArr) {
        this.pkgRef = importReference;
        this.pkgName = CharOperation.concatWith(importReference.tokens, '.');
        this.targets = moduleReferenceArr;
    }

    public int computeSeverity(int i10) {
        return 1;
    }

    public ModuleReference[] getTargetedModules() {
        return this.targets;
    }

    public boolean isQualified() {
        ModuleReference[] moduleReferenceArr = this.targets;
        return moduleReferenceArr != null && moduleReferenceArr.length > 0;
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        this.pkgRef.print(i10, stringBuffer);
        if (isQualified()) {
            stringBuffer.append(" to ");
            for (int i11 = 0; i11 < this.targets.length; i11++) {
                if (i11 > 0) {
                    stringBuffer.append(", ");
                }
                this.targets[i11].print(0, stringBuffer);
            }
        }
        return stringBuffer;
    }

    public boolean resolve(Scope scope) {
        int i10 = 0;
        boolean z10 = resolvePackageReference(scope) == null;
        if (isQualified()) {
            HashtableOfObject hashtableOfObject = new HashtableOfObject(this.targets.length);
            while (true) {
                ModuleReference[] moduleReferenceArr = this.targets;
                if (i10 >= moduleReferenceArr.length) {
                    break;
                }
                ModuleReference moduleReference = moduleReferenceArr[i10];
                if (hashtableOfObject.containsKey(moduleReference.moduleName)) {
                    scope.problemReporter().duplicateModuleReference(IProblem.DuplicateModuleRef, moduleReference);
                    z10 = true;
                } else {
                    moduleReference.resolve(scope.compilationUnitScope());
                    hashtableOfObject.put(moduleReference.moduleName, moduleReference);
                }
                i10++;
            }
        }
        return !z10;
    }

    public PackageBinding resolvePackageReference(Scope scope) {
        PackageBinding packageBinding = this.resolvedPackage;
        if (packageBinding != null) {
            return packageBinding;
        }
        SourceModuleBinding sourceModuleBinding = scope.compilationUnitScope().referenceContext.moduleDeclaration.binding;
        PackageBinding visiblePackage = sourceModuleBinding != null ? sourceModuleBinding.getVisiblePackage(this.pkgRef.tokens) : null;
        this.resolvedPackage = visiblePackage;
        if (visiblePackage == null) {
            scope.problemReporter().invalidPackageReference(IProblem.PackageDoesNotExistOrIsEmpty, this, computeSeverity(IProblem.PackageDoesNotExistOrIsEmpty));
        } else if (!visiblePackage.isDeclaredIn(sourceModuleBinding)) {
            this.resolvedPackage = null;
            scope.problemReporter().invalidPackageReference(IProblem.PackageDoesNotExistOrIsEmpty, this, computeSeverity(IProblem.PackageDoesNotExistOrIsEmpty));
        }
        return this.resolvedPackage;
    }
}
