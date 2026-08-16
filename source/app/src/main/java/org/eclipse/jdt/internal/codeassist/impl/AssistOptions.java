package org.eclipse.jdt.internal.codeassist.impl;

import java.util.Map;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class AssistOptions {
    public static final String DISABLED = "disabled";
    public static final String ENABLED = "enabled";
    public static final String OPTION_ArgumentPrefixes = "org.eclipse.jdt.core.codeComplete.argumentPrefixes";
    public static final String OPTION_ArgumentSuffixes = "org.eclipse.jdt.core.codeComplete.argumentSuffixes";
    public static final String OPTION_CamelCaseMatch = "org.eclipse.jdt.core.codeComplete.camelCaseMatch";
    public static final String OPTION_FieldPrefixes = "org.eclipse.jdt.core.codeComplete.fieldPrefixes";
    public static final String OPTION_FieldSuffixes = "org.eclipse.jdt.core.codeComplete.fieldSuffixes";
    public static final String OPTION_ForceImplicitQualification = "org.eclipse.jdt.core.codeComplete.forceImplicitQualification";
    public static final String OPTION_LocalPrefixes = "org.eclipse.jdt.core.codeComplete.localPrefixes";
    public static final String OPTION_LocalSuffixes = "org.eclipse.jdt.core.codeComplete.localSuffixes";
    public static final String OPTION_PerformDeprecationCheck = "org.eclipse.jdt.core.codeComplete.deprecationCheck";
    public static final String OPTION_PerformDiscouragedReferenceCheck = "org.eclipse.jdt.core.codeComplete.discouragedReferenceCheck";
    public static final String OPTION_PerformForbiddenReferenceCheck = "org.eclipse.jdt.core.codeComplete.forbiddenReferenceCheck";
    public static final String OPTION_PerformVisibilityCheck = "org.eclipse.jdt.core.codeComplete.visibilityCheck";
    public static final String OPTION_StaticFieldPrefixes = "org.eclipse.jdt.core.codeComplete.staticFieldPrefixes";
    public static final String OPTION_StaticFieldSuffixes = "org.eclipse.jdt.core.codeComplete.staticFieldSuffixes";
    public static final String OPTION_StaticFinalFieldPrefixes = "org.eclipse.jdt.core.codeComplete.staticFinalFieldPrefixes";
    public static final String OPTION_StaticFinalFieldSuffixes = "org.eclipse.jdt.core.codeComplete.staticFinalFieldSuffixes";
    public static final String OPTION_SubstringMatch = "org.eclipse.jdt.core.codeComplete.substringMatch";
    public static final String OPTION_SuggestStaticImports = "org.eclipse.jdt.core.codeComplete.suggestStaticImports";
    public boolean checkVisibility = false;
    public boolean checkDeprecation = false;
    public boolean checkForbiddenReference = false;
    public boolean checkDiscouragedReference = false;
    public boolean forceImplicitQualification = false;
    public boolean camelCaseMatch = true;
    public boolean substringMatch = true;
    public boolean suggestStaticImport = true;
    public char[][] fieldPrefixes = null;
    public char[][] staticFieldPrefixes = null;
    public char[][] staticFinalFieldPrefixes = null;
    public char[][] localPrefixes = null;
    public char[][] argumentPrefixes = null;
    public char[][] fieldSuffixes = null;
    public char[][] staticFieldSuffixes = null;
    public char[][] staticFinalFieldSuffixes = null;
    public char[][] localSuffixes = null;
    public char[][] argumentSuffixes = null;

    public AssistOptions() {
    }

    private char[][] splitAndTrimOn(char c10, char[] cArr) {
        char[][] splitAndTrimOn = CharOperation.splitAndTrimOn(IIndexConstants.PARAMETER_SEPARATOR, cArr);
        int length = splitAndTrimOn.length;
        int i10 = 0;
        for (char[] cArr2 : splitAndTrimOn) {
            if (cArr2.length != 0) {
                splitAndTrimOn[i10] = cArr2;
                i10++;
            }
        }
        if (i10 == length) {
            return splitAndTrimOn;
        }
        char[][] cArr3 = new char[i10];
        System.arraycopy(splitAndTrimOn, 0, cArr3, 0, i10);
        return cArr3;
    }

    public void set(Map map) {
        Object obj = map.get("org.eclipse.jdt.core.codeComplete.visibilityCheck");
        if (obj != null) {
            if ("enabled".equals(obj)) {
                this.checkVisibility = true;
            } else if ("disabled".equals(obj)) {
                this.checkVisibility = false;
            }
        }
        Object obj2 = map.get("org.eclipse.jdt.core.codeComplete.forceImplicitQualification");
        if (obj2 != null) {
            if ("enabled".equals(obj2)) {
                this.forceImplicitQualification = true;
            } else if ("disabled".equals(obj2)) {
                this.forceImplicitQualification = false;
            }
        }
        Object obj3 = map.get("org.eclipse.jdt.core.codeComplete.fieldPrefixes");
        if (obj3 != null && (obj3 instanceof String)) {
            String str = (String) obj3;
            if (str.length() > 0) {
                this.fieldPrefixes = splitAndTrimOn(IIndexConstants.PARAMETER_SEPARATOR, str.toCharArray());
            } else {
                this.fieldPrefixes = null;
            }
        }
        Object obj4 = map.get("org.eclipse.jdt.core.codeComplete.staticFieldPrefixes");
        if (obj4 != null && (obj4 instanceof String)) {
            String str2 = (String) obj4;
            if (str2.length() > 0) {
                this.staticFieldPrefixes = splitAndTrimOn(IIndexConstants.PARAMETER_SEPARATOR, str2.toCharArray());
            } else {
                this.staticFieldPrefixes = null;
            }
        }
        Object obj5 = map.get("org.eclipse.jdt.core.codeComplete.staticFinalFieldPrefixes");
        if (obj5 != null && (obj5 instanceof String)) {
            String str3 = (String) obj5;
            if (str3.length() > 0) {
                this.staticFinalFieldPrefixes = splitAndTrimOn(IIndexConstants.PARAMETER_SEPARATOR, str3.toCharArray());
            } else {
                this.staticFinalFieldPrefixes = null;
            }
        }
        Object obj6 = map.get("org.eclipse.jdt.core.codeComplete.localPrefixes");
        if (obj6 != null && (obj6 instanceof String)) {
            String str4 = (String) obj6;
            if (str4.length() > 0) {
                this.localPrefixes = splitAndTrimOn(IIndexConstants.PARAMETER_SEPARATOR, str4.toCharArray());
            } else {
                this.localPrefixes = null;
            }
        }
        Object obj7 = map.get("org.eclipse.jdt.core.codeComplete.argumentPrefixes");
        if (obj7 != null && (obj7 instanceof String)) {
            String str5 = (String) obj7;
            if (str5.length() > 0) {
                this.argumentPrefixes = splitAndTrimOn(IIndexConstants.PARAMETER_SEPARATOR, str5.toCharArray());
            } else {
                this.argumentPrefixes = null;
            }
        }
        Object obj8 = map.get("org.eclipse.jdt.core.codeComplete.fieldSuffixes");
        if (obj8 != null && (obj8 instanceof String)) {
            String str6 = (String) obj8;
            if (str6.length() > 0) {
                this.fieldSuffixes = splitAndTrimOn(IIndexConstants.PARAMETER_SEPARATOR, str6.toCharArray());
            } else {
                this.fieldSuffixes = null;
            }
        }
        Object obj9 = map.get("org.eclipse.jdt.core.codeComplete.staticFieldSuffixes");
        if (obj9 != null && (obj9 instanceof String)) {
            String str7 = (String) obj9;
            if (str7.length() > 0) {
                this.staticFieldSuffixes = splitAndTrimOn(IIndexConstants.PARAMETER_SEPARATOR, str7.toCharArray());
            } else {
                this.staticFieldSuffixes = null;
            }
        }
        Object obj10 = map.get("org.eclipse.jdt.core.codeComplete.staticFinalFieldSuffixes");
        if (obj10 != null && (obj10 instanceof String)) {
            String str8 = (String) obj10;
            if (str8.length() > 0) {
                this.staticFinalFieldSuffixes = splitAndTrimOn(IIndexConstants.PARAMETER_SEPARATOR, str8.toCharArray());
            } else {
                this.staticFinalFieldSuffixes = null;
            }
        }
        Object obj11 = map.get("org.eclipse.jdt.core.codeComplete.localSuffixes");
        if (obj11 != null && (obj11 instanceof String)) {
            String str9 = (String) obj11;
            if (str9.length() > 0) {
                this.localSuffixes = splitAndTrimOn(IIndexConstants.PARAMETER_SEPARATOR, str9.toCharArray());
            } else {
                this.localSuffixes = null;
            }
        }
        Object obj12 = map.get("org.eclipse.jdt.core.codeComplete.argumentSuffixes");
        if (obj12 != null && (obj12 instanceof String)) {
            String str10 = (String) obj12;
            if (str10.length() > 0) {
                this.argumentSuffixes = splitAndTrimOn(IIndexConstants.PARAMETER_SEPARATOR, str10.toCharArray());
            } else {
                this.argumentSuffixes = null;
            }
        }
        Object obj13 = map.get("org.eclipse.jdt.core.codeComplete.forbiddenReferenceCheck");
        if (obj13 != null) {
            if ("enabled".equals(obj13)) {
                this.checkForbiddenReference = true;
            } else if ("disabled".equals(obj13)) {
                this.checkForbiddenReference = false;
            }
        }
        Object obj14 = map.get("org.eclipse.jdt.core.codeComplete.discouragedReferenceCheck");
        if (obj14 != null) {
            if ("enabled".equals(obj14)) {
                this.checkDiscouragedReference = true;
            } else if ("disabled".equals(obj14)) {
                this.checkDiscouragedReference = false;
            }
        }
        Object obj15 = map.get("org.eclipse.jdt.core.codeComplete.camelCaseMatch");
        if (obj15 != null) {
            if ("enabled".equals(obj15)) {
                this.camelCaseMatch = true;
            } else if ("disabled".equals(obj15)) {
                this.camelCaseMatch = false;
            }
        }
        Object obj16 = map.get("org.eclipse.jdt.core.codeComplete.substringMatch");
        if (obj16 != null) {
            if ("enabled".equals(obj16)) {
                this.substringMatch = true;
            } else if ("disabled".equals(obj16)) {
                this.substringMatch = false;
            }
        }
        Object obj17 = map.get("org.eclipse.jdt.core.codeComplete.deprecationCheck");
        if (obj17 != null) {
            if ("enabled".equals(obj17)) {
                this.checkDeprecation = true;
            } else if ("disabled".equals(obj17)) {
                this.checkDeprecation = false;
            }
        }
        Object obj18 = map.get("org.eclipse.jdt.core.codeComplete.suggestStaticImports");
        if (obj18 != null) {
            if ("enabled".equals(obj18)) {
                this.suggestStaticImport = true;
            } else if ("disabled".equals(obj18)) {
                this.suggestStaticImport = false;
            }
        }
    }

    public AssistOptions(Map map) {
        if (map == null) {
            return;
        }
        set(map);
    }
}
