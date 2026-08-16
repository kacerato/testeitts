package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class ArrayCreation extends Expression {
    public static final ChildListPropertyDescriptor DIMENSIONS_PROPERTY;
    public static final ChildPropertyDescriptor INITIALIZER_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    private ArrayType arrayType;
    private ASTNode.NodeList dimensions;
    private ArrayInitializer optionalInitializer;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(ArrayCreation.class, "type", ArrayType.class, true, false);
        TYPE_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(ArrayCreation.class, "dimensions", Expression.class, true);
        DIMENSIONS_PROPERTY = childListPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(ArrayCreation.class, "initializer", ArrayInitializer.class, false, true);
        INITIALIZER_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(4);
        ASTNode.createPropertyList(ArrayCreation.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public ArrayCreation(AST ast) {
        super(ast);
        this.arrayType = null;
        this.dimensions = new ASTNode.NodeList(DIMENSIONS_PROPERTY);
        this.optionalInitializer = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getType());
            acceptChildren(aSTVisitor, this.dimensions);
            acceptChild(aSTVisitor, getInitializer());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        ArrayCreation arrayCreation = new ArrayCreation(ast);
        arrayCreation.setSourceRange(getStartPosition(), getLength());
        arrayCreation.setType((ArrayType) getType().clone(ast));
        arrayCreation.dimensions().addAll(ASTNode.copySubtrees(ast, dimensions()));
        arrayCreation.setInitializer((ArrayInitializer) ASTNode.copySubtree(ast, getInitializer()));
        return arrayCreation;
    }

    public List dimensions() {
        return this.dimensions;
    }

    public ArrayInitializer getInitializer() {
        return this.optionalInitializer;
    }

    @Override
    public final int getNodeType0() {
        return 3;
    }

    public ArrayType getType() {
        if (this.arrayType == null) {
            synchronized (this) {
                try {
                    if (this.arrayType == null) {
                        preLazyInit();
                        AST ast = this.ast;
                        ArrayType newArrayType = ast.newArrayType(ast.newPrimitiveType(PrimitiveType.INT));
                        this.arrayType = newArrayType;
                        postLazyInit(newArrayType, TYPE_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.arrayType;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == DIMENSIONS_PROPERTY ? dimensions() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == INITIALIZER_PROPERTY) {
            if (z10) {
                return getInitializer();
            }
            setInitializer((ArrayInitializer) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != TYPE_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getType();
        }
        setType((ArrayType) aSTNode);
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

    public void setInitializer(ArrayInitializer arrayInitializer) {
        ArrayInitializer arrayInitializer2 = this.optionalInitializer;
        ChildPropertyDescriptor childPropertyDescriptor = INITIALIZER_PROPERTY;
        preReplaceChild(arrayInitializer2, arrayInitializer, childPropertyDescriptor);
        this.optionalInitializer = arrayInitializer;
        postReplaceChild(arrayInitializer2, arrayInitializer, childPropertyDescriptor);
    }

    public void setType(ArrayType arrayType) {
        if (arrayType == null) {
            throw new IllegalArgumentException();
        }
        ArrayType arrayType2 = this.arrayType;
        ChildPropertyDescriptor childPropertyDescriptor = TYPE_PROPERTY;
        preReplaceChild(arrayType2, arrayType, childPropertyDescriptor);
        this.arrayType = arrayType;
        postReplaceChild(arrayType2, arrayType, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.arrayType == null ? 0 : getType().treeSize()) + (this.optionalInitializer != null ? getInitializer().treeSize() : 0) + this.dimensions.listSize();
    }
}
