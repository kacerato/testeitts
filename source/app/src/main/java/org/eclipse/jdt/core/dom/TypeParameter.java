package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class TypeParameter extends ASTNode {
    public static final ChildListPropertyDescriptor MODIFIERS_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private static final List PROPERTY_DESCRIPTORS_8_0;
    public static final ChildListPropertyDescriptor TYPE_BOUNDS_PROPERTY;
    private ASTNode.NodeList modifiers;
    private ASTNode.NodeList typeBounds;
    private SimpleName typeVariableName;

    static {
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(TypeParameter.class, "modifiers", IExtendedModifier.class, true);
        MODIFIERS_PROPERTY = childListPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(TypeParameter.class, "name", SimpleName.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor2 = new ChildListPropertyDescriptor(TypeParameter.class, "typeBounds", Type.class, false);
        TYPE_BOUNDS_PROPERTY = childListPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(TypeParameter.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(4);
        ASTNode.createPropertyList(TypeParameter.class, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList2);
        PROPERTY_DESCRIPTORS_8_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public TypeParameter(AST ast) {
        super(ast);
        this.typeVariableName = null;
        this.typeBounds = new ASTNode.NodeList(TYPE_BOUNDS_PROPERTY);
        this.modifiers = null;
        unsupportedIn2();
        if (ast.apiLevel >= 8) {
            this.modifiers = new ASTNode.NodeList(MODIFIERS_PROPERTY);
        }
    }

    public static List propertyDescriptors(int i10) {
        return (i10 == 2 || i10 == 3 || i10 == 4) ? PROPERTY_DESCRIPTORS : PROPERTY_DESCRIPTORS_8_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            if (this.ast.apiLevel >= 8) {
                acceptChildren(aSTVisitor, this.modifiers);
            }
            acceptChild(aSTVisitor, getName());
            acceptChildren(aSTVisitor, this.typeBounds);
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        TypeParameter typeParameter = new TypeParameter(ast);
        typeParameter.setSourceRange(getStartPosition(), getLength());
        if (this.ast.apiLevel >= 8) {
            typeParameter.modifiers().addAll(ASTNode.copySubtrees(ast, modifiers()));
        }
        typeParameter.setName((SimpleName) getName().clone(ast));
        typeParameter.typeBounds().addAll(ASTNode.copySubtrees(ast, typeBounds()));
        return typeParameter;
    }

    public SimpleName getName() {
        if (this.typeVariableName == null) {
            synchronized (this) {
                try {
                    if (this.typeVariableName == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.typeVariableName = simpleName;
                        postLazyInit(simpleName, NAME_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.typeVariableName;
    }

    @Override
    public final int getNodeType0() {
        return 73;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == MODIFIERS_PROPERTY ? modifiers() : childListPropertyDescriptor == TYPE_BOUNDS_PROPERTY ? typeBounds() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
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
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return 52;
    }

    public List modifiers() {
        if (this.modifiers == null) {
            unsupportedIn2_3_4();
        }
        return this.modifiers;
    }

    public final ITypeBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveTypeParameter(this);
    }

    public void setName(SimpleName simpleName) {
        if (simpleName == null) {
            throw new IllegalArgumentException();
        }
        SimpleName simpleName2 = this.typeVariableName;
        ChildPropertyDescriptor childPropertyDescriptor = NAME_PROPERTY;
        preReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
        this.typeVariableName = simpleName;
        postReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize();
        ASTNode.NodeList nodeList = this.modifiers;
        return memSize + (nodeList == null ? 0 : nodeList.listSize()) + (this.typeVariableName != null ? getName().treeSize() : 0) + this.typeBounds.listSize();
    }

    public List typeBounds() {
        return this.typeBounds;
    }
}
