package com.github.javaparser.ast.observer;

import Od.l;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.utils.Utils;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Optional;
import java.util.function.Predicate;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'ANNOTATIONS' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class ObservableProperty {
    private static final ObservableProperty[] $VALUES;
    public static final ObservableProperty ANNOTATIONS;
    public static final ObservableProperty ANONYMOUS_CLASS_BODY;
    public static final ObservableProperty ARGUMENTS;
    public static final ObservableProperty ASTERISK;
    public static final ObservableProperty BODY;
    public static final ObservableProperty CASCADING_IF_STMT;
    public static final ObservableProperty CATCH_CLAUSES;
    public static final ObservableProperty CHECK;
    public static final ObservableProperty CLASS_BODY;
    public static final ObservableProperty CLASS_DECLARATION;
    public static final ObservableProperty COMMENT;
    public static final ObservableProperty COMMENTED_NODE;
    public static final ObservableProperty COMPARE;
    public static final ObservableProperty COMPONENT_TYPE;
    public static final ObservableProperty CONDITION;
    public static final ObservableProperty CONTENT;
    public static final ObservableProperty DEFAULT;
    public static final ObservableProperty DEFAULT_VALUE;
    public static final ObservableProperty DIMENSION;
    public static final ObservableProperty DIRECTIVES;
    public static final ObservableProperty ELEMENTS;
    public static final ObservableProperty ELEMENT_TYPE;
    public static final ObservableProperty ELSE_BLOCK;
    public static final ObservableProperty ELSE_BRANCH;
    public static final ObservableProperty ELSE_EXPR;
    public static final ObservableProperty ELSE_STMT;
    public static final ObservableProperty ENCLOSING_PARAMETERS;
    public static final ObservableProperty ENTRIES;
    public static final ObservableProperty EXPRESSION;
    public static final ObservableProperty EXPRESSION_BODY;
    public static final ObservableProperty EXTENDED_TYPE;
    public static final ObservableProperty EXTENDED_TYPES;
    public static final ObservableProperty FINALLY_BLOCK;
    public static final ObservableProperty GUARD;
    public static final ObservableProperty IDENTIFIER;
    public static final ObservableProperty IMPLEMENTED_TYPES;
    public static final ObservableProperty IMPORTS;
    public static final ObservableProperty INDEX;
    public static final ObservableProperty INITIALIZATION;
    public static final ObservableProperty INITIALIZER;
    public static final ObservableProperty INNER;
    public static final ObservableProperty INTERFACE;
    public static final ObservableProperty ITERABLE;
    public static final ObservableProperty KEYWORD;
    public static final ObservableProperty LABEL;
    public static final ObservableProperty LABELS;
    public static final ObservableProperty LEFT;
    public static final ObservableProperty LEVELS;
    public static final ObservableProperty MAXIMUM_COMMON_TYPE;
    public static final ObservableProperty MEMBERS;
    public static final ObservableProperty MEMBER_VALUE;
    public static final ObservableProperty MESSAGE;
    public static final ObservableProperty MODIFIERS;
    public static final ObservableProperty MODULE;
    public static final ObservableProperty MODULE_NAMES;
    public static final ObservableProperty NAME;
    public static final ObservableProperty OPEN;
    public static final ObservableProperty OPERATOR;
    public static final ObservableProperty ORIGIN;
    public static final ObservableProperty PACKAGE_DECLARATION;
    public static final ObservableProperty PAIRS;
    public static final ObservableProperty PARAMETER;
    public static final ObservableProperty PARAMETERS;
    public static final ObservableProperty PATTERN;
    public static final ObservableProperty PATTERN_LIST;
    public static final ObservableProperty PERMITTED_TYPES;
    public static final ObservableProperty POSTFIX;
    public static final ObservableProperty PREFIX;
    public static final ObservableProperty QUALIFIER;
    public static final ObservableProperty RANGE;
    public static final ObservableProperty RECEIVER_PARAMETER;
    public static final ObservableProperty RECORD_DECLARATION;
    public static final ObservableProperty RESOURCES;
    public static final ObservableProperty RIGHT;
    public static final ObservableProperty SCOPE;
    public static final ObservableProperty SELECTOR;
    public static final ObservableProperty STATEMENT;
    public static final ObservableProperty STATEMENTS;
    public static final ObservableProperty STATIC;
    public static final ObservableProperty SUPER_TYPE;
    public static final ObservableProperty SWITCH_STATEMENT_ENTRY;
    public static final ObservableProperty TARGET;
    public static final ObservableProperty THEN_BLOCK;
    public static final ObservableProperty THEN_EXPR;
    public static final ObservableProperty THEN_STMT;
    public static final ObservableProperty THIS;
    public static final ObservableProperty THROWN_EXCEPTIONS;
    public static final ObservableProperty TRY_BLOCK;
    public static final ObservableProperty TYPE;
    public static final ObservableProperty TYPES;
    public static final ObservableProperty TYPE_ARGUMENTS;
    public static final ObservableProperty TYPE_BOUND;
    public static final ObservableProperty TYPE_NAME;
    public static final ObservableProperty TYPE_PARAMETERS;
    public static final ObservableProperty UPDATE;
    public static final ObservableProperty USING_DIAMOND_OPERATOR;
    public static final ObservableProperty VALUE;
    public static final ObservableProperty VALUES;
    public static final ObservableProperty VARIABLE;
    public static final ObservableProperty VARIABLES;
    public static final ObservableProperty VAR_ARGS;
    public static final ObservableProperty VAR_ARGS_ANNOTATIONS;
    public static final ObservableProperty WITH;
    private boolean derived;
    private Type type;

    public enum Type {
        SINGLE_ATTRIBUTE(false, false),
        SINGLE_REFERENCE(false, true),
        MULTIPLE_ATTRIBUTE(true, false),
        MULTIPLE_REFERENCE(true, true);

        private boolean multiple;
        private boolean node;

        Type(boolean multiple, boolean node) {
            this.multiple = multiple;
            this.node = node;
        }
    }

    static {
        Type type = Type.MULTIPLE_REFERENCE;
        ObservableProperty observableProperty = new ObservableProperty("ANNOTATIONS", 0, type);
        ANNOTATIONS = observableProperty;
        ObservableProperty observableProperty2 = new ObservableProperty("ANONYMOUS_CLASS_BODY", 1, type);
        ANONYMOUS_CLASS_BODY = observableProperty2;
        ObservableProperty observableProperty3 = new ObservableProperty("ARGUMENTS", 2, type);
        ARGUMENTS = observableProperty3;
        Type type2 = Type.SINGLE_ATTRIBUTE;
        ObservableProperty observableProperty4 = new ObservableProperty("ASTERISK", 3, type2);
        ASTERISK = observableProperty4;
        Type type3 = Type.SINGLE_REFERENCE;
        ObservableProperty observableProperty5 = new ObservableProperty("BODY", 4, type3);
        BODY = observableProperty5;
        ObservableProperty observableProperty6 = new ObservableProperty("CATCH_CLAUSES", 5, type);
        CATCH_CLAUSES = observableProperty6;
        ObservableProperty observableProperty7 = new ObservableProperty("CHECK", 6, type3);
        CHECK = observableProperty7;
        ObservableProperty observableProperty8 = new ObservableProperty("CLASS_BODY", 7, type);
        CLASS_BODY = observableProperty8;
        ObservableProperty observableProperty9 = new ObservableProperty("CLASS_DECLARATION", 8, type3);
        CLASS_DECLARATION = observableProperty9;
        ObservableProperty observableProperty10 = new ObservableProperty("COMMENT", 9, type3);
        COMMENT = observableProperty10;
        ObservableProperty observableProperty11 = new ObservableProperty("COMPARE", 10, type3);
        COMPARE = observableProperty11;
        ObservableProperty observableProperty12 = new ObservableProperty("COMPONENT_TYPE", 11, type3);
        COMPONENT_TYPE = observableProperty12;
        ObservableProperty observableProperty13 = new ObservableProperty("CONDITION", 12, type3);
        CONDITION = observableProperty13;
        ObservableProperty observableProperty14 = new ObservableProperty("CONTENT", 13, type2);
        CONTENT = observableProperty14;
        ObservableProperty observableProperty15 = new ObservableProperty("DEFAULT", 14, type2);
        DEFAULT = observableProperty15;
        ObservableProperty observableProperty16 = new ObservableProperty("DEFAULT_VALUE", 15, type3);
        DEFAULT_VALUE = observableProperty16;
        ObservableProperty observableProperty17 = new ObservableProperty("DIMENSION", 16, type3);
        DIMENSION = observableProperty17;
        ObservableProperty observableProperty18 = new ObservableProperty("DIRECTIVES", 17, type);
        DIRECTIVES = observableProperty18;
        ObservableProperty observableProperty19 = new ObservableProperty("ELEMENTS", 18, type);
        ELEMENTS = observableProperty19;
        ObservableProperty observableProperty20 = new ObservableProperty("ELEMENT_TYPE", 19, type3);
        ELEMENT_TYPE = observableProperty20;
        ObservableProperty observableProperty21 = new ObservableProperty("ELSE_EXPR", 20, type3);
        ELSE_EXPR = observableProperty21;
        ObservableProperty observableProperty22 = new ObservableProperty("ELSE_STMT", 21, type3);
        ELSE_STMT = observableProperty22;
        ObservableProperty observableProperty23 = new ObservableProperty("ENCLOSING_PARAMETERS", 22, type2);
        ENCLOSING_PARAMETERS = observableProperty23;
        ObservableProperty observableProperty24 = new ObservableProperty("ENTRIES", 23, type);
        ENTRIES = observableProperty24;
        ObservableProperty observableProperty25 = new ObservableProperty("EXPRESSION", 24, type3);
        EXPRESSION = observableProperty25;
        ObservableProperty observableProperty26 = new ObservableProperty("EXTENDED_TYPE", 25, type3);
        EXTENDED_TYPE = observableProperty26;
        ObservableProperty observableProperty27 = new ObservableProperty("EXTENDED_TYPES", 26, type);
        EXTENDED_TYPES = observableProperty27;
        ObservableProperty observableProperty28 = new ObservableProperty("FINALLY_BLOCK", 27, type3);
        FINALLY_BLOCK = observableProperty28;
        ObservableProperty observableProperty29 = new ObservableProperty("GUARD", 28, type3);
        GUARD = observableProperty29;
        ObservableProperty observableProperty30 = new ObservableProperty("IDENTIFIER", 29, type2);
        IDENTIFIER = observableProperty30;
        ObservableProperty observableProperty31 = new ObservableProperty("IMPLEMENTED_TYPES", 30, type);
        IMPLEMENTED_TYPES = observableProperty31;
        ObservableProperty observableProperty32 = new ObservableProperty("IMPORTS", 31, type);
        IMPORTS = observableProperty32;
        ObservableProperty observableProperty33 = new ObservableProperty(l.f16635c, 32, type3);
        INDEX = observableProperty33;
        ObservableProperty observableProperty34 = new ObservableProperty("INITIALIZATION", 33, type);
        INITIALIZATION = observableProperty34;
        ObservableProperty observableProperty35 = new ObservableProperty("INITIALIZER", 34, type3);
        INITIALIZER = observableProperty35;
        ObservableProperty observableProperty36 = new ObservableProperty("INNER", 35, type3);
        INNER = observableProperty36;
        ObservableProperty observableProperty37 = new ObservableProperty("INTERFACE", 36, type2);
        INTERFACE = observableProperty37;
        ObservableProperty observableProperty38 = new ObservableProperty("ITERABLE", 37, type3);
        ITERABLE = observableProperty38;
        ObservableProperty observableProperty39 = new ObservableProperty("KEYWORD", 38, type2);
        KEYWORD = observableProperty39;
        ObservableProperty observableProperty40 = new ObservableProperty("LABEL", 39, type3);
        LABEL = observableProperty40;
        ObservableProperty observableProperty41 = new ObservableProperty("LABELS", 40, type);
        LABELS = observableProperty41;
        ObservableProperty observableProperty42 = new ObservableProperty("LEFT", 41, type3);
        LEFT = observableProperty42;
        ObservableProperty observableProperty43 = new ObservableProperty("LEVELS", 42, type);
        LEVELS = observableProperty43;
        ObservableProperty observableProperty44 = new ObservableProperty("MEMBERS", 43, type);
        MEMBERS = observableProperty44;
        ObservableProperty observableProperty45 = new ObservableProperty("MEMBER_VALUE", 44, type3);
        MEMBER_VALUE = observableProperty45;
        ObservableProperty observableProperty46 = new ObservableProperty("MESSAGE", 45, type3);
        MESSAGE = observableProperty46;
        ObservableProperty observableProperty47 = new ObservableProperty("MODIFIERS", 46, type);
        MODIFIERS = observableProperty47;
        ObservableProperty observableProperty48 = new ObservableProperty("MODULE", 47, type3);
        MODULE = observableProperty48;
        ObservableProperty observableProperty49 = new ObservableProperty("MODULE_NAMES", 48, type);
        MODULE_NAMES = observableProperty49;
        ObservableProperty observableProperty50 = new ObservableProperty("NAME", 49, type3);
        NAME = observableProperty50;
        ObservableProperty observableProperty51 = new ObservableProperty("OPEN", 50, type2);
        OPEN = observableProperty51;
        ObservableProperty observableProperty52 = new ObservableProperty("OPERATOR", 51, type2);
        OPERATOR = observableProperty52;
        ObservableProperty observableProperty53 = new ObservableProperty("ORIGIN", 52, type2);
        ORIGIN = observableProperty53;
        ObservableProperty observableProperty54 = new ObservableProperty("PACKAGE_DECLARATION", 53, type3);
        PACKAGE_DECLARATION = observableProperty54;
        ObservableProperty observableProperty55 = new ObservableProperty("PAIRS", 54, type);
        PAIRS = observableProperty55;
        ObservableProperty observableProperty56 = new ObservableProperty("PARAMETER", 55, type3);
        PARAMETER = observableProperty56;
        ObservableProperty observableProperty57 = new ObservableProperty("PARAMETERS", 56, type);
        PARAMETERS = observableProperty57;
        ObservableProperty observableProperty58 = new ObservableProperty("PATTERN", 57, type3);
        PATTERN = observableProperty58;
        ObservableProperty observableProperty59 = new ObservableProperty("PATTERN_LIST", 58, type);
        PATTERN_LIST = observableProperty59;
        ObservableProperty observableProperty60 = new ObservableProperty("PERMITTED_TYPES", 59, type);
        PERMITTED_TYPES = observableProperty60;
        ObservableProperty observableProperty61 = new ObservableProperty("QUALIFIER", 60, type3);
        QUALIFIER = observableProperty61;
        ObservableProperty observableProperty62 = new ObservableProperty("RECEIVER_PARAMETER", 61, type3);
        RECEIVER_PARAMETER = observableProperty62;
        ObservableProperty observableProperty63 = new ObservableProperty("RECORD_DECLARATION", 62, type3);
        RECORD_DECLARATION = observableProperty63;
        ObservableProperty observableProperty64 = new ObservableProperty("RESOURCES", 63, type);
        RESOURCES = observableProperty64;
        ObservableProperty observableProperty65 = new ObservableProperty("RIGHT", 64, type3);
        RIGHT = observableProperty65;
        ObservableProperty observableProperty66 = new ObservableProperty("SCOPE", 65, type3);
        SCOPE = observableProperty66;
        ObservableProperty observableProperty67 = new ObservableProperty("SELECTOR", 66, type3);
        SELECTOR = observableProperty67;
        ObservableProperty observableProperty68 = new ObservableProperty("STATEMENT", 67, type3);
        STATEMENT = observableProperty68;
        ObservableProperty observableProperty69 = new ObservableProperty("STATEMENTS", 68, type);
        STATEMENTS = observableProperty69;
        ObservableProperty observableProperty70 = new ObservableProperty("STATIC", 69, type2);
        STATIC = observableProperty70;
        ObservableProperty observableProperty71 = new ObservableProperty("SUPER_TYPE", 70, type3);
        SUPER_TYPE = observableProperty71;
        ObservableProperty observableProperty72 = new ObservableProperty("TARGET", 71, type3);
        TARGET = observableProperty72;
        ObservableProperty observableProperty73 = new ObservableProperty("THEN_EXPR", 72, type3);
        THEN_EXPR = observableProperty73;
        ObservableProperty observableProperty74 = new ObservableProperty("THEN_STMT", 73, type3);
        THEN_STMT = observableProperty74;
        ObservableProperty observableProperty75 = new ObservableProperty("THIS", 74, type2);
        THIS = observableProperty75;
        ObservableProperty observableProperty76 = new ObservableProperty("THROWN_EXCEPTIONS", 75, type);
        THROWN_EXCEPTIONS = observableProperty76;
        ObservableProperty observableProperty77 = new ObservableProperty("TRY_BLOCK", 76, type3);
        TRY_BLOCK = observableProperty77;
        ObservableProperty observableProperty78 = new ObservableProperty("TYPE", 77, type3);
        TYPE = observableProperty78;
        ObservableProperty observableProperty79 = new ObservableProperty("TYPES", 78, type);
        TYPES = observableProperty79;
        ObservableProperty observableProperty80 = new ObservableProperty("TYPE_ARGUMENTS", 79, type);
        TYPE_ARGUMENTS = observableProperty80;
        ObservableProperty observableProperty81 = new ObservableProperty("TYPE_BOUND", 80, type);
        TYPE_BOUND = observableProperty81;
        ObservableProperty observableProperty82 = new ObservableProperty("TYPE_NAME", 81, type3);
        TYPE_NAME = observableProperty82;
        ObservableProperty observableProperty83 = new ObservableProperty("TYPE_PARAMETERS", 82, type);
        TYPE_PARAMETERS = observableProperty83;
        ObservableProperty observableProperty84 = new ObservableProperty("UPDATE", 83, type);
        UPDATE = observableProperty84;
        ObservableProperty observableProperty85 = new ObservableProperty("VALUE", 84, type3);
        VALUE = observableProperty85;
        ObservableProperty observableProperty86 = new ObservableProperty("VALUES", 85, type);
        VALUES = observableProperty86;
        ObservableProperty observableProperty87 = new ObservableProperty("VARIABLE", 86, type3);
        VARIABLE = observableProperty87;
        ObservableProperty observableProperty88 = new ObservableProperty("VARIABLES", 87, type);
        VARIABLES = observableProperty88;
        ObservableProperty observableProperty89 = new ObservableProperty("VAR_ARGS", 88, type2);
        VAR_ARGS = observableProperty89;
        ObservableProperty observableProperty90 = new ObservableProperty("VAR_ARGS_ANNOTATIONS", 89, type);
        VAR_ARGS_ANNOTATIONS = observableProperty90;
        ObservableProperty observableProperty91 = new ObservableProperty("WITH", 90, type);
        WITH = observableProperty91;
        ObservableProperty observableProperty92 = new ObservableProperty("CASCADING_IF_STMT", 91, type2, true);
        CASCADING_IF_STMT = observableProperty92;
        ObservableProperty observableProperty93 = new ObservableProperty("ELSE_BLOCK", 92, type2, true);
        ELSE_BLOCK = observableProperty93;
        ObservableProperty observableProperty94 = new ObservableProperty("ELSE_BRANCH", 93, type2, true);
        ELSE_BRANCH = observableProperty94;
        ObservableProperty observableProperty95 = new ObservableProperty("EXPRESSION_BODY", 94, type3, true);
        EXPRESSION_BODY = observableProperty95;
        ObservableProperty observableProperty96 = new ObservableProperty("MAXIMUM_COMMON_TYPE", 95, type3, true);
        MAXIMUM_COMMON_TYPE = observableProperty96;
        ObservableProperty observableProperty97 = new ObservableProperty("POSTFIX", 96, type2, true);
        POSTFIX = observableProperty97;
        ObservableProperty observableProperty98 = new ObservableProperty("PREFIX", 97, type2, true);
        PREFIX = observableProperty98;
        ObservableProperty observableProperty99 = new ObservableProperty("SWITCH_STATEMENT_ENTRY", 98, type2, true);
        SWITCH_STATEMENT_ENTRY = observableProperty99;
        ObservableProperty observableProperty100 = new ObservableProperty("THEN_BLOCK", 99, type2, true);
        THEN_BLOCK = observableProperty100;
        ObservableProperty observableProperty101 = new ObservableProperty("USING_DIAMOND_OPERATOR", 100, type2, true);
        USING_DIAMOND_OPERATOR = observableProperty101;
        ObservableProperty observableProperty102 = new ObservableProperty("RANGE", 101);
        RANGE = observableProperty102;
        ObservableProperty observableProperty103 = new ObservableProperty("COMMENTED_NODE", 102);
        COMMENTED_NODE = observableProperty103;
        $VALUES = new ObservableProperty[]{observableProperty, observableProperty2, observableProperty3, observableProperty4, observableProperty5, observableProperty6, observableProperty7, observableProperty8, observableProperty9, observableProperty10, observableProperty11, observableProperty12, observableProperty13, observableProperty14, observableProperty15, observableProperty16, observableProperty17, observableProperty18, observableProperty19, observableProperty20, observableProperty21, observableProperty22, observableProperty23, observableProperty24, observableProperty25, observableProperty26, observableProperty27, observableProperty28, observableProperty29, observableProperty30, observableProperty31, observableProperty32, observableProperty33, observableProperty34, observableProperty35, observableProperty36, observableProperty37, observableProperty38, observableProperty39, observableProperty40, observableProperty41, observableProperty42, observableProperty43, observableProperty44, observableProperty45, observableProperty46, observableProperty47, observableProperty48, observableProperty49, observableProperty50, observableProperty51, observableProperty52, observableProperty53, observableProperty54, observableProperty55, observableProperty56, observableProperty57, observableProperty58, observableProperty59, observableProperty60, observableProperty61, observableProperty62, observableProperty63, observableProperty64, observableProperty65, observableProperty66, observableProperty67, observableProperty68, observableProperty69, observableProperty70, observableProperty71, observableProperty72, observableProperty73, observableProperty74, observableProperty75, observableProperty76, observableProperty77, observableProperty78, observableProperty79, observableProperty80, observableProperty81, observableProperty82, observableProperty83, observableProperty84, observableProperty85, observableProperty86, observableProperty87, observableProperty88, observableProperty89, observableProperty90, observableProperty91, observableProperty92, observableProperty93, observableProperty94, observableProperty95, observableProperty96, observableProperty97, observableProperty98, observableProperty99, observableProperty100, observableProperty101, observableProperty102, observableProperty103};
    }

    private ObservableProperty(String $enum$name, int $enum$ordinal, Type type) {
        this.type = type;
        this.derived = false;
    }

    public static ObservableProperty fromCamelCaseName(final String camelCaseName) {
        Optional findFirst = Arrays.stream(values()).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$fromCamelCaseName$0;
                lambda$fromCamelCaseName$0 = ObservableProperty.lambda$fromCamelCaseName$0(String.this, (ObservableProperty) obj);
                return lambda$fromCamelCaseName$0;
            }
        }).findFirst();
        if (findFirst.isPresent()) {
            return (ObservableProperty) findFirst.get();
        }
        throw new IllegalArgumentException("No property found with the given camel case name: " + camelCaseName);
    }

    private boolean hasMethod(Node node, String name) {
        try {
            node.getClass().getMethod(name, null);
            return true;
        } catch (NoSuchMethodException unused) {
            return false;
        }
    }

    public static boolean lambda$fromCamelCaseName$0(final String camelCaseName, ObservableProperty v10) {
        return v10.camelCaseName().equals(camelCaseName);
    }

    public static ObservableProperty valueOf(String name) {
        return (ObservableProperty) Enum.valueOf(ObservableProperty.class, name);
    }

    public static ObservableProperty[] values() {
        return (ObservableProperty[]) $VALUES.clone();
    }

    public String camelCaseName() {
        return Utils.screamingToCamelCase(name());
    }

    public Object getRawValue(Node node) {
        String str = "get" + Utils.capitalize(camelCaseName());
        if (!hasMethod(node, str)) {
            str = "is" + Utils.capitalize(camelCaseName());
            if (!hasMethod(node, str)) {
                str = "has" + Utils.capitalize(camelCaseName());
            }
        }
        try {
            return node.getClass().getMethod(str, null).invoke(node, null);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e10) {
            throw new RuntimeException("Unable to get value for " + name() + " from " + ((Object) node) + " (" + node.getClass().getSimpleName() + ")", e10);
        }
    }

    public Boolean getValueAsBooleanAttribute(Node node) {
        return (Boolean) getRawValue(node);
    }

    public Collection<?> getValueAsCollection(Node node) {
        try {
            return (Collection) getRawValue(node);
        } catch (ClassCastException e10) {
            throw new RuntimeException("Unable to get list value for " + name() + " from " + ((Object) node) + " (class: " + node.getClass().getSimpleName() + ")", e10);
        }
    }

    public NodeList<? extends Node> getValueAsMultipleReference(Node node) {
        Object rawValue = getRawValue(node);
        if (rawValue == null) {
            return null;
        }
        try {
            if (rawValue instanceof NodeList) {
                return (NodeList) rawValue;
            }
            Optional optional = (Optional) rawValue;
            if (optional.isPresent()) {
                return (NodeList) optional.get();
            }
            return null;
        } catch (ClassCastException e10) {
            throw new RuntimeException("Unable to get list value for " + name() + " from " + ((Object) node) + " (class: " + node.getClass().getSimpleName() + ")", e10);
        }
    }

    public Node getValueAsSingleReference(Node node) {
        Object rawValue = getRawValue(node);
        try {
            if (rawValue instanceof Node) {
                return (Node) rawValue;
            }
            if (!(rawValue instanceof Optional)) {
                throw new RuntimeException(String.format("Property %s returned %s (%s)", name(), rawValue.toString(), rawValue.getClass().getCanonicalName()));
            }
            Optional optional = (Optional) rawValue;
            if (optional.isPresent()) {
                return (Node) optional.get();
            }
            return null;
        } catch (ClassCastException e10) {
            throw new RuntimeException(e10);
        }
    }

    public String getValueAsStringAttribute(Node node) {
        return (String) getRawValue(node);
    }

    public boolean isAboutNodes() {
        return this.type.node;
    }

    public boolean isAboutValues() {
        return !isAboutNodes();
    }

    public boolean isDerived() {
        return this.derived;
    }

    public boolean isMultiple() {
        return this.type.multiple;
    }

    public boolean isNull(Node node) {
        return getRawValue(node) == null;
    }

    public boolean isNullOrEmpty(Node node) {
        return Utils.valueIsNullOrEmpty(getRawValue(node));
    }

    public boolean isNullOrNotPresent(Node node) {
        return Utils.valueIsNullOrEmptyStringOrOptional(getRawValue(node));
    }

    public boolean isSingle() {
        return !isMultiple();
    }

    private ObservableProperty(String $enum$name, int $enum$ordinal, Type type, boolean derived) {
        this.type = type;
        this.derived = derived;
    }

    private ObservableProperty(String $enum$name, int $enum$ordinal) {
        this($enum$name, $enum$ordinal, Type.SINGLE_REFERENCE, false);
    }
}
