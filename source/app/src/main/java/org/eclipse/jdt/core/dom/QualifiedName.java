package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class QualifiedName extends Name {
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildPropertyDescriptor QUALIFIER_PROPERTY;
    private SimpleName name;
    private Name qualifier;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(QualifiedName.class, "qualifier", Name.class, true, true);
        QUALIFIER_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(QualifiedName.class, "name", SimpleName.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(QualifiedName.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public QualifiedName(AST ast) {
        super(ast);
        this.qualifier = null;
        this.name = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getQualifier());
            acceptChild(aSTVisitor, getName());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public void appendName(StringBuffer stringBuffer) {
        getQualifier().appendName(stringBuffer);
        stringBuffer.append('.');
        getName().appendName(stringBuffer);
    }

    @Override
    public ASTNode clone0(AST ast) {
        QualifiedName qualifiedName = new QualifiedName(ast);
        qualifiedName.setSourceRange(getStartPosition(), getLength());
        qualifiedName.setQualifier((Name) getQualifier().clone(ast));
        qualifiedName.setName((SimpleName) getName().clone(ast));
        return qualifiedName;
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
        return 40;
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
        return memSize() + (this.name == null ? 0 : getName().treeSize()) + (this.qualifier != null ? getQualifier().treeSize() : 0);
    }
}
