package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class FieldDeclaration extends BodyDeclaration {
    public static final ChildListPropertyDescriptor FRAGMENTS_PROPERTY;
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final SimplePropertyDescriptor MODIFIERS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    private Type baseType;
    private ASTNode.NodeList variableDeclarationFragments;

    static {
        ChildPropertyDescriptor internalJavadocPropertyFactory = BodyDeclaration.internalJavadocPropertyFactory(FieldDeclaration.class);
        JAVADOC_PROPERTY = internalJavadocPropertyFactory;
        SimplePropertyDescriptor internalModifiersPropertyFactory = BodyDeclaration.internalModifiersPropertyFactory(FieldDeclaration.class);
        MODIFIERS_PROPERTY = internalModifiersPropertyFactory;
        ChildListPropertyDescriptor internalModifiers2PropertyFactory = BodyDeclaration.internalModifiers2PropertyFactory(FieldDeclaration.class);
        MODIFIERS2_PROPERTY = internalModifiers2PropertyFactory;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(FieldDeclaration.class, "type", Type.class, true, false);
        TYPE_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(FieldDeclaration.class, "fragments", VariableDeclarationFragment.class, true);
        FRAGMENTS_PROPERTY = childListPropertyDescriptor;
        ArrayList arrayList = new ArrayList(5);
        ASTNode.createPropertyList(FieldDeclaration.class, arrayList);
        ASTNode.addProperty(internalJavadocPropertyFactory, arrayList);
        ASTNode.addProperty(internalModifiersPropertyFactory, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS_2_0 = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(5);
        ASTNode.createPropertyList(FieldDeclaration.class, arrayList2);
        ASTNode.addProperty(internalJavadocPropertyFactory, arrayList2);
        ASTNode.addProperty(internalModifiers2PropertyFactory, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList2);
        PROPERTY_DESCRIPTORS_3_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public FieldDeclaration(AST ast) {
        super(ast);
        this.baseType = null;
        this.variableDeclarationFragments = new ASTNode.NodeList(FRAGMENTS_PROPERTY);
    }

    public static List propertyDescriptors(int i10) {
        return i10 == 2 ? PROPERTY_DESCRIPTORS_2_0 : PROPERTY_DESCRIPTORS_3_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getJavadoc());
            if (this.ast.apiLevel >= 3) {
                acceptChildren(aSTVisitor, this.modifiers);
            }
            acceptChild(aSTVisitor, getType());
            acceptChildren(aSTVisitor, this.variableDeclarationFragments);
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        FieldDeclaration fieldDeclaration = new FieldDeclaration(ast);
        fieldDeclaration.setSourceRange(getStartPosition(), getLength());
        fieldDeclaration.setJavadoc((Javadoc) ASTNode.copySubtree(ast, getJavadoc()));
        if (this.ast.apiLevel == 2) {
            fieldDeclaration.internalSetModifiers(getModifiers());
        }
        if (this.ast.apiLevel >= 3) {
            fieldDeclaration.modifiers().addAll(ASTNode.copySubtrees(ast, modifiers()));
        }
        fieldDeclaration.setType((Type) getType().clone(ast));
        fieldDeclaration.fragments().addAll(ASTNode.copySubtrees(ast, fragments()));
        return fieldDeclaration;
    }

    public List fragments() {
        return this.variableDeclarationFragments;
    }

    @Override
    public final int getNodeType0() {
        return 23;
    }

    public Type getType() {
        if (this.baseType == null) {
            synchronized (this) {
                try {
                    if (this.baseType == null) {
                        preLazyInit();
                        PrimitiveType newPrimitiveType = this.ast.newPrimitiveType(PrimitiveType.INT);
                        this.baseType = newPrimitiveType;
                        postLazyInit(newPrimitiveType, TYPE_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.baseType;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == MODIFIERS2_PROPERTY ? modifiers() : childListPropertyDescriptor == FRAGMENTS_PROPERTY ? fragments() : super.internalGetChildListProperty(childListPropertyDescriptor);
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
        if (childPropertyDescriptor != TYPE_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getType();
        }
        setType((Type) aSTNode);
        return null;
    }

    @Override
    public final int internalGetSetIntProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, int i10) {
        if (simplePropertyDescriptor != MODIFIERS_PROPERTY) {
            return super.internalGetSetIntProperty(simplePropertyDescriptor, z10, i10);
        }
        if (z10) {
            return getModifiers();
        }
        internalSetModifiers(i10);
        return 0;
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
        return MODIFIERS_PROPERTY;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return super.memSize() + 8;
    }

    public void setType(Type type) {
        if (type == null) {
            throw new IllegalArgumentException();
        }
        Type type2 = this.baseType;
        ChildPropertyDescriptor childPropertyDescriptor = TYPE_PROPERTY;
        preReplaceChild(type2, type, childPropertyDescriptor);
        this.baseType = type;
        postReplaceChild(type2, type, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize() + (this.optionalDocComment == null ? 0 : getJavadoc().treeSize());
        ASTNode.NodeList nodeList = this.modifiers;
        return memSize + (nodeList == null ? 0 : nodeList.listSize()) + (this.baseType != null ? getType().treeSize() : 0) + this.variableDeclarationFragments.listSize();
    }
}
