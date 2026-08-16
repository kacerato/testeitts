package org.openjdk.tools.javac.util;

import b3.s;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.api.DiagnosticFormatter;
import org.openjdk.tools.javac.api.Formattable;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.code.Printer;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.file.PathFileObject;
import org.openjdk.tools.javac.jvm.Profile;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.Pretty;
import org.openjdk.tools.javac.util.JCDiagnostic;

public abstract class AbstractDiagnosticFormatter implements DiagnosticFormatter<JCDiagnostic> {
    private SimpleConfiguration config;
    protected JavacMessages messages;
    protected int depth = 0;
    private List<Type> allCaptured = List.nil();
    protected Printer printer = new Printer() {
        @Override
        public String capturedVarId(Type.CapturedType capturedType, Locale locale) {
            return "" + (AbstractDiagnosticFormatter.this.allCaptured.indexOf(capturedType) + 1);
        }

        @Override
        public String localize(Locale locale, String str, Object... objArr) {
            return AbstractDiagnosticFormatter.this.localize(locale, str, objArr);
        }

        @Override
        public String visitCapturedType(Type.CapturedType capturedType, Locale locale) {
            if (!AbstractDiagnosticFormatter.this.allCaptured.contains(capturedType)) {
                AbstractDiagnosticFormatter abstractDiagnosticFormatter = AbstractDiagnosticFormatter.this;
                abstractDiagnosticFormatter.allCaptured = abstractDiagnosticFormatter.allCaptured.append(capturedType);
            }
            return super.visitCapturedType(capturedType, locale);
        }
    };

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$com$sun$tools$javac$api$DiagnosticFormatter$PositionKind;
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag;
        static final int[] $SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType;

