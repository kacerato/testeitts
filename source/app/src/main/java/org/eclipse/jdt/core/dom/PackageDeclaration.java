package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class PackageDeclaration extends ASTNode {
    public static final ChildListPropertyDescriptor ANNOTATIONS_PROPERTY;
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private ASTNode.NodeList annotations;
    Javadoc optionalDocComment;
    private Name packageName;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(PackageDeclaration.class, "javadoc", Javadoc.class, false, false);
        JAVADOC_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(PackageDeclaration.class, "annotations", Annotation.class, true);
        ANNOTATIONS_PROPERTY = childListPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(PackageDeclaration.class, "name", Name.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(PackageDeclaration.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS_2_0 = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(4);
        ASTNode.createPropertyList(PackageDeclaration.class, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList2);
        PROPERTY_DESCRIPTORS_3_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public PackageDeclaration(AST ast) {
        super(ast);
        this.optionalDocComment = null;
        this.annotations = null;
        this.packageName = null;
        if (ast.apiLevel >= 3) {
            this.annotations = new ASTNode.NodeList(ANNOTATIONS_PROPERTY);
        }
    }

    public static List propertyDescriptors(int i10) {
        return i10 == 2 ? PROPERTY_DESCRIPTORS_2_0 : PROPERTY_DESCRIPTORS_3_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            if (this.ast.apiLevel >= 3) {
                acceptChild(aSTVisitor, getJavadoc());
                acceptChildren(aSTVisitor, this.annotations);
            }
            acceptChild(aSTVisitor, getName());
        }
        aSTVisitor.endVisit(this);
    }

    public List annotations() {
        if (this.annotations == null) {
            unsupportedIn2();
        }
        return this.annotations;
    }

    @Override
    public ASTNode clone0(AST ast) {
        PackageDeclaration packageDeclaration = new PackageDeclaration(ast);
        packageDeclaration.setSourceRange(getStartPosition(), getLength());
        if (this.ast.apiLevel >= 3) {
            packageDeclaration.setJavadoc((Javadoc) ASTNode.copySubtree(ast, getJavadoc()));
            packageDeclaration.annotations().addAll(ASTNode.copySubtrees(ast, annotations()));
        }
        packageDeclaration.setName((Name) getName().clone(ast));
        return packageDeclaration;
    }

    public Javadoc getJavadoc() {
        if (this.annotations == null) {
            unsupportedIn2();
        }
        return this.optionalDocComment;
    }

    public Name getName() {
        if (this.packageName == null) {
            synchronized (this) {
                try {
                    if (this.packageName == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.packageName = simpleName;
                        postLazyInit(simpleName, NAME_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.packageName;
    }

    @Override
    public final int getNodeType0() {
        return 35;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == ANNOTATIONS_PROPERTY ? annotations() : super.internalGetChildListProperty(childListPropertyDescriptor);
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
        return 52;
    }

    public IPackageBinding resolveBinding() {
        return this.ast.getBindingResolver().resolvePackage(this);
    }

    public void setJavadoc(Javadoc javadoc) {
        if (this.annotations == null) {
            unsupportedIn2();
        }
        Javadoc javadoc2 = this.optionalDocComment;
        ChildPropertyDescriptor childPropertyDescriptor = JAVADOC_PROPERTY;
        preReplaceChild(javadoc2, javadoc, childPropertyDescriptor);
        this.optionalDocComment = javadoc;
        postReplaceChild(javadoc2, javadoc, childPropertyDescriptor);
    }

    public void setName(Name name) {
        if (name == null) {
            throw new IllegalArgumentException();
        }
        Name name2 = this.packageName;
        ChildPropertyDescriptor childPropertyDescriptor = NAME_PROPERTY;
        preReplaceChild(name2, name, childPropertyDescriptor);
        this.packageName = name;
        postReplaceChild(name2, name, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize() + (this.optionalDocComment == null ? 0 : getJavadoc().treeSize());
        ASTNode.NodeList nodeList = this.annotations;
        return memSize + (nodeList == null ? 0 : nodeList.listSize()) + (this.packageName != null ? getName().treeSize() : 0);
    }
}
