package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class NameQualifiedType extends AnnotatableType {
    public static final ChildListPropertyDescriptor ANNOTATIONS_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildPropertyDescriptor QUALIFIER_PROPERTY;
    private SimpleName name;
    private Name qualifier;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(NameQualifiedType.class, "qualifier", Name.class, true, false);
        QUALIFIER_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor internalAnnotationsPropertyFactory = AnnotatableType.internalAnnotationsPropertyFactory(NameQualifiedType.class);
        ANNOTATIONS_PROPERTY = internalAnnotationsPropertyFactory;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(NameQualifiedType.class, "name", SimpleName.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(4);
        ASTNode.createPropertyList(NameQualifiedType.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(internalAnnotationsPropertyFactory, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public NameQualifiedType(AST ast) {
        super(ast);
        this.qualifier = null;
        this.name = null;
        unsupportedIn2_3_4();
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getQualifier());
            acceptChildren(aSTVisitor, this.annotations);
            acceptChild(aSTVisitor, getName());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        NameQualifiedType nameQualifiedType = new NameQualifiedType(ast);
        nameQualifiedType.setSourceRange(getStartPosition(), getLength());
        nameQualifiedType.setQualifier((Name) getQualifier().clone(ast));
        nameQualifiedType.annotations().addAll(ASTNode.copySubtrees(ast, annotations()));
        nameQualifiedType.setName((SimpleName) getName().clone(ast));
        return nameQualifiedType;
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
        return 88;
    }

    public Name getQualifier() {
        if (this.qualifier == null) {
            synchronized (this) {
                try {
                    if (this.qualifier == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.qualifier = simpleName;
                        postLazyInit(simpleName, QUALIFIER_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.qualifier;
    }

    @Override
    public ChildListPropertyDescriptor internalAnnotationsProperty() {
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
            setQualifier((Name) aSTNode);
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
    public List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return 48;
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

    public void setQualifier(Name name) {
        if (name == null) {
            throw new IllegalArgumentException();
        }
        Name name2 = this.qualifier;
        ChildPropertyDescriptor childPropertyDescriptor = QUALIFIER_PROPERTY;
        preReplaceChild(name2, name, childPropertyDescriptor);
        this.qualifier = name;
        postReplaceChild(name2, name, childPropertyDescriptor);
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