        static {
            int[] iArr = new int[JCTree.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag = iArr;
            try {
                iArr[JCTree.Tag.PARENS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.LAMBDA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.REFERENCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.CONDEXPR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[DiagnosticFormatter.PositionKind.values().length];
            $SwitchMap$com$sun$tools$javac$api$DiagnosticFormatter$PositionKind = iArr2;
            try {
                iArr2[DiagnosticFormatter.PositionKind.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$api$DiagnosticFormatter$PositionKind[DiagnosticFormatter.PositionKind.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$api$DiagnosticFormatter$PositionKind[DiagnosticFormatter.PositionKind.LINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$api$DiagnosticFormatter$PositionKind[DiagnosticFormatter.PositionKind.COLUMN.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$api$DiagnosticFormatter$PositionKind[DiagnosticFormatter.PositionKind.OFFSET.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr3 = new int[JCDiagnostic.DiagnosticType.values().length];
            $SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType = iArr3;
            try {
                iArr3[JCDiagnostic.DiagnosticType.FRAGMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType[JCDiagnostic.DiagnosticType.NOTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType[JCDiagnostic.DiagnosticType.WARNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType[JCDiagnostic.DiagnosticType.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public static class SimpleConfiguration implements DiagnosticFormatter.Configuration {
        protected boolean caretEnabled;
        protected Map<DiagnosticFormatter.Configuration.MultilineLimit, Integer> multilineLimits;
        protected EnumSet<DiagnosticFormatter.Configuration.DiagnosticPart> visibleParts;

        public SimpleConfiguration(Set<DiagnosticFormatter.Configuration.DiagnosticPart> set) {
            this.multilineLimits = new HashMap();
            setVisible(set);
            setMultilineLimit(DiagnosticFormatter.Configuration.MultilineLimit.DEPTH, -1);
            setMultilineLimit(DiagnosticFormatter.Configuration.MultilineLimit.LENGTH, -1);
            setCaretEnabled(true);
        }

        @Override
        public int getMultilineLimit(DiagnosticFormatter.Configuration.MultilineLimit multilineLimit) {
            return this.multilineLimits.get(multilineLimit).intValue();
        }

        public boolean isCaretEnabled() {
            return this.caretEnabled;
        }

        public void setCaretEnabled(boolean z10) {
            this.caretEnabled = z10;
        }

        @Override
        public void setMultilineLimit(DiagnosticFormatter.Configuration.MultilineLimit multilineLimit, int i10) {
            Map<DiagnosticFormatter.Configuration.MultilineLimit, Integer> map = this.multilineLimits;
            if (i10 < -1) {
                i10 = -1;
            }
            map.put(multilineLimit, Integer.valueOf(i10));
        }

        @Override
        public void setVisible(Set<DiagnosticFormatter.Configuration.DiagnosticPart> set) {
            this.visibleParts = EnumSet.copyOf(set);
        }

        public void setVisiblePart(DiagnosticFormatter.Configuration.DiagnosticPart diagnosticPart, boolean z10) {
            if (z10) {
                this.visibleParts.add(diagnosticPart);
            } else {
                this.visibleParts.remove(diagnosticPart);
            }
        }

        @Override
        public EnumSet<DiagnosticFormatter.Configuration.DiagnosticPart> getVisible() {
            return EnumSet.copyOf((EnumSet) this.visibleParts);
        }

        public SimpleConfiguration(Options options, Set<DiagnosticFormatter.Configuration.DiagnosticPart> set) {
            this(set);
            String str = options.get("diags.showSource");
            if (str != null) {
                if (str.equals("true")) {
                    setVisiblePart(DiagnosticFormatter.Configuration.DiagnosticPart.SOURCE, true);
                } else if (str.equals("false")) {
                    setVisiblePart(DiagnosticFormatter.Configuration.DiagnosticPart.SOURCE, false);
                }
            }
            String str2 = options.get("diags.formatterOptions");
            if (str2 != null) {
                java.util.List asList = Arrays.asList(str2.split(DocLint.SEPARATOR));
                if (asList.contains("short")) {
                    setVisiblePart(DiagnosticFormatter.Configuration.DiagnosticPart.DETAILS, false);
                    setVisiblePart(DiagnosticFormatter.Configuration.DiagnosticPart.SUBDIAGNOSTICS, false);
                }
                if (asList.contains("source")) {
                    setVisiblePart(DiagnosticFormatter.Configuration.DiagnosticPart.SOURCE, true);
                }
                if (asList.contains("-source")) {
                    setVisiblePart(DiagnosticFormatter.Configuration.DiagnosticPart.SOURCE, false);
                }
            }
            String str3 = options.get("diags.multilinePolicy");
            if (str3 != null) {
                if (str3.equals("disabled")) {
                    setVisiblePart(DiagnosticFormatter.Configuration.DiagnosticPart.SUBDIAGNOSTICS, false);
                } else if (str3.startsWith("limit:")) {
                    String[] split = str3.substring(6).split(s.f32937c);
                    try {
                        int length = split.length;
                        if (length != 1) {
                            if (length == 2) {
                                if (!split[1].equals("*")) {
                                    setMultilineLimit(DiagnosticFormatter.Configuration.MultilineLimit.DEPTH, Integer.parseInt(split[1]));
                                }
                            }
                        }
                        if (!split[0].equals("*")) {
                            setMultilineLimit(DiagnosticFormatter.Configuration.MultilineLimit.LENGTH, Integer.parseInt(split[0]));
                        }
                    } catch (NumberFormatException unused) {
                        setMultilineLimit(DiagnosticFormatter.Configuration.MultilineLimit.DEPTH, -1);
                        setMultilineLimit(DiagnosticFormatter.Configuration.MultilineLimit.LENGTH, -1);
                    }
                }
            }
            String str4 = options.get("diags.showCaret");
            if (str4 != null && str4.equals("false")) {
                setCaretEnabled(false);
            } else {
                setCaretEnabled(true);
            }
        }
    }

    public AbstractDiagnosticFormatter(JavacMessages javacMessages, SimpleConfiguration simpleConfiguration) {
        this.messages = javacMessages;
        this.config = simpleConfiguration;
    }

    private String expr2String(JCTree.JCExpression jCExpression) {
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCExpression.getTag().ordinal()];
        if (i10 == 1) {
            return expr2String(((JCTree.JCParens) jCExpression).expr);
        }
        if (i10 == 2 || i10 == 3 || i10 == 4) {
            return Pretty.toSimpleString(jCExpression);
        }
        Assert.error("unexpected tree kind " + ((Object) jCExpression.getKind()));
        return null;
    }

    private long getPosition(JCDiagnostic jCDiagnostic, DiagnosticFormatter.PositionKind positionKind) {
        int intStartPosition;
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$api$DiagnosticFormatter$PositionKind[positionKind.ordinal()];
        if (i10 == 1) {
            intStartPosition = jCDiagnostic.getIntStartPosition();
        } else if (i10 == 2) {
            intStartPosition = jCDiagnostic.getIntEndPosition();
        } else {
            if (i10 == 3) {
                return jCDiagnostic.getLineNumber();
            }
            if (i10 == 4) {
                return jCDiagnostic.getColumnNumber();
            }
            if (i10 != 5) {
                throw new AssertionError((Object) ("Unknown diagnostic position: " + ((Object) positionKind)));
            }
            intStartPosition = jCDiagnostic.getIntPosition();
        }
        return intStartPosition;
    }

    public String formatArgument(JCDiagnostic jCDiagnostic, Object obj, Locale locale) {
        if (!(obj instanceof JCDiagnostic)) {
            return obj instanceof JCTree.JCExpression ? expr2String((JCTree.JCExpression) obj) : (!(obj instanceof Iterable) || (obj instanceof Path)) ? obj instanceof Type ? this.printer.visit((Type) obj, locale) : obj instanceof Symbol ? this.printer.visit((Symbol) obj, locale) : obj instanceof JavaFileObject ? ((JavaFileObject) obj).getName() : obj instanceof Profile ? ((Profile) obj).name : obj instanceof Option ? ((Option) obj).primaryName : obj instanceof Formattable ? ((Formattable) obj).toString(locale, this.messages) : String.valueOf(obj) : formatIterable(jCDiagnostic, (Iterable) obj, locale);
        }
        this.depth++;
        try {
            return formatMessage((JCDiagnostic) obj, locale);
        } finally {
            this.depth--;
        }
    }

    public Collection<String> formatArguments(JCDiagnostic jCDiagnostic, Locale locale) {
        ListBuffer listBuffer = new ListBuffer();
        for (Object obj : jCDiagnostic.getArgs()) {
            listBuffer.append(formatArgument(jCDiagnostic, obj, locale));
        }
        return listBuffer.toList();
    }

    public abstract String formatDiagnostic(JCDiagnostic jCDiagnostic, Locale locale);

    public String formatIterable(JCDiagnostic jCDiagnostic, Iterable<?> iterable, Locale locale) {
        StringBuilder sb2 = new StringBuilder();
        String str = "";
        for (Object obj : iterable) {
            sb2.append(str);
            sb2.append(formatArgument(jCDiagnostic, obj, locale));
            str = DocLint.SEPARATOR;
        }
        return sb2.toString();
    }

    public String formatLintCategory(JCDiagnostic jCDiagnostic, Locale locale) {
        Lint.LintCategory lintCategory = jCDiagnostic.getLintCategory();
        return lintCategory == null ? "" : localize(locale, "compiler.warn.lintOption", lintCategory.option);
    }

    public String formatSourceLine(JCDiagnostic jCDiagnostic, int i10) {
        StringBuilder sb2 = new StringBuilder();
        DiagnosticSource diagnosticSource = jCDiagnostic.getDiagnosticSource();
        int intPosition = jCDiagnostic.getIntPosition();
        if (jCDiagnostic.getIntPosition() == -1) {
            throw new AssertionError();
        }
        String line = diagnosticSource == null ? null : diagnosticSource.getLine(intPosition);
        if (line == null) {
            return "";
        }
        sb2.append(indent(line, i10));
        int columnNumber = diagnosticSource.getColumnNumber(intPosition, false);
        if (this.config.isCaretEnabled()) {
            sb2.append("\n");
            for (int i11 = 0; i11 < columnNumber - 1; i11++) {
                sb2.append(line.charAt(i11) == '\t' ? "\t" : " ");
            }
            sb2.append(indent("^", i10));
        }
        return sb2.toString();
    }

    public String formatSubdiagnostic(JCDiagnostic jCDiagnostic, JCDiagnostic jCDiagnostic2, Locale locale) {
        return formatMessage(jCDiagnostic2, locale);
    }

    public List<String> formatSubdiagnostics(JCDiagnostic jCDiagnostic, Locale locale) {
        List<String> nil = List.nil();
        int multilineLimit = this.config.getMultilineLimit(DiagnosticFormatter.Configuration.MultilineLimit.DEPTH);
        if (multilineLimit == -1 || this.depth < multilineLimit) {
            this.depth++;
            try {
                int multilineLimit2 = this.config.getMultilineLimit(DiagnosticFormatter.Configuration.MultilineLimit.LENGTH);
                Iterator<JCDiagnostic> it = jCDiagnostic.getSubdiagnostics().iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    JCDiagnostic next = it.next();
                    if (multilineLimit2 != -1 && i10 >= multilineLimit2) {
                        break;
                    }
                    nil = nil.append(formatSubdiagnostic(jCDiagnostic, next, locale));
                    i10++;
                }
            } finally {
                this.depth--;
            }
        }
        return nil;
    }

    public Printer getPrinter() {
        return this.printer;
    }

    public String indent(String str, int i10) {
        String indentString = indentString(i10);
        StringBuilder sb2 = new StringBuilder();
        String[] split = str.split("\n");
        int length = split.length;
        String str2 = "";
        int i11 = 0;
        while (i11 < length) {
            String str3 = split[i11];
            sb2.append(str2);
            sb2.append(indentString + str3);
            i11++;
            str2 = "\n";
        }
        return sb2.toString();
    }

    public String indentString(int i10) {
        if (i10 <= 24) {
            return "                        ".substring(0, i10);
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append(" ");
        }
        return sb2.toString();
    }

    public boolean isRaw() {
        return false;
    }

    public String localize(Locale locale, String str, Object... objArr) {
        return this.messages.getLocalizedString(locale, str, objArr);
    }

    public void setPrinter(Printer printer) {
        this.printer = printer;
    }

    @Override
    public boolean displaySource(JCDiagnostic jCDiagnostic) {
        return (!this.config.getVisible().contains(DiagnosticFormatter.Configuration.DiagnosticPart.SOURCE) || jCDiagnostic.getType() == JCDiagnostic.DiagnosticType.FRAGMENT || jCDiagnostic.getIntPosition() == -1) ? false : true;
    }

    @Override
    public String format(JCDiagnostic jCDiagnostic, Locale locale) {
        this.allCaptured = List.nil();
        return formatDiagnostic(jCDiagnostic, locale);
    }

    @Override
    public String formatKind(JCDiagnostic jCDiagnostic, Locale locale) {
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType[jCDiagnostic.getType().ordinal()];
        if (i10 == 1) {
            return "";
        }
        if (i10 == 2) {
            return localize(locale, "compiler.note.note", new Object[0]);
        }
        if (i10 == 3) {
            return localize(locale, "compiler.warn.warning", new Object[0]);
        }
        if (i10 == 4) {
            return localize(locale, "compiler.err.error", new Object[0]);
        }
        throw new AssertionError((Object) ("Unknown diagnostic type: " + ((Object) jCDiagnostic.getType())));
    }

    @Override
    public String formatPosition(JCDiagnostic jCDiagnostic, DiagnosticFormatter.PositionKind positionKind, Locale locale) {
        Assert.check(jCDiagnostic.getPosition() != -1);
        return String.valueOf(getPosition(jCDiagnostic, positionKind));
    }

    @Override
    public String formatSource(JCDiagnostic jCDiagnostic, boolean z10, Locale locale) {
        JavaFileObject source = jCDiagnostic.getSource();
        if (source == null) {
            throw new IllegalArgumentException();
        }
        if (z10) {
            return source.getName();
        }
        if (source instanceof PathFileObject) {
            return ((PathFileObject) source).getShortName();
        }
        return PathFileObject.getSimpleName(source);
    }

    @Override
    public SimpleConfiguration getConfiguration() {
        return this.config;
    }
}
