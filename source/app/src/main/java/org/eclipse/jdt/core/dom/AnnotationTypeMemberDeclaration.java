package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class AnnotationTypeMemberDeclaration extends BodyDeclaration {
    public static final ChildPropertyDescriptor DEFAULT_PROPERTY;
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    private SimpleName memberName;
    private Type memberType;
    private Expression optionalDefaultValue;

    static {
        ChildPropertyDescriptor internalJavadocPropertyFactory = BodyDeclaration.internalJavadocPropertyFactory(AnnotationTypeMemberDeclaration.class);
        JAVADOC_PROPERTY = internalJavadocPropertyFactory;
        ChildListPropertyDescriptor internalModifiers2PropertyFactory = BodyDeclaration.internalModifiers2PropertyFactory(AnnotationTypeMemberDeclaration.class);
        MODIFIERS2_PROPERTY = internalModifiers2PropertyFactory;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(AnnotationTypeMemberDeclaration.class, "type", Type.class, true, false);
        TYPE_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(AnnotationTypeMemberDeclaration.class, "name", SimpleName.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor2;
        ChildPropertyDescriptor childPropertyDescriptor3 = new ChildPropertyDescriptor(AnnotationTypeMemberDeclaration.class, "default", Expression.class, false, true);
        DEFAULT_PROPERTY = childPropertyDescriptor3;
        ArrayList arrayList = new ArrayList(6);
        ASTNode.createPropertyList(AnnotationTypeMemberDeclaration.class, arrayList);
        ASTNode.addProperty(internalJavadocPropertyFactory, arrayList);
        ASTNode.addProperty(internalModifiers2PropertyFactory, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        ASTNode.addProperty(childPropertyDescriptor3, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public AnnotationTypeMemberDeclaration(AST ast) {
        super(ast);
        this.memberType = null;
        this.memberName = null;
        this.optionalDefaultValue = null;
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
            acceptChild(aSTVisitor, getType());
            acceptChild(aSTVisitor, getName());
            acceptChild(aSTVisitor, getDefault());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration = new AnnotationTypeMemberDeclaration(ast);
        annotationTypeMemberDeclaration.setSourceRange(getStartPosition(), getLength());
        annotationTypeMemberDeclaration.setJavadoc((Javadoc) ASTNode.copySubtree(ast, getJavadoc()));
        annotationTypeMemberDeclaration.modifiers().addAll(ASTNode.copySubtrees(ast, modifiers()));
        annotationTypeMemberDeclaration.setType((Type) ASTNode.copySubtree(ast, getType()));
        annotationTypeMemberDeclaration.setName((SimpleName) getName().clone(ast));
        annotationTypeMemberDeclaration.setDefault((Expression) ASTNode.copySubtree(ast, getDefault()));
        return annotationTypeMemberDeclaration;
    }

    public Expression getDefault() {
        return this.optionalDefaultValue;
    }

    public SimpleName getName() {
        if (this.memberName == null) {
            synchronized (this) {
                try {
                    if (this.memberName == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.memberName = simpleName;
                        postLazyInit(simpleName, NAME_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.memberName;
    }

    @Override
    public final int getNodeType0() {
        return 82;
    }

    public Type getType() {
        if (this.memberType == null) {
            synchronized (this) {
                try {
                    if (this.memberType == null) {
                        preLazyInit();
                        PrimitiveType newPrimitiveType = this.ast.newPrimitiveType(PrimitiveType.INT);
                        this.memberType = newPrimitiveType;
                        postLazyInit(newPrimitiveType, TYPE_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.memberType;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == MODIFIERS2_PROPERTY ? modifiers() : super.internalGetChildListProperty(childListPropertyDescriptor);
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
        if (childPropertyDescriptor == TYPE_PROPERTY) {
            if (z10) {
                return getType();
            }
            setType((Type) aSTNode);
            return null;
        }
        if (childPropertyDescriptor == NAME_PROPERTY) {
            if (z10) {
                return getName();
            }
            setName((SimpleName) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != DEFAULT_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getDefault();
        }
        setDefault((Expression) aSTNode);
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

    public IMethodBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveMember(this);
    }

    public void setDefault(Expression expression) {
        Expression expression2 = this.optionalDefaultValue;
        ChildPropertyDescriptor childPropertyDescriptor = DEFAULT_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.optionalDefaultValue = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    public void setName(SimpleName simpleName) {
        if (simpleName == null) {
            throw new IllegalArgumentException();
        }
        SimpleName simpleName2 = this.memberName;
        ChildPropertyDescriptor childPropertyDescriptor = NAME_PROPERTY;
        preReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
        this.memberName = simpleName;
        postReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
    }

    public void setType(Type type) {
        if (type == null) {
            throw new IllegalArgumentException();
        }
        Type type2 = this.memberType;
        ChildPropertyDescriptor childPropertyDescriptor = TYPE_PROPERTY;
        preReplaceChild(type2, type, childPropertyDescriptor);
        this.memberType = type;
        postReplaceChild(type2, type, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.optionalDocComment == null ? 0 : getJavadoc().treeSize()) + this.modifiers.listSize() + (this.memberName == null ? 0 : getName().treeSize()) + (this.memberType == null ? 0 : getType().treeSize()) + (this.optionalDefaultValue != null ? getDefault().treeSize() : 0);
    }
}
