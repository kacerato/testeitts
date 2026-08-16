package org.eclipse.jdt.core.dom;

import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public abstract class AnnotatableType extends Type {
    ASTNode.NodeList annotations;

    public AnnotatableType(AST ast) {
        super(ast);
        this.annotations = null;
        if (ast.apiLevel >= 8) {
            this.annotations = new ASTNode.NodeList(getAnnotationsProperty());
        }
    }

    public static final ChildListPropertyDescriptor internalAnnotationsPropertyFactory(Class cls) {
        return new ChildListPropertyDescriptor(cls, "annotations", Annotation.class, true);
    }

    public List annotations() {
        if (this.annotations == null) {
            unsupportedIn2_3_4();
        }
        return this.annotations;
    }

    public final ChildListPropertyDescriptor getAnnotationsProperty() {
        return internalAnnotationsProperty();
    }

    public abstract ChildListPropertyDescriptor internalAnnotationsProperty();
}
