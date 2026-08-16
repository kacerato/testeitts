package org.eclipse.jdt.core.dom;

import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public abstract class BodyDeclaration extends ASTNode {
    private int modifierFlags;
    ASTNode.NodeList modifiers;
    Javadoc optionalDocComment;

    public BodyDeclaration(AST ast) {
        super(ast);
        this.optionalDocComment = null;
        this.modifierFlags = 0;
        this.modifiers = null;
        if (ast.apiLevel >= 3) {
            this.modifiers = new ASTNode.NodeList(internalModifiers2Property());
        }
    }

    public static final ChildPropertyDescriptor internalJavadocPropertyFactory(Class cls) {
        return new ChildPropertyDescriptor(cls, "javadoc", Javadoc.class, false, false);
    }

    public static final ChildListPropertyDescriptor internalModifiers2PropertyFactory(Class cls) {
        return new ChildListPropertyDescriptor(cls, "modifiers", IExtendedModifier.class, true);
    }

    public static final SimplePropertyDescriptor internalModifiersPropertyFactory(Class cls) {
        return new SimplePropertyDescriptor(cls, "modifiers", Integer.TYPE, true);
    }

    public Javadoc getJavadoc() {
        return this.optionalDocComment;
    }

    public final ChildPropertyDescriptor getJavadocProperty() {
        return internalJavadocProperty();
    }

    public int getModifiers() {
        if (this.modifiers == null) {
            return this.modifierFlags;
        }
        int i10 = 0;
        for (Object obj : modifiers()) {
            if (obj instanceof Modifier) {
                i10 |= ((Modifier) obj).getKeyword().toFlagValue();
            }
        }
        return i10;
    }

    public final ChildListPropertyDescriptor getModifiersProperty() {
        return internalModifiers2Property();
    }

    public abstract ChildPropertyDescriptor internalJavadocProperty();

    public abstract ChildListPropertyDescriptor internalModifiers2Property();

    public abstract SimplePropertyDescriptor internalModifiersProperty();

    public final void internalSetModifiers(int i10) {
        if (this.modifiers != null) {
            supportedOnlyIn2();
        }
        SimplePropertyDescriptor internalModifiersProperty = internalModifiersProperty();
        preValueChange(internalModifiersProperty);
        this.modifierFlags = i10;
        postValueChange(internalModifiersProperty);
    }

    @Override
    public int memSize() {
        return 52;
    }

    public List modifiers() {
        if (this.modifiers == null) {
            unsupportedIn2();
        }
        return this.modifiers;
    }

    public void setJavadoc(Javadoc javadoc) {
        ChildPropertyDescriptor internalJavadocProperty = internalJavadocProperty();
        Javadoc javadoc2 = this.optionalDocComment;
        preReplaceChild(javadoc2, javadoc, internalJavadocProperty);
        this.optionalDocComment = javadoc;
        postReplaceChild(javadoc2, javadoc, internalJavadocProperty);
    }

    public void setModifiers(int i10) {
        internalSetModifiers(i10);
    }
}
