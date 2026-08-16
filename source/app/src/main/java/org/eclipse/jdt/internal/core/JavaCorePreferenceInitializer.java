package org.eclipse.jdt.internal.core;

import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer;
import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.core.nd.db.ChunkCache;

public class JavaCorePreferenceInitializer extends AbstractPreferenceInitializer {
    private void initializeDeprecatedOptions() {
        Map<String, String[]> map = JavaModelManager.getJavaModelManager().deprecatedOptions;
        map.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_MEMBER, new String[]{DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_FIELD, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_METHOD, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_PACKAGE, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_TYPE});
        map.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION, new String[]{DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_FIELD, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_METHOD, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_PACKAGE, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_TYPE, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_LOCAL_VARIABLE, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_PARAMETER});
        map.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_BINARY_EXPRESSION, new String[]{DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_MULTIPLICATIVE_OPERATOR, DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ADDITIVE_OPERATOR, DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_STRING_CONCATENATION, DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_BITWISE_OPERATOR, DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_LOGICAL_OPERATOR});
        map.put(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_BINARY_OPERATOR, new String[]{DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_MULTIPLICATIVE_OPERATOR, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_ADDITIVE_OPERATOR, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_STRING_CONCATENATION, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_BITWISE_OPERATOR, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_LOGICAL_OPERATOR});
        map.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_BINARY_OPERATOR, new String[]{DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_MULTIPLICATIVE_OPERATOR, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_ADDITIVE_OPERATOR, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_STRING_CONCATENATION, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_SHIFT_OPERATOR, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_RELATIONAL_OPERATOR, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_BITWISE_OPERATOR, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_LOGICAL_OPERATOR});
        map.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_BINARY_OPERATOR, new String[]{DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_MULTIPLICATIVE_OPERATOR, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_ADDITIVE_OPERATOR, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_STRING_CONCATENATION, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_SHIFT_OPERATOR, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_RELATIONAL_OPERATOR, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_BITWISE_OPERATOR, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_LOGICAL_OPERATOR});
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void initializeDefaultPreferences() {
        HashSet<String> hashSet = JavaModelManager.getJavaModelManager().optionNames;
        Map<String, String> map = new CompilerOptions().getMap();
        String property = System.getProperty("jdt.default.test.compliance");
        if (property != null) {
            map.put("org.eclipse.jdt.core.compiler.source", property);
            map.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", property);
            map.put("org.eclipse.jdt.core.compiler.compliance", property);
        }
        map.put("org.eclipse.jdt.core.compiler.debug.localVariable", "generate");
        map.put("org.eclipse.jdt.core.compiler.codegen.unusedLocal", "preserve");
        map.put("org.eclipse.jdt.core.compiler.taskTags", JavaCore.DEFAULT_TASK_TAGS);
        map.put("org.eclipse.jdt.core.compiler.taskPriorities", JavaCore.DEFAULT_TASK_PRIORITIES);
        map.put("org.eclipse.jdt.core.compiler.taskCaseSensitive", "enabled");
        map.put("org.eclipse.jdt.core.compiler.doc.comment.support", "enabled");
        map.put("org.eclipse.jdt.core.compiler.problem.forbiddenReference", "error");
        map.put(JavaCore.CORE_JAVA_BUILD_RESOURCE_COPY_FILTER, "");
        map.put(JavaCore.CORE_JAVA_BUILD_INVALID_CLASSPATH, JavaCore.ABORT);
        map.put(JavaCore.CORE_JAVA_BUILD_DUPLICATE_RESOURCE, "warning");
        map.put(JavaCore.CORE_JAVA_BUILD_CLEAN_OUTPUT_FOLDER, JavaCore.CLEAN);
        map.put(JavaCore.CORE_JAVA_BUILD_RECREATE_MODIFIED_CLASS_FILES_IN_OUTPUT_FOLDER, "ignore");
        map.put(JavaCore.CORE_JAVA_BUILD_ORDER, "ignore");
        map.put(JavaCore.CORE_INCOMPLETE_CLASSPATH, "error");
        map.put(JavaCore.CORE_CIRCULAR_CLASSPATH, "error");
        map.put(JavaCore.CORE_INCOMPATIBLE_JDK_LEVEL, "ignore");
        map.put(JavaCore.CORE_ENABLE_CLASSPATH_EXCLUSION_PATTERNS, "enabled");
        map.put(JavaCore.CORE_ENABLE_CLASSPATH_MULTIPLE_OUTPUT_LOCATIONS, "enabled");
        map.put(JavaCore.CORE_OUTPUT_LOCATION_OVERLAPPING_ANOTHER_SOURCE, "error");
        map.put(JavaCore.CORE_MAIN_ONLY_PROJECT_HAS_TEST_ONLY_DEPENDENCY, "error");
        hashSet.add("org.eclipse.jdt.core.encoding");
        for (Map.Entry entry : DefaultCodeFormatterConstants.getEclipseDefaultSettings().entrySet()) {
            String str = (String) entry.getKey();
            map.put(str, entry.getValue());
            hashSet.add(str);
        }
        map.put(JavaCore.JAVA_FORMATTER, JavaCore.DEFAULT_JAVA_FORMATTER);
        map.put("org.eclipse.jdt.core.codeComplete.visibilityCheck", "disabled");
        map.put("org.eclipse.jdt.core.codeComplete.deprecationCheck", "disabled");
        map.put("org.eclipse.jdt.core.codeComplete.forceImplicitQualification", "disabled");
        map.put("org.eclipse.jdt.core.codeComplete.fieldPrefixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.staticFieldPrefixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.staticFinalFieldPrefixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.localPrefixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.argumentPrefixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.fieldSuffixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.staticFieldSuffixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.staticFinalFieldSuffixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.localSuffixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.argumentSuffixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.forbiddenReferenceCheck", "enabled");
        map.put("org.eclipse.jdt.core.codeComplete.discouragedReferenceCheck", "disabled");
        map.put("org.eclipse.jdt.core.codeComplete.camelCaseMatch", "enabled");
        map.put("org.eclipse.jdt.core.codeComplete.substringMatch", "enabled");
        map.put("org.eclipse.jdt.core.codeComplete.suggestStaticImports", "enabled");
        map.put(ChunkCache.CHUNK_CACHE_SIZE_MB, Double.toString(128.0d));
        map.put(ChunkCache.CHUNK_CACHE_SIZE_PERCENT, Double.toString(5.0d));
        map.put(JavaCore.TIMEOUT_FOR_PARAMETER_NAME_FROM_ATTACHED_JAVADOC, "50");
        IEclipsePreferences node = DefaultScope.INSTANCE.getNode(JavaCore.PLUGIN_ID);
        for (Map.Entry entry2 : map.entrySet()) {
            String str2 = (String) entry2.getKey();
            node.put(str2, (String) entry2.getValue());
            hashSet.add(str2);
        }
        initializeDeprecatedOptions();
    }
}
