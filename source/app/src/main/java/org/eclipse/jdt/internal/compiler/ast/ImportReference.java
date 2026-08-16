package org.eclipse.jdt.internal.compiler.ast;

import java.util.HashSet;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.SplitPackageBinding;

public class ImportReference extends ASTNode {
    public Annotation[] annotations;
    public int declarationEnd;
    public int declarationSourceEnd;
    public int declarationSourceStart;
    public int modifiers;
    public long[] sourcePositions;
    public char[][] tokens;
    public int trailingStarPosition;

    public ImportReference(char[][] cArr, long[] jArr, boolean z10, int i10) {
        this.tokens = cArr;
        this.sourcePositions = jArr;
        if (z10) {
            this.bits |= 131072;
        }
        this.sourceEnd = (int) jArr[jArr.length - 1];
        this.sourceStart = (int) (jArr[0] >>> 32);
        this.modifiers = i10;
    }

    public void checkPackageConflict(CompilationUnitScope compilationUnitScope) {
        ModuleBinding module = compilationUnitScope.module();
        PackageBinding visiblePackage = module.getVisiblePackage(this.tokens);
        if (visiblePackage instanceof SplitPackageBinding) {
            HashSet hashSet = new HashSet();
            for (PackageBinding packageBinding : ((SplitPackageBinding) visiblePackage).incarnations) {
                if (packageBinding.enclosingModule != module && module.canAccess(packageBinding)) {
                    hashSet.add(packageBinding.enclosingModule);
                }
            }
            if (hashSet.isEmpty() || compilationUnitScope.compilerOptions().enableJdtDebugCompileMode) {
                return;
            }
            compilationUnitScope.problemReporter().conflictingPackagesFromOtherModules(this, hashSet);
        }
    }

    public char[][] getImportName() {
        return this.tokens;
    }

    public boolean isStatic() {
        return (this.modifiers & 8) != 0;
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        return print(i10, stringBuffer, true);
    }

    public void traverse(ASTVisitor aSTVisitor, CompilationUnitScope compilationUnitScope) {
        aSTVisitor.visit(this, compilationUnitScope);
        aSTVisitor.endVisit(this, compilationUnitScope);
    }

    public StringBuffer print(int i10, StringBuffer stringBuffer, boolean z10) {
        for (int i11 = 0; i11 < this.tokens.length; i11++) {
            if (i11 > 0) {
                stringBuffer.append('.');
            }
            stringBuffer.append(this.tokens[i11]);
        }
        if (z10 && (this.bits & 131072) != 0) {
            stringBuffer.append(".*");
        }
        return stringBuffer;
    }
}
