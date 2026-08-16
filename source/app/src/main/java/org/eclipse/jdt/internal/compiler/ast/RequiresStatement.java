package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;

public class RequiresStatement extends ModuleStatement {
    public int modifiers = 0;
    public int modifiersSourceStart;
    public ModuleReference module;
    public ModuleBinding resolvedBinding;

    public RequiresStatement(ModuleReference moduleReference) {
        this.module = moduleReference;
    }

    public boolean isStatic() {
        return (this.modifiers & 64) != 0;
    }

    public boolean isTransitive() {
        return (this.modifiers & 32) != 0;
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("requires ");
        if (isTransitive()) {
            stringBuffer.append("transitive ");
        }
        if (isStatic()) {
            stringBuffer.append("static ");
        }
        this.module.print(i10, stringBuffer);
        stringBuffer.append(";");
        return stringBuffer;
    }

    public ModuleBinding resolve(Scope scope) {
        ModuleBinding moduleBinding = this.resolvedBinding;
        if (moduleBinding != null) {
            return moduleBinding;
        }
        ModuleBinding resolve = this.module.resolve(scope);
        this.resolvedBinding = resolve;
        if (scope != null) {
            if (resolve == null) {
                scope.problemReporter().invalidModule(this.module);
            } else if (resolve.hasUnstableAutoName()) {
                scope.problemReporter().autoModuleWithUnstableName(this.module);
            }
        }
        return this.resolvedBinding;
    }
}
