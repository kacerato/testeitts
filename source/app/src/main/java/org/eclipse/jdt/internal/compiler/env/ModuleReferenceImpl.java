package org.eclipse.jdt.internal.compiler.env;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IModule;

public class ModuleReferenceImpl implements IModule.IModuleReference {
    public int modifiers;
    public char[] name;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IModule.IModuleReference)) {
            return false;
        }
        IModule.IModuleReference iModuleReference = (IModule.IModuleReference) obj;
        if (this.modifiers != iModuleReference.getModifiers()) {
            return false;
        }
        return CharOperation.equals(this.name, iModuleReference.name());
    }

    @Override
    public int getModifiers() {
        return this.modifiers;
    }

    public int hashCode() {
        return CharOperation.hashCode(this.name);
    }

    @Override
    public char[] name() {
        return this.name;
    }
}
