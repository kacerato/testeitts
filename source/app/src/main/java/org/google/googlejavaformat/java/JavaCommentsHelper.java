package org.google.googlejavaformat.java;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.google.googlejavaformat.CommentsHelper;
import org.google.googlejavaformat.Input;
import org.google.googlejavaformat.Newlines;
import org.google.googlejavaformat.java.javadoc.JavadocFormatter;
import w2.AbstractC15885e;
import w2.P;

public final class JavaCommentsHelper implements CommentsHelper {
    private static final Pattern LINE_COMMENT_MISSING_SPACE_PREFIX = Pattern.compile("^(//+)(?!noinspection|\\$NON-NLS-\\d+\\$)[^\\s/]");
    private final String lineSeparator;
    private final JavaFormatterOptions options;

    public JavaCommentsHelper(String lineSeparator, JavaFormatterOptions options) {
        this.lineSeparator = lineSeparator;
        this.options = options;
    }

    private String indentJavadoc(List<String> lines, int column0) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(lines.get(0).trim());
        String j10 = P.j(" ", column0 + 1);
        for (int i10 = 1; i10 < lines.size(); i10++) {
            sb2.append(this.lineSeparator);
            sb2.append(j10);
            String trim = lines.get(i10).trim();
            if (!trim.startsWith("*")) {
                sb2.append("* ");
            }
            sb2.append(trim);
        }
        return sb2.toString();
    }

    private String indentLineComments(List<String> lines, int column0) {
        List<String> wrapLineComments = wrapLineComments(lines, column0, this.options);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(wrapLineComments.get(0).trim());
        String j10 = P.j(" ", column0);
        for (int i10 = 1; i10 < wrapLineComments.size(); i10++) {
            sb2.append(this.lineSeparator);
            sb2.append(j10);
            sb2.append(wrapLineComments.get(i10).trim());
        }
        return sb2.toString();
    }

    private static boolean javadocShaped(List<String> lines) {
        Iterator<String> it = lines.iterator();
        if (!it.hasNext()) {
            return false;
        }
        String trim = it.next().trim();
        if (trim.startsWith("/**")) {
            return true;
        }
        if (!trim.startsWith("/*")) {
            return false;
        }
        while (it.hasNext()) {
            if (!it.next().trim().startsWith("*")) {
                return false;
            }
        }
        return true;
    }

    private String preserveIndentation(List<String> lines, int column0) {
        StringBuilder sb2 = new StringBuilder();
        int i10 = -1;
        for (int i11 = 1; i11 < lines.size(); i11++) {
            int n10 = AbstractC15885e.X().F().n(lines.get(i11));
            if (n10 >= 0 && (i10 == -1 || n10 < i10)) {
                i10 = n10;
            }
        }
        sb2.append(lines.get(0));
        for (int i12 = 1; i12 < lines.size(); i12++) {
            sb2.append(this.lineSeparator);
            sb2.append(P.j(" ", column0));
            if (lines.get(i12).length() >= i10) {
                sb2.append(lines.get(i12).substring(i10));
            } else {
                sb2.append(lines.get(i12));
            }
        }
        return sb2.toString();
    }

    private List<String> wrapLineComments(List<String> lines, int column0, JavaFormatterOptions options) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = lines.iterator();
        while (it.hasNext()) {
            String next = it.next();
            Matcher matcher = LINE_COMMENT_MISSING_SPACE_PREFIX.matcher(next);
            if (matcher.find()) {
                int length = matcher.group(1).length();
                next = P.j("/", length) + " " + next.substring(length);
            }
            while (next.length() + column0 > options.maxLineLength()) {
                int maxLineLength = options.maxLineLength() - column0;
                while (maxLineLength >= 2 && !AbstractC15885e.X().B(next.charAt(maxLineLength))) {
                    maxLineLength--;
                }
                if (maxLineLength <= 2) {
                    break;
                }
                arrayList.add(next.substring(0, maxLineLength));
                next = "//" + next.substring(maxLineLength);
            }
            arrayList.add(next);
        }
        return arrayList;
    }

    @Override
    public String rewrite(Input.Tok tok, int maxWidth, int column0) {
        if (!tok.isComment()) {
            return tok.getOriginalText();
        }
        String originalText = tok.getOriginalText();
        if (tok.isJavadocComment()) {
            originalText = JavadocFormatter.formatJavadoc(originalText, column0, this.options);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> lineIterator = Newlines.lineIterator(originalText);
        while (lineIterator.hasNext()) {
            arrayList.add(AbstractC15885e.X().W(lineIterator.next()));
        }
        return tok.isSlashSlashComment() ? indentLineComments(arrayList, column0) : javadocShaped(arrayList) ? indentJavadoc(arrayList, column0) : preserveIndentation(arrayList, column0);
    }
}
