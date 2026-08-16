package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class MethodRef extends ASTNode implements IDocElement {
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final ChildListPropertyDescriptor PARAMETERS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildPropertyDescriptor QUALIFIER_PROPERTY;
    private SimpleName methodName;
    private Name optionalQualifier;
    private ASTNode.NodeList parameters;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(MethodRef.class, "qualifier", Name.class, false, false);
        QUALIFIER_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(MethodRef.class, "name", SimpleName.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor2;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(MethodRef.class, "parameters", MethodRefParameter.class, false);
        PARAMETERS_PROPERTY = childListPropertyDescriptor;
        ArrayList arrayList = new ArrayList(4);
        ASTNode.createPropertyList(MethodRef.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public MethodRef(AST ast) {
        super(ast);
        this.optionalQualifier = null;
        this.methodName = null;
        this.parameters = new ASTNode.NodeList(PARAMETERS_PROPERTY);
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getQualifier());
            acceptChild(aSTVisitor, getName());
            acceptChildren(aSTVisitor, this.parameters);
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        MethodRef methodRef = new MethodRef(ast);
        methodRef.setSourceRange(getStartPosition(), getLength());
        methodRef.setQualifier((Name) ASTNode.copySubtree(ast, getQualifier()));
        methodRef.setName((SimpleName) ASTNode.copySubtree(ast, getName()));
        methodRef.parameters().addAll(ASTNode.copySubtrees(ast, parameters()));
        return methodRef;
    }

    public SimpleName getName() {
        if (this.methodName == null) {
            synchronized (this) {
                try {
                    if (this.methodName == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.methodName = simpleName;
                        postLazyInit(simpleName, NAME_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.methodName;
    }

    @Override
    public final int getNodeType0() {
        return 68;
    }

    public Name getQualifier() {
        return this.optionalQualifier;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == PARAMETERS_PROPERTY ? parameters() : super.internalGetChildListProperty(childListPropertyDescriptor);
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
        return 52;
    }

    public List parameters() {
        return this.parameters;
    }

    public final IBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveReference(this);
    }

    public void setName(SimpleName simpleName) {
        if (simpleName == null) {
            throw new IllegalArgumentException();
        }
        SimpleName simpleName2 = this.methodName;
        ChildPropertyDescriptor childPropertyDescriptor = NAME_PROPERTY;
        preReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
        this.methodName = simpleName;
        postReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
    }

    public void setQualifier(Name name) {
        Name name2 = this.optionalQualifier;
        ChildPropertyDescriptor childPropertyDescriptor = QUALIFIER_PROPERTY;
        preReplaceChild(name2, name, childPropertyDescriptor);
        this.optionalQualifier = name;
        postReplaceChild(name2, name, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.optionalQualifier == null ? 0 : getQualifier().treeSize()) + (this.methodName != null ? getName().treeSize() : 0) + this.parameters.listSize();
    }
}
