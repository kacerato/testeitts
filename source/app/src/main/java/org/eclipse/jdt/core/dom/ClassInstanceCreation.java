package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.IJavaModelMarker;
import org.eclipse.jdt.core.dom.ASTNode;

public class ClassInstanceCreation extends Expression {
    public static final ChildPropertyDescriptor ANONYMOUS_CLASS_DECLARATION_PROPERTY;
    public static final ChildListPropertyDescriptor ARGUMENTS_PROPERTY;
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    public static final ChildListPropertyDescriptor TYPE_ARGUMENTS_PROPERTY;
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    private ASTNode.NodeList arguments;
    private AnonymousClassDeclaration optionalAnonymousClassDeclaration;
    private Expression optionalExpression;
    private Type type;
    private ASTNode.NodeList typeArguments;
    private Name typeName;

    static {
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(ClassInstanceCreation.class, "typeArguments", Type.class, false);
        TYPE_ARGUMENTS_PROPERTY = childListPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(ClassInstanceCreation.class, "expression", Expression.class, false, true);
        EXPRESSION_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(ClassInstanceCreation.class, "name", Name.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor2;
        ChildPropertyDescriptor childPropertyDescriptor3 = new ChildPropertyDescriptor(ClassInstanceCreation.class, "type", Type.class, true, false);
        TYPE_PROPERTY = childPropertyDescriptor3;
        ChildListPropertyDescriptor childListPropertyDescriptor2 = new ChildListPropertyDescriptor(ClassInstanceCreation.class, IJavaModelMarker.ARGUMENTS, Expression.class, true);
        ARGUMENTS_PROPERTY = childListPropertyDescriptor2;
        ChildPropertyDescriptor childPropertyDescriptor4 = new ChildPropertyDescriptor(ClassInstanceCreation.class, "anonymousClassDeclaration", AnonymousClassDeclaration.class, false, true);
        ANONYMOUS_CLASS_DECLARATION_PROPERTY = childPropertyDescriptor4;
        ArrayList arrayList = new ArrayList(5);
        ASTNode.createPropertyList(ClassInstanceCreation.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList);
        ASTNode.addProperty(childPropertyDescriptor4, arrayList);
        PROPERTY_DESCRIPTORS_2_0 = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(6);
        ASTNode.createPropertyList(ClassInstanceCreation.class, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor3, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor4, arrayList2);
        PROPERTY_DESCRIPTORS_3_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public ClassInstanceCreation(AST ast) {
        super(ast);
        this.optionalExpression = null;
        this.typeArguments = null;
        this.typeName = null;
        this.type = null;
        this.arguments = new ASTNode.NodeList(ARGUMENTS_PROPERTY);
        this.optionalAnonymousClassDeclaration = null;
        if (ast.apiLevel >= 3) {
            this.typeArguments = new ASTNode.NodeList(TYPE_ARGUMENTS_PROPERTY);
        }
    }

    public static List propertyDescriptors(int i10) {
        return i10 == 2 ? PROPERTY_DESCRIPTORS_2_0 : PROPERTY_DESCRIPTORS_3_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getExpression());
            if (this.ast.apiLevel == 2) {
                acceptChild(aSTVisitor, getName());
            }
            if (this.ast.apiLevel >= 3) {
                acceptChildren(aSTVisitor, this.typeArguments);
                acceptChild(aSTVisitor, getType());
            }
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
        ClassInstanceCreation classInstanceCreation = new ClassInstanceCreation(ast);
        classInstanceCreation.setSourceRange(getStartPosition(), getLength());
        classInstanceCreation.setExpression((Expression) ASTNode.copySubtree(ast, getExpression()));
        if (this.ast.apiLevel == 2) {
            classInstanceCreation.setName((Name) getName().clone(ast));
        }
        if (this.ast.apiLevel >= 3) {
            classInstanceCreation.typeArguments().addAll(ASTNode.copySubtrees(ast, typeArguments()));
            classInstanceCreation.setType((Type) getType().clone(ast));
        }
        classInstanceCreation.arguments().addAll(ASTNode.copySubtrees(ast, arguments()));
        classInstanceCreation.setAnonymousClassDeclaration((AnonymousClassDeclaration) ASTNode.copySubtree(ast, getAnonymousClassDeclaration()));
        return classInstanceCreation;
    }

    public AnonymousClassDeclaration getAnonymousClassDeclaration() {
        return this.optionalAnonymousClassDeclaration;
    }

    public Expression getExpression() {
        return this.optionalExpression;
    }

    public Name getName() {
        return internalGetName();
    }

    @Override
    public final int getNodeType0() {
        return 14;
    }

    public Type getType() {
        unsupportedIn2();
        if (this.type == null) {
            synchronized (this) {
                try {
                    if (this.type == null) {
                        preLazyInit();
                        SimpleType simpleType = new SimpleType(this.ast);
                        this.type = simpleType;
                        postLazyInit(simpleType, TYPE_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.type;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == ARGUMENTS_PROPERTY ? arguments() : childListPropertyDescriptor == TYPE_ARGUMENTS_PROPERTY ? typeArguments() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    public Name internalGetName() {
        supportedOnlyIn2();
        if (this.typeName == null) {
            synchronized (this) {
                try {
                    if (this.typeName == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.typeName = simpleName;
                        postLazyInit(simpleName, NAME_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.typeName;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == EXPRESSION_PROPERTY) {
            if (z10) {
                return getExpression();
            }
            setExpression((Expression) aSTNode);
            return null;
        }
        if (childPropertyDescriptor == NAME_PROPERTY) {
            if (z10) {
                return getName();
            }
            setName((Name) aSTNode);
            return null;
        }
        if (childPropertyDescriptor == TYPE_PROPERTY) {
            if (z10) {
                return getType();
            }
            setType((Type) aSTNode);
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

    public void internalSetName(Name name) {
        supportedOnlyIn2();
        if (name == null) {
            throw new IllegalArgumentException();
        }
        Name name2 = this.typeName;
        ChildPropertyDescriptor childPropertyDescriptor = NAME_PROPERTY;
        preReplaceChild(name2, name, childPropertyDescriptor);
        this.typeName = name;
        postReplaceChild(name2, name, childPropertyDescriptor);
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    public boolean isResolvedTypeInferredFromExpectedType() {
        return this.ast.getBindingResolver().isResolvedTypeInferredFromExpectedType(this);
    }

    @Override
    public int memSize() {
        return 64;
    }

    public IMethodBinding resolveConstructorBinding() {
        return this.ast.getBindingResolver().resolveConstructor(this);
    }

    public void setAnonymousClassDeclaration(AnonymousClassDeclaration anonymousClassDeclaration) {
        AnonymousClassDeclaration anonymousClassDeclaration2 = this.optionalAnonymousClassDeclaration;
        ChildPropertyDescriptor childPropertyDescriptor = ANONYMOUS_CLASS_DECLARATION_PROPERTY;
        preReplaceChild(anonymousClassDeclaration2, anonymousClassDeclaration, childPropertyDescriptor);
        this.optionalAnonymousClassDeclaration = anonymousClassDeclaration;
        postReplaceChild(anonymousClassDeclaration2, anonymousClassDeclaration, childPropertyDescriptor);
    }

    public void setExpression(Expression expression) {
        Expression expression2 = this.optionalExpression;
        ChildPropertyDescriptor childPropertyDescriptor = EXPRESSION_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.optionalExpression = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    public void setName(Name name) {
        internalSetName(name);
    }

    public void setType(Type type) {
        unsupportedIn2();
        if (type == null) {
            throw new IllegalArgumentException();
        }
        Type type2 = this.type;
        ChildPropertyDescriptor childPropertyDescriptor = TYPE_PROPERTY;
        preReplaceChild(type2, type, childPropertyDescriptor);
        this.type = type;
        postReplaceChild(type2, type, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize() + (this.typeName == null ? 0 : getName().treeSize()) + (this.type == null ? 0 : getType().treeSize()) + (this.optionalExpression == null ? 0 : getExpression().treeSize());
        ASTNode.NodeList nodeList = this.typeArguments;
        int listSize = memSize + (nodeList == null ? 0 : nodeList.listSize());
        ASTNode.NodeList nodeList2 = this.arguments;
        return listSize + (nodeList2 == null ? 0 : nodeList2.listSize()) + (this.optionalAnonymousClassDeclaration != null ? getAnonymousClassDeclaration().treeSize() : 0);
    }

    public List typeArguments() {
        if (this.typeArguments == null) {
            unsupportedIn2();
        }
        return this.typeArguments;
    }
}
