package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.concurrent.AbstractCircuitBreaker;
import org.eclipse.jdt.core.dom.ASTNode;

public class ModuleDeclaration extends ASTNode {
    public static final ChildListPropertyDescriptor ANNOTATIONS_PROPERTY;
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final ChildListPropertyDescriptor MODULE_DIRECTIVES_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final SimplePropertyDescriptor OPEN_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_9_0;
    private ASTNode.NodeList annotations;
    private boolean isOpen;
    private ASTNode.NodeList moduleStatements;
    private Name name;
    private Javadoc optionalDocComment;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(ModuleDeclaration.class, "javadoc", Javadoc.class, false, false);
        JAVADOC_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(ModuleDeclaration.class, "annotations", Annotation.class, false);
        ANNOTATIONS_PROPERTY = childListPropertyDescriptor;
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(ModuleDeclaration.class, AbstractCircuitBreaker.PROPERTY_NAME, Boolean.TYPE, true);
        OPEN_PROPERTY = simplePropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(ModuleDeclaration.class, "name", Name.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor2;
        ChildListPropertyDescriptor childListPropertyDescriptor2 = new ChildListPropertyDescriptor(ModuleDeclaration.class, "moduleDirectives", ModuleDirective.class, false);
        MODULE_DIRECTIVES_PROPERTY = childListPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(6);
        ASTNode.createPropertyList(ModuleDeclaration.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS_9_0 = ASTNode.reapPropertyList(arrayList);
    }

    public ModuleDeclaration(AST ast) {
        super(ast);
        this.optionalDocComment = null;
        this.annotations = new ASTNode.NodeList(ANNOTATIONS_PROPERTY);
        this.isOpen = false;
        this.name = null;
        this.moduleStatements = new ASTNode.NodeList(MODULE_DIRECTIVES_PROPERTY);
        unsupportedBelow9();
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS_9_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getJavadoc());
            acceptChildren(aSTVisitor, this.annotations);
            acceptChild(aSTVisitor, getName());
            acceptChildren(aSTVisitor, this.moduleStatements);
        }
        aSTVisitor.endVisit(this);
    }

    public List annotations() {
        return this.annotations;
    }

    @Override
    public ASTNode clone0(AST ast) {
        ModuleDeclaration moduleDeclaration = new ModuleDeclaration(ast);
        moduleDeclaration.setSourceRange(getStartPosition(), getLength());
        moduleDeclaration.setJavadoc((Javadoc) ASTNode.copySubtree(ast, getJavadoc()));
        moduleDeclaration.setOpen(isOpen());
        moduleDeclaration.annotations().addAll(ASTNode.copySubtrees(ast, annotations()));
        moduleDeclaration.setName((SimpleName) getName().clone(ast));
        moduleDeclaration.moduleStatements().addAll(ASTNode.copySubtrees(ast, moduleStatements()));
        return moduleDeclaration;
    }

    public Javadoc getJavadoc() {
        return this.optionalDocComment;
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
    public int getNodeType0() {
        return 93;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == ANNOTATIONS_PROPERTY ? annotations() : childListPropertyDescriptor == MODULE_DIRECTIVES_PROPERTY ? moduleStatements() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, boolean z11) {
        if (simplePropertyDescriptor != OPEN_PROPERTY) {
            return super.internalGetSetBooleanProperty(simplePropertyDescriptor, z10, z11);
        }
        if (z10) {
            return isOpen();
        }
        setOpen(z11);
        return false;
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

    public boolean isOpen() {
        return this.isOpen;
    }

    @Override
    public int memSize() {
        return 60;
    }

    public List moduleStatements() {
        return this.moduleStatements;
    }

    public IModuleBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveModule(this);
    }

    public void setJavadoc(Javadoc javadoc) {
        ChildPropertyDescriptor childPropertyDescriptor = JAVADOC_PROPERTY;
        Javadoc javadoc2 = this.optionalDocComment;
        preReplaceChild(javadoc2, javadoc, childPropertyDescriptor);
        this.optionalDocComment = javadoc;
        postReplaceChild(javadoc2, javadoc, childPropertyDescriptor);
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

    public void setOpen(boolean z10) {
        SimplePropertyDescriptor simplePropertyDescriptor = OPEN_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.isOpen = z10;
        postValueChange(simplePropertyDescriptor);
    }

    @Override
    public boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.optionalDocComment == null ? 0 : getJavadoc().treeSize()) + this.annotations.listSize() + (this.name != null ? getName().treeSize() : 0) + this.moduleStatements.listSize();
    }
}
