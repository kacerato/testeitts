package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.IJavaModelMarker;
import org.eclipse.jdt.core.dom.ASTNode;

public class MethodInvocation extends Expression {
    public static final ChildListPropertyDescriptor ARGUMENTS_PROPERTY;
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    public static final ChildListPropertyDescriptor TYPE_ARGUMENTS_PROPERTY;
    private ASTNode.NodeList arguments;
    private SimpleName methodName;
    private Expression optionalExpression;
    private ASTNode.NodeList typeArguments;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(MethodInvocation.class, "expression", Expression.class, false, true);
        EXPRESSION_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(MethodInvocation.class, "typeArguments", Type.class, false);
        TYPE_ARGUMENTS_PROPERTY = childListPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(MethodInvocation.class, "name", SimpleName.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor2;
        ChildListPropertyDescriptor childListPropertyDescriptor2 = new ChildListPropertyDescriptor(MethodInvocation.class, IJavaModelMarker.ARGUMENTS, Expression.class, true);
        ARGUMENTS_PROPERTY = childListPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(4);
        ASTNode.createPropertyList(MethodInvocation.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS_2_0 = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(5);
        ASTNode.createPropertyList(MethodInvocation.class, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList2);
        PROPERTY_DESCRIPTORS_3_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public MethodInvocation(AST ast) {
        super(ast);
        this.optionalExpression = null;
        this.typeArguments = null;
        this.methodName = null;
        this.arguments = new ASTNode.NodeList(ARGUMENTS_PROPERTY);
        if (ast.apiLevel >= 3) {
            this.typeArguments = new ASTNode.NodeList(TYPE_ARGUMENTS_PROPERTY);
        }
    }

    public static List propertyDescriptors(int i10) {
        return i10 == 2 ? PROPERTY_DESCRIPTORS_2_0 : PROPERTY_DESCRIPTORS_3_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getExpression());
            if (this.ast.apiLevel >= 3) {
                acceptChildren(aSTVisitor, this.typeArguments);
            }
            acceptChild(aSTVisitor, getName());
            acceptChildren(aSTVisitor, this.arguments);
        }
        aSTVisitor.endVisit(this);
    }

    public List arguments() {
        return this.arguments;
    }

    @Override
    public ASTNode clone0(AST ast) {
        MethodInvocation methodInvocation = new MethodInvocation(ast);
        methodInvocation.setSourceRange(getStartPosition(), getLength());
        methodInvocation.setName((SimpleName) getName().clone(ast));
        methodInvocation.setExpression((Expression) ASTNode.copySubtree(ast, getExpression()));
        if (this.ast.apiLevel >= 3) {
            methodInvocation.typeArguments().addAll(ASTNode.copySubtrees(ast, typeArguments()));
        }
        methodInvocation.arguments().addAll(ASTNode.copySubtrees(ast, arguments()));
        return methodInvocation;
    }

    public Expression getExpression() {
        return this.optionalExpression;
    }

    public SimpleName getName() {
        if (this.methodName == null) {
            synchronized (this) {
                try {
                    if (this.methodName == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.methodName = simpleName;
                        postLazyInit(simpleName, NAME_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.methodName;
    }

    @Override
    public final int getNodeType0() {
        return 32;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == ARGUMENTS_PROPERTY ? arguments() : childListPropertyDescriptor == TYPE_ARGUMENTS_PROPERTY ? typeArguments() : super.internalGetChildListProperty(childListPropertyDescriptor);
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
        if (childPropertyDescriptor != EXPRESSION_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getExpression();
        }
        setExpression((Expression) aSTNode);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    public boolean isResolvedTypeInferredFromExpectedType() {
        return this.ast.getBindingResolver().isResolvedTypeInferredFromExpectedType(this);
    }

    @Override
    public int memSize() {
        return 56;
    }

    public IMethodBinding resolveMethodBinding() {
        return this.ast.getBindingResolver().resolveMethod(this);
    }

    public void setExpression(Expression expression) {
        Expression expression2 = this.optionalExpression;
        ChildPropertyDescriptor childPropertyDescriptor = EXPRESSION_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.optionalExpression = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    public void setName(SimpleName simpleName) {
        if (simpleName == null) {
            throw new IllegalArgumentException();
        }
        SimpleName simpleName2 = this.methodName;
        ChildPropertyDescriptor childPropertyDescriptor = NAME_PROPERTY;
        preReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
        this.methodName = simpleName;
        postReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize() + (this.optionalExpression == null ? 0 : getExpression().treeSize());
        ASTNode.NodeList nodeList = this.typeArguments;
        int listSize = memSize + (nodeList == null ? 0 : nodeList.listSize()) + (this.methodName == null ? 0 : getName().treeSize());
        ASTNode.NodeList nodeList2 = this.arguments;
        return listSize + (nodeList2 != null ? nodeList2.listSize() : 0);
    }

    public List typeArguments() {
        if (this.typeArguments == null) {
            unsupportedIn2();
        }
        return this.typeArguments;
    }
}
