package org.eclipse.jdt.core.dom;

import android.provider.Telephony;
import java.util.ArrayList;
import java.util.List;

public class LabeledStatement extends Statement {
    public static final ChildPropertyDescriptor BODY_PROPERTY;
    public static final ChildPropertyDescriptor LABEL_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Statement body;
    private SimpleName labelName;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(LabeledStatement.class, "label", SimpleName.class, true, false);
        LABEL_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(LabeledStatement.class, Telephony.TextBasedSmsColumns.BODY, Statement.class, true, true);
        BODY_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(LabeledStatement.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public LabeledStatement(AST ast) {
        super(ast);
        this.labelName = null;
        this.body = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getLabel());
            acceptChild(aSTVisitor, getBody());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        LabeledStatement labeledStatement = new LabeledStatement(ast);
        labeledStatement.setSourceRange(getStartPosition(), getLength());
        labeledStatement.setLabel((SimpleName) ASTNode.copySubtree(ast, getLabel()));
        labeledStatement.setBody((Statement) ASTNode.copySubtree(ast, getBody()));
        return labeledStatement;
    }

    public Statement getBody() {
        if (this.body == null) {
            synchronized (this) {
                try {
                    if (this.body == null) {
                        preLazyInit();
                        EmptyStatement emptyStatement = new EmptyStatement(this.ast);
                        this.body = emptyStatement;
                        postLazyInit(emptyStatement, BODY_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.body;
    }

    public SimpleName getLabel() {
        if (this.labelName == null) {
            synchronized (this) {
                try {
                    if (this.labelName == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.labelName = simpleName;
                        postLazyInit(simpleName, LABEL_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.labelName;
    }

    @Override
    public final int getNodeType0() {
        return 30;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == LABEL_PROPERTY) {
            if (z10) {
                return getLabel();
            }
            setLabel((SimpleName) aSTNode);
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
        return super.memSize() + 8;
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

    public void setLabel(SimpleName simpleName) {
        if (simpleName == null) {
            throw new IllegalArgumentException();
        }
        SimpleName simpleName2 = this.labelName;
        ChildPropertyDescriptor childPropertyDescriptor = LABEL_PROPERTY;
        preReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
        this.labelName = simpleName;
        postReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.labelName == null ? 0 : getLabel().treeSize()) + (this.body != null ? getBody().treeSize() : 0);
    }
}
