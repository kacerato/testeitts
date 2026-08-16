package com.android.tools.r8.retrace;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.ParseFlagInfo;
import com.android.tools.r8.ParseFlagPrinter;
import com.android.tools.r8.Version;
import com.android.tools.r8.Y;
import com.android.tools.r8.internal.AbstractC10532z40;
import com.android.tools.r8.internal.AbstractC5451Kj0;
import com.android.tools.r8.internal.AbstractC7109ec;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.C10365y40;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C5335Ij0;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.C7979jo0;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC7495gt0;
import com.android.tools.r8.retrace.RetraceCommand;
import com.android.tools.r8.retrace.StackTraceElementProxy;
import com.android.tools.r8.utils.C11672t;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;
import java.util.function.Consumer;

public class Retrace<T, ST extends StackTraceElementProxy<T, ST>> extends AbstractC5451Kj0 {

    private static final String f56277f = C10656zq0.b("Usage: retrace [options] <proguard-map> [stack-trace-file] where <proguard-map> is a generated mapping file and options are:");

    static final boolean f56278g = true;

    private final MappingSupplier f56279d;

    private final DiagnosticsHandler f56280e;

    public static class Builder<T, ST extends StackTraceElementProxy<T, ST>> extends RetraceBuilderBase<Builder<T, ST>, T, ST> {

        private MappingSupplier f56281a;

        public Retrace<T, ST> build() {
            return new Retrace<>(this.stackTraceLineParser, this.f56281a, this.diagnosticsHandler, this.isVerbose);
        }

        @Override
        public Builder<T, ST> self() {
            return this;
        }

        public Builder<T, ST> setMappingSupplier(MappingSupplier<?> mappingSupplier) {
            this.f56281a = mappingSupplier;
            return this;
        }
    }

    public Retrace(StackTraceLineParser<T, ST> stackTraceLineParser, MappingSupplier<?> mappingSupplier, DiagnosticsHandler diagnosticsHandler, boolean z10) {
        super(stackTraceLineParser, mappingSupplier, diagnosticsHandler, z10);
        this.f56279d = mappingSupplier;
        this.f56280e = diagnosticsHandler;
    }

    public static String a() {
        StringBuilder sb2 = new StringBuilder();
        C10656zq0.a(sb2, f56277f);
        new ParseFlagPrinter().addFlags(getFlags()).appendLinesToBuilder(sb2);
        return sb2.toString();
    }

    public static <T, ST extends StackTraceElementProxy<T, ST>> Builder<T, ST> builder() {
        return new Builder<>();
    }

    public static List<ParseFlagInfo> getFlags() {
        int i10 = AbstractC7552hC.f48487c;
        C7051eC a10 = new C7051eC().a(Y.a("--regex", Collections.singletonList("<regexp>"), Arrays.asList("Regular expression for parsing stack-trace-file as lines")));
        List list = Collections.EMPTY_LIST;
        return a10.a(Y.a("--verbose", list, Arrays.asList("Get verbose retraced output"))).a(Y.a("--info", list, Arrays.asList("Write information messages to stdout"))).a(Y.a("--quiet", list, Arrays.asList("Silence ordinary messages printed to stdout"))).a(Y.a("--verify-mapping-file-hash", list, Arrays.asList("Verify the mapping file hash"))).a(Y.c()).a();
    }

    public static void main(final String... strArr) {
        try {
            new InterfaceC11097g() {
                @Override
                public final void run() {
                    Retrace.run(strArr);
                }
            }.run();
        } catch (C5335Ij0 e10) {
            e = e10;
            throw new RuntimeException("Retrace failed", e);
        } catch (RetraceFailedException e11) {
            e = e11;
            throw new RuntimeException("Retrace failed", e);
        } catch (Throwable th2) {
            throw new RuntimeException("Retrace failed with an internal error.", th2);
        }
    }

