package org.eclipse.jdt.internal.core;

public interface JavadocConstants {
    public static final String ANCHOR_PREFIX_END = "\"";
    public static final char[] ANCHOR_PREFIX_START;
    public static final int ANCHOR_PREFIX_START2_LENGTH;
    public static final char[] ANCHOR_PREFIX_START_2;
    public static final int ANCHOR_PREFIX_START_LENGTH;
    public static final char[] ANCHOR_SUFFIX;
    public static final int ANCHOR_SUFFIX_LENGTH;
    public static final char[] ANNOTATION_TYPE_OPTIONAL_MEMBER_SUMMARY;
    public static final char[] ANNOTATION_TYPE_REQUIRED_MEMBER_SUMMARY;
    public static final char[] BOTTOM_NAVBAR;
    public static final char[] CONSTRUCTOR_DETAIL;
    public static final char[] CONSTRUCTOR_SUMMARY;
    public static final String DIV_CLASS_BLOCK = "<DIV CLASS=\"BLOCK\">";
    public static final char[] END_OF_CLASS_DATA;
    public static final char[] ENUM_CONSTANT_SUMMARY;
    public static final char[] FIELD_DETAIL;
    public static final char[] FIELD_SUMMARY;
    public static final char[] H2_PREFIX;
    public static final char[] H2_SUFFIX;
    public static final int H2_SUFFIX_LENGTH;
    public static final String HTML_EXTENSION = ".html";
    public static final String INDEX_FILE_NAME = "index.html";
    public static final char[] METHOD_DETAIL;
    public static final char[] METHOD_SUMMARY;
    public static final char[] MODULE_DESCRIPTION_START;
    public static final String MODULE_FILE_SUFFIX = "-summary.html";
    public static final char[] NESTED_CLASS_SUMMARY;

    public static final String f102519P = "<P>";
    public static final char[] PACKAGE_DESCRIPTION_START;
    public static final char[] PACKAGE_DESCRIPTION_START2;
    public static final char[] PACKAGE_DESCRIPTION_START3;
    public static final String PACKAGE_FILE_NAME = "package-summary.html";
    public static final char[] SEPARATOR_START;
    public static final char[] START_OF_CLASS_DATA;
    public static final int START_OF_CLASS_DATA_LENGTH;

    static {
        char[] charArray = "<A NAME=\"".toCharArray();
        ANCHOR_PREFIX_START = charArray;
        char[] charArray2 = "<A ID=\"".toCharArray();
        ANCHOR_PREFIX_START_2 = charArray2;
        ANCHOR_PREFIX_START_LENGTH = charArray.length;
        ANCHOR_PREFIX_START2_LENGTH = charArray2.length;
        char[] charArray3 = "</A>".toCharArray();
        ANCHOR_SUFFIX = charArray3;
        ANCHOR_SUFFIX_LENGTH = charArray3.length;
        CONSTRUCTOR_DETAIL = "<!-- ========= CONSTRUCTOR DETAIL ======== -->".toCharArray();
        CONSTRUCTOR_SUMMARY = "<!-- ======== CONSTRUCTOR SUMMARY ======== -->".toCharArray();
        FIELD_DETAIL = "<!-- ============ FIELD DETAIL =========== -->".toCharArray();
        FIELD_SUMMARY = "<!-- =========== FIELD SUMMARY =========== -->".toCharArray();
        ENUM_CONSTANT_SUMMARY = "<!-- =========== ENUM CONSTANT SUMMARY =========== -->".toCharArray();
        ANNOTATION_TYPE_REQUIRED_MEMBER_SUMMARY = "<!-- =========== ANNOTATION TYPE REQUIRED MEMBER SUMMARY =========== -->".toCharArray();
        ANNOTATION_TYPE_OPTIONAL_MEMBER_SUMMARY = "<!-- =========== ANNOTATION TYPE OPTIONAL MEMBER SUMMARY =========== -->".toCharArray();
        END_OF_CLASS_DATA = "<!-- ========= END OF CLASS DATA ========= -->".toCharArray();
        METHOD_DETAIL = "<!-- ============ METHOD DETAIL ========== -->".toCharArray();
        METHOD_SUMMARY = "<!-- ========== METHOD SUMMARY =========== -->".toCharArray();
        NESTED_CLASS_SUMMARY = "<!-- ======== NESTED CLASS SUMMARY ======== -->".toCharArray();
        PACKAGE_DESCRIPTION_START = "name=\"package_description\"".toCharArray();
        PACKAGE_DESCRIPTION_START2 = "name=\"package.description\"".toCharArray();
        PACKAGE_DESCRIPTION_START3 = "<div class=\"contentContainer\">".toCharArray();
        MODULE_DESCRIPTION_START = "<!-- ============ MODULE DESCRIPTION =========== -->".toCharArray();
        H2_PREFIX = "<H2".toCharArray();
        char[] charArray4 = "</H2>".toCharArray();
        H2_SUFFIX = charArray4;
        H2_SUFFIX_LENGTH = charArray4.length;
        BOTTOM_NAVBAR = "<!-- ======= START OF BOTTOM NAVBAR ====== -->".toCharArray();
        SEPARATOR_START = "<!-- =".toCharArray();
        char[] charArray5 = "<!-- ======== START OF CLASS DATA ======== -->".toCharArray();
        START_OF_CLASS_DATA = charArray5;
        START_OF_CLASS_DATA_LENGTH = charArray5.length;
    }
}
