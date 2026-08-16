package org.openjdk.tools.javac.main;

import android.security.keystore.KeyProperties;
import com.bumptech.glide.load.engine.GlideException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.nio.file.NoSuchFileException;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Set;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.tools.javac.api.BasicJavacTask;
import org.openjdk.tools.javac.file.BaseFileManager;
import org.openjdk.tools.javac.file.CacheFSInfo;
import org.openjdk.tools.javac.file.JavacFileManager;
import org.openjdk.tools.javac.jvm.Target;
import org.openjdk.tools.javac.main.CommandLine;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.main.OptionHelper;
import org.openjdk.tools.javac.platform.PlatformDescription;
import org.openjdk.tools.javac.processing.AnnotationProcessingError;
import org.openjdk.tools.javac.util.ClientCodeException;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Dependencies;
import org.openjdk.tools.javac.util.FatalError;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Options;
import org.openjdk.tools.javac.util.PropagatedException;

public class Main {
    private static final String ENV_OPT_NAME = "JDK_JAVAC_OPTIONS";
    public static final String javacBundleName = "org.openjdk.tools.javac.resources.javac";
    boolean apiMode;
    private JavaFileManager fileManager;
    public Log log;
    String ownName;
    PrintWriter stdErr;
    PrintWriter stdOut;

    public enum Result {
        OK(0),
        ERROR(1),
        CMDERR(2),
        SYSERR(3),
        ABNORMAL(4);

        public final int exitCode;

        Result(int i10) {
            this.exitCode = i10;
        }

        public boolean isOK() {
            return this.exitCode == 0;
        }
    }

    public Main(String str) {
        this.ownName = str;
    }

    public void apMessage(AnnotationProcessingError annotationProcessingError) {
        this.log.printLines(Log.PrefixKind.JAVAC, "msg.proc.annotation.uncaught.exception", new Object[0]);
        annotationProcessingError.getCause().printStackTrace(this.log.getWriter(Log.WriterKind.NOTICE));
    }

    public void bugMessage(Throwable th2) {
        this.log.printLines(Log.PrefixKind.JAVAC, "msg.bug", JavaCompiler.version());
        th2.printStackTrace(this.log.getWriter(Log.WriterKind.NOTICE));
    }

    public Result compile(String[] strArr) {
        Context context = new Context();
        JavacFileManager.preRegister(context);
        Result compile = compile(strArr, context);
        JavaFileManager javaFileManager = this.fileManager;
        if (javaFileManager instanceof JavacFileManager) {
            try {
                ((JavacFileManager) javaFileManager).close();
            } catch (IOException e10) {
                bugMessage(e10);
            }
        }
        return compile;
    }

    public void error(String str, Object... objArr) {
        if (this.apiMode) {
            throw new PropagatedException(new IllegalStateException(this.log.localize(Log.PrefixKind.JAVAC, str, objArr)));
        }
        warning(str, objArr);
        this.log.printLines(Log.PrefixKind.JAVAC, "msg.usage", this.ownName);
    }

    public void feMessage(Throwable th2, Options options) {
        this.log.printRawLines(th2.getMessage());
        if (th2.getCause() == null || !options.isSet("dev")) {
            return;
        }
        th2.getCause().printStackTrace(this.log.getWriter(Log.WriterKind.NOTICE));
    }

    public void ioMessage(Throwable th2) {
        this.log.printLines(Log.PrefixKind.JAVAC, "msg.io", new Object[0]);
        th2.printStackTrace(this.log.getWriter(Log.WriterKind.NOTICE));
    }

    public void pluginMessage(Throwable th2) {
        this.log.printLines(Log.PrefixKind.JAVAC, "msg.plugin.uncaught.exception", new Object[0]);
        th2.printStackTrace(this.log.getWriter(Log.WriterKind.NOTICE));
    }

    public void resourceMessage(Throwable th2) {
        this.log.printLines(Log.PrefixKind.JAVAC, "msg.resource", new Object[0]);
        th2.printStackTrace(this.log.getWriter(Log.WriterKind.NOTICE));
    }

