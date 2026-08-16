package org.eclipse.jdt.core.dom;

import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public abstract class AbstractTypeDeclaration extends BodyDeclaration {
    ASTNode.NodeList bodyDeclarations;
    SimpleName typeName;

    public AbstractTypeDeclaration(AST ast) {
        super(ast);
        this.typeName = null;
        this.bodyDeclarations = new ASTNode.NodeList(internalBodyDeclarationsProperty());
    }

    public static final ChildListPropertyDescriptor internalBodyDeclarationPropertyFactory(Class cls) {
        return new ChildListPropertyDescriptor(cls, "bodyDeclarations", BodyDeclaration.class, true);
    }

    public static final ChildPropertyDescriptor internalNamePropertyFactory(Class cls) {
        return new ChildPropertyDescriptor(cls, "name", SimpleName.class, true, false);
    }

    public List bodyDeclarations() {
        return this.bodyDeclarations;
    }

    public final ChildListPropertyDescriptor getBodyDeclarationsProperty() {
        return internalBodyDeclarationsProperty();
    }

    public SimpleName getName() {
        if (this.typeName == null) {
            synchronized (this) {
                try {
                    if (this.typeName == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.typeName = simpleName;
                        postLazyInit(simpleName, internalNameProperty());
                    }
                } finally {
                }
            }
        }
        return this.typeName;
    }

    public final ChildPropertyDescriptor getNameProperty() {
        return internalNameProperty();
    }

    public abstract ChildListPropertyDescriptor internalBodyDeclarationsProperty();

    public abstract ChildPropertyDescriptor internalNameProperty();

    public abstract ITypeBinding internalResolveBinding();

    public boolean isLocalTypeDeclaration() {
        return getParent() instanceof TypeDeclarationStatement;
    }

    public boolean isMemberTypeDeclaration() {
        ASTNode parent = getParent();
        return (parent instanceof AbstractTypeDeclaration) || (parent instanceof AnonymousClassDeclaration);
    }

    public boolean isPackageMemberTypeDeclaration() {
        return getParent() instanceof CompilationUnit;
    }

    @Override
    public int memSize() {
        return super.memSize() + 8;
    }

    public final ITypeBinding resolveBinding() {
        return internalResolveBinding();
    }

    public void setName(SimpleName simpleName) {
        if (simpleName == null) {
            throw new IllegalArgumentException();
        }
        ChildPropertyDescriptor internalNameProperty = internalNameProperty();
        SimpleName simpleName2 = this.typeName;
        preReplaceChild(simpleName2, simpleName, internalNameProperty);
        this.typeName = simpleName;
        postReplaceChild(simpleName2, simpleName, internalNameProperty);
    }
}
