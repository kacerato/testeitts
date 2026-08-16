package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class AnnotationTypeDeclaration extends AbstractTypeDeclaration {
    public static final ChildListPropertyDescriptor BODY_DECLARATIONS_PROPERTY;
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;

    static {
        ChildPropertyDescriptor internalJavadocPropertyFactory = BodyDeclaration.internalJavadocPropertyFactory(AnnotationTypeDeclaration.class);
        JAVADOC_PROPERTY = internalJavadocPropertyFactory;
        ChildListPropertyDescriptor internalModifiers2PropertyFactory = BodyDeclaration.internalModifiers2PropertyFactory(AnnotationTypeDeclaration.class);
        MODIFIERS2_PROPERTY = internalModifiers2PropertyFactory;
        ChildPropertyDescriptor internalNamePropertyFactory = AbstractTypeDeclaration.internalNamePropertyFactory(AnnotationTypeDeclaration.class);
        NAME_PROPERTY = internalNamePropertyFactory;
        ChildListPropertyDescriptor internalBodyDeclarationPropertyFactory = AbstractTypeDeclaration.internalBodyDeclarationPropertyFactory(AnnotationTypeDeclaration.class);
        BODY_DECLARATIONS_PROPERTY = internalBodyDeclarationPropertyFactory;
        ArrayList arrayList = new ArrayList(5);
        ASTNode.createPropertyList(AnnotationTypeDeclaration.class, arrayList);
        ASTNode.addProperty(internalJavadocPropertyFactory, arrayList);
        ASTNode.addProperty(internalModifiers2PropertyFactory, arrayList);
        ASTNode.addProperty(internalNamePropertyFactory, arrayList);
        ASTNode.addProperty(internalBodyDeclarationPropertyFactory, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public AnnotationTypeDeclaration(AST ast) {
        super(ast);
        unsupportedIn2();
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getJavadoc());
            acceptChildren(aSTVisitor, this.modifiers);
            acceptChild(aSTVisitor, getName());
            acceptChildren(aSTVisitor, this.bodyDeclarations);
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        AnnotationTypeDeclaration annotationTypeDeclaration = new AnnotationTypeDeclaration(ast);
        annotationTypeDeclaration.setSourceRange(getStartPosition(), getLength());
        annotationTypeDeclaration.setJavadoc((Javadoc) ASTNode.copySubtree(ast, getJavadoc()));
        annotationTypeDeclaration.modifiers().addAll(ASTNode.copySubtrees(ast, modifiers()));
        annotationTypeDeclaration.setName((SimpleName) getName().clone(ast));
        annotationTypeDeclaration.bodyDeclarations().addAll(ASTNode.copySubtrees(ast, bodyDeclarations()));
        return annotationTypeDeclaration;
    }

    @Override
    public final int getNodeType0() {
        return 81;
    }

    @Override
    public final ChildListPropertyDescriptor internalBodyDeclarationsProperty() {
        return BODY_DECLARATIONS_PROPERTY;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == MODIFIERS2_PROPERTY ? modifiers() : childListPropertyDescriptor == BODY_DECLARATIONS_PROPERTY ? bodyDeclarations() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == JAVADOC_PROPERTY) {
            if (z10) {
                return getJavadoc();
            }
            setJavadoc((Javadoc) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != NAME_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getName();
        }
        setName((SimpleName) aSTNode);
        return null;
    }

    @Override
    public final ChildPropertyDescriptor internalJavadocProperty() {
        return JAVADOC_PROPERTY;
    }

    @Override
    public final ChildListPropertyDescriptor internalModifiers2Property() {
        return MODIFIERS2_PROPERTY;
    }

    @Override
    public final SimplePropertyDescriptor internalModifiersProperty() {
        return null;
    }

    @Override
    public final ChildPropertyDescriptor internalNameProperty() {
        return NAME_PROPERTY;
    }

    @Override
    public ITypeBinding internalResolveBinding() {
        return this.ast.getBindingResolver().resolveType(this);
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return super.memSize();
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.optionalDocComment == null ? 0 : getJavadoc().treeSize()) + this.modifiers.listSize() + (this.typeName != null ? getName().treeSize() : 0) + this.bodyDeclarations.listSize();
    }
}
