package org.eclipse.jdt.core;

public interface IClasspathAttribute {
    public static final String ADD_EXPORTS = "add-exports";
    public static final String ADD_OPENS = "add-opens";
    public static final String ADD_READS = "add-reads";
    public static final String EXTERNAL_ANNOTATION_PATH = "annotationpath";
    public static final String IGNORE_OPTIONAL_PROBLEMS = "ignore_optional_problems";
    public static final String INDEX_LOCATION_ATTRIBUTE_NAME = "index_location";
    public static final String JAVADOC_LOCATION_ATTRIBUTE_NAME = "javadoc_location";
    public static final String LIMIT_MODULES = "limit-modules";
    public static final String MODULE = "module";
    public static final String MODULE_MAIN_CLASS = "module-main-class";
    public static final String OPTIONAL = "optional";
    public static final String PATCH_MODULE = "patch-module";
    public static final String SOURCE_ATTACHMENT_ENCODING = "source_encoding";
    public static final String TEST = "test";
    public static final String WITHOUT_TEST_CODE = "without_test_code";

    String getName();

    String getValue();
}
