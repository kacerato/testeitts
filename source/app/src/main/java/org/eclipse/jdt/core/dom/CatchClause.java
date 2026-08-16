package org.eclipse.jdt.core.dom;

import android.provider.Telephony;
import java.util.ArrayList;
import java.util.List;

public class CatchClause extends ASTNode {
    public static final ChildPropertyDescriptor BODY_PROPERTY;
    public static final ChildPropertyDescriptor EXCEPTION_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Block body;
    private SingleVariableDeclaration exceptionDecl;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(CatchClause.class, "exception", SingleVariableDeclaration.class, true, true);
        EXCEPTION_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(CatchClause.class, Telephony.TextBasedSmsColumns.BODY, Block.class, true, true);
        BODY_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(CatchClause.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public CatchClause(AST ast) {
        super(ast);
        this.body = null;
        this.exceptionDecl = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getException());
            acceptChild(aSTVisitor, getBody());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        CatchClause catchClause = new CatchClause(ast);
        catchClause.setSourceRange(getStartPosition(), getLength());
        catchClause.setBody((Block) getBody().clone(ast));
        catchClause.setException((SingleVariableDeclaration) ASTNode.copySubtree(ast, getException()));
        return catchClause;
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

    public SingleVariableDeclaration getException() {
        if (this.exceptionDecl == null) {
            synchronized (this) {
                try {
                    if (this.exceptionDecl == null) {
                        preLazyInit();
                        SingleVariableDeclaration singleVariableDeclaration = new SingleVariableDeclaration(this.ast);
                        this.exceptionDecl = singleVariableDeclaration;
                        postLazyInit(singleVariableDeclaration, EXCEPTION_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.exceptionDecl;
    }

    @Override
    public final int getNodeType0() {
        return 12;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == EXCEPTION_PROPERTY) {
            if (z10) {
                return getException();
            }
            setException((SingleVariableDeclaration) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != BODY_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getBody();
        }
        setBody((Block) aSTNode);
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

    public void setException(SingleVariableDeclaration singleVariableDeclaration) {
        if (singleVariableDeclaration == null) {
            throw new IllegalArgumentException();
        }
        SingleVariableDeclaration singleVariableDeclaration2 = this.exceptionDecl;
        ChildPropertyDescriptor childPropertyDescriptor = EXCEPTION_PROPERTY;
        preReplaceChild(singleVariableDeclaration2, singleVariableDeclaration, childPropertyDescriptor);
        this.exceptionDecl = singleVariableDeclaration;
        postReplaceChild(singleVariableDeclaration2, singleVariableDeclaration, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.exceptionDecl == null ? 0 : getException().treeSize()) + (this.body != null ? getBody().treeSize() : 0);
    }
}
