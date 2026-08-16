package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.IJavaModelMarker;
import org.eclipse.jdt.core.dom.ASTNode;

public class EnumConstantDeclaration extends BodyDeclaration {
    public static final ChildPropertyDescriptor ANONYMOUS_CLASS_DECLARATION_PROPERTY;
    public static final ChildListPropertyDescriptor ARGUMENTS_PROPERTY;
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private ASTNode.NodeList arguments;
    private SimpleName constantName;
    private AnonymousClassDeclaration optionalAnonymousClassDeclaration;

    static {
        ChildPropertyDescriptor internalJavadocPropertyFactory = BodyDeclaration.internalJavadocPropertyFactory(EnumConstantDeclaration.class);
        JAVADOC_PROPERTY = internalJavadocPropertyFactory;
        ChildListPropertyDescriptor internalModifiers2PropertyFactory = BodyDeclaration.internalModifiers2PropertyFactory(EnumConstantDeclaration.class);
        MODIFIERS2_PROPERTY = internalModifiers2PropertyFactory;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(EnumConstantDeclaration.class, "name", SimpleName.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(EnumConstantDeclaration.class, IJavaModelMarker.ARGUMENTS, Expression.class, false);
        ARGUMENTS_PROPERTY = childListPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(EnumConstantDeclaration.class, "anonymousClassDeclaration", AnonymousClassDeclaration.class, false, true);
        ANONYMOUS_CLASS_DECLARATION_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(6);
        ASTNode.createPropertyList(EnumConstantDeclaration.class, arrayList);
        ASTNode.addProperty(internalJavadocPropertyFactory, arrayList);
        ASTNode.addProperty(internalModifiers2PropertyFactory, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public EnumConstantDeclaration(AST ast) {
        super(ast);
        this.constantName = null;
        this.arguments = new ASTNode.NodeList(ARGUMENTS_PROPERTY);
        this.optionalAnonymousClassDeclaration = null;
        unsupportedIn2();
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getJavadoc());
            acceptChildren(aSTVisitor, this.modifiers);
            acceptChild(aSTVisitor, getName());
            acceptChildren(aSTVisitor, this.arguments);
            acceptChild(aSTVisitor, getAnonymousClassDeclaration());
        }
        aSTVisitor.endVisit(this);
    }

    public List arguments() {
        return this.arguments;
    }

    @Override
    public ASTNode clone0(AST ast) {
        EnumConstantDeclaration enumConstantDeclaration = new EnumConstantDeclaration(ast);
        enumConstantDeclaration.setSourceRange(getStartPosition(), getLength());
        enumConstantDeclaration.setJavadoc((Javadoc) ASTNode.copySubtree(ast, getJavadoc()));
        enumConstantDeclaration.modifiers().addAll(ASTNode.copySubtrees(ast, modifiers()));
        enumConstantDeclaration.setName((SimpleName) getName().clone(ast));
        enumConstantDeclaration.arguments().addAll(ASTNode.copySubtrees(ast, arguments()));
        enumConstantDeclaration.setAnonymousClassDeclaration((AnonymousClassDeclaration) ASTNode.copySubtree(ast, getAnonymousClassDeclaration()));
        return enumConstantDeclaration;
    }

    public AnonymousClassDeclaration getAnonymousClassDeclaration() {
        return this.optionalAnonymousClassDeclaration;
    }

    public SimpleName getName() {
        if (this.constantName == null) {
            synchronized (this) {
                try {
                    if (this.constantName == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.constantName = simpleName;
                        postLazyInit(simpleName, NAME_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.constantName;
    }

    @Override
    public final int getNodeType0() {
        return 72;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == MODIFIERS2_PROPERTY ? modifiers() : childListPropertyDescriptor == ARGUMENTS_PROPERTY ? arguments() : super.internalGetChildListProperty(childListPropertyDescriptor);
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
        if (childPropertyDescriptor == NAME_PROPERTY) {
            if (z10) {
                return getName();
            }
            setName((SimpleName) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != ANONYMOUS_CLASS_DECLARATION_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getAnonymousClassDeclaration();
        }
        setAnonymousClassDeclaration((AnonymousClassDeclaration) aSTNode);
        return null;
    }

    @Override
    public final ChildPropertyDescriptor internalJavadocProperty() {
        return JAVADOC_PROPERTY;
    }

    @Override
    public final ChildListPropertyDescriptor internalModifiers2Property() {
        return MODIFIERS2_PROPERTY;
    }

    @Override
    public final SimplePropertyDescriptor internalModifiersProperty() {
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return super.memSize() + 12;
    }

    public IMethodBinding resolveConstructorBinding() {
        return this.ast.getBindingResolver().resolveConstructor(this);
    }

    public IVariableBinding resolveVariable() {
        return this.ast.getBindingResolver().resolveVariable(this);
    }

    public void setAnonymousClassDeclaration(AnonymousClassDeclaration anonymousClassDeclaration) {
        AnonymousClassDeclaration anonymousClassDeclaration2 = this.optionalAnonymousClassDeclaration;
        ChildPropertyDescriptor childPropertyDescriptor = ANONYMOUS_CLASS_DECLARATION_PROPERTY;
        preReplaceChild(anonymousClassDeclaration2, anonymousClassDeclaration, childPropertyDescriptor);
        this.optionalAnonymousClassDeclaration = anonymousClassDeclaration;
        postReplaceChild(anonymousClassDeclaration2, anonymousClassDeclaration, childPropertyDescriptor);
    }

    public void setName(SimpleName simpleName) {
        if (simpleName == null) {
            throw new IllegalArgumentException();
        }
        SimpleName simpleName2 = this.constantName;
        ChildPropertyDescriptor childPropertyDescriptor = NAME_PROPERTY;
        preReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
        this.constantName = simpleName;
        postReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.optionalDocComment == null ? 0 : getJavadoc().treeSize()) + this.modifiers.listSize() + (this.constantName == null ? 0 : getName().treeSize()) + this.arguments.listSize() + (this.optionalAnonymousClassDeclaration != null ? getAnonymousClassDeclaration().treeSize() : 0);
    }
}
