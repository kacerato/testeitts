package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class RequiresDirective extends ModuleDirective {
    public static final ChildListPropertyDescriptor MODIFIERS_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_9_0;
    private ASTNode.NodeList modifiers;
    private Name name;

    static {
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(RequiresDirective.class, "modifiers", ModuleModifier.class, false);
        MODIFIERS_PROPERTY = childListPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(RequiresDirective.class, "name", Name.class, false, false);
        NAME_PROPERTY = childPropertyDescriptor;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(RequiresDirective.class, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS_9_0 = ASTNode.reapPropertyList(arrayList);
    }

    public RequiresDirective(AST ast) {
        super(ast);
        this.modifiers = new ASTNode.NodeList(MODIFIERS_PROPERTY);
        this.name = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS_9_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChildren(aSTVisitor, this.modifiers);
            acceptChild(aSTVisitor, getName());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        RequiresDirective requiresDirective = new RequiresDirective(ast);
        requiresDirective.modifiers().addAll(ASTNode.copySubtrees(ast, modifiers()));
        requiresDirective.setName((Name) getName().clone(ast));
        return requiresDirective;
    }

    public int getModifiers() {
        int i10 = 0;
        for (Object obj : modifiers()) {
            if (obj instanceof ModuleModifier) {
                i10 |= ((ModuleModifier) obj).getKeyword().toFlagValue();
            }
        }
        return i10;
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
        return 94;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == MODIFIERS_PROPERTY ? modifiers() : super.internalGetChildListProperty(childListPropertyDescriptor);
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
        return 48;
    }

    public List modifiers() {
        return this.modifiers;
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
        int memSize = memSize();
        ASTNode.NodeList nodeList = this.modifiers;
        return memSize + (nodeList == null ? 0 : nodeList.listSize()) + (this.name != null ? getName().treeSize() : 0);
    }
}
