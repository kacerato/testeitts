package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class Modifier extends ASTNode implements IExtendedModifier {
    public static final int ABSTRACT = 1024;
    public static final int DEFAULT = 65536;
    public static final int FINAL = 16;
    public static final SimplePropertyDescriptor KEYWORD_PROPERTY;
    public static final int NATIVE = 256;
    public static final int NONE = 0;
    public static final int PRIVATE = 2;
    private static final List PROPERTY_DESCRIPTORS;
    public static final int PROTECTED = 4;
    public static final int PUBLIC = 1;
    public static final int STATIC = 8;
    public static final int STRICTFP = 2048;
    public static final int SYNCHRONIZED = 32;
    public static final int TRANSIENT = 128;
    public static final int VOLATILE = 64;
    private ModifierKeyword modifierKeyword;

    public static class ModifierKeyword {
        public static final ModifierKeyword ABSTRACT_KEYWORD;
        public static final ModifierKeyword DEFAULT_KEYWORD;
        public static final ModifierKeyword FINAL_KEYWORD;
        private static final Map KEYWORDS;
        public static final ModifierKeyword NATIVE_KEYWORD;
        public static final ModifierKeyword PRIVATE_KEYWORD;
        public static final ModifierKeyword PROTECTED_KEYWORD;
        public static final ModifierKeyword PUBLIC_KEYWORD;
        public static final ModifierKeyword STATIC_KEYWORD;
        public static final ModifierKeyword STRICTFP_KEYWORD;
        public static final ModifierKeyword SYNCHRONIZED_KEYWORD;
        public static final ModifierKeyword TRANSIENT_KEYWORD;
        public static final ModifierKeyword VOLATILE_KEYWORD;
        private int flagValue;
        private String keyword;

        static {
            ModifierKeyword modifierKeyword = new ModifierKeyword("abstract", 1024);
            ABSTRACT_KEYWORD = modifierKeyword;
            ModifierKeyword modifierKeyword2 = new ModifierKeyword("final", 16);
            FINAL_KEYWORD = modifierKeyword2;
            ModifierKeyword modifierKeyword3 = new ModifierKeyword("native", 256);
            NATIVE_KEYWORD = modifierKeyword3;
            ModifierKeyword modifierKeyword4 = new ModifierKeyword("private", 2);
            PRIVATE_KEYWORD = modifierKeyword4;
            ModifierKeyword modifierKeyword5 = new ModifierKeyword("protected", 4);
            PROTECTED_KEYWORD = modifierKeyword5;
            ModifierKeyword modifierKeyword6 = new ModifierKeyword("public", 1);
            PUBLIC_KEYWORD = modifierKeyword6;
            ModifierKeyword modifierKeyword7 = new ModifierKeyword("static", 8);
            STATIC_KEYWORD = modifierKeyword7;
            ModifierKeyword modifierKeyword8 = new ModifierKeyword("strictfp", 2048);
            STRICTFP_KEYWORD = modifierKeyword8;
            ModifierKeyword modifierKeyword9 = new ModifierKeyword("synchronized", 32);
            SYNCHRONIZED_KEYWORD = modifierKeyword9;
            ModifierKeyword modifierKeyword10 = new ModifierKeyword("transient", 128);
            TRANSIENT_KEYWORD = modifierKeyword10;
            ModifierKeyword modifierKeyword11 = new ModifierKeyword("volatile", 64);
            VOLATILE_KEYWORD = modifierKeyword11;
            ModifierKeyword modifierKeyword12 = new ModifierKeyword("default", 65536);
            DEFAULT_KEYWORD = modifierKeyword12;
            KEYWORDS = new HashMap(20);
            ModifierKeyword[] modifierKeywordArr = {modifierKeyword6, modifierKeyword5, modifierKeyword4, modifierKeyword7, modifierKeyword, modifierKeyword2, modifierKeyword3, modifierKeyword9, modifierKeyword10, modifierKeyword11, modifierKeyword8, modifierKeyword12};
            for (int i10 = 0; i10 < 12; i10++) {
                KEYWORDS.put(modifierKeywordArr[i10].toString(), modifierKeywordArr[i10]);
            }
        }

        private ModifierKeyword(String str, int i10) {
            this.keyword = str;
            this.flagValue = i10;
        }

        public static ModifierKeyword fromFlagValue(int i10) {
            for (ModifierKeyword modifierKeyword : KEYWORDS.values()) {
                if (modifierKeyword.toFlagValue() == i10) {
                    return modifierKeyword;
                }
            }
            return null;
        }

        public static ModifierKeyword toKeyword(String str) {
            return (ModifierKeyword) KEYWORDS.get(str);
        }

        public int toFlagValue() {
            return this.flagValue;
        }

        public String toString() {
            return this.keyword;
        }
    }

    static {
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(Modifier.class, "keyword", ModifierKeyword.class, true);
        KEYWORD_PROPERTY = simplePropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(Modifier.class, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public Modifier(AST ast) {
        super(ast);
        this.modifierKeyword = ModifierKeyword.PUBLIC_KEYWORD;
        unsupportedIn2();
    }

    public static boolean isAbstract(int i10) {
        return (i10 & 1024) != 0;
    }

    public static boolean isDefault(int i10) {
        return (i10 & 65536) != 0;
    }

    public static boolean isFinal(int i10) {
        return (i10 & 16) != 0;
    }

    public static boolean isNative(int i10) {
        return (i10 & 256) != 0;
    }

    public static boolean isPrivate(int i10) {
        return (i10 & 2) != 0;
    }

    public static boolean isProtected(int i10) {
        return (i10 & 4) != 0;
    }

    public static boolean isPublic(int i10) {
        return (i10 & 1) != 0;
    }

    public static boolean isStatic(int i10) {
        return (i10 & 8) != 0;
    }

    public static boolean isStrictfp(int i10) {
        return (i10 & 2048) != 0;
    }

    public static boolean isSynchronized(int i10) {
        return (i10 & 32) != 0;
    }

    public static boolean isTransient(int i10) {
        return (i10 & 128) != 0;
    }

    public static boolean isVolatile(int i10) {
        return (i10 & 64) != 0;
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
        Modifier modifier = new Modifier(ast);
        modifier.setSourceRange(getStartPosition(), getLength());
        modifier.setKeyword(getKeyword());
        return modifier;
    }

    public ModifierKeyword getKeyword() {
        return this.modifierKeyword;
    }

    @Override
    public final int getNodeType0() {
        return 83;
    }

    @Override
    public final Object internalGetSetObjectProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, Object obj) {
        if (simplePropertyDescriptor != KEYWORD_PROPERTY) {
            return super.internalGetSetObjectProperty(simplePropertyDescriptor, z10, obj);
        }
        if (z10) {
            return getKeyword();
        }
        setKeyword((ModifierKeyword) obj);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public boolean isAnnotation() {
        return false;
    }

    @Override
    public boolean isModifier() {
        return true;
    }

    @Override
    public int memSize() {
        return 44;
    }

    public void setKeyword(ModifierKeyword modifierKeyword) {
        if (modifierKeyword == null) {
            throw new IllegalArgumentException();
        }
        SimplePropertyDescriptor simplePropertyDescriptor = KEYWORD_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.modifierKeyword = modifierKeyword;
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

    public boolean isAbstract() {
        return this.modifierKeyword == ModifierKeyword.ABSTRACT_KEYWORD;
    }

    public boolean isDefault() {
        return this.modifierKeyword == ModifierKeyword.DEFAULT_KEYWORD;
    }

    public boolean isFinal() {
        return this.modifierKeyword == ModifierKeyword.FINAL_KEYWORD;
    }

    public boolean isNative() {
        return this.modifierKeyword == ModifierKeyword.NATIVE_KEYWORD;
    }

    public boolean isPrivate() {
        return this.modifierKeyword == ModifierKeyword.PRIVATE_KEYWORD;
    }

    public boolean isProtected() {
        return this.modifierKeyword == ModifierKeyword.PROTECTED_KEYWORD;
    }

    public boolean isPublic() {
        return this.modifierKeyword == ModifierKeyword.PUBLIC_KEYWORD;
    }

    public boolean isStatic() {
        return this.modifierKeyword == ModifierKeyword.STATIC_KEYWORD;
    }

    public boolean isStrictfp() {
        return this.modifierKeyword == ModifierKeyword.STRICTFP_KEYWORD;
    }

    public boolean isSynchronized() {
        return this.modifierKeyword == ModifierKeyword.SYNCHRONIZED_KEYWORD;
    }

    public boolean isTransient() {
        return this.modifierKeyword == ModifierKeyword.TRANSIENT_KEYWORD;
    }

    public boolean isVolatile() {
        return this.modifierKeyword == ModifierKeyword.VOLATILE_KEYWORD;
    }
}
