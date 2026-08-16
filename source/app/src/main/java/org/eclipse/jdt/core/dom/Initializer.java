package org.eclipse.jdt.core.dom;

import android.provider.Telephony;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class Initializer extends BodyDeclaration {
    public static final ChildPropertyDescriptor BODY_PROPERTY;
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final SimplePropertyDescriptor MODIFIERS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private Block body;

    static {
        ChildPropertyDescriptor internalJavadocPropertyFactory = BodyDeclaration.internalJavadocPropertyFactory(Initializer.class);
        JAVADOC_PROPERTY = internalJavadocPropertyFactory;
        SimplePropertyDescriptor internalModifiersPropertyFactory = BodyDeclaration.internalModifiersPropertyFactory(Initializer.class);
        MODIFIERS_PROPERTY = internalModifiersPropertyFactory;
        ChildListPropertyDescriptor internalModifiers2PropertyFactory = BodyDeclaration.internalModifiers2PropertyFactory(Initializer.class);
        MODIFIERS2_PROPERTY = internalModifiers2PropertyFactory;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(Initializer.class, Telephony.TextBasedSmsColumns.BODY, Block.class, true, true);
        BODY_PROPERTY = childPropertyDescriptor;
        ArrayList arrayList = new ArrayList(4);
        ASTNode.createPropertyList(Initializer.class, arrayList);
        ASTNode.addProperty(internalJavadocPropertyFactory, arrayList);
        ASTNode.addProperty(internalModifiersPropertyFactory, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS_2_0 = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(4);
        ASTNode.createPropertyList(Initializer.class, arrayList2);
        ASTNode.addProperty(internalJavadocPropertyFactory, arrayList2);
        ASTNode.addProperty(internalModifiers2PropertyFactory, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        PROPERTY_DESCRIPTORS_3_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public Initializer(AST ast) {
        super(ast);
        this.body = null;
    }

    public static List propertyDescriptors(int i10) {
        return i10 == 2 ? PROPERTY_DESCRIPTORS_2_0 : PROPERTY_DESCRIPTORS_3_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getJavadoc());
            if (this.ast.apiLevel >= 3) {
                acceptChildren(aSTVisitor, this.modifiers);
            }
            acceptChild(aSTVisitor, getBody());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        Initializer initializer = new Initializer(ast);
        initializer.setSourceRange(getStartPosition(), getLength());
        if (this.ast.apiLevel == 2) {
            initializer.internalSetModifiers(getModifiers());
        }
        if (this.ast.apiLevel >= 3) {
            initializer.modifiers().addAll(ASTNode.copySubtrees(ast, modifiers()));
        }
        initializer.setJavadoc((Javadoc) ASTNode.copySubtree(ast, getJavadoc()));
        initializer.setBody((Block) getBody().clone(ast));
        return initializer;
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

    @Override
    public final int getNodeType0() {
        return 28;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == MODIFIERS2_PROPERTY ? modifiers() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == JAVADOC_PROPERTY) {
            if (z10) {
                return getJavadoc();
            }
            setJavadoc((Javadoc) aSTNode);
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
    public final int internalGetSetIntProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, int i10) {
        if (simplePropertyDescriptor != MODIFIERS_PROPERTY) {
            return super.internalGetSetIntProperty(simplePropertyDescriptor, z10, i10);
        }
        if (z10) {
            return getModifiers();
        }
        internalSetModifiers(i10);
        return 0;
    }

    @Override
    public final ChildPropertyDescriptor internalJavadocProperty() {
        return JAVADOC_PROPERTY;
    }

    @Override
    public final ChildListPropertyDescriptor internalModifiers2Property() {
        return MODIFIERS2_PROPERTY;
    }

    @Override
    public final SimplePropertyDescriptor internalModifiersProperty() {
        return MODIFIERS_PROPERTY;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return super.memSize() + 4;
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

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize() + (this.optionalDocComment == null ? 0 : getJavadoc().treeSize());
        ASTNode.NodeList nodeList = this.modifiers;
        return memSize + (nodeList == null ? 0 : nodeList.listSize()) + (this.body != null ? getBody().treeSize() : 0);
    }
}
