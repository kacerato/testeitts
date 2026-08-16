package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class ImportDeclaration extends ASTNode {
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final SimplePropertyDescriptor ON_DEMAND_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    public static final SimplePropertyDescriptor STATIC_PROPERTY;
    private Name importName;
    private boolean isStatic;
    private boolean onDemand;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(ImportDeclaration.class, "name", Name.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor;
        Class<Boolean> cls = Boolean.TYPE;
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(ImportDeclaration.class, "onDemand", cls, true);
        ON_DEMAND_PROPERTY = simplePropertyDescriptor;
        SimplePropertyDescriptor simplePropertyDescriptor2 = new SimplePropertyDescriptor(ImportDeclaration.class, "static", cls, true);
        STATIC_PROPERTY = simplePropertyDescriptor2;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(ImportDeclaration.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS_2_0 = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(4);
        ASTNode.createPropertyList(ImportDeclaration.class, arrayList2);
        ASTNode.addProperty(simplePropertyDescriptor2, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList2);
        PROPERTY_DESCRIPTORS_3_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public ImportDeclaration(AST ast) {
        super(ast);
        this.importName = null;
        this.onDemand = false;
        this.isStatic = false;
    }

    public static List propertyDescriptors(int i10) {
        return i10 == 2 ? PROPERTY_DESCRIPTORS_2_0 : PROPERTY_DESCRIPTORS_3_0;
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
        ImportDeclaration importDeclaration = new ImportDeclaration(ast);
        importDeclaration.setSourceRange(getStartPosition(), getLength());
        importDeclaration.setOnDemand(isOnDemand());
        if (this.ast.apiLevel >= 3) {
            importDeclaration.setStatic(isStatic());
        }
        importDeclaration.setName((Name) getName().clone(ast));
        return importDeclaration;
    }

    public Name getName() {
        if (this.importName == null) {
            synchronized (this) {
                try {
                    if (this.importName == null) {
                        preLazyInit();
                        QualifiedName newQualifiedName = this.ast.newQualifiedName(new SimpleName(this.ast), new SimpleName(this.ast));
                        this.importName = newQualifiedName;
                        postLazyInit(newQualifiedName, NAME_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.importName;
    }

    @Override
    public final int getNodeType0() {
        return 26;
    }

    @Override
    public final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, boolean z11) {
        if (simplePropertyDescriptor == ON_DEMAND_PROPERTY) {
            if (z10) {
                return isOnDemand();
            }
            setOnDemand(z11);
            return false;
        }
        if (simplePropertyDescriptor != STATIC_PROPERTY) {
            return super.internalGetSetBooleanProperty(simplePropertyDescriptor, z10, z11);
        }
        if (z10) {
            return isStatic();
        }
        setStatic(z11);
        return false;
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

    public boolean isOnDemand() {
        return this.onDemand;
    }

    public boolean isStatic() {
        unsupportedIn2();
        return this.isStatic;
    }

    @Override
    public int memSize() {
        return 52;
    }

    public IBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveImport(this);
    }

    public void setName(Name name) {
        if (name == null) {
            throw new IllegalArgumentException();
        }
        Name name2 = this.importName;
        ChildPropertyDescriptor childPropertyDescriptor = NAME_PROPERTY;
        preReplaceChild(name2, name, childPropertyDescriptor);
        this.importName = name;
        postReplaceChild(name2, name, childPropertyDescriptor);
    }

    public void setOnDemand(boolean z10) {
        SimplePropertyDescriptor simplePropertyDescriptor = ON_DEMAND_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.onDemand = z10;
        postValueChange(simplePropertyDescriptor);
    }

    public void setStatic(boolean z10) {
        unsupportedIn2();
        SimplePropertyDescriptor simplePropertyDescriptor = STATIC_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.isStatic = z10;
        postValueChange(simplePropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.importName == null ? 0 : getName().treeSize());
    }
}
