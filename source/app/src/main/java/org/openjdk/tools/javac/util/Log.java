package org.openjdk.tools.javac.util;

import b3.s;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.DiagnosticListener;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.api.DiagnosticFormatter;
import org.openjdk.tools.javac.main.Main;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.tree.EndPosTable;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.JCDiagnostic;

public class Log extends AbstractLog {
    protected int MaxErrors;
    protected int MaxWarnings;
    public boolean compressedOutput;
    private DiagnosticFormatter<JCDiagnostic> diagFormatter;
    protected DiagnosticListener<? super JavaFileObject> diagListener;
    private DiagnosticHandler diagnosticHandler;
    public boolean dumpOnError;
    public boolean emitWarnings;
    public Set<String> expectDiagKeys;
    private JavacMessages messages;
    public int nerrors;
    public int nwarnings;
    public boolean promptOnError;
    protected Set<Pair<JavaFileObject, Integer>> recorded;
    protected Set<Pair<JavaFileObject, String>> recordedSourceLevelErrors;
    public boolean suppressNotes;
    private final Map<WriterKind, PrintWriter> writers;
    public static final Context.Key<Log> logKey = new Context.Key<>();
    public static final Context.Key<PrintWriter> outKey = new Context.Key<>();
    public static final Context.Key<PrintWriter> errKey = new Context.Key<>();
    private static boolean useRawMessages = false;

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
                $SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType[JCDiagnostic.DiagnosticType.NOTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType[JCDiagnostic.DiagnosticType.WARNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType[JCDiagnostic.DiagnosticType.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public class DefaultDiagnosticHandler extends DiagnosticHandler {
        private DefaultDiagnosticHandler() {
        }

        @Override
        public void report(JCDiagnostic jCDiagnostic) {
            Set<String> set = Log.this.expectDiagKeys;
            if (set != null) {
                set.remove(jCDiagnostic.getCode());
            }
            int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType[jCDiagnostic.getType().ordinal()];
            if (i10 == 1) {
                throw new IllegalArgumentException();
            }
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        Log log = Log.this;
                        if (log.nerrors < log.MaxErrors && (jCDiagnostic.isFlagSet(JCDiagnostic.DiagnosticFlag.MULTIPLE) || Log.this.shouldReport(jCDiagnostic))) {
                            Log.this.writeDiagnostic(jCDiagnostic);
                            Log.this.nerrors++;
                        }
                    }
                } else if (Log.this.emitWarnings || jCDiagnostic.isMandatory()) {
                    Log log2 = Log.this;
                    if (log2.nwarnings < log2.MaxWarnings) {
                        log2.writeDiagnostic(jCDiagnostic);
                        Log.this.nwarnings++;
                    }
                }
            } else if (Log.this.emitWarnings || jCDiagnostic.isMandatory()) {
                Log log3 = Log.this;
                if (!log3.suppressNotes) {
                    log3.writeDiagnostic(jCDiagnostic);
                }
            }
            if (jCDiagnostic.isFlagSet(JCDiagnostic.DiagnosticFlag.COMPRESSED)) {
                Log.this.compressedOutput = true;
            }
        }

        public DefaultDiagnosticHandler(Log log, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public static class DeferredDiagnosticHandler extends DiagnosticHandler {
        private Queue<JCDiagnostic> deferred;
        private final Filter<JCDiagnostic> filter;

        public DeferredDiagnosticHandler(Log log) {
            this(log, null);
        }

        public Queue<JCDiagnostic> getDiagnostics() {
            return this.deferred;
        }

        @Override
        public void report(JCDiagnostic jCDiagnostic) {
            Filter<JCDiagnostic> filter;
            if (jCDiagnostic.isFlagSet(JCDiagnostic.DiagnosticFlag.NON_DEFERRABLE) || !((filter = this.filter) == null || filter.accepts(jCDiagnostic))) {
                this.prev.report(jCDiagnostic);
            } else {
                this.deferred.add(jCDiagnostic);
            }
        }

        public void reportDeferredDiagnostics() {
            reportDeferredDiagnostics(EnumSet.allOf(Diagnostic.Kind.class));
        }

        public DeferredDiagnosticHandler(Log log, Filter<JCDiagnostic> filter) {
            this.deferred = new ListBuffer();
            this.filter = filter;
            install(log);
        }

        public void reportDeferredDiagnostics(Set<Diagnostic.Kind> set) {
            while (true) {
                JCDiagnostic poll = this.deferred.poll();
                if (poll != null) {
                    if (set.contains(poll.getKind())) {
                        this.prev.report(poll);
                    }
                } else {
                    this.deferred = null;
                    return;
                }
            }
        }
    }

    public static abstract class DiagnosticHandler {
        protected DiagnosticHandler prev;

        public void install(Log log) {
            this.prev = log.diagnosticHandler;
            log.diagnosticHandler = this;
        }

        public abstract void report(JCDiagnostic jCDiagnostic);
    }

    public static class DiscardDiagnosticHandler extends DiagnosticHandler {
        public DiscardDiagnosticHandler(Log log) {
            install(log);
        }

        @Override
        public void report(JCDiagnostic jCDiagnostic) {
        }
    }

    public enum PrefixKind {
        JAVAC("javac."),
        COMPILER_MISC("compiler.misc.");

        final String value;

        PrefixKind(String str) {
            this.value = str;
        }

        public String key(String str) {
            return this.value + str;
        }
    }

    public enum WriterKind {
        NOTICE,
        WARNING,
        ERROR,
        STDOUT,
        STDERR
    }

    public Log(Context context) {
        this(context, initWriters(context));
    }

    public static String format(String str, Object... objArr) {
        return String.format(null, str, objArr);
    }

    private int getIntOption(Options options, Option option, int i10) {
        String str = options.get(option);
        if (str != null) {
            try {
                int parseInt = Integer.parseInt(str);
                if (parseInt <= 0) {
                    return Integer.MAX_VALUE;
                }
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        }
        return i10;
    }

    public static String getLocalizedString(String str, Object... objArr) {
        return JavacMessages.getDefaultLocalizedString(PrefixKind.COMPILER_MISC.key(str), objArr);
    }

    public void lambda$new$1(Options options) {
        this.dumpOnError = options.isSet(Option.DOE);
        this.promptOnError = options.isSet(Option.PROMPT);
        this.emitWarnings = options.isUnset(Option.XLINT_CUSTOM, "none");
        this.suppressNotes = options.isSet("suppressNotes");
        this.MaxErrors = getIntOption(options, Option.XMAXERRS, getDefaultMaxErrors());
        this.MaxWarnings = getIntOption(options, Option.XMAXWARNS, getDefaultMaxWarnings());
        this.diagFormatter = options.isSet("rawDiagnostics") ? new RawDiagnosticFormatter(options) : new BasicDiagnosticFormatter(options, this.messages);
        String str = options.get("expectKeys");
        if (str != null) {
            this.expectDiagKeys = new HashSet(Arrays.asList(str.split(", *")));
        }
    }

    private static Map<WriterKind, PrintWriter> initWriters(Context context) {
        PrintWriter printWriter = (PrintWriter) context.get(outKey);
        PrintWriter printWriter2 = (PrintWriter) context.get(errKey);
        if (printWriter == null && printWriter2 == null) {
            return initWriters(new PrintWriter((OutputStream) System.out, true), new PrintWriter((OutputStream) System.err, true));
        }
        if (printWriter != null && printWriter2 != null) {
            return initWriters(printWriter, printWriter2);
        }
        if (printWriter == null) {
            printWriter = printWriter2;
        }
        return initWriters(printWriter, printWriter);
    }

    public static Log instance(Context context) {
        Log log = (Log) context.get(logKey);
        return log == null ? new Log(context) : log;
    }

    public static Log lambda$preRegister$0(PrintWriter printWriter, Context context) {
        return new Log(context, printWriter);
    }

    public static void preRegister(Context context, final PrintWriter printWriter) {
        context.put(Log.class, new Context.Factory() {
            @Override
            public final Object make(Context context2) {
                Log lambda$preRegister$0;
                lambda$preRegister$0 = Log.lambda$preRegister$0(PrintWriter.this, context2);
                return lambda$preRegister$0;
            }
        });
    }

    private void printErrLine(int i10, PrintWriter printWriter) {
        DiagnosticSource diagnosticSource = this.source;
        String line = diagnosticSource == null ? null : diagnosticSource.getLine(i10);
        if (line == null) {
            return;
        }
        int columnNumber = this.source.getColumnNumber(i10, false);
        printRawLines(printWriter, line);
        for (int i11 = 0; i11 < columnNumber - 1; i11++) {
            printWriter.print(line.charAt(i11) == '\t' ? "\t" : " ");
        }
        printWriter.println("^");
        printWriter.flush();
    }

    private void printRawDiag(PrintWriter printWriter, String str, int i10, String str2) {
        DiagnosticSource diagnosticSource = this.source;
        if (diagnosticSource == null || i10 == -1) {
            printRawLines(printWriter, str + str2);
        } else {
            int lineNumber = diagnosticSource.getLineNumber(i10);
            JavaFileObject file = this.source.getFile();
            if (file != null) {
                printRawLines(printWriter, file.getName() + s.f32937c + lineNumber + ": " + str2);
            }
            printErrLine(i10, printWriter);
        }
        printWriter.flush();
    }

    public JavaFileObject currentSourceFile() {
        DiagnosticSource diagnosticSource = this.source;
        if (diagnosticSource == null) {
            return null;
        }
        return diagnosticSource.getFile();
    }

    @Override
    public void directError(String str, Object... objArr) {
        PrintWriter printWriter = this.writers.get(WriterKind.ERROR);
        printRawLines(printWriter, localize(str, objArr));
        printWriter.flush();
    }

    public void flush() {
        Iterator<PrintWriter> it = this.writers.values().iterator();
        while (it.hasNext()) {
            it.next().flush();
        }
    }

    public int getDefaultMaxErrors() {
        return 100;
    }

    public int getDefaultMaxWarnings() {
        return 100;
    }

    public DiagnosticFormatter<JCDiagnostic> getDiagnosticFormatter() {
        return this.diagFormatter;
    }

    public PrintWriter getWriter(WriterKind writerKind) {
        return this.writers.get(writerKind);
    }

    @Deprecated
    public PrintWriter getWriterForDiagnosticType(JCDiagnostic.DiagnosticType diagnosticType) {
        int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType[diagnosticType.ordinal()];
        if (i10 == 1) {
            throw new IllegalArgumentException();
        }
        if (i10 == 2) {
            return this.writers.get(WriterKind.NOTICE);
        }
        if (i10 == 3) {
            return this.writers.get(WriterKind.WARNING);
        }
        if (i10 == 4) {
            return this.writers.get(WriterKind.ERROR);
        }
        throw new Error();
    }

    public boolean hasDiagnosticListener() {
        return this.diagListener != null;
    }

    public String localize(String str, Object... objArr) {
        return localize(PrefixKind.COMPILER_MISC, str, objArr);
    }

    public void popDiagnosticHandler(DiagnosticHandler diagnosticHandler) {
        Assert.check(this.diagnosticHandler == diagnosticHandler);
        this.diagnosticHandler = diagnosticHandler.prev;
    }

    public void printLines(String str, Object... objArr) {
        printRawLines(this.writers.get(WriterKind.NOTICE), localize(str, objArr));
    }

    public void printNewline() {
        this.writers.get(WriterKind.NOTICE).println();
    }

    public void printRawLines(String str) {
        printRawLines(this.writers.get(WriterKind.NOTICE), str);
    }

    public void printVerbose(String str, Object... objArr) {
        printRawLines(this.writers.get(WriterKind.NOTICE), localize("verbose." + str, objArr));
    }

    public void prompt() {
        int read;
        if (this.promptOnError) {
            System.err.println(localize("resume.abort", new Object[0]));
            do {
                try {
                    read = System.f92798in.read();
                    if (read != 65) {
                        if (read == 82) {
                            return;
                        }
                        if (read == 88) {
                            break;
                        } else if (read != 97) {
                            if (read == 114) {
                                return;
                            }
                        }
                    }
                    System.exit(-1);
                    return;
                } catch (IOException unused) {
                    return;
                }
            } while (read != 120);
            throw new AssertionError((Object) "user abort");
        }
    }

    public void rawError(int i10, String str) {
        PrintWriter printWriter = this.writers.get(WriterKind.ERROR);
        if (this.nerrors < this.MaxErrors && shouldReport(currentSourceFile(), i10)) {
            printRawDiag(printWriter, "error: ", i10, str);
            prompt();
            this.nerrors++;
        }
        printWriter.flush();
    }

    public void rawWarning(int i10, String str) {
        PrintWriter printWriter = this.writers.get(WriterKind.ERROR);
        if (this.nwarnings < this.MaxWarnings && this.emitWarnings) {
            printRawDiag(printWriter, "warning: ", i10, str);
        }
        prompt();
        this.nwarnings++;
        printWriter.flush();
    }

    @Override
    public void report(JCDiagnostic jCDiagnostic) {
        this.diagnosticHandler.report(jCDiagnostic);
    }

    public void setDiagnosticFormatter(DiagnosticFormatter<JCDiagnostic> diagnosticFormatter) {
        this.diagFormatter = diagnosticFormatter;
    }

    public void setEndPosTable(JavaFileObject javaFileObject, EndPosTable endPosTable) {
        Assert.checkNonNull(javaFileObject);
        getSource(javaFileObject).setEndPosTable(endPosTable);
    }

    public void setWriter(WriterKind writerKind, PrintWriter printWriter) {
        Assert.checkNonNull(printWriter);
        this.writers.put(writerKind, printWriter);
    }

    public void setWriters(PrintWriter printWriter) {
        Assert.checkNonNull(printWriter);
        for (WriterKind writerKind : WriterKind.values()) {
            this.writers.put(writerKind, printWriter);
        }
    }

    public boolean shouldReport(JavaFileObject javaFileObject, int i10) {
        if (javaFileObject == null) {
            return true;
        }
        Pair<JavaFileObject, Integer> pair = new Pair<>(javaFileObject, Integer.valueOf(i10));
        boolean contains = this.recorded.contains(pair);
        boolean z10 = !contains;
        if (!contains) {
            this.recorded.add(pair);
        }
        return z10;
    }

    public void strictWarning(JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, Object... objArr) {
        writeDiagnostic(this.diags.warning(null, this.source, diagnosticPosition, str, objArr));
        this.nwarnings++;
    }

    public void writeDiagnostic(JCDiagnostic jCDiagnostic) {
        int i10;
        DiagnosticListener<? super JavaFileObject> diagnosticListener = this.diagListener;
        if (diagnosticListener != null) {
            diagnosticListener.report(jCDiagnostic);
            return;
        }
        PrintWriter writerForDiagnosticType = getWriterForDiagnosticType(jCDiagnostic.getType());
        printRawLines(writerForDiagnosticType, this.diagFormatter.format(jCDiagnostic, this.messages.getCurrentLocale()));
        if (this.promptOnError && ((i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType[jCDiagnostic.getType().ordinal()]) == 3 || i10 == 4)) {
            prompt();
        }
        if (this.dumpOnError) {
            new RuntimeException().printStackTrace(writerForDiagnosticType);
        }
        writerForDiagnosticType.flush();
    }

    public Log(Context context, PrintWriter printWriter) {
        this(context, initWriters(printWriter, printWriter));
    }

    public String localize(JCDiagnostic.DiagnosticInfo diagnosticInfo) {
        if (useRawMessages) {
            return diagnosticInfo.key();
        }
        return this.messages.getLocalizedString(diagnosticInfo.key(), diagnosticInfo.args);
    }

    public Log(Context context, PrintWriter printWriter, PrintWriter printWriter2) {
        this(context, initWriters(printWriter, printWriter2));
    }

    public void flush(WriterKind writerKind) {
        getWriter(writerKind).flush();
    }

    public void printLines(PrefixKind prefixKind, String str, Object... objArr) {
        printRawLines(this.writers.get(WriterKind.NOTICE), localize(prefixKind, str, objArr));
    }

    public void printNewline(WriterKind writerKind) {
        getWriter(writerKind).println();
    }

    public void printRawLines(WriterKind writerKind, String str) {
        printRawLines(getWriter(writerKind), str);
    }

    @Deprecated
    public Log(Context context, PrintWriter printWriter, PrintWriter printWriter2, PrintWriter printWriter3) {
        this(context, initWriters(printWriter, printWriter2, printWriter3));
    }

    public static void printRawLines(PrintWriter printWriter, String str) {
        while (true) {
            int indexOf = str.indexOf(10);
            if (indexOf == -1) {
                break;
            }
            printWriter.println(str.substring(0, indexOf));
            str = str.substring(indexOf + 1);
        }
        if (str.length() != 0) {
            printWriter.println(str);
        }
    }

    public boolean shouldReport(JCDiagnostic jCDiagnostic) {
        JavaFileObject source = jCDiagnostic.getSource();
        if (source == null) {
            return true;
        }
        if (!shouldReport(source, jCDiagnostic.getIntPosition())) {
            return false;
        }
        if (!jCDiagnostic.isFlagSet(JCDiagnostic.DiagnosticFlag.SOURCE_LEVEL)) {
            return true;
        }
        Pair<JavaFileObject, String> pair = new Pair<>(source, jCDiagnostic.getCode());
        boolean contains = this.recordedSourceLevelErrors.contains(pair);
        boolean z10 = !contains;
        if (!contains) {
            this.recordedSourceLevelErrors.add(pair);
        }
        return z10;
    }

    private Log(Context context, Map<WriterKind, PrintWriter> map) {
        super(JCDiagnostic.Factory.instance(context));
        this.nerrors = 0;
        this.nwarnings = 0;
        this.recorded = new HashSet();
        this.recordedSourceLevelErrors = new HashSet();
        context.put((Context.Key<Context.Key<Log>>) logKey, (Context.Key<Log>) this);
        this.writers = map;
        this.diagListener = (DiagnosticListener) context.get(DiagnosticListener.class);
        this.diagnosticHandler = new DefaultDiagnosticHandler(this, null);
        JavacMessages instance = JavacMessages.instance(context);
        this.messages = instance;
        instance.add(Main.javacBundleName);
        final Options instance2 = Options.instance(context);
        lambda$new$1(instance2);
        instance2.addListener(new Runnable() {
            @Override
            public final void run() {
                Log.this.lambda$new$1(instance2);
            }
        });
    }

    public String localize(PrefixKind prefixKind, String str, Object... objArr) {
        if (useRawMessages) {
            return prefixKind.key(str);
        }
        return this.messages.getLocalizedString(prefixKind.key(str), objArr);
    }

    public void printLines(WriterKind writerKind, String str, Object... objArr) {
        printRawLines(getWriter(writerKind), localize(str, objArr));
    }

    public void printLines(WriterKind writerKind, PrefixKind prefixKind, String str, Object... objArr) {
        printRawLines(getWriter(writerKind), localize(prefixKind, str, objArr));
    }

    private static Map<WriterKind, PrintWriter> initWriters(PrintWriter printWriter, PrintWriter printWriter2) {
        EnumMap enumMap = new EnumMap(WriterKind.class);
        enumMap.put((EnumMap) WriterKind.ERROR, (WriterKind) printWriter2);
        enumMap.put((EnumMap) WriterKind.WARNING, (WriterKind) printWriter2);
        enumMap.put((EnumMap) WriterKind.NOTICE, (WriterKind) printWriter2);
        enumMap.put((EnumMap) WriterKind.STDOUT, (WriterKind) printWriter);
        enumMap.put((EnumMap) WriterKind.STDERR, (WriterKind) printWriter2);
        return enumMap;
    }

    @Deprecated
    private static Map<WriterKind, PrintWriter> initWriters(PrintWriter printWriter, PrintWriter printWriter2, PrintWriter printWriter3) {
        EnumMap enumMap = new EnumMap(WriterKind.class);
        enumMap.put((EnumMap) WriterKind.ERROR, (WriterKind) printWriter);
        enumMap.put((EnumMap) WriterKind.WARNING, (WriterKind) printWriter2);
        enumMap.put((EnumMap) WriterKind.NOTICE, (WriterKind) printWriter3);
        enumMap.put((EnumMap) WriterKind.STDOUT, (WriterKind) printWriter3);
        enumMap.put((EnumMap) WriterKind.STDERR, (WriterKind) printWriter);
        return enumMap;
    }
}
