package org.eclipse.jdt.core.dom;

import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public abstract class ModulePackageAccess extends ModuleDirective {
    protected ASTNode.NodeList modules;
    protected Name name;

    public ModulePackageAccess(AST ast) {
        super(ast);
        this.name = null;
        this.modules = null;
        this.modules = new ASTNode.NodeList(internalModulesProperty());
    }

    public static final ChildListPropertyDescriptor internalModulesPropertyFactory(Class cls) {
        return new ChildListPropertyDescriptor(cls, "modules", Name.class, false);
    }

    public static final ChildPropertyDescriptor internalNamePropertyFactory(Class cls) {
        return new ChildPropertyDescriptor(cls, "name", Name.class, true, false);
    }

    public void acceptVisitChildren(boolean z10, ASTVisitor aSTVisitor) {
        if (z10) {
            acceptChild(aSTVisitor, getName());
            acceptChildren(aSTVisitor, this.modules);
        }
    }

    public ASTNode cloneHelper(AST ast, ModulePackageAccess modulePackageAccess) {
        modulePackageAccess.setSourceRange(getStartPosition(), getLength());
        modulePackageAccess.setName((Name) getName().clone(ast));
        modulePackageAccess.modules().addAll(ASTNode.copySubtrees(ast, modules()));
        return modulePackageAccess;
    }

    public Name getName() {
        if (this.name == null) {
            synchronized (this) {
                try {
                    if (this.name == null) {
                        preLazyInit();
                        this.name = this.ast.newQualifiedName(new SimpleName(this.ast), new SimpleName(this.ast));
                        postLazyInit(this.name, internalNameProperty());
                    }
                } finally {
                }
            }
        }
        return this.name;
    }

    public final ChildPropertyDescriptor getNameProperty() {
        return internalNameProperty();
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == internalModulesProperty() ? modules() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor != internalNameProperty()) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getName();
        }
        setName((Name) aSTNode);
        return null;
    }

    public abstract ChildListPropertyDescriptor internalModulesProperty();

    public abstract ChildPropertyDescriptor internalNameProperty();

    @Override
    public int memSize() {
        return 48;
    }

    public List modules() {
        return this.modules;
    }

    public void setName(Name name) {
        if (name == null) {
            throw new IllegalArgumentException();
        }
        Name name2 = this.name;
        ChildPropertyDescriptor internalNameProperty = internalNameProperty();
        preReplaceChild(name2, name, internalNameProperty);
        this.name = name;
        postReplaceChild(name2, name, internalNameProperty);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.name == null ? 0 : getName().treeSize()) + this.modules.listSize();
    }
}
