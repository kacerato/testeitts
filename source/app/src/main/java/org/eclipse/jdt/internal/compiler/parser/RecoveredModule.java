package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ExportsStatement;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleStatement;
import org.eclipse.jdt.internal.compiler.ast.OpensStatement;
import org.eclipse.jdt.internal.compiler.ast.ProvidesStatement;
import org.eclipse.jdt.internal.compiler.ast.RequiresStatement;
import org.eclipse.jdt.internal.compiler.ast.UsesStatement;

public class RecoveredModule extends RecoveredElement {
    public int exportCount;
    public RecoveredExportsStatement[] exports;
    public ModuleDeclaration moduleDeclaration;
    public RecoveredOpensStatement[] opens;
    public int opensCount;
    public RecoveredRequiresStatement[] requires;
    public int requiresCount;
    public RecoveredProvidesStatement[] services;
    public int servicesCount;
    public RecoveredUsesStatement[] uses;
    public int usesCount;

    public RecoveredModule(ModuleDeclaration moduleDeclaration, RecoveredElement recoveredElement, int i10) {
        super(recoveredElement, i10);
        this.moduleDeclaration = moduleDeclaration;
    }

    private void genAssign(UsesStatement usesStatement, int i10) {
        RecoveredUsesStatement[] recoveredUsesStatementArr = this.uses;
        if (recoveredUsesStatementArr == null) {
            this.uses = new RecoveredUsesStatement[5];
            this.usesCount = 0;
        } else {
            int i11 = this.usesCount;
            if (i11 == recoveredUsesStatementArr.length) {
                RecoveredUsesStatement[] recoveredUsesStatementArr2 = new RecoveredUsesStatement[i11 * 2];
                this.uses = recoveredUsesStatementArr2;
                System.arraycopy(recoveredUsesStatementArr, 0, recoveredUsesStatementArr2, 0, i11);
            }
        }
        RecoveredUsesStatement recoveredUsesStatement = new RecoveredUsesStatement(usesStatement, this, i10);
        RecoveredUsesStatement[] recoveredUsesStatementArr3 = this.uses;
        int i12 = this.usesCount;
        this.usesCount = i12 + 1;
        recoveredUsesStatementArr3[i12] = recoveredUsesStatement;
    }

    private void updateExports(ModuleDeclaration moduleDeclaration) {
        int i10 = this.exportCount;
        if (i10 > 0) {
            int i11 = moduleDeclaration.exportsCount;
            ExportsStatement[] exportsStatementArr = new ExportsStatement[i10 + i11];
            int i12 = 0;
            if (i11 > 0) {
                System.arraycopy(moduleDeclaration.exports, 0, exportsStatementArr, 0, i11);
            } else {
                i11 = 0;
            }
            while (i12 < this.exportCount) {
                exportsStatementArr[i11] = (ExportsStatement) this.exports[i12].updatedPackageVisibilityStatement();
                i12++;
                i11++;
            }
            moduleDeclaration.exports = exportsStatementArr;
            moduleDeclaration.exportsCount = i11;
        }
    }

    private void updateOpens(ModuleDeclaration moduleDeclaration) {
        int i10 = this.opensCount;
        if (i10 > 0) {
            int i11 = moduleDeclaration.opensCount;
            OpensStatement[] opensStatementArr = new OpensStatement[i10 + i11];
            int i12 = 0;
            if (i11 > 0) {
                System.arraycopy(moduleDeclaration.exports, 0, opensStatementArr, 0, i11);
            } else {
                i11 = 0;
            }
            while (i12 < this.opensCount) {
                opensStatementArr[i11] = (OpensStatement) this.opens[i12].updatedPackageVisibilityStatement();
                i12++;
                i11++;
            }
            moduleDeclaration.opens = opensStatementArr;
            moduleDeclaration.opensCount = i11;
        }
    }

    private void updateRequires(ModuleDeclaration moduleDeclaration) {
        int i10 = this.requiresCount;
        if (i10 > 0) {
            int i11 = moduleDeclaration.requiresCount;
            RequiresStatement[] requiresStatementArr = new RequiresStatement[i10 + i11];
            int i12 = 0;
            if (i11 > 0) {
                System.arraycopy(moduleDeclaration.requires, 0, requiresStatementArr, 0, i11);
            } else {
                i11 = 0;
            }
            while (i12 < this.requiresCount) {
                requiresStatementArr[i11] = this.requires[i12].updatedRequiresStatement();
                i12++;
                i11++;
            }
            moduleDeclaration.requires = requiresStatementArr;
            moduleDeclaration.requiresCount = i11;
        }
    }

