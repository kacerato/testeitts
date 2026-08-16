package org.openjdk.tools.javac.util;

import java.util.EnumSet;
import java.util.Iterator;
import java.util.Locale;
import org.eclipse.jdt.internal.core.JavaElement;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.api.DiagnosticFormatter;
import org.openjdk.tools.javac.api.Formattable;
import org.openjdk.tools.javac.file.PathFileObject;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.AbstractDiagnosticFormatter;
import w2.C15883c;

public final class RawDiagnosticFormatter extends AbstractDiagnosticFormatter {
    public RawDiagnosticFormatter(Options options) {
        super(null, new AbstractDiagnosticFormatter.SimpleConfiguration(options, EnumSet.of(DiagnosticFormatter.Configuration.DiagnosticPart.SUMMARY, DiagnosticFormatter.Configuration.DiagnosticPart.DETAILS, DiagnosticFormatter.Configuration.DiagnosticPart.SUBDIAGNOSTICS)));
    }

    @Override
    public String formatArgument(JCDiagnostic jCDiagnostic, Object obj, Locale locale) {
        String shortName;
        if (obj instanceof Formattable) {
            shortName = obj.toString();
        } else if (obj instanceof JCTree.JCExpression) {
            shortName = "@" + ((JCTree.JCExpression) obj).getStartPosition();
        } else {
            shortName = obj instanceof PathFileObject ? ((PathFileObject) obj).getShortName() : super.formatArgument(jCDiagnostic, obj, null);
        }
        if (!(obj instanceof JCDiagnostic)) {
            return shortName;
        }
        return "(" + shortName + ")";
    }

    @Override
    public String formatDiagnostic(JCDiagnostic jCDiagnostic, Locale locale) {
        try {
            StringBuilder sb2 = new StringBuilder();
            if (jCDiagnostic.getPosition() != -1) {
                sb2.append(formatSource(jCDiagnostic, false, (Locale) null));
                sb2.append(':');
                sb2.append(formatPosition(jCDiagnostic, DiagnosticFormatter.PositionKind.LINE, (Locale) null));
                sb2.append(':');
                sb2.append(formatPosition(jCDiagnostic, DiagnosticFormatter.PositionKind.COLUMN, (Locale) null));
                sb2.append(':');
            } else if (jCDiagnostic.getSource() == null || jCDiagnostic.getSource().getKind() != JavaFileObject.Kind.CLASS) {
                sb2.append('-');
            } else {
                sb2.append(formatSource(jCDiagnostic, false, (Locale) null));
                sb2.append(":-:-:");
            }
            sb2.append(C15883c.f126249O);
            sb2.append(formatMessage(jCDiagnostic, (Locale) null));
            if (displaySource(jCDiagnostic)) {
                sb2.append("\n");
                sb2.append(formatSourceLine(jCDiagnostic, 0));
            }
            return sb2.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public boolean isRaw() {
        return true;
    }

    @Override
    public String localize(Locale locale, String str, Object... objArr) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        int length = objArr.length;
        String str2 = ": ";
        int i10 = 0;
        while (i10 < length) {
            Object obj = objArr[i10];
            sb2.append(str2);
            sb2.append(obj);
            i10++;
            str2 = ", ";
        }
        return sb2.toString();
    }

    @Override
    public String formatMessage(JCDiagnostic jCDiagnostic, Locale locale) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(localize(null, jCDiagnostic.getCode(), formatArguments(jCDiagnostic, locale).toArray()));
        if (jCDiagnostic.isMultiline() && getConfiguration().getVisible().contains(DiagnosticFormatter.Configuration.DiagnosticPart.SUBDIAGNOSTICS) && formatSubdiagnostics(jCDiagnostic, null).nonEmpty()) {
            sb2.append(",{");
            Iterator<String> it = formatSubdiagnostics(jCDiagnostic, null).iterator();
            String str = "";
            while (it.hasNext()) {
                String next = it.next();
                sb2.append(str);
                sb2.append("(");
                sb2.append(next);
                sb2.append(")");
                str = DocLint.SEPARATOR;
            }
            sb2.append(JavaElement.JEM_ANNOTATION);
        }
        return sb2.toString();
    }
}
