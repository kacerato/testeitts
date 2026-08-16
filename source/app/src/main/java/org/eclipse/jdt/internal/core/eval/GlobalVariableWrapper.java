package org.eclipse.jdt.internal.core.eval;

import org.eclipse.jdt.core.eval.IGlobalVariable;
import org.eclipse.jdt.internal.eval.GlobalVariable;

class GlobalVariableWrapper implements IGlobalVariable {
    GlobalVariable variable;

    public GlobalVariableWrapper(GlobalVariable globalVariable) {
        this.variable = globalVariable;
    }

    @Override
    public String getInitializer() {
        char[] initializer = this.variable.getInitializer();
        if (initializer != null) {
            return new String(initializer);
        }
        return null;
    }

    @Override
    public String getName() {
        return new String(this.variable.getName());
    }

    @Override
    public String getTypeName() {
        return new String(this.variable.getTypeName());
    }
}
