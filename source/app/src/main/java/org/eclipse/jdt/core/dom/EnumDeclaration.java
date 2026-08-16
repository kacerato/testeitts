package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class EnumDeclaration extends AbstractTypeDeclaration {
    public static final ChildListPropertyDescriptor BODY_DECLARATIONS_PROPERTY;
    public static final ChildListPropertyDescriptor ENUM_CONSTANTS_PROPERTY;
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildListPropertyDescriptor SUPER_INTERFACE_TYPES_PROPERTY;
    private ASTNode.NodeList enumConstants;
    private ASTNode.NodeList superInterfaceTypes;

    static {
        ChildPropertyDescriptor internalJavadocPropertyFactory = BodyDeclaration.internalJavadocPropertyFactory(EnumDeclaration.class);
        JAVADOC_PROPERTY = internalJavadocPropertyFactory;
        ChildListPropertyDescriptor internalModifiers2PropertyFactory = BodyDeclaration.internalModifiers2PropertyFactory(EnumDeclaration.class);
        MODIFIERS2_PROPERTY = internalModifiers2PropertyFactory;
        ChildPropertyDescriptor internalNamePropertyFactory = AbstractTypeDeclaration.internalNamePropertyFactory(EnumDeclaration.class);
        NAME_PROPERTY = internalNamePropertyFactory;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(EnumDeclaration.class, "superInterfaceTypes", Type.class, false);
        SUPER_INTERFACE_TYPES_PROPERTY = childListPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor2 = new ChildListPropertyDescriptor(EnumDeclaration.class, "enumConstants", EnumConstantDeclaration.class, true);
        ENUM_CONSTANTS_PROPERTY = childListPropertyDescriptor2;
        ChildListPropertyDescriptor internalBodyDeclarationPropertyFactory = AbstractTypeDeclaration.internalBodyDeclarationPropertyFactory(EnumDeclaration.class);
        BODY_DECLARATIONS_PROPERTY = internalBodyDeclarationPropertyFactory;
        ArrayList arrayList = new ArrayList(6);
        ASTNode.createPropertyList(EnumDeclaration.class, arrayList);
        ASTNode.addProperty(internalJavadocPropertyFactory, arrayList);
        ASTNode.addProperty(internalModifiers2PropertyFactory, arrayList);
        ASTNode.addProperty(internalNamePropertyFactory, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList);
        ASTNode.addProperty(internalBodyDeclarationPropertyFactory, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public EnumDeclaration(AST ast) {
        super(ast);
        this.superInterfaceTypes = new ASTNode.NodeList(SUPER_INTERFACE_TYPES_PROPERTY);
        this.enumConstants = new ASTNode.NodeList(ENUM_CONSTANTS_PROPERTY);
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
            acceptChildren(aSTVisitor, this.superInterfaceTypes);
            acceptChildren(aSTVisitor, this.enumConstants);
            acceptChildren(aSTVisitor, this.bodyDeclarations);
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        EnumDeclaration enumDeclaration = new EnumDeclaration(ast);
        enumDeclaration.setSourceRange(getStartPosition(), getLength());
        enumDeclaration.setJavadoc((Javadoc) ASTNode.copySubtree(ast, getJavadoc()));
        enumDeclaration.modifiers().addAll(ASTNode.copySubtrees(ast, modifiers()));
        enumDeclaration.setName((SimpleName) getName().clone(ast));
        enumDeclaration.superInterfaceTypes().addAll(ASTNode.copySubtrees(ast, superInterfaceTypes()));
        enumDeclaration.enumConstants().addAll(ASTNode.copySubtrees(ast, enumConstants()));
        enumDeclaration.bodyDeclarations().addAll(ASTNode.copySubtrees(ast, bodyDeclarations()));
        return enumDeclaration;
    }

    public List enumConstants() {
        return this.enumConstants;
    }

    @Override
    public final int getNodeType0() {
        return 71;
    }

    @Override
    public final ChildListPropertyDescriptor internalBodyDeclarationsProperty() {
        return BODY_DECLARATIONS_PROPERTY;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == MODIFIERS2_PROPERTY ? modifiers() : childListPropertyDescriptor == SUPER_INTERFACE_TYPES_PROPERTY ? superInterfaceTypes() : childListPropertyDescriptor == ENUM_CONSTANTS_PROPERTY ? enumConstants() : childListPropertyDescriptor == BODY_DECLARATIONS_PROPERTY ? bodyDeclarations() : super.internalGetChildListProperty(childListPropertyDescriptor);
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
        return super.memSize() + 8;
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    public List superInterfaceTypes() {
        return this.superInterfaceTypes;
    }

    @Override
    public int treeSize() {
        return memSize() + (this.optionalDocComment == null ? 0 : getJavadoc().treeSize()) + this.modifiers.listSize() + (this.typeName != null ? getName().treeSize() : 0) + this.superInterfaceTypes.listSize() + this.enumConstants.listSize() + this.bodyDeclarations.listSize();
    }
}
