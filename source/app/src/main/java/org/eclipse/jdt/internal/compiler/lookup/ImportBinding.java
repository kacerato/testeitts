package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;

public class ImportBinding extends Binding {
    public char[][] compoundName;
    public boolean onDemand;
    public ImportReference reference;
    public Binding resolvedImport;

    public ImportBinding(char[][] cArr, boolean z10, Binding binding, ImportReference importReference) {
        this.compoundName = cArr;
        this.onDemand = z10;
        this.resolvedImport = binding;
        this.reference = importReference;
    }

    public boolean isStatic() {
        ImportReference importReference = this.reference;
        return importReference != null && importReference.isStatic();
    }

    @Override
    public final int kind() {
        return 32;
    }

    @Override
    public char[] readableName() {
        return this.onDemand ? CharOperation.concat(CharOperation.concatWith(this.compoundName, '.'), ".*".toCharArray()) : CharOperation.concatWith(this.compoundName, '.');
    }

    public String toString() {
        return "import : " + new String(readableName());
    }
}
