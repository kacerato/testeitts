package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.jdt.core.dom.ASTNode;

public class TypeDeclaration extends AbstractTypeDeclaration {
    public static final ChildListPropertyDescriptor BODY_DECLARATIONS_PROPERTY;
    public static final SimplePropertyDescriptor INTERFACE_PROPERTY;
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final SimplePropertyDescriptor MODIFIERS_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    public static final ChildPropertyDescriptor SUPERCLASS_PROPERTY;
    public static final ChildPropertyDescriptor SUPERCLASS_TYPE_PROPERTY;
    public static final ChildListPropertyDescriptor SUPER_INTERFACES_PROPERTY;
    public static final ChildListPropertyDescriptor SUPER_INTERFACE_TYPES_PROPERTY;
    public static final ChildListPropertyDescriptor TYPE_PARAMETERS_PROPERTY;
    private boolean isInterface;
    private Name optionalSuperclassName;
    private Type optionalSuperclassType;
    private ASTNode.NodeList superInterfaceNames;
    private ASTNode.NodeList superInterfaceTypes;
    private ASTNode.NodeList typeParameters;

    static {
        ChildPropertyDescriptor internalJavadocPropertyFactory = BodyDeclaration.internalJavadocPropertyFactory(TypeDeclaration.class);
        JAVADOC_PROPERTY = internalJavadocPropertyFactory;
        SimplePropertyDescriptor internalModifiersPropertyFactory = BodyDeclaration.internalModifiersPropertyFactory(TypeDeclaration.class);
        MODIFIERS_PROPERTY = internalModifiersPropertyFactory;
        ChildListPropertyDescriptor internalModifiers2PropertyFactory = BodyDeclaration.internalModifiers2PropertyFactory(TypeDeclaration.class);
        MODIFIERS2_PROPERTY = internalModifiers2PropertyFactory;
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(TypeDeclaration.class, "interface", Boolean.TYPE, true);
        INTERFACE_PROPERTY = simplePropertyDescriptor;
        ChildPropertyDescriptor internalNamePropertyFactory = AbstractTypeDeclaration.internalNamePropertyFactory(TypeDeclaration.class);
        NAME_PROPERTY = internalNamePropertyFactory;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(TypeDeclaration.class, "superclass", Name.class, false, false);
        SUPERCLASS_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(TypeDeclaration.class, "superInterfaces", Name.class, false);
        SUPER_INTERFACES_PROPERTY = childListPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(TypeDeclaration.class, "superclassType", Type.class, false, false);
        SUPERCLASS_TYPE_PROPERTY = childPropertyDescriptor2;
        ChildListPropertyDescriptor childListPropertyDescriptor2 = new ChildListPropertyDescriptor(TypeDeclaration.class, "superInterfaceTypes", Type.class, false);
        SUPER_INTERFACE_TYPES_PROPERTY = childListPropertyDescriptor2;
        ChildListPropertyDescriptor childListPropertyDescriptor3 = new ChildListPropertyDescriptor(TypeDeclaration.class, "typeParameters", TypeParameter.class, false);
        TYPE_PARAMETERS_PROPERTY = childListPropertyDescriptor3;
        ChildListPropertyDescriptor internalBodyDeclarationPropertyFactory = AbstractTypeDeclaration.internalBodyDeclarationPropertyFactory(TypeDeclaration.class);
        BODY_DECLARATIONS_PROPERTY = internalBodyDeclarationPropertyFactory;
        ArrayList arrayList = new ArrayList(8);
        ASTNode.createPropertyList(TypeDeclaration.class, arrayList);
        ASTNode.addProperty(internalJavadocPropertyFactory, arrayList);
        ASTNode.addProperty(internalModifiersPropertyFactory, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        ASTNode.addProperty(internalNamePropertyFactory, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        ASTNode.addProperty(internalBodyDeclarationPropertyFactory, arrayList);
        PROPERTY_DESCRIPTORS_2_0 = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(9);
        ASTNode.createPropertyList(TypeDeclaration.class, arrayList2);
        ASTNode.addProperty(internalJavadocPropertyFactory, arrayList2);
        ASTNode.addProperty(internalModifiers2PropertyFactory, arrayList2);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList2);
        ASTNode.addProperty(internalNamePropertyFactory, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor3, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList2);
        ASTNode.addProperty(internalBodyDeclarationPropertyFactory, arrayList2);
        PROPERTY_DESCRIPTORS_3_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public TypeDeclaration(AST ast) {
        super(ast);
        this.isInterface = false;
        this.typeParameters = null;
        this.optionalSuperclassName = null;
        this.superInterfaceNames = null;
        this.optionalSuperclassType = null;
        this.superInterfaceTypes = null;
        if (ast.apiLevel == 2) {
            this.superInterfaceNames = new ASTNode.NodeList(SUPER_INTERFACES_PROPERTY);
        }
        if (ast.apiLevel >= 3) {
            this.typeParameters = new ASTNode.NodeList(TYPE_PARAMETERS_PROPERTY);
            this.superInterfaceTypes = new ASTNode.NodeList(SUPER_INTERFACE_TYPES_PROPERTY);
        }
    }

    public static List propertyDescriptors(int i10) {
        return i10 == 2 ? PROPERTY_DESCRIPTORS_2_0 : PROPERTY_DESCRIPTORS_3_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            if (this.ast.apiLevel == 2) {
                acceptChild(aSTVisitor, getJavadoc());
                acceptChild(aSTVisitor, getName());
                acceptChild(aSTVisitor, getSuperclass());
                acceptChildren(aSTVisitor, this.superInterfaceNames);
                acceptChildren(aSTVisitor, this.bodyDeclarations);
            }
            if (this.ast.apiLevel >= 3) {
                acceptChild(aSTVisitor, getJavadoc());
                acceptChildren(aSTVisitor, this.modifiers);
                acceptChild(aSTVisitor, getName());
                acceptChildren(aSTVisitor, this.typeParameters);
                acceptChild(aSTVisitor, getSuperclassType());
                acceptChildren(aSTVisitor, this.superInterfaceTypes);
                acceptChildren(aSTVisitor, this.bodyDeclarations);
            }
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        TypeDeclaration typeDeclaration = new TypeDeclaration(ast);
        typeDeclaration.setSourceRange(getStartPosition(), getLength());
        typeDeclaration.setJavadoc((Javadoc) ASTNode.copySubtree(ast, getJavadoc()));
        if (this.ast.apiLevel == 2) {
            typeDeclaration.internalSetModifiers(getModifiers());
            typeDeclaration.setSuperclass((Name) ASTNode.copySubtree(ast, getSuperclass()));
            typeDeclaration.superInterfaces().addAll(ASTNode.copySubtrees(ast, superInterfaces()));
        }
        typeDeclaration.setInterface(isInterface());
        typeDeclaration.setName((SimpleName) getName().clone(ast));
        if (this.ast.apiLevel >= 3) {
            typeDeclaration.modifiers().addAll(ASTNode.copySubtrees(ast, modifiers()));
            typeDeclaration.typeParameters().addAll(ASTNode.copySubtrees(ast, typeParameters()));
            typeDeclaration.setSuperclassType((Type) ASTNode.copySubtree(ast, getSuperclassType()));
            typeDeclaration.superInterfaceTypes().addAll(ASTNode.copySubtrees(ast, superInterfaceTypes()));
        }
        typeDeclaration.bodyDeclarations().addAll(ASTNode.copySubtrees(ast, bodyDeclarations()));
        return typeDeclaration;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FieldDeclaration[] getFields() {
        List bodyDeclarations = bodyDeclarations();
        ListIterator listIterator = bodyDeclarations.listIterator();
        int i10 = 0;
        int i11 = 0;
        while (listIterator.hasNext()) {
            if (listIterator.next() instanceof FieldDeclaration) {
                i11++;
            }
        }
        FieldDeclaration[] fieldDeclarationArr = new FieldDeclaration[i11];
        ListIterator listIterator2 = bodyDeclarations.listIterator();
        while (listIterator2.hasNext()) {
            E next = listIterator2.next();
            if (next instanceof FieldDeclaration) {
                fieldDeclarationArr[i10] = (FieldDeclaration) next;
                i10++;
            }
        }
        return fieldDeclarationArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MethodDeclaration[] getMethods() {
        List bodyDeclarations = bodyDeclarations();
        ListIterator listIterator = bodyDeclarations.listIterator();
        int i10 = 0;
        int i11 = 0;
        while (listIterator.hasNext()) {
            if (listIterator.next() instanceof MethodDeclaration) {
                i11++;
            }
        }
        MethodDeclaration[] methodDeclarationArr = new MethodDeclaration[i11];
        ListIterator listIterator2 = bodyDeclarations.listIterator();
        while (listIterator2.hasNext()) {
            E next = listIterator2.next();
            if (next instanceof MethodDeclaration) {
                methodDeclarationArr[i10] = (MethodDeclaration) next;
                i10++;
            }
        }
        return methodDeclarationArr;
    }

    @Override
    public final int getNodeType0() {
        return 55;
    }

    public Name getSuperclass() {
        return internalGetSuperclass();
    }

    public Type getSuperclassType() {
        unsupportedIn2();
        return this.optionalSuperclassType;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TypeDeclaration[] getTypes() {
        List bodyDeclarations = bodyDeclarations();
        ListIterator listIterator = bodyDeclarations.listIterator();
        int i10 = 0;
        int i11 = 0;
        while (listIterator.hasNext()) {
            if (listIterator.next() instanceof TypeDeclaration) {
                i11++;
            }
        }
        TypeDeclaration[] typeDeclarationArr = new TypeDeclaration[i11];
        ListIterator listIterator2 = bodyDeclarations.listIterator();
        while (listIterator2.hasNext()) {
            E next = listIterator2.next();
            if (next instanceof TypeDeclaration) {
                typeDeclarationArr[i10] = (TypeDeclaration) next;
                i10++;
            }
        }
        return typeDeclarationArr;
    }

    @Override
    public final ChildListPropertyDescriptor internalBodyDeclarationsProperty() {
        return BODY_DECLARATIONS_PROPERTY;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == MODIFIERS2_PROPERTY ? modifiers() : childListPropertyDescriptor == TYPE_PARAMETERS_PROPERTY ? typeParameters() : childListPropertyDescriptor == SUPER_INTERFACES_PROPERTY ? superInterfaces() : childListPropertyDescriptor == SUPER_INTERFACE_TYPES_PROPERTY ? superInterfaceTypes() : childListPropertyDescriptor == BODY_DECLARATIONS_PROPERTY ? bodyDeclarations() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, boolean z11) {
        if (simplePropertyDescriptor != INTERFACE_PROPERTY) {
            return super.internalGetSetBooleanProperty(simplePropertyDescriptor, z10, z11);
        }
        if (z10) {
            return isInterface();
        }
        setInterface(z11);
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
        if (childPropertyDescriptor == SUPERCLASS_PROPERTY) {
            if (z10) {
                return getSuperclass();
            }
            setSuperclass((Name) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != SUPERCLASS_TYPE_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getSuperclassType();
        }
        setSuperclassType((Type) aSTNode);
        return null;
    }

    @Override
    public final int internalGetSetIntProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, int i10) {
        if (simplePropertyDescriptor != MODIFIERS_PROPERTY) {
            return super.internalGetSetIntProperty(simplePropertyDescriptor, z10, i10);
        }
        if (z10) {
            return getModifiers();
        }
        internalSetModifiers(i10);
        return 0;
    }

    public final Name internalGetSuperclass() {
        supportedOnlyIn2();
        return this.optionalSuperclassName;
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

    @Override
    public final ChildPropertyDescriptor internalNameProperty() {
        return NAME_PROPERTY;
    }

    @Override
    public ITypeBinding internalResolveBinding() {
        return this.ast.getBindingResolver().resolveType(this);
    }

    public final void internalSetSuperclass(Name name) {
        supportedOnlyIn2();
        Name name2 = this.optionalSuperclassName;
        ChildPropertyDescriptor childPropertyDescriptor = SUPERCLASS_PROPERTY;
        preReplaceChild(name2, name, childPropertyDescriptor);
        this.optionalSuperclassName = name;
        postReplaceChild(name2, name, childPropertyDescriptor);
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    public final List internalSuperInterfaces() {
        if (this.superInterfaceNames == null) {
            supportedOnlyIn2();
        }
        return this.superInterfaceNames;
    }

    public boolean isInterface() {
        return this.isInterface;
    }

    @Override
    public int memSize() {
        return super.memSize() + 24;
    }

    public void setInterface(boolean z10) {
        SimplePropertyDescriptor simplePropertyDescriptor = INTERFACE_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.isInterface = z10;
        postValueChange(simplePropertyDescriptor);
    }

    public void setSuperclass(Name name) {
        internalSetSuperclass(name);
    }

    public void setSuperclassType(Type type) {
        unsupportedIn2();
        Type type2 = this.optionalSuperclassType;
        ChildPropertyDescriptor childPropertyDescriptor = SUPERCLASS_TYPE_PROPERTY;
        preReplaceChild(type2, type, childPropertyDescriptor);
        this.optionalSuperclassType = type;
        postReplaceChild(type2, type, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    public List superInterfaceTypes() {
        if (this.superInterfaceTypes == null) {
            unsupportedIn2();
        }
        return this.superInterfaceTypes;
    }

    public List superInterfaces() {
        return internalSuperInterfaces();
    }

    @Override
    public int treeSize() {
        int memSize = memSize() + (this.optionalDocComment == null ? 0 : getJavadoc().treeSize());
        ASTNode.NodeList nodeList = this.modifiers;
        int listSize = memSize + (nodeList == null ? 0 : nodeList.listSize()) + (this.typeName == null ? 0 : getName().treeSize());
        ASTNode.NodeList nodeList2 = this.typeParameters;
        int listSize2 = listSize + (nodeList2 == null ? 0 : nodeList2.listSize()) + (this.optionalSuperclassName == null ? 0 : getSuperclass().treeSize()) + (this.optionalSuperclassType == null ? 0 : getSuperclassType().treeSize());
        ASTNode.NodeList nodeList3 = this.superInterfaceNames;
        int listSize3 = listSize2 + (nodeList3 == null ? 0 : nodeList3.listSize());
        ASTNode.NodeList nodeList4 = this.superInterfaceTypes;
        return listSize3 + (nodeList4 != null ? nodeList4.listSize() : 0) + this.bodyDeclarations.listSize();
    }

    public List typeParameters() {
        if (this.typeParameters == null) {
            unsupportedIn2();
        }
        return this.typeParameters;
    }
}
