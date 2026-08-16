package org.eclipse.jdt.core.dom;

import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public abstract class MethodReference extends Expression {
    ASTNode.NodeList typeArguments;

    public MethodReference(AST ast) {
        super(ast);
        this.typeArguments = new ASTNode.NodeList(getTypeArgumentsProperty());
    }

    public static final ChildListPropertyDescriptor internalTypeArgumentsFactory(Class cls) {
        return new ChildListPropertyDescriptor(cls, "typeArguments", Type.class, false);
    }

    public final ChildListPropertyDescriptor getTypeArgumentsProperty() {
        return internalTypeArgumentsProperty();
    }

    public abstract ChildListPropertyDescriptor internalTypeArgumentsProperty();

    public IMethodBinding resolveMethodBinding() {
        return this.ast.getBindingResolver().resolveMethod(this);
    }

    public List typeArguments() {
        return this.typeArguments;
    }
}
