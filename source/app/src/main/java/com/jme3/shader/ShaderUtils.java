package com.jme3.shader;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.eclipse.jdt.internal.core.ClasspathEntry;

public class ShaderUtils {
    private ShaderUtils() {
    }

    public static String convertToGLSL130(String str, boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("#version 130\n");
        sb2.append(z10 ? str.replaceAll("varying", "in") : str.replaceAll(ClasspathEntry.TAG_ATTRIBUTE, "in").replaceAll("varying", "out"));
        return sb2.toString();
    }

    public static int getCardinality(String str, String str2) {
        if (!isSwizzlable(str)) {
            return 0;
        }
        if (str.equals(TypedValues.Custom.S_FLOAT)) {
            return str2.length() != 0 ? 0 : 1;
        }
        return str2.length() > 0 ? str2.length() : Integer.parseInt(str.replaceAll(".*vec", ""));
    }

    public static boolean isSwizzlable(String str) {
        return str.indexOf("vec4") > -1 || str.indexOf("vec3") > -1 || str.indexOf("vec2") > -1 || str.equals(TypedValues.Custom.S_FLOAT);
    }

    public static boolean multiplicityMatch(VariableMapping variableMapping) {
        String multiplicity = variableMapping.getLeftVariable().getMultiplicity();
        String multiplicity2 = variableMapping.getRightVariable().getMultiplicity();
        return multiplicity == null ? multiplicity2 == null : multiplicity2 != null && multiplicity.equalsIgnoreCase(multiplicity2);
    }

    public static boolean typesMatch(VariableMapping variableMapping) {
        String type = variableMapping.getLeftVariable().getType();
        String type2 = variableMapping.getRightVariable().getType();
        String leftSwizzling = variableMapping.getLeftSwizzling();
        String rightSwizzling = variableMapping.getRightSwizzling();
        if (type.equals(type2) && leftSwizzling.length() == rightSwizzling.length()) {
            return true;
        }
        return isSwizzlable(type) && isSwizzlable(type2) && getCardinality(type, leftSwizzling) == getCardinality(type2, rightSwizzling);
    }
}
