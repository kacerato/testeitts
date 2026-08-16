package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class SingleVariableDeclaration extends VariableDeclaration {
    public static final ChildListPropertyDescriptor EXTRA_DIMENSIONS2_PROPERTY;
    public static final SimplePropertyDescriptor EXTRA_DIMENSIONS_PROPERTY;
    public static final ChildPropertyDescriptor INITIALIZER_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final SimplePropertyDescriptor MODIFIERS_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private static final List PROPERTY_DESCRIPTORS_8_0;
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    public static final ChildListPropertyDescriptor VARARGS_ANNOTATIONS_PROPERTY;
    public static final SimplePropertyDescriptor VARARGS_PROPERTY;
    private int modifierFlags;
    private ASTNode.NodeList modifiers;
    private Type type;
    private ASTNode.NodeList varargsAnnotations;
    private boolean variableArity;

    static {
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(SingleVariableDeclaration.class, "modifiers", Integer.TYPE, true);
        MODIFIERS_PROPERTY = simplePropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(SingleVariableDeclaration.class, "modifiers", IExtendedModifier.class, true);
        MODIFIERS2_PROPERTY = childListPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(SingleVariableDeclaration.class, "type", Type.class, true, false);
        TYPE_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor2 = new ChildListPropertyDescriptor(SingleVariableDeclaration.class, "varargsAnnotations", Annotation.class, true);
        VARARGS_ANNOTATIONS_PROPERTY = childListPropertyDescriptor2;
        SimplePropertyDescriptor simplePropertyDescriptor2 = new SimplePropertyDescriptor(SingleVariableDeclaration.class, "varargs", Boolean.TYPE, true);
        VARARGS_PROPERTY = simplePropertyDescriptor2;
        ChildPropertyDescriptor internalNamePropertyFactory = VariableDeclaration.internalNamePropertyFactory(SingleVariableDeclaration.class);
        NAME_PROPERTY = internalNamePropertyFactory;
        SimplePropertyDescriptor internalExtraDimensionsPropertyFactory = VariableDeclaration.internalExtraDimensionsPropertyFactory(SingleVariableDeclaration.class);
        EXTRA_DIMENSIONS_PROPERTY = internalExtraDimensionsPropertyFactory;
        ChildListPropertyDescriptor internalExtraDimensions2PropertyFactory = VariableDeclaration.internalExtraDimensions2PropertyFactory(SingleVariableDeclaration.class);
        EXTRA_DIMENSIONS2_PROPERTY = internalExtraDimensions2PropertyFactory;
        ChildPropertyDescriptor internalInitializerPropertyFactory = VariableDeclaration.internalInitializerPropertyFactory(SingleVariableDeclaration.class);
        INITIALIZER_PROPERTY = internalInitializerPropertyFactory;
        ArrayList arrayList = new ArrayList(6);
        ASTNode.createPropertyList(SingleVariableDeclaration.class, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(internalNamePropertyFactory, arrayList);
        ASTNode.addProperty(internalExtraDimensionsPropertyFactory, arrayList);
        ASTNode.addProperty(internalInitializerPropertyFactory, arrayList);
        PROPERTY_DESCRIPTORS_2_0 = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(7);
        ASTNode.createPropertyList(SingleVariableDeclaration.class, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        ASTNode.addProperty(simplePropertyDescriptor2, arrayList2);
        ASTNode.addProperty(internalNamePropertyFactory, arrayList2);
        ASTNode.addProperty(internalExtraDimensionsPropertyFactory, arrayList2);
        ASTNode.addProperty(internalInitializerPropertyFactory, arrayList2);
        PROPERTY_DESCRIPTORS_3_0 = ASTNode.reapPropertyList(arrayList2);
        ArrayList arrayList3 = new ArrayList(8);
        ASTNode.createPropertyList(SingleVariableDeclaration.class, arrayList3);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList3);
        ASTNode.addProperty(childPropertyDescriptor, arrayList3);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList3);
        ASTNode.addProperty(simplePropertyDescriptor2, arrayList3);
        ASTNode.addProperty(internalNamePropertyFactory, arrayList3);
        ASTNode.addProperty(internalExtraDimensions2PropertyFactory, arrayList3);
        ASTNode.addProperty(internalInitializerPropertyFactory, arrayList3);
        PROPERTY_DESCRIPTORS_8_0 = ASTNode.reapPropertyList(arrayList3);
    }

    public SingleVariableDeclaration(AST ast) {
        super(ast);
        this.modifiers = null;
        this.modifierFlags = 0;
        this.type = null;
        this.varargsAnnotations = null;
        this.variableArity = false;
        if (ast.apiLevel >= 3) {
            this.modifiers = new ASTNode.NodeList(MODIFIERS2_PROPERTY);
            if (ast.apiLevel >= 8) {
                this.varargsAnnotations = new ASTNode.NodeList(VARARGS_ANNOTATIONS_PROPERTY);
            }
        }
    }

    public static List propertyDescriptors(int i10) {
        return i10 == 2 ? PROPERTY_DESCRIPTORS_2_0 : i10 < 8 ? PROPERTY_DESCRIPTORS_3_0 : PROPERTY_DESCRIPTORS_8_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            if (this.ast.apiLevel >= 3) {
                acceptChildren(aSTVisitor, this.modifiers);
            }
            acceptChild(aSTVisitor, getType());
            if (this.ast.apiLevel >= 8 && isVarargs()) {
                acceptChildren(aSTVisitor, this.varargsAnnotations);
            }
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
        SingleVariableDeclaration singleVariableDeclaration = new SingleVariableDeclaration(ast);
        singleVariableDeclaration.setSourceRange(getStartPosition(), getLength());
        if (this.ast.apiLevel == 2) {
            singleVariableDeclaration.setModifiers(getModifiers());
        } else {
            singleVariableDeclaration.modifiers().addAll(ASTNode.copySubtrees(ast, modifiers()));
            singleVariableDeclaration.setVarargs(isVarargs());
        }
        singleVariableDeclaration.setType((Type) getType().clone(ast));
        if (this.ast.apiLevel >= 8) {
            singleVariableDeclaration.varargsAnnotations().addAll(ASTNode.copySubtrees(ast, varargsAnnotations()));
        }
        singleVariableDeclaration.setName((SimpleName) getName().clone(ast));
        if (this.ast.apiLevel >= 8) {
            singleVariableDeclaration.extraDimensions().addAll(ASTNode.copySubtrees(ast, extraDimensions()));
        } else {
            singleVariableDeclaration.internalSetExtraDimensions(getExtraDimensions());
        }
        singleVariableDeclaration.setInitializer((Expression) ASTNode.copySubtree(ast, getInitializer()));
        return singleVariableDeclaration;
    }

    public int getModifiers() {
        if (this.modifiers == null) {
            return this.modifierFlags;
        }
        int i10 = 0;
        for (Object obj : modifiers()) {
            if (obj instanceof Modifier) {
                i10 |= ((Modifier) obj).getKeyword().toFlagValue();
            }
        }
        return i10;
    }

    @Override
    public final int getNodeType0() {
        return 44;
    }

    public Type getType() {
        if (this.type == null) {
            synchronized (this) {
                try {
                    if (this.type == null) {
                        preLazyInit();
                        PrimitiveType newPrimitiveType = this.ast.newPrimitiveType(PrimitiveType.INT);
                        this.type = newPrimitiveType;
                        postLazyInit(newPrimitiveType, TYPE_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.type;
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
        return childListPropertyDescriptor == MODIFIERS2_PROPERTY ? modifiers() : childListPropertyDescriptor == VARARGS_ANNOTATIONS_PROPERTY ? varargsAnnotations() : childListPropertyDescriptor == EXTRA_DIMENSIONS2_PROPERTY ? extraDimensions() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, boolean z11) {
        if (simplePropertyDescriptor != VARARGS_PROPERTY) {
            return super.internalGetSetBooleanProperty(simplePropertyDescriptor, z10, z11);
        }
        if (z10) {
            return isVarargs();
        }
        setVarargs(z11);
        return false;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
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
        if (simplePropertyDescriptor == MODIFIERS_PROPERTY) {
            if (z10) {
                return getModifiers();
            }
            setModifiers(i10);
            return 0;
        }
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

    public final void internalSetModifiers(int i10) {
        supportedOnlyIn2();
        SimplePropertyDescriptor simplePropertyDescriptor = MODIFIERS_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.modifierFlags = i10;
        postValueChange(simplePropertyDescriptor);
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    public boolean isVarargs() {
        if (this.modifiers == null) {
            unsupportedIn2();
        }
        return this.variableArity;
    }

    @Override
    public int memSize() {
        return 76;
    }

    public List modifiers() {
        if (this.modifiers == null) {
            unsupportedIn2();
        }
        return this.modifiers;
    }

    public void setModifiers(int i10) {
        internalSetModifiers(i10);
    }

    public void setType(Type type) {
        if (type == null) {
            throw new IllegalArgumentException();
        }
        Type type2 = this.type;
        ChildPropertyDescriptor childPropertyDescriptor = TYPE_PROPERTY;
        preReplaceChild(type2, type, childPropertyDescriptor);
        this.type = type;
        postReplaceChild(type2, type, childPropertyDescriptor);
    }

    public void setVarargs(boolean z10) {
        if (this.modifiers == null) {
            unsupportedIn2();
        }
        SimplePropertyDescriptor simplePropertyDescriptor = VARARGS_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.variableArity = z10;
        postValueChange(simplePropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize();
        ASTNode.NodeList nodeList = this.modifiers;
        int listSize = memSize + (nodeList == null ? 0 : nodeList.listSize()) + (this.type == null ? 0 : getType().treeSize());
        ASTNode.NodeList nodeList2 = this.varargsAnnotations;
        int listSize2 = listSize + (nodeList2 == null ? 0 : nodeList2.listSize()) + (this.variableName == null ? 0 : getName().treeSize());
        ASTNode.NodeList nodeList3 = this.extraDimensions;
        return listSize2 + (nodeList3 == null ? 0 : nodeList3.listSize()) + (this.optionalInitializer != null ? getInitializer().treeSize() : 0);
    }

    public List varargsAnnotations() {
        if (this.varargsAnnotations == null) {
            unsupportedIn2_3_4();
        }
        return this.varargsAnnotations;
    }
}
