package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class VariableDeclarationFragment extends VariableDeclaration {
    public static final ChildListPropertyDescriptor EXTRA_DIMENSIONS2_PROPERTY;
    public static final SimplePropertyDescriptor EXTRA_DIMENSIONS_PROPERTY;
    public static final ChildPropertyDescriptor INITIALIZER_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private static final List PROPERTY_DESCRIPTORS_8_0;

    static {
        ChildPropertyDescriptor internalNamePropertyFactory = VariableDeclaration.internalNamePropertyFactory(VariableDeclarationFragment.class);
        NAME_PROPERTY = internalNamePropertyFactory;
        SimplePropertyDescriptor internalExtraDimensionsPropertyFactory = VariableDeclaration.internalExtraDimensionsPropertyFactory(VariableDeclarationFragment.class);
        EXTRA_DIMENSIONS_PROPERTY = internalExtraDimensionsPropertyFactory;
        ChildListPropertyDescriptor internalExtraDimensions2PropertyFactory = VariableDeclaration.internalExtraDimensions2PropertyFactory(VariableDeclarationFragment.class);
        EXTRA_DIMENSIONS2_PROPERTY = internalExtraDimensions2PropertyFactory;
        ChildPropertyDescriptor internalInitializerPropertyFactory = VariableDeclaration.internalInitializerPropertyFactory(VariableDeclarationFragment.class);
        INITIALIZER_PROPERTY = internalInitializerPropertyFactory;
        ArrayList arrayList = new ArrayList(4);
        ASTNode.createPropertyList(VariableDeclarationFragment.class, arrayList);
        ASTNode.addProperty(internalNamePropertyFactory, arrayList);
        ASTNode.addProperty(internalExtraDimensionsPropertyFactory, arrayList);
        ASTNode.addProperty(internalInitializerPropertyFactory, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(4);
        ASTNode.createPropertyList(VariableDeclarationFragment.class, arrayList2);
        ASTNode.addProperty(internalNamePropertyFactory, arrayList2);
        ASTNode.addProperty(internalExtraDimensions2PropertyFactory, arrayList2);
        ASTNode.addProperty(internalInitializerPropertyFactory, arrayList2);
        PROPERTY_DESCRIPTORS_8_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public VariableDeclarationFragment(AST ast) {
        super(ast);
    }

    public static List propertyDescriptors(int i10) {
        return i10 >= 8 ? PROPERTY_DESCRIPTORS_8_0 : PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getName());
            if (this.ast.apiLevel >= 8) {
                acceptChildren(aSTVisitor, this.extraDimensions);
            }
            acceptChild(aSTVisitor, getInitializer());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        VariableDeclarationFragment variableDeclarationFragment = new VariableDeclarationFragment(ast);
        variableDeclarationFragment.setSourceRange(getStartPosition(), getLength());
        variableDeclarationFragment.setName((SimpleName) getName().clone(ast));
        if (this.ast.apiLevel >= 8) {
            variableDeclarationFragment.extraDimensions().addAll(ASTNode.copySubtrees(ast, extraDimensions()));
        } else {
            variableDeclarationFragment.internalSetExtraDimensions(getExtraDimensions());
        }
        variableDeclarationFragment.setInitializer((Expression) ASTNode.copySubtree(ast, getInitializer()));
        return variableDeclarationFragment;
    }

    @Override
    public final int getNodeType0() {
        return 59;
    }

    @Override
    public final ChildListPropertyDescriptor internalExtraDimensions2Property() {
        return EXTRA_DIMENSIONS2_PROPERTY;
    }

    @Override
    public final SimplePropertyDescriptor internalExtraDimensionsProperty() {
        return EXTRA_DIMENSIONS_PROPERTY;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == EXTRA_DIMENSIONS2_PROPERTY ? extraDimensions() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == NAME_PROPERTY) {
            if (z10) {
                return getName();
            }
            setName((SimpleName) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != INITIALIZER_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getInitializer();
        }
        setInitializer((Expression) aSTNode);
        return null;
    }

    @Override
    public final int internalGetSetIntProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, int i10) {
        if (simplePropertyDescriptor != EXTRA_DIMENSIONS_PROPERTY) {
            return super.internalGetSetIntProperty(simplePropertyDescriptor, z10, i10);
        }
        if (z10) {
            return getExtraDimensions();
        }
        internalSetExtraDimensions(i10);
        return 0;
    }

    @Override
    public final ChildPropertyDescriptor internalInitializerProperty() {
        return INITIALIZER_PROPERTY;
    }

    @Override
    public final ChildPropertyDescriptor internalNameProperty() {
        return NAME_PROPERTY;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return 56;
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize() + (this.variableName == null ? 0 : getName().treeSize());
        ASTNode.NodeList nodeList = this.extraDimensions;
        return memSize + (nodeList == null ? 0 : nodeList.listSize()) + (this.optionalInitializer != null ? getInitializer().treeSize() : 0);
    }
}
