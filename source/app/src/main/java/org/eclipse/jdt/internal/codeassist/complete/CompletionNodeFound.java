package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;

public class CompletionNodeFound extends RuntimeException {
    private static final long serialVersionUID = 6981437684184091462L;
    public ASTNode astNode;
    public boolean insideTypeAnnotation;
    public Binding qualifiedBinding;
    public Scope scope;

    public CompletionNodeFound() {
        this(null, null, null, false);
    }

    public CompletionNodeFound(ASTNode aSTNode, Binding binding, Scope scope) {
        this(aSTNode, binding, scope, false);
    }

    public CompletionNodeFound(ASTNode aSTNode, Binding binding, Scope scope, boolean z10) {
        this.astNode = aSTNode;
        this.qualifiedBinding = binding;
        this.scope = scope;
        this.insideTypeAnnotation = z10;
    }

    public CompletionNodeFound(ASTNode aSTNode, Scope scope) {
        this(aSTNode, null, scope, false);
    }

    public CompletionNodeFound(ASTNode aSTNode, Scope scope, boolean z10) {
        this(aSTNode, null, scope, z10);
    }
}
