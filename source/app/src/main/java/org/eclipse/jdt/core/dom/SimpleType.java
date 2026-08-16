package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;

public class SimpleType extends AnnotatableType {
    public static final ChildListPropertyDescriptor ANNOTATIONS_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private static final List PROPERTY_DESCRIPTORS_8_0;
    private Name typeName;

    static {
        ChildListPropertyDescriptor internalAnnotationsPropertyFactory = AnnotatableType.internalAnnotationsPropertyFactory(SimpleType.class);
        ANNOTATIONS_PROPERTY = internalAnnotationsPropertyFactory;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(SimpleType.class, "name", Name.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(SimpleType.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(3);
        ASTNode.createPropertyList(SimpleType.class, arrayList2);
        ASTNode.addProperty(internalAnnotationsPropertyFactory, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        PROPERTY_DESCRIPTORS_8_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public SimpleType(AST ast) {
        super(ast);
        this.typeName = null;
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
            acceptChild(aSTVisitor, getName());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        SimpleType simpleType = new SimpleType(ast);
        simpleType.setSourceRange(getStartPosition(), getLength());
        if (this.ast.apiLevel >= 8) {
            simpleType.annotations().addAll(ASTNode.copySubtrees(ast, annotations()));
        }
        simpleType.setName((Name) getName().clone(ast));
        return simpleType;
    }

    public Name getName() {
        if (this.typeName == null) {
            synchronized (this) {
                try {
                    if (this.typeName == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.typeName = simpleName;
                        postLazyInit(simpleName, NAME_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.typeName;
    }

    @Override
    public final int getNodeType0() {
        return 43;
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
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor != NAME_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getName();
        }
        setName((Name) aSTNode);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public boolean isVar() {
        unsupportedBelow10();
        if (Long.compare(this.ast.scanner.complianceLevel, ClassFileConstants.JDK10) < 0) {
            return false;
        }
        if (this.typeName == null) {
            getName();
        }
        String fullyQualifiedName = this.typeName.getFullyQualifiedName();
        return fullyQualifiedName != null && fullyQualifiedName.equals("var");
    }

    @Override
    public int memSize() {
        return 48;
    }

    public void setName(Name name) {
        if (name == null) {
            throw new IllegalArgumentException();
        }
        Name name2 = this.typeName;
        ChildPropertyDescriptor childPropertyDescriptor = NAME_PROPERTY;
        preReplaceChild(name2, name, childPropertyDescriptor);
        this.typeName = name;
        postReplaceChild(name2, name, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize();
        ASTNode.NodeList nodeList = this.annotations;
        return memSize + (nodeList == null ? 0 : nodeList.listSize()) + (this.typeName != null ? getName().treeSize() : 0);
    }
}
