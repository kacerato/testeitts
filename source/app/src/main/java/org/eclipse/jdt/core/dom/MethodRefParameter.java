package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class MethodRefParameter extends ASTNode {
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    public static final SimplePropertyDescriptor VARARGS_PROPERTY;
    private SimpleName optionalParameterName;
    private Type type;
    private boolean variableArity;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(MethodRefParameter.class, "type", Type.class, true, false);
        TYPE_PROPERTY = childPropertyDescriptor;
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(MethodRefParameter.class, "varargs", Boolean.TYPE, true);
        VARARGS_PROPERTY = simplePropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(MethodRefParameter.class, "name", SimpleName.class, false, false);
        NAME_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(MethodRefParameter.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS_2_0 = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(3);
        ASTNode.createPropertyList(MethodRefParameter.class, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList2);
        PROPERTY_DESCRIPTORS_3_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public MethodRefParameter(AST ast) {
        super(ast);
        this.type = null;
        this.variableArity = false;
        this.optionalParameterName = null;
    }

    public static List propertyDescriptors(int i10) {
        return i10 == 2 ? PROPERTY_DESCRIPTORS_2_0 : PROPERTY_DESCRIPTORS_3_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getType());
            acceptChild(aSTVisitor, getName());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        MethodRefParameter methodRefParameter = new MethodRefParameter(ast);
        methodRefParameter.setSourceRange(getStartPosition(), getLength());
        methodRefParameter.setType((Type) ASTNode.copySubtree(ast, getType()));
        if (this.ast.apiLevel >= 3) {
            methodRefParameter.setVarargs(isVarargs());
        }
        methodRefParameter.setName((SimpleName) ASTNode.copySubtree(ast, getName()));
        return methodRefParameter;
    }

    public SimpleName getName() {
        return this.optionalParameterName;
    }

    @Override
    public final int getNodeType0() {
        return 69;
    }

    public Type getType() {
        if (this.type == null) {
            synchronized (this) {
                try {
                    if (this.type == null) {
                        preLazyInit();
                        PrimitiveType newPrimitiveType = this.ast.newPrimitiveType(PrimitiveType.INT);
                        this.type = newPrimitiveType;
                        postLazyInit(newPrimitiveType, TYPE_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.type;
    }

    @Override
    public final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, boolean z11) {
        if (simplePropertyDescriptor != VARARGS_PROPERTY) {
            return super.internalGetSetBooleanProperty(simplePropertyDescriptor, z10, z11);
        }
        if (z10) {
            return isVarargs();
        }
        setVarargs(z11);
        return false;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == TYPE_PROPERTY) {
            if (z10) {
                return getType();
            }
            setType((Type) aSTNode);
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
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    public boolean isVarargs() {
        unsupportedIn2();
        return this.variableArity;
    }

    @Override
    public int memSize() {
        return 50;
    }

    public void setName(SimpleName simpleName) {
        SimpleName simpleName2 = this.optionalParameterName;
        ChildPropertyDescriptor childPropertyDescriptor = NAME_PROPERTY;
        preReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
        this.optionalParameterName = simpleName;
        postReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
    }

    public void setType(Type type) {
        if (type == null) {
            throw new IllegalArgumentException();
        }
        Type type2 = this.type;
        ChildPropertyDescriptor childPropertyDescriptor = TYPE_PROPERTY;
        preReplaceChild(type2, type, childPropertyDescriptor);
        this.type = type;
        postReplaceChild(type2, type, childPropertyDescriptor);
    }

    public void setVarargs(boolean z10) {
        unsupportedIn2();
        SimplePropertyDescriptor simplePropertyDescriptor = VARARGS_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.variableArity = z10;
        postValueChange(simplePropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.type == null ? 0 : getType().treeSize()) + (this.optionalParameterName != null ? getName().treeSize() : 0);
    }
}
