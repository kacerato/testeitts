package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class QualifiedType extends AnnotatableType {
    public static final ChildListPropertyDescriptor ANNOTATIONS_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private static final List PROPERTY_DESCRIPTORS_8_0;
    public static final ChildPropertyDescriptor QUALIFIER_PROPERTY;
    int index;
    private SimpleName name;
    private Type qualifier;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(QualifiedType.class, "qualifier", Type.class, true, true);
        QUALIFIER_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor internalAnnotationsPropertyFactory = AnnotatableType.internalAnnotationsPropertyFactory(QualifiedType.class);
        ANNOTATIONS_PROPERTY = internalAnnotationsPropertyFactory;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(QualifiedType.class, "name", SimpleName.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(QualifiedType.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(4);
        ASTNode.createPropertyList(QualifiedType.class, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        ASTNode.addProperty(internalAnnotationsPropertyFactory, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList2);
        PROPERTY_DESCRIPTORS_8_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public QualifiedType(AST ast) {
        super(ast);
        this.qualifier = null;
        this.name = null;
        unsupportedIn2();
    }

    public static List propertyDescriptors(int i10) {
        return (i10 == 2 || i10 == 3 || i10 == 4) ? PROPERTY_DESCRIPTORS : PROPERTY_DESCRIPTORS_8_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getQualifier());
            if (this.ast.apiLevel >= 8) {
                acceptChildren(aSTVisitor, this.annotations);
            }
            acceptChild(aSTVisitor, getName());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        QualifiedType qualifiedType = new QualifiedType(ast);
        qualifiedType.setSourceRange(getStartPosition(), getLength());
        qualifiedType.setQualifier((Type) getQualifier().clone(ast));
        if (this.ast.apiLevel >= 8) {
            qualifiedType.annotations().addAll(ASTNode.copySubtrees(ast, annotations()));
        }
        qualifiedType.setName((SimpleName) getName().clone(ast));
        return qualifiedType;
    }

    public SimpleName getName() {
        if (this.name == null) {
            synchronized (this) {
                try {
                    if (this.name == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.name = simpleName;
                        postLazyInit(simpleName, NAME_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.name;
    }

    @Override
    public final int getNodeType0() {
        return 75;
    }

    public Type getQualifier() {
        if (this.qualifier == null) {
            synchronized (this) {
                try {
                    if (this.qualifier == null) {
                        preLazyInit();
                        SimpleType simpleType = new SimpleType(this.ast);
                        this.qualifier = simpleType;
                        postLazyInit(simpleType, QUALIFIER_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.qualifier;
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
        if (childPropertyDescriptor == QUALIFIER_PROPERTY) {
            if (z10) {
                return getQualifier();
            }
            setQualifier((Type) aSTNode);
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

    @Override
    public int memSize() {
        return 56;
    }

    public void setName(SimpleName simpleName) {
        if (simpleName == null) {
            throw new IllegalArgumentException();
        }
        SimpleName simpleName2 = this.name;
        ChildPropertyDescriptor childPropertyDescriptor = NAME_PROPERTY;
        preReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
        this.name = simpleName;
        postReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
    }

    public void setQualifier(Type type) {
        if (type == null) {
            throw new IllegalArgumentException();
        }
        Type type2 = this.qualifier;
        ChildPropertyDescriptor childPropertyDescriptor = QUALIFIER_PROPERTY;
        preReplaceChild(type2, type, childPropertyDescriptor);
        this.qualifier = type;
        postReplaceChild(type2, type, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize() + (this.qualifier == null ? 0 : getQualifier().treeSize());
        ASTNode.NodeList nodeList = this.annotations;
        return memSize + (nodeList == null ? 0 : nodeList.listSize()) + (this.name != null ? getName().treeSize() : 0);
    }
}
