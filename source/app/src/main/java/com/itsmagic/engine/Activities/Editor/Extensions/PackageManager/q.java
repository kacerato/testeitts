package com.itsmagic.engine.Activities.Editor.Extensions.PackageManager;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class q {

    public static final Set<String> f70377a = Collections.unmodifiableSet(new HashSet(Arrays.asList("_PROJECT", "_EDITOR", "JAVARuntime", "_VULKAN")));

    public static Set<String> a() {
        return f70377a;
    }

    public static boolean b(String path) {
        if (path == null || path.isEmpty()) {
            return false;
        }
        while (path.startsWith("/")) {
            path = path.substring(1);
        }
        int indexOf = path.indexOf(47);
        if (indexOf >= 0) {
            path = path.substring(0, indexOf);
        }
        return c(path);
    }

    public static boolean c(String rootName) {
        if (rootName == null || rootName.isEmpty()) {
            return false;
        }
        return f70377a.contains(rootName);
    }
}
