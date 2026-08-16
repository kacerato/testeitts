package org.eclipse.jdt.core.dom;

import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public abstract class VariableDeclaration extends ASTNode {
    int extraArrayDimensions;
    ASTNode.NodeList extraDimensions;
    Expression optionalInitializer;
    SimpleName variableName;

    public VariableDeclaration(AST ast) {
        super(ast);
        this.variableName = null;
        this.extraArrayDimensions = 0;
        this.extraDimensions = null;
        this.optionalInitializer = null;
        if (ast.apiLevel >= 8) {
            this.extraDimensions = new ASTNode.NodeList(getExtraDimensions2Property());
        }
    }

    public static final ChildListPropertyDescriptor internalExtraDimensions2PropertyFactory(Class cls) {
        return new ChildListPropertyDescriptor(cls, "extraDimensions2", Dimension.class, true);
    }

    public static final SimplePropertyDescriptor internalExtraDimensionsPropertyFactory(Class cls) {
        return new SimplePropertyDescriptor(cls, "extraDimensions", Integer.TYPE, true);
    }

    public static final ChildPropertyDescriptor internalInitializerPropertyFactory(Class cls) {
        return new ChildPropertyDescriptor(cls, "initializer", Expression.class, false, true);
    }

    public static final ChildPropertyDescriptor internalNamePropertyFactory(Class cls) {
        return new ChildPropertyDescriptor(cls, "name", SimpleName.class, true, false);
    }

    public List extraDimensions() {
        if (this.extraDimensions == null) {
            unsupportedIn2_3_4();
        }
        return this.extraDimensions;
    }

    public int getExtraDimensions() {
        ASTNode.NodeList nodeList = this.extraDimensions;
        return nodeList == null ? this.extraArrayDimensions : nodeList.size();
    }

    public final ChildListPropertyDescriptor getExtraDimensions2Property() {
        return internalExtraDimensions2Property();
    }

    public final SimplePropertyDescriptor getExtraDimensionsProperty() {
        return internalExtraDimensionsProperty();
    }

    public Expression getInitializer() {
        return this.optionalInitializer;
    }

    public final ChildPropertyDescriptor getInitializerProperty() {
        return internalInitializerProperty();
    }

    public SimpleName getName() {
        if (this.variableName == null) {
            synchronized (this) {
                try {
                    if (this.variableName == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.variableName = simpleName;
                        postLazyInit(simpleName, internalNameProperty());
                    }
                } finally {
                }
            }
        }
        return this.variableName;
    }

    public final ChildPropertyDescriptor getNameProperty() {
        return internalNameProperty();
    }

    public abstract ChildListPropertyDescriptor internalExtraDimensions2Property();

    public abstract SimplePropertyDescriptor internalExtraDimensionsProperty();

    public abstract ChildPropertyDescriptor internalInitializerProperty();

    public abstract ChildPropertyDescriptor internalNameProperty();

    public final void internalSetExtraDimensions(int i10) {
        if (this.extraDimensions != null) {
            supportedOnlyIn2_3_4();
        }
        if (i10 < 0) {
            throw new IllegalArgumentException();
        }
        SimplePropertyDescriptor internalExtraDimensionsProperty = internalExtraDimensionsProperty();
        preValueChange(internalExtraDimensionsProperty);
        this.extraArrayDimensions = i10;
        postValueChange(internalExtraDimensionsProperty);
    }

    public IVariableBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveVariable(this);
    }

    public void setExtraDimensions(int i10) {
        internalSetExtraDimensions(i10);
    }

    public void setInitializer(Expression expression) {
        ChildPropertyDescriptor internalInitializerProperty = internalInitializerProperty();
        Expression expression2 = this.optionalInitializer;
        preReplaceChild(expression2, expression, internalInitializerProperty);
        this.optionalInitializer = expression;
        postReplaceChild(expression2, expression, internalInitializerProperty);
    }

    public void setName(SimpleName simpleName) {
        if (simpleName == null) {
            throw new IllegalArgumentException();
        }
        ChildPropertyDescriptor internalNameProperty = internalNameProperty();
        SimpleName simpleName2 = this.variableName;
        preReplaceChild(simpleName2, simpleName, internalNameProperty);
        this.variableName = simpleName;
        postReplaceChild(simpleName2, simpleName, internalNameProperty);
    }
}
