package org.eclipse.jdt.internal.formatter.old;

import java.util.Map;
import org.eclipse.jdt.core.ICodeFormatter;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;
import org.eclipse.jdt.internal.compiler.parser.TerminalTokens;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.jdt.internal.formatter.DefaultCodeFormatter;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;

public class CodeFormatter implements TerminalTokens, ICodeFormatter {
    private Map options;

    public CodeFormatter(Map map) {
        if (map == null) {
            this.options = JavaCore.getOptions();
        } else {
            this.options = map;
        }
    }

    @Override
    public String format(String str, int i10, int[] iArr, String str2) {
        Map eclipse21Settings = DefaultCodeFormatterConstants.getEclipse21Settings();
        Object obj = this.options.get(JavaCore.FORMATTER_NEWLINE_OPENING_BRACE);
        if (obj != null) {
            if (JavaCore.INSERT.equals(obj)) {
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_ANONYMOUS_TYPE_DECLARATION, DefaultCodeFormatterConstants.NEXT_LINE);
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_BLOCK, DefaultCodeFormatterConstants.NEXT_LINE);
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_CONSTRUCTOR_DECLARATION, DefaultCodeFormatterConstants.NEXT_LINE);
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_METHOD_DECLARATION, DefaultCodeFormatterConstants.NEXT_LINE);
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_SWITCH, DefaultCodeFormatterConstants.NEXT_LINE);
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_TYPE_DECLARATION, DefaultCodeFormatterConstants.NEXT_LINE);
            } else {
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_ANONYMOUS_TYPE_DECLARATION, DefaultCodeFormatterConstants.END_OF_LINE);
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_BLOCK, DefaultCodeFormatterConstants.END_OF_LINE);
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_CONSTRUCTOR_DECLARATION, DefaultCodeFormatterConstants.END_OF_LINE);
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_METHOD_DECLARATION, DefaultCodeFormatterConstants.END_OF_LINE);
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_SWITCH, DefaultCodeFormatterConstants.END_OF_LINE);
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_TYPE_DECLARATION, DefaultCodeFormatterConstants.END_OF_LINE);
            }
        }
        Object obj2 = this.options.get(JavaCore.FORMATTER_NEWLINE_CONTROL);
        if (obj2 != null) {
            if (JavaCore.INSERT.equals(obj2)) {
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_CATCH_IN_TRY_STATEMENT, JavaCore.INSERT);
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_ELSE_IN_IF_STATEMENT, JavaCore.INSERT);
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_FINALLY_IN_TRY_STATEMENT, JavaCore.INSERT);
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_WHILE_IN_DO_STATEMENT, JavaCore.INSERT);
            } else {
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_CATCH_IN_TRY_STATEMENT, JavaCore.DO_NOT_INSERT);
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_ELSE_IN_IF_STATEMENT, JavaCore.DO_NOT_INSERT);
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_FINALLY_IN_TRY_STATEMENT, JavaCore.DO_NOT_INSERT);
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_WHILE_IN_DO_STATEMENT, JavaCore.DO_NOT_INSERT);
            }
        }
        Object obj3 = this.options.get(JavaCore.FORMATTER_CLEAR_BLANK_LINES);
        if (obj3 != null) {
            if (JavaCore.PRESERVE_ONE.equals(obj3)) {
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_NUMBER_OF_EMPTY_LINES_TO_PRESERVE, "1");
            } else {
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_NUMBER_OF_EMPTY_LINES_TO_PRESERVE, "0");
            }
        }
        Object obj4 = this.options.get(JavaCore.FORMATTER_NEWLINE_ELSE_IF);
        if (obj4 != null) {
            if (JavaCore.INSERT.equals(obj4)) {
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_COMPACT_ELSE_IF, "false");
            } else {
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_COMPACT_ELSE_IF, "true");
            }
        }
        Object obj5 = this.options.get(JavaCore.FORMATTER_NEWLINE_EMPTY_BLOCK);
        if (obj5 != null) {
            if (JavaCore.INSERT.equals(obj5)) {
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_IN_EMPTY_BLOCK, JavaCore.INSERT);
            } else {
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_IN_EMPTY_BLOCK, JavaCore.DO_NOT_INSERT);
            }
        }
        Object obj6 = this.options.get(JavaCore.FORMATTER_COMPACT_ASSIGNMENT);
        if (obj6 != null) {
            if (JavaCore.COMPACT.equals(obj6)) {
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_ASSIGNMENT_OPERATOR, JavaCore.DO_NOT_INSERT);
            } else {
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_ASSIGNMENT_OPERATOR, JavaCore.INSERT);
            }
        }
        if (this.options.get(JavaCore.FORMATTER_SPACE_CASTEXPRESSION) != null) {
            if (JavaCore.INSERT.equals(this.options.get(JavaCore.FORMATTER_SPACE_CASTEXPRESSION))) {
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_CLOSING_PAREN_IN_CAST, JavaCore.INSERT);
            } else {
                eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_CLOSING_PAREN_IN_CAST, JavaCore.DO_NOT_INSERT);
            }
        }
        eclipse21Settings.put("org.eclipse.jdt.core.formatter.tabulation.char", this.options.get("org.eclipse.jdt.core.formatter.tabulation.char"));
        eclipse21Settings.put("org.eclipse.jdt.core.formatter.tabulation.size", this.options.get("org.eclipse.jdt.core.formatter.tabulation.size"));
        eclipse21Settings.put("org.eclipse.jdt.core.formatter.lineSplit", this.options.get("org.eclipse.jdt.core.formatter.lineSplit"));
        eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_ARRAY_INITIALIZER, DefaultCodeFormatterConstants.END_OF_LINE);
        eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_CONTINUATION_INDENTATION, "1");
        eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_PARAMETERS_IN_METHOD_DECLARATION, DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_PARAMETERS_IN_CONSTRUCTOR_DECLARATION, DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_ALLOCATION_EXPRESSION, DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_EXPLICIT_CONSTRUCTOR_CALL, DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_METHOD_INVOCATION, DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_QUALIFIED_ALLOCATION_EXPRESSION, DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_THROWS_CLAUSE_IN_METHOD_DECLARATION, DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_MULTIPLE_FIELDS, DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_BINARY_EXPRESSION, DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_ARRAY_INITIALIZER, JavaCore.INSERT);
        eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_BRACE_IN_ARRAY_INITIALIZER, JavaCore.INSERT);
        eclipse21Settings.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_BRACE_IN_ARRAY_INITIALIZER, JavaCore.INSERT);
        TextEdit format = new DefaultCodeFormatter((Map<String, String>) eclipse21Settings).format(0, str, 0, str.length(), i10, str2);
        if (iArr != null && format != null) {
            ReplaceEdit[] children = format.getChildren();
            int length = children.length;
            int length2 = str.length() - 1;
            if (length != 0) {
                int length3 = iArr.length;
                int i11 = 0;
                int i12 = 0;
                for (int i13 = 0; i13 < length3; i13++) {
                    int i14 = iArr[i13];
                    if (i14 > length2) {
                        i14 = length2;
                    }
                    ReplaceEdit replaceEdit = children[i11];
                    while (true) {
                        ReplaceEdit replaceEdit2 = replaceEdit;
                        if (replaceEdit2.getOffset() > i14) {
                            break;
                        }
                        i12 += replaceEdit2.getText().length() - replaceEdit2.getLength();
                        i11++;
                        if (i11 < length) {
                            replaceEdit = children[i11];
                        }
                    }
                    iArr[i13] = i14 + i12;
                }
            }
        }
        return Util.editedString(str, format);
    }
}
