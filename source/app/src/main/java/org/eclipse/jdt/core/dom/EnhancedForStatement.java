package org.eclipse.jdt.core.dom;

import android.provider.Telephony;
import java.util.ArrayList;
import java.util.List;

public class EnhancedForStatement extends Statement {
    public static final ChildPropertyDescriptor BODY_PROPERTY;
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    public static final ChildPropertyDescriptor PARAMETER_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Statement body;
    private Expression expression;
    private SingleVariableDeclaration parameter;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(EnhancedForStatement.class, "parameter", SingleVariableDeclaration.class, true, true);
        PARAMETER_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(EnhancedForStatement.class, "expression", Expression.class, true, true);
        EXPRESSION_PROPERTY = childPropertyDescriptor2;
        ChildPropertyDescriptor childPropertyDescriptor3 = new ChildPropertyDescriptor(EnhancedForStatement.class, Telephony.TextBasedSmsColumns.BODY, Statement.class, true, true);
        BODY_PROPERTY = childPropertyDescriptor3;
        ArrayList arrayList = new ArrayList(4);
        ASTNode.createPropertyList(EnhancedForStatement.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        ASTNode.addProperty(childPropertyDescriptor3, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public EnhancedForStatement(AST ast) {
        super(ast);
        this.parameter = null;
        this.expression = null;
        this.body = null;
        unsupportedIn2();
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getParameter());
            acceptChild(aSTVisitor, getExpression());
            acceptChild(aSTVisitor, getBody());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        EnhancedForStatement enhancedForStatement = new EnhancedForStatement(ast);
        enhancedForStatement.setSourceRange(getStartPosition(), getLength());
        enhancedForStatement.copyLeadingComment(this);
        enhancedForStatement.setParameter((SingleVariableDeclaration) getParameter().clone(ast));
        enhancedForStatement.setExpression((Expression) getExpression().clone(ast));
        enhancedForStatement.setBody((Statement) ASTNode.copySubtree(ast, getBody()));
        return enhancedForStatement;
    }

    public Statement getBody() {
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

    public Expression getExpression() {
        if (this.expression == null) {
            synchronized (this) {
                try {
                    if (this.expression == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.expression = simpleName;
                        postLazyInit(simpleName, EXPRESSION_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.expression;
    }

    @Override
    public final int getNodeType0() {
        return 70;
    }

    public SingleVariableDeclaration getParameter() {
        if (this.parameter == null) {
            synchronized (this) {
                try {
                    if (this.parameter == null) {
                        preLazyInit();
                        SingleVariableDeclaration newSingleVariableDeclaration = this.ast.newSingleVariableDeclaration();
                        this.parameter = newSingleVariableDeclaration;
                        postLazyInit(newSingleVariableDeclaration, PARAMETER_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.parameter;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == PARAMETER_PROPERTY) {
            if (z10) {
                return getParameter();
            }
            setParameter((SingleVariableDeclaration) aSTNode);
            return null;
        }
        if (childPropertyDescriptor == EXPRESSION_PROPERTY) {
            if (z10) {
                return getExpression();
            }
            setExpression((Expression) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != BODY_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getBody();
        }
        setBody((Statement) aSTNode);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return super.memSize() + 12;
    }

    public void setBody(Statement statement) {
        if (statement == null) {
            throw new IllegalArgumentException();
        }
        Statement statement2 = this.body;
        ChildPropertyDescriptor childPropertyDescriptor = BODY_PROPERTY;
        preReplaceChild(statement2, statement, childPropertyDescriptor);
        this.body = statement;
        postReplaceChild(statement2, statement, childPropertyDescriptor);
    }

    public void setExpression(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression expression2 = this.expression;
        ChildPropertyDescriptor childPropertyDescriptor = EXPRESSION_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.expression = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    public void setParameter(SingleVariableDeclaration singleVariableDeclaration) {
        if (singleVariableDeclaration == null) {
            throw new IllegalArgumentException();
        }
        SingleVariableDeclaration singleVariableDeclaration2 = this.parameter;
        ChildPropertyDescriptor childPropertyDescriptor = PARAMETER_PROPERTY;
        preReplaceChild(singleVariableDeclaration2, singleVariableDeclaration, childPropertyDescriptor);
        this.parameter = singleVariableDeclaration;
        postReplaceChild(singleVariableDeclaration2, singleVariableDeclaration, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.parameter == null ? 0 : getParameter().treeSize()) + (this.expression == null ? 0 : getExpression().treeSize()) + (this.body != null ? getBody().treeSize() : 0);
    }
}