    public static void run(RetraceCommand retraceCommand) {
        try {
            C8659ns0 c8659ns0 = new C8659ns0("R8 retrace", retraceCommand.printMemory());
            RetraceOptions options = retraceCommand.getOptions();
            MappingSupplier<?> mappingSupplier = options.getMappingSupplier();
            if (retraceCommand.getOptions().isVerifyMappingFileHash()) {
                mappingSupplier.verifyMappingFileHash(options.getDiagnosticsHandler());
                return;
            }
            final DiagnosticsHandler diagnosticsHandler = options.getDiagnosticsHandler();
            C7979jo0 c7979jo0 = new C7979jo0(options.getRegularExpression());
            StackTraceSupplier stacktraceSupplier = retraceCommand.getStacktraceSupplier();
            RetraceStackTraceContext empty = RetraceStackTraceContext.empty();
            int i10 = 0;
            while (true) {
                List<String> list = stacktraceSupplier.get();
                if (list != null) {
                    c8659ns0.b("Parsing");
                    ArrayList arrayList = new ArrayList();
                    for (String str : list) {
                        if (str != null) {
                            arrayList.add(c7979jo0.parse(str));
                            i10++;
                        } else {
                            diagnosticsHandler.error(RetraceInvalidStackTraceLineDiagnostics.createNull(i10));
                            throw new C5335Ij0();
                        }
                    }
                    c8659ns0.d();
                    c8659ns0.b("Read proguard map");
                    StringRetrace stringRetrace = new StringRetrace(c7979jo0, mappingSupplier, diagnosticsHandler, options.isVerbose());
                    c8659ns0.d();
                    c8659ns0.b("Retracing");
                    RetraceStackFrameResultWithContext<String> retraceParsed = stringRetrace.retraceParsed(arrayList, empty);
                    c8659ns0.d();
                    c8659ns0.b("Report result");
                    RetraceStackTraceContext context = retraceParsed.getContext();
                    if (!retraceParsed.isEmpty() || list.isEmpty()) {
                        retraceCommand.getRetracedStackTraceConsumer().accept(retraceParsed.getResult());
                    }
                    c8659ns0.d();
                    empty = context;
                } else {
                    if (retraceCommand.printTimes()) {
                        c8659ns0.e();
                    }
                    mappingSupplier.getMapVersions(diagnosticsHandler).forEach(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            Retrace.a(DiagnosticsHandler.this, (com.android.tools.r8.naming.mappinginformation.b) obj);
                        }
                    });
                    mappingSupplier.finished(diagnosticsHandler);
                    return;
                }
            }
        } catch (InvalidMappingFileException e10) {
            retraceCommand.getOptions().getDiagnosticsHandler().error(new ExceptionDiagnostic(e10));
            throw e10;
        }
    }

    public RetraceStackFrameAmbiguousResultWithContext<T> retraceFrame(T t10, RetraceStackTraceContext retraceStackTraceContext) {
        StackTraceElementProxy<Object, Object> parse = parse(t10);
        registerUses(parse);
        return (RetraceStackFrameAmbiguousResultWithContext<T>) retraceFrameWithRetracer(this.f56279d.createRetracer(this.f56280e), parse, retraceStackTraceContext);
    }

    public RetraceStackFrameResultWithContext<T> retraceLine(T t10, RetraceStackTraceContext retraceStackTraceContext) {
        StackTraceElementProxy<Object, Object> parse = parse(t10);
        registerUses(parse);
        return (RetraceStackFrameResultWithContext<T>) retraceLineWithRetracer(this.f56279d.createRetracer(this.f56280e), parse, retraceStackTraceContext);
    }

    public RetraceStackTraceResult<T> retraceStackTrace(List<T> list, RetraceStackTraceContext retraceStackTraceContext) {
        return retraceStackTraceParsed(parse((List<Object>) list), retraceStackTraceContext);
    }

    public RetraceStackTraceResult<T> retraceStackTraceParsed(List<ST> list, RetraceStackTraceContext retraceStackTraceContext) {
        registerUses(list);
        return (RetraceStackTraceResult<T>) retraceStackTraceParsedWithRetracer(this.f56279d.createRetracer(this.f56280e), list, retraceStackTraceContext);
    }

    private static void a(String[] strArr, final C11098h c11098h) {
        C10365y40 c10365y40 = new C10365y40(strArr);
        RetraceCommand.Builder builder = RetraceCommand.builder(c11098h);
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        while (c10365y40.a() != null) {
            if (AbstractC10532z40.a(c10365y40, "--help") != null || AbstractC10532z40.a(c10365y40, "--version") != null) {
                builder = null;
                break;
            }
            if (AbstractC10532z40.a(c10365y40, "--info") == null) {
                if (AbstractC10532z40.a(c10365y40, "--verbose") != null) {
                    builder.setVerbose(true);
                } else if (AbstractC10532z40.a(c10365y40, "--quiet") != null) {
                    z12 = true;
                } else {
                    String a10 = AbstractC10532z40.a(c10365y40, "--regex", "--r");
                    if (a10 != null && !a10.isEmpty()) {
                        builder.setRegularExpression(a10);
                    } else {
                        if (AbstractC10532z40.a(c10365y40, "--verify-mapping-file-hash") != null) {
                            builder.setVerifyMappingFileHash(true);
                        } else {
                            String a11 = AbstractC10532z40.a(c10365y40, "--partition-map", "--p");
                            if (a11 != null && !a11.isEmpty()) {
                                Path path = Paths.get(a11, new String[0]);
                                if (Files.exists(path, new LinkOption[0])) {
                                    try {
                                        builder.setMappingSupplier(C11672t.a(path));
                                    } catch (Exception e10) {
                                        c11098h.f56320a.error(new ExceptionDiagnostic(e10));
                                        throw new C5335Ij0();
                                    }
                                } else {
                                    c11098h.f56320a.error(new StringDiagnostic("Could not find mapping file '" + a11 + "'."));
                                    throw new C5335Ij0();
                                }
                            } else if (!z10) {
                                String a12 = c10365y40.a();
                                if (Files.exists(Paths.get(a12, new String[0]), new LinkOption[0])) {
                                    builder.setMappingSupplier(ProguardMappingSupplier.builder().setProguardMapProducer(ProguardMapProducer.fromPath(Paths.get(a12, new String[0]))).setAllowExperimental(System.getProperty("com.android.tools.r8.experimentalmapping") != null).setLoadAllDefinitions(false).build());
                                    c10365y40.b();
                                } else {
                                    c11098h.f56320a.error(new StringDiagnostic("Could not find mapping file '" + a12 + "'."));
                                    throw new C5335Ij0();
                                }
                            } else if (!z11) {
                                try {
                                    builder.setStackTrace(Files.readAllLines(Paths.get(c10365y40.a(), new String[0]), AbstractC7109ec.f47726a));
                                    c10365y40.b();
                                } catch (IOException e11) {
                                    c11098h.f56320a.error(new ExceptionDiagnostic(e11));
                                    throw new C5335Ij0();
                                }
                            } else {
                                c11098h.f56320a.error(new StringDiagnostic("Too many arguments specified for builder at '" + c10365y40.a() + "'"));
                                c11098h.f56320a.error(new StringDiagnostic(a()));
                                throw new C5335Ij0();
                            }
                            z10 = true;
                        }
                        z11 = true;
                    }
                }
            }
        }
        if (!z10) {
            c11098h.f56320a.error(new StringDiagnostic("Mapping file not specified"));
            throw new C5335Ij0();
        }
        if (!z11) {
            if (!z12) {
                System.out.println("Waiting for stack-trace input...");
            }
            Scanner scanner = new Scanner(new InputStreamReader(System.f92798in, AbstractC7109ec.f47726a));
            ArrayList arrayList = new ArrayList();
            while (scanner.hasNext()) {
                arrayList.add(scanner.nextLine());
            }
            builder.setStackTrace(arrayList);
        }
        if (builder == null) {
            if (Arrays.asList(strArr).contains("--version")) {
                System.out.println("Retrace " + Version.getVersionString());
                return;
            }
            if (!f56278g && !Arrays.asList(strArr).contains("--help")) {
                throw new AssertionError();
            }
            PrintStream printStream = System.out;
            printStream.println("Retrace " + Version.getVersionString());
            printStream.print(a());
            return;
        }
        builder.setRetracedStackTraceConsumer(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Retrace.a(DiagnosticsHandler.this, (List) obj);
            }
        });
        run(builder.build());
    }

    public static void run(String[] strArr) throws RetraceFailedException {
        String[] strArr2 = new String[strArr.length];
        boolean z10 = false;
        for (int i10 = 0; i10 < strArr.length; i10++) {
            String str = strArr[i10];
            if (str != null && str.length() >= 2) {
                if (str.charAt(0) == '-' && str.charAt(1) != '-') {
                    strArr2[i10] = "-" + str;
                } else {
                    strArr2[i10] = str;
                }
                if (strArr2[i10].equals("--info")) {
                    z10 = true;
                }
            } else {
                strArr2[i10] = str;
            }
        }
        C11098h c11098h = new C11098h(new C11096f(), z10);
        try {
            a(strArr2, c11098h);
        } catch (Throwable th2) {
            throw ((RetraceFailedException) AbstractC8333lv.a(c11098h, th2, new InterfaceC7495gt0() {
                @Override
                public final Object a(Object obj, Object obj2, Object obj3) {
                    RetraceFailedException a10;
                    a10 = Retrace.a((String) obj, (Throwable) obj2, (Boolean) obj3);
                    return a10;
                }
            }, C5335Ij0.class));
        }
    }

    public static void a(DiagnosticsHandler diagnosticsHandler, com.android.tools.r8.naming.mappinginformation.b bVar) {
        if (bVar.s().isUnknown()) {
            diagnosticsHandler.warning(RetraceUnknownMapVersionDiagnostic.create(bVar.f56012b));
        }
    }

    public static RetraceFailedException a(String str, Throwable th2, Boolean bool) {
        return new RetraceFailedException(str, th2);
    }

    public static void a(DiagnosticsHandler diagnosticsHandler, List list) {
        try {
            PrintStream printStream = new PrintStream(System.out, true, AbstractC7109ec.f47726a.name());
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    printStream.println((String) it.next());
                }
                printStream.close();
            } catch (Throwable th2) {
                try {
                    printStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (UnsupportedEncodingException e10) {
            diagnosticsHandler.error(new StringDiagnostic(e10.getMessage()));
        }
    }
}
