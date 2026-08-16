package org.eclipse.jdt.core.dom;

public abstract class Annotation extends Expression implements IExtendedModifier {
    Name typeName;

    public Annotation(AST ast) {
        super(ast);
        this.typeName = null;
    }

    public static final ChildPropertyDescriptor internalTypeNamePropertyFactory(Class cls) {
        return new ChildPropertyDescriptor(cls, "typeName", Name.class, true, false);
    }

    public Name getTypeName() {
        if (this.typeName == null) {
            synchronized (this) {
                try {
                    if (this.typeName == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.typeName = simpleName;
                        postLazyInit(simpleName, internalTypeNameProperty());
                    }
                } finally {
                }
            }
        }
        return this.typeName;
    }

    public final ChildPropertyDescriptor getTypeNameProperty() {
        return internalTypeNameProperty();
    }

    public abstract ChildPropertyDescriptor internalTypeNameProperty();

    @Override
    public boolean isAnnotation() {
        return true;
    }

    public boolean isMarkerAnnotation() {
        return this instanceof MarkerAnnotation;
    }

    @Override
    public boolean isModifier() {
        return false;
    }

    public boolean isNormalAnnotation() {
        return this instanceof NormalAnnotation;
    }

    public boolean isSingleMemberAnnotation() {
        return this instanceof SingleMemberAnnotation;
    }

    @Override
    public int memSize() {
        return 44;
    }

    public IAnnotationBinding resolveAnnotationBinding() {
        return this.ast.getBindingResolver().resolveAnnotation(this);
    }

    public void setTypeName(Name name) {
        if (name == null) {
            throw new IllegalArgumentException();
        }
        ChildPropertyDescriptor internalTypeNameProperty = internalTypeNameProperty();
        Name name2 = this.typeName;
        preReplaceChild(name2, name, internalTypeNameProperty);
        this.typeName = name;
        postReplaceChild(name2, name, internalTypeNameProperty);
    }
}
