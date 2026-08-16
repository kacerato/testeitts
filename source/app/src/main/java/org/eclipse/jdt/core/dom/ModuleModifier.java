package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class ModuleModifier extends ASTNode {
    public static final SimplePropertyDescriptor KEYWORD_PROPERTY;
    public static final int NONE = 0;
    private static final List PROPERTY_DESCRIPTORS;
    public static final int STATIC_PHASE = 64;
    public static final int TRANSITIVE = 128;
    private ModuleModifierKeyword modifierKeyword;

    public static class ModuleModifierKeyword {
        private static final Map KEYWORDS;
        public static final ModuleModifierKeyword STATIC_KEYWORD;
        public static final ModuleModifierKeyword TRANSITIVE_KEYWORD;
        private int flagValue;
        private String keyword;

        static {
            ModuleModifierKeyword moduleModifierKeyword = new ModuleModifierKeyword("static", 64);
            STATIC_KEYWORD = moduleModifierKeyword;
            ModuleModifierKeyword moduleModifierKeyword2 = new ModuleModifierKeyword("transitive", 128);
            TRANSITIVE_KEYWORD = moduleModifierKeyword2;
            KEYWORDS = new HashMap(2);
            ModuleModifierKeyword[] moduleModifierKeywordArr = {moduleModifierKeyword, moduleModifierKeyword2};
            for (int i10 = 0; i10 < 2; i10++) {
                KEYWORDS.put(moduleModifierKeywordArr[i10].toString(), moduleModifierKeywordArr[i10]);
            }
        }

        private ModuleModifierKeyword(String str, int i10) {
            this.keyword = str;
            this.flagValue = i10;
        }

        public static ModuleModifierKeyword fromFlagValue(int i10) {
            for (ModuleModifierKeyword moduleModifierKeyword : KEYWORDS.values()) {
                if (moduleModifierKeyword.toFlagValue() == i10) {
                    return moduleModifierKeyword;
                }
            }
            return null;
        }

        public static ModuleModifierKeyword toKeyword(String str) {
            return (ModuleModifierKeyword) KEYWORDS.get(str);
        }

        public int toFlagValue() {
            return this.flagValue;
        }

        public String toString() {
            return this.keyword;
        }
    }

    static {
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(ModuleModifier.class, "keyword", ModuleModifierKeyword.class, true);
        KEYWORD_PROPERTY = simplePropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(ModuleModifier.class, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public ModuleModifier(AST ast) {
        super(ast);
        this.modifierKeyword = ModuleModifierKeyword.STATIC_KEYWORD;
        unsupportedBelow9();
    }

    public static boolean isStatic(int i10) {
        return (i10 & 64) != 0;
    }

    public static boolean isTransitive(int i10) {
        return (i10 & 128) != 0;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        aSTVisitor.visit(this);
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        ModuleModifier moduleModifier = new ModuleModifier(ast);
        moduleModifier.setSourceRange(getStartPosition(), getLength());
        moduleModifier.setKeyword(getKeyword());
        return moduleModifier;
    }

    public ModuleModifierKeyword getKeyword() {
        return this.modifierKeyword;
    }

    @Override
    public final int getNodeType0() {
        return 99;
    }

    @Override
    public final Object internalGetSetObjectProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, Object obj) {
        if (simplePropertyDescriptor != KEYWORD_PROPERTY) {
            return super.internalGetSetObjectProperty(simplePropertyDescriptor, z10, obj);
        }
        if (z10) {
            return getKeyword();
        }
        setKeyword((ModuleModifierKeyword) obj);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return 44;
    }

    public void setKeyword(ModuleModifierKeyword moduleModifierKeyword) {
        if (moduleModifierKeyword == null) {
            throw new IllegalArgumentException();
        }
        SimplePropertyDescriptor simplePropertyDescriptor = KEYWORD_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.modifierKeyword = moduleModifierKeyword;
        postValueChange(simplePropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize();
    }

    public boolean isStatic() {
        return this.modifierKeyword == ModuleModifierKeyword.STATIC_KEYWORD;
    }

    public boolean isTransitive() {
        return this.modifierKeyword == ModuleModifierKeyword.TRANSITIVE_KEYWORD;
    }
}
