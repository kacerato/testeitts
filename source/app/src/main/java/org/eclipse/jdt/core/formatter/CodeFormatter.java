package org.eclipse.jdt.core.formatter;

import java.util.Map;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jface.text.IRegion;
import org.eclipse.text.edits.TextEdit;

public abstract class CodeFormatter {
    public static final int F_INCLUDE_COMMENTS = 4096;
    public static final int K_CLASS_BODY_DECLARATIONS = 4;
    public static final int K_COMPILATION_UNIT = 8;
    public static final int K_EXPRESSION = 1;
    public static final int K_JAVA_DOC = 64;
    public static final int K_MODULE_INFO = 128;
    public static final int K_MULTI_LINE_COMMENT = 32;
    public static final int K_SINGLE_LINE_COMMENT = 16;
    public static final int K_STATEMENTS = 2;
    public static final int K_UNKNOWN = 0;

    public String createIndentationString(int i10) {
        return Util.EMPTY_STRING;
    }

    public abstract TextEdit format(int i10, String str, int i11, int i12, int i13, String str2);

    public abstract TextEdit format(int i10, String str, IRegion[] iRegionArr, int i11, String str2);

    public void setOptions(Map<String, String> map) {
    }
}
