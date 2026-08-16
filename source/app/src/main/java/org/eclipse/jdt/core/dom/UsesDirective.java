package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class UsesDirective extends ModuleDirective {
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_9_0;
    private Name name;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(UsesDirective.class, "name", Name.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(UsesDirective.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS_9_0 = ASTNode.reapPropertyList(arrayList);
    }

    public UsesDirective(AST ast) {
        super(ast);
        this.name = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS_9_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getName());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        UsesDirective usesDirective = new UsesDirective(ast);
        usesDirective.setSourceRange(getStartPosition(), getLength());
        usesDirective.setName((Name) getName().clone(ast));
        return usesDirective;
    }

    public Name getName() {
        if (this.name == null) {
            synchronized (this) {
                try {
                    if (this.name == null) {
                        preLazyInit();
                        QualifiedName newQualifiedName = this.ast.newQualifiedName(new SimpleName(this.ast), new SimpleName(this.ast));
                        this.name = newQualifiedName;
                        postLazyInit(newQualifiedName, NAME_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.name;
    }

    @Override
    public final int getNodeType0() {
        return 97;
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
    public int memSize() {
        return 44;
    }

    public void setName(Name name) {
        if (name == null) {
            throw new IllegalArgumentException();
        }
        Name name2 = this.name;
        ChildPropertyDescriptor childPropertyDescriptor = NAME_PROPERTY;
        preReplaceChild(name2, name, childPropertyDescriptor);
        this.name = name;
        postReplaceChild(name2, name, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.name == null ? 0 : getName().treeSize());
    }
}
