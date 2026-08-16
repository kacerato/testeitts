package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class VariableDeclarationExpression extends Expression {
    public static final ChildListPropertyDescriptor FRAGMENTS_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final SimplePropertyDescriptor MODIFIERS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    private Type baseType;
    private int modifierFlags;
    private ASTNode.NodeList modifiers;
    private ASTNode.NodeList variableDeclarationFragments;

    static {
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(VariableDeclarationExpression.class, "modifiers", Integer.TYPE, true);
        MODIFIERS_PROPERTY = simplePropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(VariableDeclarationExpression.class, "modifiers", IExtendedModifier.class, true);
        MODIFIERS2_PROPERTY = childListPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(VariableDeclarationExpression.class, "type", Type.class, true, false);
        TYPE_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor2 = new ChildListPropertyDescriptor(VariableDeclarationExpression.class, "fragments", VariableDeclarationFragment.class, true);
        FRAGMENTS_PROPERTY = childListPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(4);
        ASTNode.createPropertyList(VariableDeclarationExpression.class, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS_2_0 = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(4);
        ASTNode.createPropertyList(VariableDeclarationExpression.class, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList2);
        PROPERTY_DESCRIPTORS_3_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public VariableDeclarationExpression(AST ast) {
        super(ast);
        this.modifiers = null;
        this.modifierFlags = 0;
        this.baseType = null;
        this.variableDeclarationFragments = new ASTNode.NodeList(FRAGMENTS_PROPERTY);
        if (ast.apiLevel >= 3) {
            this.modifiers = new ASTNode.NodeList(MODIFIERS2_PROPERTY);
        }
    }

    public static List propertyDescriptors(int i10) {
        return i10 == 2 ? PROPERTY_DESCRIPTORS_2_0 : PROPERTY_DESCRIPTORS_3_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
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
        VariableDeclarationExpression variableDeclarationExpression = new VariableDeclarationExpression(ast);
        variableDeclarationExpression.setSourceRange(getStartPosition(), getLength());
        if (this.ast.apiLevel == 2) {
            variableDeclarationExpression.setModifiers(getModifiers());
        }
        if (this.ast.apiLevel >= 3) {
            variableDeclarationExpression.modifiers().addAll(ASTNode.copySubtrees(ast, modifiers()));
        }
        variableDeclarationExpression.setType((Type) getType().clone(ast));
        variableDeclarationExpression.fragments().addAll(ASTNode.copySubtrees(ast, fragments()));
        return variableDeclarationExpression;
    }

    public List fragments() {
        return this.variableDeclarationFragments;
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

    @Override
    public final int getNodeType0() {
        return 58;
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
        setModifiers(i10);
        return 0;
    }

    public final void internalSetModifiers(int i10) {
        supportedOnlyIn2();
        SimplePropertyDescriptor simplePropertyDescriptor = MODIFIERS_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.modifierFlags = i10;
        postValueChange(simplePropertyDescriptor);
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return 56;
    }

    public List modifiers() {
        if (this.modifiers == null) {
            unsupportedIn2();
        }
        return this.modifiers;
    }

    public void setModifiers(int i10) {
        internalSetModifiers(i10);
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
        int memSize = memSize();
        ASTNode.NodeList nodeList = this.modifiers;
        return memSize + (nodeList == null ? 0 : nodeList.listSize()) + (this.baseType != null ? getType().treeSize() : 0) + this.variableDeclarationFragments.listSize();
    }
}