    private void updateServices(ModuleDeclaration moduleDeclaration) {
        int i10 = this.servicesCount;
        if (i10 > 0) {
            int i11 = moduleDeclaration.servicesCount;
            ProvidesStatement[] providesStatementArr = new ProvidesStatement[i10 + i11];
            int i12 = 0;
            if (i11 > 0) {
                System.arraycopy(moduleDeclaration.services, 0, providesStatementArr, 0, i11);
            } else {
                i11 = 0;
            }
            while (i12 < this.servicesCount) {
                providesStatementArr[i11] = this.services[i12].updatedProvidesStatement();
                i12++;
                i11++;
            }
            moduleDeclaration.services = providesStatementArr;
            moduleDeclaration.servicesCount = i11;
        }
    }

    private void updateUses(ModuleDeclaration moduleDeclaration) {
        int i10 = this.usesCount;
        if (i10 > 0) {
            int i11 = moduleDeclaration.usesCount;
            UsesStatement[] usesStatementArr = new UsesStatement[i10 + i11];
            int i12 = 0;
            if (i11 > 0) {
                System.arraycopy(moduleDeclaration.uses, 0, usesStatementArr, 0, i11);
            } else {
                i11 = 0;
            }
            while (i12 < this.usesCount) {
                usesStatementArr[i11] = this.uses[i12].updatedUsesStatement();
                i12++;
                i11++;
            }
            moduleDeclaration.uses = usesStatementArr;
            moduleDeclaration.usesCount = i11;
        }
    }

    @Override
    public RecoveredElement add(ModuleStatement moduleStatement, int i10) {
        if (moduleStatement instanceof ExportsStatement) {
            return add((ExportsStatement) moduleStatement, i10);
        }
        if (moduleStatement instanceof OpensStatement) {
            return add((OpensStatement) moduleStatement, i10);
        }
        if (moduleStatement instanceof RequiresStatement) {
            return add((RequiresStatement) moduleStatement, i10);
        }
        if (moduleStatement instanceof ProvidesStatement) {
            return add((ProvidesStatement) moduleStatement, i10);
        }
        return moduleStatement instanceof UsesStatement ? add((UsesStatement) moduleStatement, i10) : this;
    }

    @Override
    public String toString(int i10) {
        StringBuffer stringBuffer = new StringBuffer(tabString(i10));
        stringBuffer.append("Recovered module:\n");
        stringBuffer.append("module ");
        stringBuffer.append(CharOperation.charToString(this.moduleDeclaration.moduleName));
        stringBuffer.append(" {");
        if (this.exportCount > 0) {
            for (int i11 = 0; i11 < this.exportCount; i11++) {
                stringBuffer.append("\n");
                stringBuffer.append(this.exports[i11].toString(i10 + 1));
            }
        }
        if (this.requiresCount > 0) {
            for (int i12 = 0; i12 < this.requiresCount; i12++) {
                stringBuffer.append("\n");
                stringBuffer.append(this.requires[i12].toString(i10 + 1));
            }
        }
        if (this.usesCount > 0) {
            for (int i13 = 0; i13 < this.usesCount; i13++) {
                stringBuffer.append("\n");
                stringBuffer.append(this.uses[i13].toString(i10 + 1));
            }
        }
        if (this.servicesCount > 0) {
            for (int i14 = 0; i14 < this.servicesCount; i14++) {
                stringBuffer.append("\n");
                stringBuffer.append(this.services[i14].toString(i10 + 1));
            }
        }
        stringBuffer.append("\n}");
        return stringBuffer.toString();
    }

    @Override
    public void updateParseTree() {
        updatedModuleDeclaration();
    }

    public ModuleDeclaration updatedModuleDeclaration() {
        updateExports(this.moduleDeclaration);
        updateOpens(this.moduleDeclaration);
        updateRequires(this.moduleDeclaration);
        updateUses(this.moduleDeclaration);
        updateServices(this.moduleDeclaration);
        return this.moduleDeclaration;
    }

