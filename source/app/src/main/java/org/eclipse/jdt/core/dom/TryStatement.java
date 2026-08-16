package org.eclipse.jdt.core.dom;

import android.provider.Telephony;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class TryStatement extends Statement {
    public static final ChildPropertyDescriptor BODY_PROPERTY;
    public static final ChildListPropertyDescriptor CATCH_CLAUSES_PROPERTY;
    public static final ChildPropertyDescriptor FINALLY_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private static final List PROPERTY_DESCRIPTORS_4_0;
    private static final List PROPERTY_DESCRIPTORS_9_0;
    public static final ChildListPropertyDescriptor RESOURCES2_PROPERTY;
    public static final ChildListPropertyDescriptor RESOURCES_PROPERTY;
    private Block body;
    private ASTNode.NodeList catchClauses;
    private Block optionalFinallyBody;
    private ASTNode.NodeList resources;

    static {
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(TryStatement.class, "resources", VariableDeclarationExpression.class, true);
        RESOURCES_PROPERTY = childListPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor2 = new ChildListPropertyDescriptor(TryStatement.class, "resources", Expression.class, true);
        RESOURCES2_PROPERTY = childListPropertyDescriptor2;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(TryStatement.class, Telephony.TextBasedSmsColumns.BODY, Block.class, true, true);
        BODY_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor3 = new ChildListPropertyDescriptor(TryStatement.class, "catchClauses", CatchClause.class, true);
        CATCH_CLAUSES_PROPERTY = childListPropertyDescriptor3;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(TryStatement.class, "finally", Block.class, false, true);
        FINALLY_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(4);
        ASTNode.createPropertyList(TryStatement.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor3, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(5);
        ASTNode.createPropertyList(TryStatement.class, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor3, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList2);
        PROPERTY_DESCRIPTORS_4_0 = ASTNode.reapPropertyList(arrayList2);
        ArrayList arrayList3 = new ArrayList(5);
        ASTNode.createPropertyList(TryStatement.class, arrayList3);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList3);
        ASTNode.addProperty(childPropertyDescriptor, arrayList3);
        ASTNode.addProperty(childListPropertyDescriptor3, arrayList3);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList3);
        PROPERTY_DESCRIPTORS_9_0 = ASTNode.reapPropertyList(arrayList3);
    }

    public TryStatement(AST ast) {
        super(ast);
        this.resources = null;
        this.body = null;
        this.catchClauses = new ASTNode.NodeList(CATCH_CLAUSES_PROPERTY);
        this.optionalFinallyBody = null;
        int i10 = ast.apiLevel;
        if (i10 >= 9) {
            this.resources = new ASTNode.NodeList(RESOURCES2_PROPERTY);
        } else if (i10 >= 4) {
            this.resources = new ASTNode.NodeList(RESOURCES_PROPERTY);
        }
    }

    public static List propertyDescriptors(int i10) {
        return (i10 == 2 || i10 == 3) ? PROPERTY_DESCRIPTORS : (i10 == 4 || i10 == 8) ? PROPERTY_DESCRIPTORS_4_0 : PROPERTY_DESCRIPTORS_9_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            if (this.ast.apiLevel >= 4) {
                acceptChildren(aSTVisitor, this.resources);
            }
            acceptChild(aSTVisitor, getBody());
            acceptChildren(aSTVisitor, this.catchClauses);
            acceptChild(aSTVisitor, getFinally());
        }
        aSTVisitor.endVisit(this);
    }

    public List catchClauses() {
        return this.catchClauses;
    }

    @Override
    public ASTNode clone0(AST ast) {
        TryStatement tryStatement = new TryStatement(ast);
        tryStatement.setSourceRange(getStartPosition(), getLength());
        tryStatement.copyLeadingComment(this);
        if (this.ast.apiLevel >= 4) {
            tryStatement.resources().addAll(ASTNode.copySubtrees(ast, resources()));
        }
        tryStatement.setBody((Block) getBody().clone(ast));
        tryStatement.catchClauses().addAll(ASTNode.copySubtrees(ast, catchClauses()));
        tryStatement.setFinally((Block) ASTNode.copySubtree(ast, getFinally()));
        return tryStatement;
    }

    public Block getBody() {
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

    public Block getFinally() {
        return this.optionalFinallyBody;
    }

    @Override
    public final int getNodeType0() {
        return 54;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return (childListPropertyDescriptor == RESOURCES_PROPERTY || childListPropertyDescriptor == RESOURCES2_PROPERTY) ? resources() : childListPropertyDescriptor == CATCH_CLAUSES_PROPERTY ? catchClauses() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == BODY_PROPERTY) {
            if (z10) {
                return getBody();
            }
            setBody((Block) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != FINALLY_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getFinally();
        }
        setFinally((Block) aSTNode);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return super.memSize() + 16;
    }

    public List resources() {
        if (this.resources == null) {
            unsupportedIn2_3();
        }
        return this.resources;
    }

    public void setBody(Block block) {
        if (block == null) {
            throw new IllegalArgumentException();
        }
        Block block2 = this.body;
        ChildPropertyDescriptor childPropertyDescriptor = BODY_PROPERTY;
        preReplaceChild(block2, block, childPropertyDescriptor);
        this.body = block;
        postReplaceChild(block2, block, childPropertyDescriptor);
    }

    public void setFinally(Block block) {
        Block block2 = this.optionalFinallyBody;
        ChildPropertyDescriptor childPropertyDescriptor = FINALLY_PROPERTY;
        preReplaceChild(block2, block, childPropertyDescriptor);
        this.optionalFinallyBody = block;
        postReplaceChild(block2, block, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize();
        ASTNode.NodeList nodeList = this.resources;
        return memSize + (nodeList == null ? 0 : nodeList.listSize()) + (this.body == null ? 0 : getBody().treeSize()) + this.catchClauses.listSize() + (this.optionalFinallyBody != null ? getFinally().treeSize() : 0);
    }
}