    public void showClass(String str) {
        PrintWriter writer = this.log.getWriter(Log.WriterKind.NOTICE);
        writer.println("javac: show class: " + str);
        URL resource = getClass().getResource('/' + str.replace('.', '/') + ".class");
        if (resource != null) {
            writer.println(GlideException.a.f59088e + ((Object) resource));
        }
        try {
            InputStream resourceAsStream = getClass().getResourceAsStream('/' + str.replace('.', '/') + ".class");
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(KeyProperties.DIGEST_MD5);
                DigestInputStream digestInputStream = new DigestInputStream(resourceAsStream, messageDigest);
                try {
                    do {
                    } while (digestInputStream.read(new byte[8192]) > 0);
                    byte[] digest = messageDigest.digest();
                    digestInputStream.close();
                    StringBuilder sb2 = new StringBuilder();
                    for (byte b10 : digest) {
                        sb2.append(String.format("%02x", Byte.valueOf(b10)));
                    }
                    writer.println("  MD5 checksum: " + ((Object) sb2));
                    if (resourceAsStream != null) {
                        resourceAsStream.close();
                    }
                } finally {
                }
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    if (resourceAsStream != null) {
                        try {
                            resourceAsStream.close();
                        } catch (Throwable th4) {
                            th2.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            }
        } catch (IOException | NoSuchAlgorithmException e10) {
            writer.println("  cannot compute digest: " + e10);
        }
    }

    public void warning(String str, Object... objArr) {
        this.log.printRawLines(this.ownName + ": " + this.log.localize(Log.PrefixKind.JAVAC, str, objArr));
    }

    public Main(String str, PrintWriter printWriter) {
        this.ownName = str;
        this.stdErr = printWriter;
        this.stdOut = printWriter;
    }

    public Main(String str, PrintWriter printWriter, PrintWriter printWriter2) {
        this.ownName = str;
        this.stdOut = printWriter;
        this.stdErr = printWriter2;
    }

    /* JADX WARN: Removed duplicated region for block: B:136:0x01d9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0223 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Result compile(String[] strArr, Context context) {
        boolean z10;
        PrintWriter printWriter = this.stdOut;
        if (printWriter != null) {
            context.put((Context.Key<Context.Key<PrintWriter>>) Log.outKey, (Context.Key<PrintWriter>) printWriter);
        }
        PrintWriter printWriter2 = this.stdErr;
        if (printWriter2 != null) {
            context.put((Context.Key<Context.Key<PrintWriter>>) Log.errKey, (Context.Key<PrintWriter>) printWriter2);
        }
        Log instance = Log.instance(context);
        this.log = instance;
        if (strArr.length == 0) {
            try {
                Option.HELP.process(new OptionHelper.GrumpyHelper(instance) {
                    @Override
                    public String getOwnName() {
                        return Main.this.ownName;
                    }

                    @Override
                    public void put(String str, String str2) {
                    }
                }, "-help");
            } catch (Option.InvalidValueException unused) {
            }
            return Result.CMDERR;
        }
        try {
            String[] parse = CommandLine.parse(ENV_OPT_NAME, strArr);
            Arguments instance2 = Arguments.instance(context);
            instance2.init(this.ownName, parse);
            if (this.log.nerrors > 0) {
                return Result.CMDERR;
            }
            Options instance3 = Options.instance(context);
            if (instance3.isSet("stdout")) {
                this.log.flush();
                this.log.setWriters(new PrintWriter((OutputStream) System.out, true));
            }
            if (instance3.isUnset("nonBatchMode") && System.getProperty("nonBatchMode") == null) {
                CacheFSInfo.preRegister(context);
            }
            JavaFileManager javaFileManager = (JavaFileManager) context.get(JavaFileManager.class);
            this.fileManager = javaFileManager;
            if (javaFileManager instanceof BaseFileManager) {
                ((BaseFileManager) javaFileManager).setContext(context);
                z10 = ((BaseFileManager) this.fileManager).handleOptions(instance2.getDeferredFileManagerOptions());
            } else {
                z10 = true;
            }
            String str = instance3.get("showClass");
            if (str != null) {
                if (str.equals("showClass")) {
                    str = "org.openjdk.tools.javac.Main";
                }
                showClass(str);
            }
            if ((z10 & instance2.validate()) && this.log.nerrors <= 0) {
                if (instance2.isEmpty()) {
                    return Result.OK;
                }
                if (instance3.isSet("debug.completionDeps")) {
                    Dependencies.GraphDependencies.preRegister(context);
                }
                Set<List<String>> pluginOpts = instance2.getPluginOpts();
                if (!pluginOpts.isEmpty() || context.get(PlatformDescription.class) != null) {
                    ((BasicJavacTask) BasicJavacTask.instance(context)).initPlugins(pluginOpts);
                }
                JavaFileManager javaFileManager2 = this.fileManager;
                Option option = Option.MULTIRELEASE;
                if (javaFileManager2.isSupportedOption(option.primaryName) == 1) {
                    this.fileManager.handleOption(option.primaryName, List.of(Target.instance(context).multiReleaseValue()).iterator());
                }
                JavaCompiler instance4 = JavaCompiler.instance(context);
                List<String> docLintOpts = instance2.getDocLintOpts();
                if (!docLintOpts.isEmpty()) {
                    ((BasicJavacTask) BasicJavacTask.instance(context)).initDocLint(docLintOpts);
                }
                if (instance3.get(Option.XSTDOUT) != null) {
                    instance4.closeables = instance4.closeables.prepend(this.log.getWriter(Log.WriterKind.NOTICE));
                }
                try {
                    try {
                        try {
                            try {
                                instance4.compile(instance2.getFileObjects(), instance2.getClassNames(), null, List.nil());
                                Set<String> set = this.log.expectDiagKeys;
                                if (set != null) {
                                    if (set.isEmpty()) {
                                        this.log.printRawLines("all expected diagnostics found");
                                        Result result = Result.OK;
                                        try {
                                            instance4.close();
                                            return result;
                                        } catch (ClientCodeException e10) {
                                            throw new RuntimeException(e10.getCause());
                                        }
                                    }
                                    this.log.printRawLines("expected diagnostic keys not found: " + ((Object) this.log.expectDiagKeys));
                                    Result result2 = Result.ERROR;
                                    try {
                                        instance4.close();
                                        return result2;
                                    } catch (ClientCodeException e11) {
                                        throw new RuntimeException(e11.getCause());
                                    }
                                }
                                Result result3 = instance4.errorCount() == 0 ? Result.OK : Result.ERROR;
                                try {
                                    instance4.close();
                                    return result3;
                                } catch (ClientCodeException e12) {
                                    throw new RuntimeException(e12.getCause());
                                }
                            } catch (Throwable th2) {
                                if (instance4 != null) {
                                    try {
                                        instance4.close();
                                    } catch (ClientCodeException e13) {
                                        throw new RuntimeException(e13.getCause());
                                    }
                                }
                                throw th2;
                            }
                        } catch (AnnotationProcessingError e14) {
                            apMessage(e14);
                            Result result4 = Result.SYSERR;
                            if (instance4 != null) {
                                try {
                                    instance4.close();
                                } catch (ClientCodeException e15) {
                                    throw new RuntimeException(e15.getCause());
                                }
                            }
                            return result4;
                        }
                    } catch (FatalError e16) {
                        feMessage(e16, instance3);
                        Result result5 = Result.SYSERR;
                        if (instance4 != null) {
                            try {
                                instance4.close();
                            } catch (ClientCodeException e17) {
                                throw new RuntimeException(e17.getCause());
                            }
                        }
                        return result5;
                    } catch (Throwable th3) {
                        if (instance4 != null) {
                            if (instance4.errorCount() != 0) {
                                if (instance3.isSet("dev")) {
                                }
                                Result result6 = Result.ABNORMAL;
                                if (instance4 != null) {
                                    try {
                                        instance4.close();
                                    } catch (ClientCodeException e18) {
                                        throw new RuntimeException(e18.getCause());
                                    }
                                }
                                return result6;
                            }
                        }
                        bugMessage(th3);
                        Result result62 = Result.ABNORMAL;
                        if (instance4 != null) {
                        }
                        return result62;
                    }
                } catch (OutOfMemoryError e19) {
                    e = e19;
                    resourceMessage(e);
                    Result result7 = Result.SYSERR;
                    if (instance4 != null) {
                        try {
                            instance4.close();
                        } catch (ClientCodeException e20) {
                            throw new RuntimeException(e20.getCause());
                        }
                    }
                    return result7;
                } catch (StackOverflowError e21) {
                    e = e21;
                    resourceMessage(e);
                    Result result72 = Result.SYSERR;
                    if (instance4 != null) {
                    }
                    return result72;
                } catch (PropagatedException e22) {
                    throw e22.getCause();
                }
            }
            return Result.CMDERR;
        } catch (FileNotFoundException e23) {
            e = e23;
            warning("err.file.not.found", e.getMessage());
            return Result.SYSERR;
        } catch (NoSuchFileException e24) {
            e = e24;
            warning("err.file.not.found", e.getMessage());
            return Result.SYSERR;
        } catch (IOException e25) {
            this.log.printLines(Log.PrefixKind.JAVAC, "msg.io", new Object[0]);
            e25.printStackTrace(this.log.getWriter(Log.WriterKind.NOTICE));
            return Result.SYSERR;
        } catch (CommandLine.UnmatchedQuote e26) {
            error("err.unmatched.quote", e26.variableName);
            return Result.CMDERR;
        }
    }
}
