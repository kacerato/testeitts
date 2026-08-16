package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import java.util.HashMap;
import java.util.Map;
import mc.C14207a;

public class t {

    public static final Map<String, String> f81389a = new HashMap();

    public static String a(String code, String key, String value) {
        if (code == null) {
            return "";
        }
        if (key == null) {
            return code;
        }
        if (value == null) {
            value = "";
        }
        return code.replace(key, value);
    }

    public static String b(String file) {
        if (file == null || file.isEmpty()) {
            return "";
        }
        Map<String, String> map = f81389a;
        if (map.containsKey(file)) {
            return map.get(file);
        }
        String a10 = C14207a.a("Nodes/" + file);
        map.put(file, a10);
        return a10;
    }
}
