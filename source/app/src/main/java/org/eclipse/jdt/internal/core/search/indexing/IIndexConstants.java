package org.eclipse.jdt.internal.core.search.indexing;

import org.eclipse.jdt.internal.core.JavaElement;

public interface IIndexConstants {
    public static final int AND_PATTERN = 2048;
    public static final char ANNOTATION_TYPE_SUFFIX = 'A';
    public static final int ANNOT_REF_PATTERN = 4096;
    public static final char CLASS_AND_ENUM_SUFFIX = '\t';
    public static final char CLASS_AND_INTERFACE_SUFFIX = '\n';
    public static final char CLASS_SUFFIX = 'C';
    public static final int CONSTRUCTOR_PATTERN = 32;
    public static final char ENUM_SUFFIX = 'E';
    public static final int FIELD_PATTERN = 64;
    public static final char INTERFACE_AND_ANNOTATION_SUFFIX = 11;
    public static final char INTERFACE_SUFFIX = 'I';
    public static final int LOCAL_VAR_PATTERN = 512;
    public static final int METHOD_PATTERN = 128;
    public static final int MODULE_PATTERN = 8192;
    public static final char[] ONE_STAR;
    public static final char[][] ONE_STAR_CHAR;
    public static final char[] ONE_ZERO;
    public static final char[][] ONE_ZERO_CHAR;
    public static final int OR_PATTERN = 256;
    public static final char PARAMETER_SEPARATOR = ',';
    public static final int PKG_DECL_PATTERN = 2;
    public static final int PKG_REF_PATTERN = 1;
    public static final char SECONDARY_SUFFIX = 'S';
    public static final char SEPARATOR = '/';
    public static final int SUPER_REF_PATTERN = 16;
    public static final int TYPE_DECL_PATTERN = 8;
    public static final int TYPE_PARAM_PATTERN = 1024;
    public static final int TYPE_REF_PATTERN = 4;
    public static final char TYPE_SUFFIX = 0;
    public static final char ZERO_CHAR = '0';
    public static final char[] REF = "ref".toCharArray();
    public static final char[] ANNOTATION_REF = "annotationRef".toCharArray();
    public static final char[] METHOD_REF = "methodRef".toCharArray();
    public static final char[] CONSTRUCTOR_REF = "constructorRef".toCharArray();
    public static final char[] SUPER_REF = "superRef".toCharArray();
    public static final char[] TYPE_DECL = "typeDecl".toCharArray();
    public static final char[] METHOD_DECL = "methodDecl".toCharArray();
    public static final char[] METHOD_DECL_PLUS = "methodDeclPlus".toCharArray();
    public static final char[] CONSTRUCTOR_DECL = "constructorDecl".toCharArray();
    public static final char[] FIELD_DECL = "fieldDecl".toCharArray();
    public static final char[] MODULE_DECL = "moduleDecl".toCharArray();
    public static final char[] MODULE_REF = "moduleRef".toCharArray();
    public static final char[] OBJECT = "Object".toCharArray();
    public static final char[] MODULE_INFO = "module-info".toCharArray();
    public static final char[][] COUNTS = {new char[]{'/', '0'}, new char[]{'/', '1'}, new char[]{'/', '2'}, new char[]{'/', '3'}, new char[]{'/', '4'}, new char[]{'/', '5'}, new char[]{'/', '6'}, new char[]{'/', '7'}, new char[]{'/', '8'}, new char[]{'/', '9'}};
    public static final char[] DEFAULT_CONSTRUCTOR = {'/', JavaElement.JEM_IMPORTDECLARATION};

    static {
        char[] cArr = {'*'};
        ONE_STAR = cArr;
        ONE_STAR_CHAR = new char[][]{cArr};
        char[] cArr2 = {'0'};
        ONE_ZERO = cArr2;
        ONE_ZERO_CHAR = new char[][]{cArr2};
    }
}
