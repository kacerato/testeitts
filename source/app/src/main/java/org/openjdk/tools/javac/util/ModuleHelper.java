package org.openjdk.tools.javac.util;

import org.openjdk.tools.javac.util.JDK9Wrappers;

public class ModuleHelper {
    private static final String[] javacInternalPackages = {"org.openjdk.tools.javac.api", "org.openjdk.tools.javac.code", "org.openjdk.tools.javac.comp", "org.openjdk.tools.javac.file", "org.openjdk.tools.javac.jvm", "org.openjdk.tools.javac.main", "org.openjdk.tools.javac.model", "org.openjdk.tools.javac.parser", "org.openjdk.tools.javac.platform", "org.openjdk.tools.javac.processing", "org.openjdk.tools.javac.tree", "org.openjdk.tools.javac.util", "org.openjdk.tools.doclint"};

    public static void addExports(JDK9Wrappers.Module module, JDK9Wrappers.Module module2) {
        for (String str : javacInternalPackages) {
            module.addExports(str, module2);
        }
    }
}
