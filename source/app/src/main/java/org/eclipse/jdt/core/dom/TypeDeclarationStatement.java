package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class TypeDeclarationStatement extends Statement {
    public static final ChildPropertyDescriptor DECLARATION_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    public static final ChildPropertyDescriptor TYPE_DECLARATION_PROPERTY;
    private AbstractTypeDeclaration typeDecl;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(TypeDeclarationStatement.class, "typeDeclaration", TypeDeclaration.class, true, true);
        TYPE_DECLARATION_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(TypeDeclarationStatement.class, "declaration", AbstractTypeDeclaration.class, true, true);
        DECLARATION_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(TypeDeclarationStatement.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS_2_0 = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(2);
        ASTNode.createPropertyList(TypeDeclarationStatement.class, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList2);
        PROPERTY_DESCRIPTORS_3_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public TypeDeclarationStatement(AST ast) {
        super(ast);
        this.typeDecl = null;
    }

    public static List propertyDescriptors(int i10) {
        return i10 == 2 ? PROPERTY_DESCRIPTORS_2_0 : PROPERTY_DESCRIPTORS_3_0;
    }

    private ChildPropertyDescriptor typeDeclProperty() {
        return getAST().apiLevel() == 2 ? TYPE_DECLARATION_PROPERTY : DECLARATION_PROPERTY;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getDeclaration());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        TypeDeclarationStatement typeDeclarationStatement = new TypeDeclarationStatement(ast);
        typeDeclarationStatement.setSourceRange(getStartPosition(), getLength());
        typeDeclarationStatement.copyLeadingComment(this);
        typeDeclarationStatement.setDeclaration((AbstractTypeDeclaration) getDeclaration().clone(ast));
        return typeDeclarationStatement;
    }

    public AbstractTypeDeclaration getDeclaration() {
        if (this.typeDecl == null) {
            synchronized (this) {
                try {
                    if (this.typeDecl == null) {
                        preLazyInit();
                        TypeDeclaration typeDeclaration = new TypeDeclaration(this.ast);
                        this.typeDecl = typeDeclaration;
                        postLazyInit(typeDeclaration, typeDeclProperty());
                    }
                } finally {
                }
            }
        }
        return this.typeDecl;
    }

    @Override
    public final int getNodeType0() {
        return 56;
    }

    public TypeDeclaration getTypeDeclaration() {
        return internalGetTypeDeclaration();
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == TYPE_DECLARATION_PROPERTY) {
            if (z10) {
                return getTypeDeclaration();
            }
            setTypeDeclaration((TypeDeclaration) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != DECLARATION_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getDeclaration();
        }
        setDeclaration((AbstractTypeDeclaration) aSTNode);
        return null;
    }

    public final TypeDeclaration internalGetTypeDeclaration() {
        supportedOnlyIn2();
        return (TypeDeclaration) getDeclaration();
    }

    public final void internalSetTypeDeclaration(TypeDeclaration typeDeclaration) {
        supportedOnlyIn2();
        setDeclaration(typeDeclaration);
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return super.memSize() + 4;
    }

    public ITypeBinding resolveBinding() {
        AbstractTypeDeclaration declaration = getDeclaration();
        if (declaration instanceof TypeDeclaration) {
            return ((TypeDeclaration) declaration).resolveBinding();
        }
        if (declaration instanceof AnnotationTypeDeclaration) {
            return ((AnnotationTypeDeclaration) declaration).resolveBinding();
        }
        return null;
    }

    public void setDeclaration(AbstractTypeDeclaration abstractTypeDeclaration) {
        if (abstractTypeDeclaration == null) {
            throw new IllegalArgumentException();
        }
        AbstractTypeDeclaration abstractTypeDeclaration2 = this.typeDecl;
        ChildPropertyDescriptor typeDeclProperty = typeDeclProperty();
        preReplaceChild(abstractTypeDeclaration2, abstractTypeDeclaration, typeDeclProperty);
        this.typeDecl = abstractTypeDeclaration;
        postReplaceChild(abstractTypeDeclaration2, abstractTypeDeclaration, typeDeclProperty);
    }

    public void setTypeDeclaration(TypeDeclaration typeDeclaration) {
        internalSetTypeDeclaration(typeDeclaration);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.typeDecl == null ? 0 : getDeclaration().treeSize());
    }
}
