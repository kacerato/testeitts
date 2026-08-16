package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

public final class v {

    public static final String f81390a = "//<built-shaders>";

    public static final String f81391b = "//>built-shaders<";

    public static String a(String source, boolean litMaterial) {
        return b(source, litMaterial, false);
    }

    public static String b(String source, boolean litMaterial, boolean refractiveMaterial) {
        return d(d(d(source, "IS_LIT_REFRACTIVE", litMaterial && refractiveMaterial), "IS_LIT", litMaterial), "IS_UNLIT", !litMaterial);
    }

    public static String c(String source) {
        if (source == null || source.isEmpty()) {
            return source;
        }
        while (true) {
            int indexOf = source.indexOf(f81390a);
            if (indexOf < 0) {
                return source;
            }
            int indexOf2 = source.indexOf(f81391b, indexOf + 17);
            if (indexOf2 < 0) {
                return source.substring(0, indexOf);
            }
            source = source.substring(0, indexOf) + source.substring(indexOf2 + 17);
        }
    }

    public static String d(String source, String tagName, boolean keepBlocks) {
        if (source == null || source.isEmpty()) {
            return source;
        }
        String str = "//<" + tagName + ">";
        String str2 = "//>" + tagName + "<";
        while (true) {
            int indexOf = source.indexOf(str);
            if (indexOf < 0) {
                return source;
            }
            int indexOf2 = source.indexOf(str2, str.length() + indexOf);
            if (indexOf2 < 0) {
                return source.substring(0, indexOf);
            }
            int length = str2.length() + indexOf2;
            source = source.substring(0, indexOf) + (keepBlocks ? source.substring(str.length() + indexOf, indexOf2) : "") + source.substring(length);
        }
    }
}
