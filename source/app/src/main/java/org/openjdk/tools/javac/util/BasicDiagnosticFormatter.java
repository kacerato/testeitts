package org.openjdk.tools.javac.util;

import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.api.DiagnosticFormatter;
import org.openjdk.tools.javac.util.AbstractDiagnosticFormatter;
import org.openjdk.tools.javac.util.JCDiagnostic;

public class BasicDiagnosticFormatter extends AbstractDiagnosticFormatter {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType;

        static {
            int[] iArr = new int[JCDiagnostic.DiagnosticType.values().length];
            $SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType = iArr;
            try {
                iArr[JCDiagnostic.DiagnosticType.FRAGMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType[JCDiagnostic.DiagnosticType.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public BasicDiagnosticFormatter(Options options, JavacMessages javacMessages) {
        super(javacMessages, new BasicConfiguration(options));
    }

    private String selectFormat(JCDiagnostic jCDiagnostic) {
        DiagnosticSource diagnosticSource = jCDiagnostic.getDiagnosticSource();
        String format = getConfiguration().getFormat(BasicConfiguration.BasicFormatKind.DEFAULT_NO_POS_FORMAT);
        return (diagnosticSource == null || diagnosticSource == DiagnosticSource.NO_SOURCE) ? format : jCDiagnostic.getIntPosition() != -1 ? getConfiguration().getFormat(BasicConfiguration.BasicFormatKind.DEFAULT_POS_FORMAT) : (diagnosticSource.getFile() == null || diagnosticSource.getFile().getKind() != JavaFileObject.Kind.CLASS) ? format : getConfiguration().getFormat(BasicConfiguration.BasicFormatKind.DEFAULT_CLASS_FORMAT);
    }

    public String addSourceLineIfNeeded(JCDiagnostic jCDiagnostic, String str) {
        if (!displaySource(jCDiagnostic)) {
            return str;
        }
        String str2 = "\n" + formatSourceLine(jCDiagnostic, getConfiguration().getIndentation(DiagnosticFormatter.Configuration.DiagnosticPart.SOURCE));
        if (!str.contains("\n") || getConfiguration().getSourcePosition() == BasicConfiguration.SourcePosition.BOTTOM) {
            return str + str2;
        }
        return str.replaceFirst("\n", Matcher.quoteReplacement(str2) + "\n");
    }

    @Override
    public String formatDiagnostic(JCDiagnostic jCDiagnostic, Locale locale) {
        boolean z10;
        if (locale == null) {
            locale = this.messages.getCurrentLocale();
        }
        String selectFormat = selectFormat(jCDiagnostic);
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        while (i10 < selectFormat.length()) {
            char charAt = selectFormat.charAt(i10);
            if (charAt != '%' || i10 >= selectFormat.length() - 1) {
                z10 = false;
            } else {
                i10++;
                charAt = selectFormat.charAt(i10);
                z10 = true;
            }
            sb2.append(z10 ? formatMeta(charAt, jCDiagnostic, locale) : String.valueOf(charAt));
            i10++;
        }
        return this.depth == 0 ? addSourceLineIfNeeded(jCDiagnostic, sb2.toString()) : sb2.toString();
    }

    public String formatMeta(char c10, JCDiagnostic jCDiagnostic, Locale locale) {
        if (c10 == '%') {
            return ve.j.f121589a;
        }
        if (c10 == 'L') {
            return formatLintCategory(jCDiagnostic, locale);
        }
        if (c10 == '_') {
            return " ";
        }
        if (c10 == 'b') {
            return formatSource(jCDiagnostic, false, locale);
        }
        if (c10 == 'c') {
            return formatPosition(jCDiagnostic, DiagnosticFormatter.PositionKind.COLUMN, locale);
        }
        if (c10 == 'e') {
            return formatPosition(jCDiagnostic, DiagnosticFormatter.PositionKind.END, locale);
        }
        if (c10 == 'f') {
            return formatSource(jCDiagnostic, true, locale);
        }
        if (c10 == 'l') {
            return formatPosition(jCDiagnostic, DiagnosticFormatter.PositionKind.LINE, locale);
        }
        if (c10 == 'm') {
            return formatMessage(jCDiagnostic, locale);
        }
        if (c10 == 'o') {
            return formatPosition(jCDiagnostic, DiagnosticFormatter.PositionKind.OFFSET, locale);
        }
        if (c10 == 'p') {
            return formatKind(jCDiagnostic, locale);
        }
        if (c10 == 's') {
            return formatPosition(jCDiagnostic, DiagnosticFormatter.PositionKind.START, locale);
        }
        if (c10 != 't') {
            return String.valueOf(c10);
        }
        int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType[jCDiagnostic.getType().ordinal()];
        return i10 != 1 ? (i10 == 2 && jCDiagnostic.getIntPosition() != -1) ? "" : formatKind(jCDiagnostic, locale) : "";
    }

    public BasicDiagnosticFormatter(JavacMessages javacMessages) {
        super(javacMessages, new BasicConfiguration());
    }

    @Override
    public String formatMessage(JCDiagnostic jCDiagnostic, Locale locale) {
        StringBuilder sb2 = new StringBuilder();
        String[] split = localize(locale, jCDiagnostic.getCode(), formatArguments(jCDiagnostic, locale).toArray()).split("\n");
        int i10 = 0;
        if (split.length == 0) {
            split = new String[]{""};
        }
        EnumSet<DiagnosticFormatter.Configuration.DiagnosticPart> visible = getConfiguration().getVisible();
        DiagnosticFormatter.Configuration.DiagnosticPart diagnosticPart = DiagnosticFormatter.Configuration.DiagnosticPart.SUMMARY;
        if (visible.contains(diagnosticPart)) {
            int indentation = getConfiguration().getIndentation(diagnosticPart);
            sb2.append(indent(split[0], indentation));
            i10 = indentation;
        }
        if (split.length > 1) {
            EnumSet<DiagnosticFormatter.Configuration.DiagnosticPart> visible2 = getConfiguration().getVisible();
            DiagnosticFormatter.Configuration.DiagnosticPart diagnosticPart2 = DiagnosticFormatter.Configuration.DiagnosticPart.DETAILS;
            if (visible2.contains(diagnosticPart2)) {
                i10 += getConfiguration().getIndentation(diagnosticPart2);
                for (int i11 = 1; i11 < split.length; i11++) {
                    sb2.append("\n" + indent(split[i11], i10));
                }
            }
        }
        if (jCDiagnostic.isMultiline()) {
            EnumSet<DiagnosticFormatter.Configuration.DiagnosticPart> visible3 = getConfiguration().getVisible();
            DiagnosticFormatter.Configuration.DiagnosticPart diagnosticPart3 = DiagnosticFormatter.Configuration.DiagnosticPart.SUBDIAGNOSTICS;
            if (visible3.contains(diagnosticPart3)) {
                int indentation2 = i10 + getConfiguration().getIndentation(diagnosticPart3);
                Iterator<String> it = formatSubdiagnostics(jCDiagnostic, locale).iterator();
                while (it.hasNext()) {
                    sb2.append("\n" + indent(it.next(), indentation2));
                }
            }
        }
        return sb2.toString();
    }

    @Override
    public BasicConfiguration getConfiguration() {
        return (BasicConfiguration) super.getConfiguration();
    }

    public static class BasicConfiguration extends AbstractDiagnosticFormatter.SimpleConfiguration {
        protected Map<BasicFormatKind, String> availableFormats;
        protected Map<DiagnosticFormatter.Configuration.DiagnosticPart, Integer> indentationLevels;
        protected SourcePosition sourcePosition;

        public enum BasicFormatKind {
            DEFAULT_POS_FORMAT,
            DEFAULT_NO_POS_FORMAT,
            DEFAULT_CLASS_FORMAT
        }

        public enum SourcePosition {
            BOTTOM,
            AFTER_SUMMARY
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public BasicConfiguration(Options options) {
            super(options, EnumSet.of(r0, r1, r2, r3));
            DiagnosticFormatter.Configuration.DiagnosticPart diagnosticPart = DiagnosticFormatter.Configuration.DiagnosticPart.SUMMARY;
            DiagnosticFormatter.Configuration.DiagnosticPart diagnosticPart2 = DiagnosticFormatter.Configuration.DiagnosticPart.DETAILS;
            DiagnosticFormatter.Configuration.DiagnosticPart diagnosticPart3 = DiagnosticFormatter.Configuration.DiagnosticPart.SUBDIAGNOSTICS;
            DiagnosticFormatter.Configuration.DiagnosticPart diagnosticPart4 = DiagnosticFormatter.Configuration.DiagnosticPart.SOURCE;
            initFormat();
            initIndentation();
            if (options.isSet("diags.legacy")) {
                initOldFormat();
            }
            String str = options.get("diags.layout");
            if (str != null) {
                if (str.equals("OLD")) {
                    initOldFormat();
                } else {
                    initFormats(str);
                }
            }
            String str2 = options.get("diags.sourcePosition");
            if (str2 != null && str2.equals("bottom")) {
                setSourcePosition(SourcePosition.BOTTOM);
            } else {
                setSourcePosition(SourcePosition.AFTER_SUMMARY);
            }
            String str3 = options.get("diags.indent");
            if (str3 != null) {
                String[] split = str3.split("\\|");
                try {
                    int length = split.length;
                    if (length != 2) {
                        if (length != 3) {
                            if (length != 4) {
                                if (length == 5) {
                                    setIndentation(DiagnosticFormatter.Configuration.DiagnosticPart.JLS, Integer.parseInt(split[4]));
                                } else {
                                    setIndentation(diagnosticPart, Integer.parseInt(split[0]));
                                }
                            }
                            setIndentation(diagnosticPart3, Integer.parseInt(split[3]));
                        }
                        setIndentation(diagnosticPart4, Integer.parseInt(split[2]));
                    }
                    setIndentation(diagnosticPart2, Integer.parseInt(split[1]));
                    setIndentation(diagnosticPart, Integer.parseInt(split[0]));
                } catch (NumberFormatException unused) {
                    initIndentation();
                }
            }
        }

        private void initFormat() {
            initFormats("%f:%l:%_%p%L%m", "%p%L%m", "%f:%_%p%L%m");
        }

        private void initFormats(String str, String str2, String str3) {
            this.availableFormats = new EnumMap(BasicFormatKind.class);
            setFormat(BasicFormatKind.DEFAULT_POS_FORMAT, str);
            setFormat(BasicFormatKind.DEFAULT_NO_POS_FORMAT, str2);
            setFormat(BasicFormatKind.DEFAULT_CLASS_FORMAT, str3);
        }

        private void initIndentation() {
            this.indentationLevels = new HashMap();
            setIndentation(DiagnosticFormatter.Configuration.DiagnosticPart.SUMMARY, 0);
            setIndentation(DiagnosticFormatter.Configuration.DiagnosticPart.DETAILS, 2);
            setIndentation(DiagnosticFormatter.Configuration.DiagnosticPart.SUBDIAGNOSTICS, 4);
            setIndentation(DiagnosticFormatter.Configuration.DiagnosticPart.SOURCE, 0);
        }

        private void initOldFormat() {
            initFormats("%f:%l:%_%t%L%m", "%p%L%m", "%f:%_%t%L%m");
        }

        public String getFormat(BasicFormatKind basicFormatKind) {
            return this.availableFormats.get(basicFormatKind);
        }

        public int getIndentation(DiagnosticFormatter.Configuration.DiagnosticPart diagnosticPart) {
            return this.indentationLevels.get(diagnosticPart).intValue();
        }

        public SourcePosition getSourcePosition() {
            return this.sourcePosition;
        }

        public void setFormat(BasicFormatKind basicFormatKind, String str) {
            this.availableFormats.put(basicFormatKind, str);
        }

        public void setIndentation(DiagnosticFormatter.Configuration.DiagnosticPart diagnosticPart, int i10) {
            this.indentationLevels.put(diagnosticPart, Integer.valueOf(i10));
        }

        public void setSourcePosition(SourcePosition sourcePosition) {
            this.sourcePosition = sourcePosition;
        }

        private void initFormats(String str) {
            String[] split = str.split("\\|");
            int length = split.length;
            if (length != 2) {
                if (length == 3) {
                    setFormat(BasicFormatKind.DEFAULT_CLASS_FORMAT, split[2]);
                }
                setFormat(BasicFormatKind.DEFAULT_POS_FORMAT, split[0]);
            }
            setFormat(BasicFormatKind.DEFAULT_NO_POS_FORMAT, split[1]);
            setFormat(BasicFormatKind.DEFAULT_POS_FORMAT, split[0]);
        }

        public BasicConfiguration() {
            super(EnumSet.of(DiagnosticFormatter.Configuration.DiagnosticPart.SUMMARY, DiagnosticFormatter.Configuration.DiagnosticPart.DETAILS, DiagnosticFormatter.Configuration.DiagnosticPart.SUBDIAGNOSTICS, DiagnosticFormatter.Configuration.DiagnosticPart.SOURCE));
            initFormat();
            initIndentation();
        }
    }
}
