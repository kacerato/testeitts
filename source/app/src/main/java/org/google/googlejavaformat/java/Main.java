package org.google.googlejavaformat.java;

import D2.C2489g;
import b3.s;
import com.google.common.collect.e3;
import java.io.IOError;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.google.googlejavaformat.FormatterDiagnostic;
import org.google.googlejavaformat.java.JavaFormatterOptions;

public final class Main {
    private static final int MAX_THREADS = 20;
    private static final String STDIN_FILENAME = "<stdin>";
    private final PrintWriter errWriter;
    private final InputStream inStream;
    private final PrintWriter outWriter;

    public Main(PrintWriter outWriter, PrintWriter errWriter, InputStream inStream) {
        this.outWriter = outWriter;
        this.errWriter = errWriter;
        this.inStream = inStream;
    }

    private int formatFiles(CommandLineOptions parameters, JavaFormatterOptions options) {
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(Math.min(20, parameters.files().size()));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        e3<String> it = parameters.files().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next.endsWith(".java")) {
                Path path = Paths.get(next, new String[0]);
                try {
                    String str = new String(Files.readAllBytes(path), StandardCharsets.UTF_8);
                    linkedHashMap.put(path, str);
                    linkedHashMap2.put(path, newFixedThreadPool.submit(new FormatFileCallable(parameters, str, options)));
                } catch (IOException e10) {
                    this.errWriter.println(next + ": could not read file: " + e10.getMessage());
                    return 1;
                }
            } else {
                this.errWriter.println("Skipping non-Java file: " + next);
            }
        }
        Iterator it2 = linkedHashMap2.entrySet().iterator();
        int i10 = 1;
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            Path path2 = (Path) entry.getKey();
            try {
                String str2 = (String) ((Future) entry.getValue()).get();
                boolean equals = str2.equals(linkedHashMap.get(path2));
                if (!equals && parameters.setExitIfChanged()) {
                    i10 = 0;
                }
                if (parameters.inPlace()) {
                    if (!equals) {
                        try {
                            Files.write(path2, str2.getBytes(StandardCharsets.UTF_8), new OpenOption[0]);
                        } catch (IOException e11) {
                            this.errWriter.println(((Object) path2) + ": could not write file: " + e11.getMessage());
                            i10 = 0;
                        }
                    }
                } else if (!parameters.dryRun()) {
                    this.outWriter.write(str2);
                } else if (!equals) {
                    this.outWriter.println(path2);
                }
            } catch (InterruptedException e12) {
                this.errWriter.println(e12.getMessage());
            } catch (ExecutionException e13) {
                if (e13.getCause() instanceof FormatterException) {
                    for (FormatterDiagnostic formatterDiagnostic : ((FormatterException) e13.getCause()).diagnostics()) {
                        this.errWriter.println(((Object) path2) + s.f32937c + formatterDiagnostic.toString());
                    }
                } else {
                    this.errWriter.println(((Object) path2) + ": error: " + e13.getCause().getMessage());
                    e13.getCause().printStackTrace(this.errWriter);
                }
            }
        }
        return i10 ^ 1;
    }

    private int formatStdin(CommandLineOptions parameters, JavaFormatterOptions options) {
        try {
            String str = new String(C2489g.u(this.inStream), StandardCharsets.UTF_8);
            String orElse = parameters.assumeFilename().orElse(STDIN_FILENAME);
            int i10 = 0;
            try {
                String call = new FormatFileCallable(parameters, str, options).call();
                boolean equals = str.equals(call);
                int i11 = (equals || !parameters.setExitIfChanged()) ? 1 : 0;
                if (!parameters.dryRun()) {
                    this.outWriter.write(call);
                } else if (!equals) {
                    this.outWriter.println(orElse);
                }
                i10 = i11;
            } catch (FormatterException e10) {
                for (FormatterDiagnostic formatterDiagnostic : e10.diagnostics()) {
                    this.errWriter.println(orElse + s.f32937c + formatterDiagnostic.toString());
                }
            }
            return i10 ^ 1;
        } catch (IOException e11) {
            throw new IOError(e11);
        }
    }

    public static void main(String[] args) {
        int i10;
        PrintStream printStream = System.out;
        Charset charset = StandardCharsets.UTF_8;
        PrintWriter printWriter = new PrintWriter(new OutputStreamWriter(printStream, charset));
        PrintWriter printWriter2 = new PrintWriter(new OutputStreamWriter(System.err, charset));
        try {
            try {
                i10 = new Main(printWriter, printWriter2, System.f92798in).format(args);
            } catch (UsageException e10) {
                printWriter2.print(e10.getMessage());
                printWriter2.flush();
                printWriter.flush();
                i10 = 0;
            }
            System.exit(i10);
        } finally {
            printWriter2.flush();
            printWriter.flush();
        }
    }

    public static CommandLineOptions processArgs(String... args) throws UsageException {
        try {
            CommandLineOptions parse = CommandLineOptionsParser.parse(Arrays.asList(args));
            int size = parse.files().size();
            if (parse.stdin()) {
                size++;
            }
            if (parse.inPlace() && parse.files().isEmpty()) {
                throw new UsageException("in-place formatting was requested but no files were provided");
            }
            if (parse.isSelection() && size != 1) {
                throw new UsageException("partial formatting is only support for a single file");
            }
            if (parse.offsets().size() != parse.lengths().size()) {
                throw new UsageException("-offsets and -lengths flags must be provided in matching pairs");
            }
            if (size <= 0 && !parse.version() && !parse.help()) {
                throw new UsageException("no files were provided");
            }
            if (parse.stdin() && !parse.files().isEmpty()) {
                throw new UsageException("cannot format from standard input and files simultaneously");
            }
            if (parse.assumeFilename().isPresent() && !parse.stdin()) {
                throw new UsageException("--assume-filename is only supported when formatting standard input");
            }
            if (parse.dryRun() && parse.inPlace()) {
                throw new UsageException("cannot use --dry-run and --in-place at the same time");
            }
            return parse;
        } catch (IllegalArgumentException e10) {
            throw new UsageException(e10.getMessage());
        } catch (Throwable th2) {
            th2.printStackTrace();
            throw new UsageException(th2.getMessage());
        }
    }

    public static final String versionString() {
        return "google-java-format: Version " + GoogleJavaFormatVersion.version();
    }

    public int format(String... args) throws UsageException {
        CommandLineOptions processArgs = processArgs(args);
        if (processArgs.version()) {
            this.errWriter.println(versionString());
            return 0;
        }
        if (processArgs.help()) {
            throw new UsageException();
        }
        JavaFormatterOptions build = JavaFormatterOptions.builder().style(processArgs.aosp() ? JavaFormatterOptions.Style.AOSP : JavaFormatterOptions.Style.GOOGLE).build();
        return processArgs.stdin() ? formatStdin(processArgs, build) : formatFiles(processArgs, build);
    }
}
