package org.openjdk.tools.javac.code;

import java.util.EnumSet;
import java.util.Locale;
import java.util.Set;
import org.openjdk.javax.lang.model.element.ElementKind;
import org.openjdk.source.tree.MemberReferenceTree;
import org.openjdk.tools.javac.api.Formattable;
import org.openjdk.tools.javac.api.Messages;

public class Kinds {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode;
        static final int[] $SwitchMap$javax$lang$model$element$ElementKind;

        static {
            int[] iArr = new int[ElementKind.values().length];
            $SwitchMap$javax$lang$model$element$ElementKind = iArr;
            try {
                iArr[ElementKind.PACKAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.ANNOTATION_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.CLASS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.INTERFACE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.TYPE_PARAMETER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.ENUM_CONSTANT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.FIELD.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.PARAMETER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.LOCAL_VARIABLE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.EXCEPTION_PARAMETER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.RESOURCE_VARIABLE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.CONSTRUCTOR.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.METHOD.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.STATIC_INIT.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.INSTANCE_INIT.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            int[] iArr2 = new int[MemberReferenceTree.ReferenceMode.values().length];
            $SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode = iArr2;
            try {
                iArr2[MemberReferenceTree.ReferenceMode.INVOKE.ordinal()] = 1;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode[MemberReferenceTree.ReferenceMode.NEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'NIL' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class Kind {
        private static final Kind[] $VALUES;
        public static final Kind ABSENT_MTH;
        public static final Kind ABSENT_TYP;
        public static final Kind ABSENT_VAR;
        public static final Kind AMBIGUOUS;
        public static final Kind ERR;
        public static final Kind HIDDEN;
        public static final Kind MDL;
        public static final Kind MISSING_ENCL;
        public static final Kind MTH;
        public static final Kind NIL;
        public static final Kind PCK;
        public static final Kind POLY;
        public static final Kind STATICERR;
        public static final Kind TYP;
        public static final Kind VAR;
        public static final Kind WRONG_MTH;
        public static final Kind WRONG_MTHS;
        private final KindName absentKind;
        private final Category category;
        private final KindName kindName;
        private final KindSelector selector;

        public enum Category {
            BASIC,
            ERROR,
            RESOLUTION,
            RESOLUTION_TARGET
        }

        static {
            Category category = Category.BASIC;
            Kind kind = new Kind("NIL", 0, category, KindSelector.NIL);
            NIL = kind;
            Kind kind2 = new Kind("PCK", 1, category, KindName.PACKAGE, KindSelector.PCK);
            PCK = kind2;
            KindName kindName = KindName.CLASS;
            Kind kind3 = new Kind("TYP", 2, category, kindName, KindSelector.TYP);
            TYP = kind3;
            KindName kindName2 = KindName.VAR;
            Kind kind4 = new Kind("VAR", 3, category, kindName2, KindSelector.VAR);
            VAR = kind4;
            KindName kindName3 = KindName.METHOD;
            Kind kind5 = new Kind("MTH", 4, category, kindName3, KindSelector.MTH);
            MTH = kind5;
            Kind kind6 = new Kind("POLY", 5, category, KindSelector.POLY);
            POLY = kind6;
            Kind kind7 = new Kind("MDL", 6, category, KindSelector.MDL);
            MDL = kind7;
            Kind kind8 = new Kind("ERR", 7, Category.ERROR, KindSelector.ERR);
            ERR = kind8;
            Category category2 = Category.RESOLUTION_TARGET;
            Kind kind9 = new Kind("AMBIGUOUS", 8, category2);
            AMBIGUOUS = kind9;
            Kind kind10 = new Kind("HIDDEN", 9, category2);
            HIDDEN = kind10;
            Kind kind11 = new Kind("STATICERR", 10, category2);
            STATICERR = kind11;
            Kind kind12 = new Kind("MISSING_ENCL", 11, Category.RESOLUTION);
            MISSING_ENCL = kind12;
            Kind kind13 = new Kind("ABSENT_VAR", 12, category2, kindName2);
            ABSENT_VAR = kind13;
            Kind kind14 = new Kind("WRONG_MTHS", 13, category2, kindName3);
            WRONG_MTHS = kind14;
            Kind kind15 = new Kind("WRONG_MTH", 14, category2, kindName3);
            WRONG_MTH = kind15;
            Kind kind16 = new Kind("ABSENT_MTH", 15, category2, kindName3);
            ABSENT_MTH = kind16;
            Kind kind17 = new Kind("ABSENT_TYP", 16, category2, kindName);
            ABSENT_TYP = kind17;
            $VALUES = new Kind[]{kind, kind2, kind3, kind4, kind5, kind6, kind7, kind8, kind9, kind10, kind11, kind12, kind13, kind14, kind15, kind16, kind17};
        }

        private Kind(String str, int i10, Category category) {
            this(str, i10, category, null, null, null);
        }

        public static Kind valueOf(String str) {
            return (Kind) Enum.valueOf(Kind.class, str);
        }

        public static Kind[] values() {
            return (Kind[]) $VALUES.clone();
        }

        public KindName absentKind() {
            KindName kindName = this.absentKind;
            if (kindName != null) {
                return kindName;
            }
            throw new AssertionError((Object) ("Unexpected kind: " + ((Object) this)));
        }

        public boolean betterThan(Kind kind) {
            return ordinal() < kind.ordinal();
        }

        public boolean isResolutionError() {
            Category category = this.category;
            return category == Category.RESOLUTION || category == Category.RESOLUTION_TARGET;
        }

        public boolean isResolutionTargetError() {
            return this.category == Category.RESOLUTION_TARGET;
        }

        public boolean isValid() {
            return this.category == Category.BASIC;
        }

        public KindName kindName() {
            KindName kindName = this.kindName;
            if (kindName != null) {
                return kindName;
            }
            throw new AssertionError((Object) ("Unexpected kind: " + ((Object) this)));
        }

        public boolean matches(KindSelector kindSelector) {
            return this.selector.contains(kindSelector);
        }

        public KindSelector toSelector() {
            return this.selector;
        }

        private Kind(String str, int i10, Category category, KindSelector kindSelector) {
            this(str, i10, category, null, null, kindSelector);
        }

        private Kind(String str, int i10, Category category, KindName kindName) {
            this(str, i10, category, null, kindName, null);
        }

        private Kind(String str, int i10, Category category, KindName kindName, KindSelector kindSelector) {
            this(str, i10, category, kindName, null, kindSelector);
        }

        private Kind(String str, int i10, Category category, KindName kindName, KindName kindName2, KindSelector kindSelector) {
            this.category = category;
            this.kindName = kindName;
            this.absentKind = kindName2;
            this.selector = kindSelector;
        }
    }

    public enum KindName implements Formattable {
        ANNOTATION("kindname.annotation"),
        CONSTRUCTOR("kindname.constructor"),
        INTERFACE("kindname.interface"),
        ENUM("kindname.enum"),
        STATIC("kindname.static"),
        TYPEVAR("kindname.type.variable"),
        BOUND("kindname.type.variable.bound"),
        VAR("kindname.variable"),
        VAL("kindname.value"),
        METHOD("kindname.method"),
        CLASS("kindname.class"),
        STATIC_INIT("kindname.static.init"),
        INSTANCE_INIT("kindname.instance.init"),
        PACKAGE("kindname.package"),
        MODULE("kindname.module");

        private final String name;

        KindName(String str) {
            this.name = str;
        }

        @Override
        public String getKind() {
            return "Kindname";
        }

        @Override
        public String toString() {
            return this.name;
        }

        @Override
        public String toString(Locale locale, Messages messages) {
            return messages.getLocalizedString(locale, "compiler.misc." + toString(), new Object[0]);
        }
    }

    public static class KindSelector {
        public static final KindSelector ASG;
        public static final KindSelector ERR;
        public static final KindSelector MDL;
        public static final KindSelector MTH;
        public static final KindSelector NIL = new KindSelector(0);
        public static final KindSelector PCK;
        public static final KindSelector POLY;
        public static final KindSelector TYP;
        public static final KindSelector TYP_PCK;
        public static final KindSelector VAL;
        public static final KindSelector VAL_MTH;
        public static final KindSelector VAL_POLY;
        public static final KindSelector VAL_TYP;
        public static final KindSelector VAL_TYP_PCK;
        public static final KindSelector VAR;
        private final byte data;

        static {
            KindSelector kindSelector = new KindSelector(1);
            PCK = kindSelector;
            KindSelector kindSelector2 = new KindSelector(2);
            TYP = kindSelector2;
            VAR = new KindSelector(4);
            KindSelector kindSelector3 = new KindSelector(12);
            VAL = kindSelector3;
            KindSelector kindSelector4 = new KindSelector(16);
            MTH = kindSelector4;
            KindSelector kindSelector5 = new KindSelector(32);
            POLY = kindSelector5;
            MDL = new KindSelector(64);
            ERR = new KindSelector(127);
            ASG = new KindSelector(132);
            TYP_PCK = of(kindSelector2, kindSelector);
            VAL_MTH = of(kindSelector3, kindSelector4);
            VAL_POLY = of(kindSelector3, kindSelector5);
            VAL_TYP = of(kindSelector3, kindSelector2);
            VAL_TYP_PCK = of(kindSelector3, kindSelector2, kindSelector);
        }

        private KindSelector(int i10) {
            this.data = (byte) i10;
        }

        public static KindSelector of(KindSelector... kindSelectorArr) {
            byte b10 = 0;
            for (KindSelector kindSelector : kindSelectorArr) {
                b10 = (byte) (b10 | kindSelector.data);
            }
            return new KindSelector(b10);
        }

        public boolean contains(KindSelector kindSelector) {
            return (kindSelector.data & this.data) != 0;
        }

        public Set<KindName> kindNames() {
            EnumSet noneOf = EnumSet.noneOf(KindName.class);
            byte b10 = this.data;
            byte b11 = VAL.data;
            if ((b10 & b11) != 0) {
                if ((b10 & b11) == VAR.data) {
                    noneOf.add(KindName.VAR);
                } else {
                    noneOf.add(KindName.VAL);
                }
            }
            if ((this.data & MTH.data) != 0) {
                noneOf.add(KindName.METHOD);
            }
            if ((this.data & TYP.data) != 0) {
                noneOf.add(KindName.CLASS);
            }
            if ((this.data & PCK.data) != 0) {
                noneOf.add(KindName.PACKAGE);
            }
            if ((this.data & MDL.data) != 0) {
                noneOf.add(KindName.MODULE);
            }
            return noneOf;
        }

        public boolean subset(KindSelector kindSelector) {
            return ((~kindSelector.data) & this.data) == 0;
        }
    }

    private Kinds() {
    }

    public static KindName kindName(MemberReferenceTree.ReferenceMode referenceMode) {
        int i10 = AnonymousClass1.$SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode[referenceMode.ordinal()];
        if (i10 == 1) {
            return KindName.METHOD;
        }
        if (i10 == 2) {
            return KindName.CONSTRUCTOR;
        }
        throw new AssertionError((Object) ("Unexpected mode: " + ((Object) referenceMode)));
    }

    public static KindName typeKindName(Type type) {
        if (type.hasTag(TypeTag.TYPEVAR) || (type.hasTag(TypeTag.CLASS) && (type.tsym.flags() & 16777216) != 0)) {
            return KindName.BOUND;
        }
        if (type.hasTag(TypeTag.PACKAGE)) {
            return KindName.PACKAGE;
        }
        long j10 = type.tsym.flags_field;
        return (8192 & j10) != 0 ? KindName.ANNOTATION : (j10 & 512) != 0 ? KindName.INTERFACE : KindName.CLASS;
    }

    public static KindName kindName(Symbol symbol) {
        switch (AnonymousClass1.$SwitchMap$javax$lang$model$element$ElementKind[symbol.getKind().ordinal()]) {
            case 1:
                return KindName.PACKAGE;
            case 2:
                return KindName.ENUM;
            case 3:
            case 4:
                return KindName.CLASS;
            case 5:
                return KindName.INTERFACE;
            case 6:
                return KindName.TYPEVAR;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                return KindName.VAR;
            case 13:
                return KindName.CONSTRUCTOR;
            case 14:
                return KindName.METHOD;
            case 15:
                return KindName.STATIC_INIT;
            case 16:
                return KindName.INSTANCE_INIT;
            default:
                throw new AssertionError((Object) ("Unexpected kind: " + ((Object) symbol.getKind())));
        }
    }
}
