package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class MemberValuePair extends ASTNode {
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildPropertyDescriptor VALUE_PROPERTY;
    private SimpleName name;
    private Expression value;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(MemberValuePair.class, "name", SimpleName.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(MemberValuePair.class, "value", Expression.class, true, true);
        VALUE_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(MemberValuePair.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public MemberValuePair(AST ast) {
        super(ast);
        this.name = null;
        this.value = null;
        unsupportedIn2();
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getName());
            acceptChild(aSTVisitor, getValue());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        MemberValuePair memberValuePair = new MemberValuePair(ast);
        memberValuePair.setSourceRange(getStartPosition(), getLength());
        memberValuePair.setName((SimpleName) ASTNode.copySubtree(ast, getName()));
        memberValuePair.setValue((Expression) ASTNode.copySubtree(ast, getValue()));
        return memberValuePair;
    }

    public SimpleName getName() {
        if (this.name == null) {
            synchronized (this) {
                try {
                    if (this.name == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.name = simpleName;
                        postLazyInit(simpleName, NAME_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.name;
    }

    @Override
    public final int getNodeType0() {
        return 80;
    }

    public Expression getValue() {
        if (this.value == null) {
            synchronized (this) {
                try {
                    if (this.value == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.value = simpleName;
                        postLazyInit(simpleName, VALUE_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.value;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == NAME_PROPERTY) {
            if (z10) {
                return getName();
            }
            setName((SimpleName) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != VALUE_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getValue();
        }
        setValue((Expression) aSTNode);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return 48;
    }

    public final IMemberValuePairBinding resolveMemberValuePairBinding() {
        return this.ast.getBindingResolver().resolveMemberValuePair(this);
    }

    public void setName(SimpleName simpleName) {
        if (simpleName == null) {
            throw new IllegalArgumentException();
        }
        SimpleName simpleName2 = this.name;
        ChildPropertyDescriptor childPropertyDescriptor = NAME_PROPERTY;
        preReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
        this.name = simpleName;
        postReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
    }

    public void setValue(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression expression2 = this.value;
        ChildPropertyDescriptor childPropertyDescriptor = VALUE_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.value = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.name == null ? 0 : getName().treeSize()) + (this.value != null ? getValue().treeSize() : 0);
    }
}
