package org.eclipse.jdt.core.dom;

import android.provider.Telephony;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class LambdaExpression extends Expression {
    public static final ChildPropertyDescriptor BODY_PROPERTY;
    public static final ChildListPropertyDescriptor PARAMETERS_PROPERTY;
    public static final SimplePropertyDescriptor PARENTHESES_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_8_0;
    private ASTNode body;
    private boolean hasParentheses;
    private ASTNode.NodeList parameters;

    static {
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(LambdaExpression.class, "parentheses", Boolean.TYPE, true);
        PARENTHESES_PROPERTY = simplePropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(LambdaExpression.class, "parameters", VariableDeclaration.class, true);
        PARAMETERS_PROPERTY = childListPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(LambdaExpression.class, Telephony.TextBasedSmsColumns.BODY, ASTNode.class, true, true);
        BODY_PROPERTY = childPropertyDescriptor;
        ArrayList arrayList = new ArrayList(4);
        ASTNode.createPropertyList(LambdaExpression.class, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS_8_0 = ASTNode.reapPropertyList(arrayList);
    }

    public LambdaExpression(AST ast) {
        super(ast);
        this.hasParentheses = true;
        this.parameters = new ASTNode.NodeList(PARAMETERS_PROPERTY);
        this.body = null;
        unsupportedIn2_3_4();
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS_8_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChildren(aSTVisitor, this.parameters);
            acceptChild(aSTVisitor, getBody());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        LambdaExpression lambdaExpression = new LambdaExpression(ast);
        lambdaExpression.setSourceRange(getStartPosition(), getLength());
        lambdaExpression.setParentheses(hasParentheses());
        lambdaExpression.parameters().addAll(ASTNode.copySubtrees(ast, parameters()));
        lambdaExpression.setBody(ASTNode.copySubtree(ast, getBody()));
        return lambdaExpression;
    }

    public ASTNode getBody() {
        if (this.body == null) {
            synchronized (this) {
                try {
                    if (this.body == null) {
                        preLazyInit();
                        Block block = new Block(this.ast);
                        this.body = block;
                        postLazyInit(block, BODY_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.body;
    }

    @Override
    public final int getNodeType0() {
        return 86;
    }

    public boolean hasParentheses() {
        return this.hasParentheses;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == PARAMETERS_PROPERTY ? parameters() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, boolean z11) {
        if (simplePropertyDescriptor != PARENTHESES_PROPERTY) {
            return super.internalGetSetBooleanProperty(simplePropertyDescriptor, z10, z11);
        }
        if (z10) {
            return hasParentheses();
        }
        setParentheses(z11);
        return false;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor != BODY_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getBody();
        }
        setBody(aSTNode);
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

    public List parameters() {
        return this.parameters;
    }

    public IMethodBinding resolveMethodBinding() {
        return this.ast.getBindingResolver().resolveMethod(this);
    }

    public void setBody(ASTNode aSTNode) {
        if (!(aSTNode instanceof Expression) && !(aSTNode instanceof Block)) {
            throw new IllegalArgumentException();
        }
        ASTNode aSTNode2 = this.body;
        ChildPropertyDescriptor childPropertyDescriptor = BODY_PROPERTY;
        preReplaceChild(aSTNode2, aSTNode, childPropertyDescriptor);
        this.body = aSTNode;
        postReplaceChild(aSTNode2, aSTNode, childPropertyDescriptor);
    }

    public void setParentheses(boolean z10) {
        SimplePropertyDescriptor simplePropertyDescriptor = PARENTHESES_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.hasParentheses = z10;
        postValueChange(simplePropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + this.parameters.listSize() + (this.body == null ? 0 : getBody().treeSize());
    }
}
