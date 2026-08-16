package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class WildcardType extends AnnotatableType {
    public static final ChildListPropertyDescriptor ANNOTATIONS_PROPERTY;
    public static final ChildPropertyDescriptor BOUND_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private static final List PROPERTY_DESCRIPTORS_8_0;
    public static final SimplePropertyDescriptor UPPER_BOUND_PROPERTY;
    private boolean isUpperBound;
    private Type optionalBound;

    static {
        ChildListPropertyDescriptor internalAnnotationsPropertyFactory = AnnotatableType.internalAnnotationsPropertyFactory(WildcardType.class);
        ANNOTATIONS_PROPERTY = internalAnnotationsPropertyFactory;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(WildcardType.class, "bound", Type.class, false, true);
        BOUND_PROPERTY = childPropertyDescriptor;
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(WildcardType.class, "upperBound", Boolean.TYPE, true);
        UPPER_BOUND_PROPERTY = simplePropertyDescriptor;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(WildcardType.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(4);
        ASTNode.createPropertyList(WildcardType.class, arrayList2);
        ASTNode.addProperty(internalAnnotationsPropertyFactory, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList2);
        PROPERTY_DESCRIPTORS_8_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public WildcardType(AST ast) {
        super(ast);
        this.optionalBound = null;
        this.isUpperBound = true;
        unsupportedIn2();
    }

    public static List propertyDescriptors(int i10) {
        return (i10 == 2 || i10 == 3 || i10 == 4) ? PROPERTY_DESCRIPTORS : PROPERTY_DESCRIPTORS_8_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            if (this.ast.apiLevel >= 8) {
                acceptChildren(aSTVisitor, this.annotations);
            }
            acceptChild(aSTVisitor, getBound());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        WildcardType wildcardType = new WildcardType(ast);
        wildcardType.setSourceRange(getStartPosition(), getLength());
        if (this.ast.apiLevel >= 8) {
            wildcardType.annotations().addAll(ASTNode.copySubtrees(ast, annotations()));
        }
        wildcardType.setBound((Type) ASTNode.copySubtree(ast, getBound()), isUpperBound());
        return wildcardType;
    }

    public Type getBound() {
        return this.optionalBound;
    }

    @Override
    public final int getNodeType0() {
        return 76;
    }

    @Override
    public final ChildListPropertyDescriptor internalAnnotationsProperty() {
        return ANNOTATIONS_PROPERTY;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == ANNOTATIONS_PROPERTY ? annotations() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, boolean z11) {
        if (simplePropertyDescriptor != UPPER_BOUND_PROPERTY) {
            return super.internalGetSetBooleanProperty(simplePropertyDescriptor, z10, z11);
        }
        if (z10) {
            return isUpperBound();
        }
        setUpperBound(z11);
        return false;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor != BOUND_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getBound();
        }
        setBound((Type) aSTNode);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    public boolean isUpperBound() {
        return this.isUpperBound;
    }

    @Override
    public int memSize() {
        return 52;
    }

    public void setBound(Type type, boolean z10) {
        setBound(type);
        setUpperBound(z10);
    }

    public void setUpperBound(boolean z10) {
        SimplePropertyDescriptor simplePropertyDescriptor = UPPER_BOUND_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.isUpperBound = z10;
        postValueChange(simplePropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize();
        ASTNode.NodeList nodeList = this.annotations;
        return memSize + (nodeList == null ? 0 : nodeList.listSize()) + (this.optionalBound != null ? getBound().treeSize() : 0);
    }

    public void setBound(Type type) {
        Type type2 = this.optionalBound;
        ChildPropertyDescriptor childPropertyDescriptor = BOUND_PROPERTY;
        preReplaceChild(type2, type, childPropertyDescriptor);
        this.optionalBound = type;
        postReplaceChild(type2, type, childPropertyDescriptor);
    }
}