    public RecoveredElement add(ExportsStatement exportsStatement, int i10) {
        resetPendingModifiers();
        RecoveredExportsStatement[] recoveredExportsStatementArr = this.exports;
        if (recoveredExportsStatementArr == null) {
            this.exports = new RecoveredExportsStatement[5];
            this.exportCount = 0;
        } else {
            int i11 = this.exportCount;
            if (i11 == recoveredExportsStatementArr.length) {
                RecoveredExportsStatement[] recoveredExportsStatementArr2 = new RecoveredExportsStatement[i11 * 2];
                this.exports = recoveredExportsStatementArr2;
                System.arraycopy(recoveredExportsStatementArr, 0, recoveredExportsStatementArr2, 0, i11);
            }
        }
        RecoveredExportsStatement recoveredExportsStatement = new RecoveredExportsStatement(exportsStatement, this, i10);
        RecoveredExportsStatement[] recoveredExportsStatementArr3 = this.exports;
        int i12 = this.exportCount;
        this.exportCount = i12 + 1;
        recoveredExportsStatementArr3[i12] = recoveredExportsStatement;
        return recoveredExportsStatement;
    }

    public RecoveredElement add(OpensStatement opensStatement, int i10) {
        resetPendingModifiers();
        RecoveredOpensStatement[] recoveredOpensStatementArr = this.opens;
        if (recoveredOpensStatementArr == null) {
            this.opens = new RecoveredOpensStatement[5];
            this.opensCount = 0;
        } else {
            int i11 = this.opensCount;
            if (i11 == recoveredOpensStatementArr.length) {
                RecoveredOpensStatement[] recoveredOpensStatementArr2 = new RecoveredOpensStatement[i11 * 2];
                this.opens = recoveredOpensStatementArr2;
                System.arraycopy(recoveredOpensStatementArr, 0, recoveredOpensStatementArr2, 0, i11);
            }
        }
        RecoveredOpensStatement recoveredOpensStatement = new RecoveredOpensStatement(opensStatement, this, i10);
        RecoveredOpensStatement[] recoveredOpensStatementArr3 = this.opens;
        int i12 = this.opensCount;
        this.opensCount = i12 + 1;
        recoveredOpensStatementArr3[i12] = recoveredOpensStatement;
        return recoveredOpensStatement;
    }

    public RecoveredElement add(RequiresStatement requiresStatement, int i10) {
        RecoveredRequiresStatement[] recoveredRequiresStatementArr = this.requires;
        if (recoveredRequiresStatementArr == null) {
            this.requires = new RecoveredRequiresStatement[5];
            this.requiresCount = 0;
        } else {
            int i11 = this.requiresCount;
            if (i11 == recoveredRequiresStatementArr.length) {
                RecoveredRequiresStatement[] recoveredRequiresStatementArr2 = new RecoveredRequiresStatement[i11 * 2];
                this.requires = recoveredRequiresStatementArr2;
                System.arraycopy(recoveredRequiresStatementArr, 0, recoveredRequiresStatementArr2, 0, i11);
            }
        }
        RecoveredRequiresStatement recoveredRequiresStatement = new RecoveredRequiresStatement(requiresStatement, this, i10);
        RecoveredRequiresStatement[] recoveredRequiresStatementArr3 = this.requires;
        int i12 = this.requiresCount;
        this.requiresCount = i12 + 1;
        recoveredRequiresStatementArr3[i12] = recoveredRequiresStatement;
        return this;
    }

    public RecoveredElement add(ProvidesStatement providesStatement, int i10) {
        RecoveredProvidesStatement[] recoveredProvidesStatementArr = this.services;
        if (recoveredProvidesStatementArr == null) {
            this.services = new RecoveredProvidesStatement[5];
            this.servicesCount = 0;
        } else {
            int i11 = this.servicesCount;
            if (i11 == recoveredProvidesStatementArr.length) {
                RecoveredProvidesStatement[] recoveredProvidesStatementArr2 = new RecoveredProvidesStatement[i11 * 2];
                this.services = recoveredProvidesStatementArr2;
                System.arraycopy(recoveredProvidesStatementArr, 0, recoveredProvidesStatementArr2, 0, i11);
            }
        }
        RecoveredProvidesStatement recoveredProvidesStatement = new RecoveredProvidesStatement(providesStatement, this, i10);
        RecoveredProvidesStatement[] recoveredProvidesStatementArr3 = this.services;
        int i12 = this.servicesCount;
        this.servicesCount = i12 + 1;
        recoveredProvidesStatementArr3[i12] = recoveredProvidesStatement;
        return recoveredProvidesStatement;
    }

    public RecoveredElement add(UsesStatement usesStatement, int i10) {
        genAssign(usesStatement, i10);
        return this;
    }
}
