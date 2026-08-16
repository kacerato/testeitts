package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class ExportsDirective extends ModulePackageAccess {
    public static final ChildListPropertyDescriptor MODULES_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_9_0;

    static {
        ChildPropertyDescriptor internalNamePropertyFactory = ModulePackageAccess.internalNamePropertyFactory(ExportsDirective.class);
        NAME_PROPERTY = internalNamePropertyFactory;
        ChildListPropertyDescriptor internalModulesPropertyFactory = ModulePackageAccess.internalModulesPropertyFactory(ExportsDirective.class);
        MODULES_PROPERTY = internalModulesPropertyFactory;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(ExportsDirective.class, arrayList);
        ASTNode.addProperty(internalNamePropertyFactory, arrayList);
        ASTNode.addProperty(internalModulesPropertyFactory, arrayList);
        PROPERTY_DESCRIPTORS_9_0 = ASTNode.reapPropertyList(arrayList);
    }

    public ExportsDirective(AST ast) {
        super(ast);
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS_9_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        acceptVisitChildren(aSTVisitor.visit(this), aSTVisitor);
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        return cloneHelper(ast, new ExportsDirective(ast));
    }

    @Override
    public final int getNodeType0() {
        return 95;
    }

    @Override
    public final ChildListPropertyDescriptor internalModulesProperty() {
        return MODULES_PROPERTY;
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
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }
}
