package org.eclipse.jdt.core.dom;

import android.provider.Telephony;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class MethodDeclaration extends BodyDeclaration {
    public static final ChildPropertyDescriptor BODY_PROPERTY;
    public static final SimplePropertyDescriptor CONSTRUCTOR_PROPERTY;
    public static final ChildListPropertyDescriptor EXTRA_DIMENSIONS2_PROPERTY;
    public static final SimplePropertyDescriptor EXTRA_DIMENSIONS_PROPERTY;
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final SimplePropertyDescriptor MODIFIERS_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final ChildListPropertyDescriptor PARAMETERS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private static final List PROPERTY_DESCRIPTORS_8_0;
    public static final ChildPropertyDescriptor RECEIVER_QUALIFIER_PROPERTY;
    public static final ChildPropertyDescriptor RECEIVER_TYPE_PROPERTY;
    public static final ChildPropertyDescriptor RETURN_TYPE2_PROPERTY;
    public static final ChildPropertyDescriptor RETURN_TYPE_PROPERTY;
    public static final ChildListPropertyDescriptor THROWN_EXCEPTIONS_PROPERTY;
    public static final ChildListPropertyDescriptor THROWN_EXCEPTION_TYPES_PROPERTY;
    public static final ChildListPropertyDescriptor TYPE_PARAMETERS_PROPERTY;
    private int extraArrayDimensions;
    private ASTNode.NodeList extraDimensions;
    private boolean isConstructor;
    private SimpleName methodName;
    private Block optionalBody;
    private SimpleName optionalReceiverQualifier;
    private Type optionalReceiverType;
    private ASTNode.NodeList parameters;
    private Type returnType;
    private boolean returnType2Initialized;
    private ASTNode.NodeList thrownExceptionTypes;
    private ASTNode.NodeList thrownExceptions;
    private ASTNode.NodeList typeParameters;

    static {
        ChildPropertyDescriptor internalJavadocPropertyFactory = BodyDeclaration.internalJavadocPropertyFactory(MethodDeclaration.class);
        JAVADOC_PROPERTY = internalJavadocPropertyFactory;
        SimplePropertyDescriptor internalModifiersPropertyFactory = BodyDeclaration.internalModifiersPropertyFactory(MethodDeclaration.class);
        MODIFIERS_PROPERTY = internalModifiersPropertyFactory;
        ChildListPropertyDescriptor internalModifiers2PropertyFactory = BodyDeclaration.internalModifiers2PropertyFactory(MethodDeclaration.class);
        MODIFIERS2_PROPERTY = internalModifiers2PropertyFactory;
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(MethodDeclaration.class, "constructor", Boolean.TYPE, true);
        CONSTRUCTOR_PROPERTY = simplePropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(MethodDeclaration.class, "name", SimpleName.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(MethodDeclaration.class, "returnType", Type.class, true, false);
        RETURN_TYPE_PROPERTY = childPropertyDescriptor2;
        ChildPropertyDescriptor childPropertyDescriptor3 = new ChildPropertyDescriptor(MethodDeclaration.class, "returnType2", Type.class, false, false);
        RETURN_TYPE2_PROPERTY = childPropertyDescriptor3;
        SimplePropertyDescriptor simplePropertyDescriptor2 = new SimplePropertyDescriptor(MethodDeclaration.class, "extraDimensions", Integer.TYPE, true);
        EXTRA_DIMENSIONS_PROPERTY = simplePropertyDescriptor2;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(MethodDeclaration.class, "extraDimensions2", Dimension.class, false);
        EXTRA_DIMENSIONS2_PROPERTY = childListPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor2 = new ChildListPropertyDescriptor(MethodDeclaration.class, "typeParameters", TypeParameter.class, false);
        TYPE_PARAMETERS_PROPERTY = childListPropertyDescriptor2;
        ChildListPropertyDescriptor childListPropertyDescriptor3 = new ChildListPropertyDescriptor(MethodDeclaration.class, "parameters", SingleVariableDeclaration.class, true);
        PARAMETERS_PROPERTY = childListPropertyDescriptor3;
        ChildPropertyDescriptor childPropertyDescriptor4 = new ChildPropertyDescriptor(MethodDeclaration.class, "receiverType", Type.class, false, false);
        RECEIVER_TYPE_PROPERTY = childPropertyDescriptor4;
        ChildPropertyDescriptor childPropertyDescriptor5 = new ChildPropertyDescriptor(MethodDeclaration.class, "receiverQualifier", SimpleName.class, false, false);
        RECEIVER_QUALIFIER_PROPERTY = childPropertyDescriptor5;
        ChildListPropertyDescriptor childListPropertyDescriptor4 = new ChildListPropertyDescriptor(MethodDeclaration.class, "thrownExceptions", Name.class, false);
        THROWN_EXCEPTIONS_PROPERTY = childListPropertyDescriptor4;
        ChildListPropertyDescriptor childListPropertyDescriptor5 = new ChildListPropertyDescriptor(MethodDeclaration.class, "thrownExceptionTypes", Type.class, false);
        THROWN_EXCEPTION_TYPES_PROPERTY = childListPropertyDescriptor5;
        ChildPropertyDescriptor childPropertyDescriptor6 = new ChildPropertyDescriptor(MethodDeclaration.class, Telephony.TextBasedSmsColumns.BODY, Block.class, false, true);
        BODY_PROPERTY = childPropertyDescriptor6;
        ArrayList arrayList = new ArrayList(10);
        ASTNode.createPropertyList(MethodDeclaration.class, arrayList);
        ASTNode.addProperty(internalJavadocPropertyFactory, arrayList);
        ASTNode.addProperty(internalModifiersPropertyFactory, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor3, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor2, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor4, arrayList);
        ASTNode.addProperty(childPropertyDescriptor6, arrayList);
        PROPERTY_DESCRIPTORS_2_0 = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(11);
        ASTNode.createPropertyList(MethodDeclaration.class, arrayList2);
        ASTNode.addProperty(internalJavadocPropertyFactory, arrayList2);
        ASTNode.addProperty(internalModifiers2PropertyFactory, arrayList2);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor3, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor3, arrayList2);
        ASTNode.addProperty(simplePropertyDescriptor2, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor4, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor6, arrayList2);
        PROPERTY_DESCRIPTORS_3_0 = ASTNode.reapPropertyList(arrayList2);
        ArrayList arrayList3 = new ArrayList(13);
        ASTNode.createPropertyList(MethodDeclaration.class, arrayList3);
        ASTNode.addProperty(internalJavadocPropertyFactory, arrayList3);
        ASTNode.addProperty(internalModifiers2PropertyFactory, arrayList3);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList3);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList3);
        ASTNode.addProperty(childPropertyDescriptor3, arrayList3);
        ASTNode.addProperty(childPropertyDescriptor, arrayList3);
        ASTNode.addProperty(childPropertyDescriptor4, arrayList3);
        ASTNode.addProperty(childPropertyDescriptor5, arrayList3);
        ASTNode.addProperty(childListPropertyDescriptor3, arrayList3);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList3);
        ASTNode.addProperty(childListPropertyDescriptor5, arrayList3);
        ASTNode.addProperty(childPropertyDescriptor6, arrayList3);
        PROPERTY_DESCRIPTORS_8_0 = ASTNode.reapPropertyList(arrayList3);
    }

    public MethodDeclaration(AST ast) {
        super(ast);
        this.isConstructor = false;
        this.methodName = null;
        this.optionalReceiverType = null;
        this.optionalReceiverQualifier = null;
        this.parameters = new ASTNode.NodeList(PARAMETERS_PROPERTY);
        this.returnType = null;
        this.returnType2Initialized = false;
        this.typeParameters = null;
        this.extraArrayDimensions = 0;
        this.extraDimensions = null;
        this.thrownExceptions = null;
        this.thrownExceptionTypes = null;
        this.optionalBody = null;
        if (ast.apiLevel >= 3) {
            this.typeParameters = new ASTNode.NodeList(TYPE_PARAMETERS_PROPERTY);
        }
        if (ast.apiLevel < 8) {
            this.thrownExceptions = new ASTNode.NodeList(THROWN_EXCEPTIONS_PROPERTY);
        } else {
            this.extraDimensions = new ASTNode.NodeList(EXTRA_DIMENSIONS2_PROPERTY);
            this.thrownExceptionTypes = new ASTNode.NodeList(THROWN_EXCEPTION_TYPES_PROPERTY);
        }
    }

    public static List propertyDescriptors(int i10) {
        return i10 == 2 ? PROPERTY_DESCRIPTORS_2_0 : i10 < 8 ? PROPERTY_DESCRIPTORS_3_0 : PROPERTY_DESCRIPTORS_8_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getJavadoc());
            if (this.ast.apiLevel == 2) {
                acceptChild(aSTVisitor, getReturnType());
            } else {
                acceptChildren(aSTVisitor, this.modifiers);
                acceptChildren(aSTVisitor, this.typeParameters);
                acceptChild(aSTVisitor, getReturnType2());
            }
            acceptChild(aSTVisitor, getName());
            if (this.ast.apiLevel >= 8) {
                acceptChild(aSTVisitor, this.optionalReceiverType);
                acceptChild(aSTVisitor, this.optionalReceiverQualifier);
            }
            acceptChildren(aSTVisitor, this.parameters);
            if (this.ast.apiLevel() >= 8) {
                acceptChildren(aSTVisitor, this.extraDimensions);
                acceptChildren(aSTVisitor, this.thrownExceptionTypes);
            } else {
                acceptChildren(aSTVisitor, this.thrownExceptions);
            }
            acceptChild(aSTVisitor, getBody());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        MethodDeclaration methodDeclaration = new MethodDeclaration(ast);
        methodDeclaration.setSourceRange(getStartPosition(), getLength());
        methodDeclaration.setJavadoc((Javadoc) ASTNode.copySubtree(ast, getJavadoc()));
        if (this.ast.apiLevel == 2) {
            methodDeclaration.internalSetModifiers(getModifiers());
            methodDeclaration.setReturnType((Type) ASTNode.copySubtree(ast, getReturnType()));
        }
        if (this.ast.apiLevel >= 3) {
            methodDeclaration.modifiers().addAll(ASTNode.copySubtrees(ast, modifiers()));
            methodDeclaration.typeParameters().addAll(ASTNode.copySubtrees(ast, typeParameters()));
            methodDeclaration.setReturnType2((Type) ASTNode.copySubtree(ast, getReturnType2()));
        }
        methodDeclaration.setConstructor(isConstructor());
        methodDeclaration.setName((SimpleName) getName().clone(ast));
        if (this.ast.apiLevel >= 8) {
            methodDeclaration.setReceiverType((Type) ASTNode.copySubtree(ast, getReceiverType()));
            methodDeclaration.setReceiverQualifier((SimpleName) ASTNode.copySubtree(ast, getReceiverQualifier()));
        }
        methodDeclaration.parameters().addAll(ASTNode.copySubtrees(ast, parameters()));
        if (this.ast.apiLevel >= 8) {
            methodDeclaration.extraDimensions().addAll(ASTNode.copySubtrees(ast, extraDimensions()));
        } else {
            methodDeclaration.setExtraDimensions(getExtraDimensions());
        }
        if (this.ast.apiLevel() >= 8) {
            methodDeclaration.thrownExceptionTypes().addAll(ASTNode.copySubtrees(ast, thrownExceptionTypes()));
        } else {
            methodDeclaration.thrownExceptions().addAll(ASTNode.copySubtrees(ast, thrownExceptions()));
        }
        methodDeclaration.setBody((Block) ASTNode.copySubtree(ast, getBody()));
        return methodDeclaration;
    }

    public List extraDimensions() {
        if (this.extraDimensions == null) {
            unsupportedIn2_3_4();
        }
        return this.extraDimensions;
    }

    public Block getBody() {
        return this.optionalBody;
    }

    public int getExtraDimensions() {
        ASTNode.NodeList nodeList = this.extraDimensions;
        return nodeList == null ? this.extraArrayDimensions : nodeList.size();
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
        return 31;
    }

    public SimpleName getReceiverQualifier() {
        unsupportedIn2_3_4();
        return this.optionalReceiverQualifier;
    }

    public Type getReceiverType() {
        unsupportedIn2_3_4();
        return this.optionalReceiverType;
    }

    public Type getReturnType() {
        return internalGetReturnType();
    }

    public Type getReturnType2() {
        unsupportedIn2();
        if (this.returnType == null && !this.returnType2Initialized) {
            synchronized (this) {
                try {
                    if (this.returnType == null && !this.returnType2Initialized) {
                        preLazyInit();
                        PrimitiveType newPrimitiveType = this.ast.newPrimitiveType(PrimitiveType.VOID);
                        this.returnType = newPrimitiveType;
                        this.returnType2Initialized = true;
                        postLazyInit(newPrimitiveType, RETURN_TYPE2_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.returnType;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == MODIFIERS2_PROPERTY ? modifiers() : childListPropertyDescriptor == TYPE_PARAMETERS_PROPERTY ? typeParameters() : childListPropertyDescriptor == PARAMETERS_PROPERTY ? parameters() : childListPropertyDescriptor == THROWN_EXCEPTIONS_PROPERTY ? thrownExceptions() : childListPropertyDescriptor == THROWN_EXCEPTION_TYPES_PROPERTY ? thrownExceptionTypes() : childListPropertyDescriptor == EXTRA_DIMENSIONS2_PROPERTY ? extraDimensions() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    public final Type internalGetReturnType() {
        supportedOnlyIn2();
        if (this.returnType == null) {
            synchronized (this) {
                try {
                    if (this.returnType == null) {
                        preLazyInit();
                        PrimitiveType newPrimitiveType = this.ast.newPrimitiveType(PrimitiveType.VOID);
                        this.returnType = newPrimitiveType;
                        postLazyInit(newPrimitiveType, RETURN_TYPE_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.returnType;
    }

    @Override
    public final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, boolean z11) {
        if (simplePropertyDescriptor != CONSTRUCTOR_PROPERTY) {
            return super.internalGetSetBooleanProperty(simplePropertyDescriptor, z10, z11);
        }
        if (z10) {
            return isConstructor();
        }
        setConstructor(z11);
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
        if (childPropertyDescriptor == NAME_PROPERTY) {
            if (z10) {
                return getName();
            }
            setName((SimpleName) aSTNode);
            return null;
        }
        if (childPropertyDescriptor == RETURN_TYPE_PROPERTY) {
            if (z10) {
                return getReturnType();
            }
            setReturnType((Type) aSTNode);
            return null;
        }
        if (childPropertyDescriptor == RETURN_TYPE2_PROPERTY) {
            if (z10) {
                return getReturnType2();
            }
            setReturnType2((Type) aSTNode);
            return null;
        }
        if (childPropertyDescriptor == RECEIVER_TYPE_PROPERTY) {
            if (z10) {
                return getReceiverType();
            }
            setReceiverType((Type) aSTNode);
            return null;
        }
        if (childPropertyDescriptor == RECEIVER_QUALIFIER_PROPERTY) {
            if (z10) {
                return getReceiverQualifier();
            }
            setReceiverQualifier((SimpleName) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != BODY_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getBody();
        }
        setBody((Block) aSTNode);
        return null;
    }

    @Override
    public final int internalGetSetIntProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, int i10) {
        if (simplePropertyDescriptor == MODIFIERS_PROPERTY) {
            if (z10) {
                return getModifiers();
            }
            internalSetModifiers(i10);
            return 0;
        }
        if (simplePropertyDescriptor != EXTRA_DIMENSIONS_PROPERTY) {
            return super.internalGetSetIntProperty(simplePropertyDescriptor, z10, i10);
        }
        if (z10) {
            return getExtraDimensions();
        }
        setExtraDimensions(i10);
        return 0;
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
        return MODIFIERS_PROPERTY;
    }

    public void internalSetReturnType(Type type) {
        supportedOnlyIn2();
        if (type == null) {
            throw new IllegalArgumentException();
        }
        Type type2 = this.returnType;
        ChildPropertyDescriptor childPropertyDescriptor = RETURN_TYPE_PROPERTY;
        preReplaceChild(type2, type, childPropertyDescriptor);
        this.returnType = type;
        postReplaceChild(type2, type, childPropertyDescriptor);
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    public List internalThrownExceptions() {
        if (this.thrownExceptions == null) {
            supportedOnlyIn2_3_4();
        }
        return this.thrownExceptions;
    }

    public boolean isConstructor() {
        return this.isConstructor;
    }

    public boolean isVarargs() {
        if (this.modifiers == null) {
            unsupportedIn2();
        }
        if (parameters().isEmpty()) {
            return false;
        }
        return ((SingleVariableDeclaration) parameters().get(parameters().size() - 1)).isVarargs();
    }

    @Override
    public int memSize() {
        return super.memSize() + 52;
    }

    public List parameters() {
        return this.parameters;
    }

    public IMethodBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveMethod(this);
    }

    public void setBody(Block block) {
        Block block2 = this.optionalBody;
        ChildPropertyDescriptor childPropertyDescriptor = BODY_PROPERTY;
        preReplaceChild(block2, block, childPropertyDescriptor);
        this.optionalBody = block;
        postReplaceChild(block2, block, childPropertyDescriptor);
    }

    public void setConstructor(boolean z10) {
        SimplePropertyDescriptor simplePropertyDescriptor = CONSTRUCTOR_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.isConstructor = z10;
        postValueChange(simplePropertyDescriptor);
    }

    public void setExtraDimensions(int i10) {
        if (this.extraDimensions != null) {
            supportedOnlyIn2_3_4();
        }
        if (i10 < 0) {
            throw new IllegalArgumentException();
        }
        SimplePropertyDescriptor simplePropertyDescriptor = EXTRA_DIMENSIONS_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.extraArrayDimensions = i10;
        postValueChange(simplePropertyDescriptor);
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

    public void setReceiverQualifier(SimpleName simpleName) {
        unsupportedIn2_3_4();
        SimpleName simpleName2 = this.optionalReceiverQualifier;
        ChildPropertyDescriptor childPropertyDescriptor = RECEIVER_QUALIFIER_PROPERTY;
        preReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
        this.optionalReceiverQualifier = simpleName;
        postReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
    }

    public void setReceiverType(Type type) {
        unsupportedIn2_3_4();
        Type type2 = this.optionalReceiverType;
        ChildPropertyDescriptor childPropertyDescriptor = RECEIVER_TYPE_PROPERTY;
        preReplaceChild(type2, type, childPropertyDescriptor);
        this.optionalReceiverType = type;
        postReplaceChild(type2, type, childPropertyDescriptor);
    }

    public void setReturnType(Type type) {
        internalSetReturnType(type);
    }

    public void setReturnType2(Type type) {
        unsupportedIn2();
        this.returnType2Initialized = true;
        Type type2 = this.returnType;
        ChildPropertyDescriptor childPropertyDescriptor = RETURN_TYPE2_PROPERTY;
        preReplaceChild(type2, type, childPropertyDescriptor);
        this.returnType = type;
        postReplaceChild(type2, type, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    public List thrownExceptionTypes() {
        if (this.thrownExceptionTypes == null) {
            unsupportedIn2_3_4();
        }
        return this.thrownExceptionTypes;
    }

    public List thrownExceptions() {
        return internalThrownExceptions();
    }

    @Override
    public int treeSize() {
        int memSize = memSize() + (this.optionalDocComment == null ? 0 : getJavadoc().treeSize());
        ASTNode.NodeList nodeList = this.modifiers;
        int listSize = memSize + (nodeList == null ? 0 : nodeList.listSize());
        ASTNode.NodeList nodeList2 = this.typeParameters;
        int listSize2 = listSize + (nodeList2 == null ? 0 : nodeList2.listSize()) + (this.methodName == null ? 0 : getName().treeSize());
        Type type = this.optionalReceiverType;
        int treeSize = listSize2 + (type == null ? 0 : type.treeSize());
        SimpleName simpleName = this.optionalReceiverQualifier;
        int treeSize2 = treeSize + (simpleName == null ? 0 : simpleName.treeSize());
        Type type2 = this.returnType;
        return treeSize2 + (type2 == null ? 0 : type2.treeSize()) + this.parameters.listSize() + (this.ast.apiLevel < 8 ? this.thrownExceptions.listSize() : this.extraDimensions.listSize() + this.thrownExceptionTypes.listSize()) + (this.optionalBody != null ? getBody().treeSize() : 0);
    }

    public List typeParameters() {
        if (this.typeParameters == null) {
            unsupportedIn2();
        }
        return this.typeParameters;
    }
}
