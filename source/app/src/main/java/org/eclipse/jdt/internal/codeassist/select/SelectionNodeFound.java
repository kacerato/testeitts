package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.lookup.Binding;

public class SelectionNodeFound extends RuntimeException {
    private static final long serialVersionUID = -7335444736618092295L;
    public Binding binding;
    public boolean isDeclaration;

    public SelectionNodeFound() {
        this(null, false);
    }

    public SelectionNodeFound(Binding binding) {
        this(binding, false);
    }

    public SelectionNodeFound(Binding binding, boolean z10) {
        this.binding = binding;
        this.isDeclaration = z10;
    }
}
