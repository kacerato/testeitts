package org.openjdk.tools.javac.api;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.tools.DiagnosticListener;
import org.openjdk.javax.tools.JavaCompiler;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardJavaFileManager;
import org.openjdk.source.util.JavacTask;
import org.openjdk.tools.javac.Main;
import org.openjdk.tools.javac.file.CacheFSInfo;
import org.openjdk.tools.javac.file.JavacFileManager;
import org.openjdk.tools.javac.jvm.Target;
import org.openjdk.tools.javac.main.Arguments;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.util.ClientCodeException;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.PropagatedException;

public final class JavacTool implements JavaCompiler {
    @Deprecated
    public JavacTool() {
    }

    public static JavacTool create() {
        return new JavacTool();
    }

    @Override
    public Set<SourceVersion> getSourceVersions() {
        return Collections.unmodifiableSet(EnumSet.range(SourceVersion.RELEASE_3, SourceVersion.latest()));
    }

    @Override
    public StandardJavaFileManager getStandardFileManager(DiagnosticListener diagnosticListener, Locale locale, Charset charset) {
        return getStandardFileManager((DiagnosticListener<? super JavaFileObject>) diagnosticListener, locale, charset);
    }

    @Override
    public JavaCompiler.CompilationTask getTask(Writer writer, JavaFileManager javaFileManager, DiagnosticListener diagnosticListener, Iterable iterable, Iterable iterable2, Iterable iterable3) {
        return getTask(writer, javaFileManager, (DiagnosticListener<? super JavaFileObject>) diagnosticListener, (Iterable<String>) iterable, (Iterable<String>) iterable2, (Iterable<? extends JavaFileObject>) iterable3);
    }

    @Override
    public int isSupportedOption(String str) {
        for (Option option : Option.getJavacToolOptions()) {
            if (option.matches(str)) {
                return option.hasArg() ? 1 : 0;
            }
        }
        return -1;
    }

    @Override
    public String name() {
        return "javac";
    }

    @Override
    public int run(InputStream inputStream, OutputStream outputStream, OutputStream outputStream2, String... strArr) {
        if (outputStream2 == null) {
            outputStream2 = System.err;
        }
        for (String str : strArr) {
            Objects.requireNonNull(str);
        }
        return Main.compile(strArr, new PrintWriter(outputStream2, true));
    }

    @Override
    public JavacFileManager getStandardFileManager(DiagnosticListener<? super JavaFileObject> diagnosticListener, Locale locale, Charset charset) {
        Context context = new Context();
        context.put((Class<Class>) Locale.class, (Class) locale);
        if (diagnosticListener != null) {
            context.put((Class<Class>) DiagnosticListener.class, (Class) diagnosticListener);
        }
        context.put((Context.Key<Context.Key<PrintWriter>>) Log.errKey, (Context.Key<PrintWriter>) (charset == null ? new PrintWriter((OutputStream) System.err, true) : new PrintWriter((Writer) new OutputStreamWriter(System.err, charset), true)));
        CacheFSInfo.preRegister(context);
        return new JavacFileManager(context, true, charset);
    }

    @Override
    public JavacTask getTask(Writer writer, JavaFileManager javaFileManager, DiagnosticListener<? super JavaFileObject> diagnosticListener, Iterable<String> iterable, Iterable<String> iterable2, Iterable<? extends JavaFileObject> iterable3) {
        return getTask(writer, javaFileManager, diagnosticListener, iterable, iterable2, iterable3, new Context());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.openjdk.tools.javac.api.ClientCodeWrapper] */
    /* JADX WARN: Type inference failed for: r8v0, types: [org.openjdk.javax.tools.JavaFileManager] */
    /* JADX WARN: Type inference failed for: r8v2, types: [org.openjdk.javax.tools.JavaFileManager] */
    /* JADX WARN: Type inference failed for: r8v7, types: [org.openjdk.tools.javac.file.JavacFileManager, org.openjdk.tools.javac.file.BaseFileManager] */
    public JavacTask getTask(Writer writer, JavaFileManager javaFileManager, DiagnosticListener<? super JavaFileObject> diagnosticListener, Iterable<String> iterable, Iterable<String> iterable2, Iterable<? extends JavaFileObject> iterable3, Context context) {
        try {
            ?? instance = ClientCodeWrapper.instance(context);
            if (iterable != null) {
                Iterator<String> it = iterable.iterator();
                while (it.hasNext()) {
                    Objects.requireNonNull(it.next());
                }
            }
            if (iterable2 != null) {
                Iterator<String> it2 = iterable2.iterator();
                while (it2.hasNext()) {
                    String next = it2.next();
                    int indexOf = next.indexOf(47);
                    if (indexOf > 0) {
                        String substring = next.substring(0, indexOf);
                        if (SourceVersion.isName(substring)) {
                            next = next.substring(indexOf + 1);
                        } else {
                            throw new IllegalArgumentException("Not a valid module name: " + substring);
                        }
                    }
                    if (!SourceVersion.isName(next)) {
                        throw new IllegalArgumentException("Not a valid class name: " + next);
                    }
                }
            }
            if (iterable3 != null) {
                iterable3 = instance.wrapJavaFileObjects(iterable3);
                for (JavaFileObject javaFileObject : iterable3) {
                    if (javaFileObject.getKind() != JavaFileObject.Kind.SOURCE) {
                        throw new IllegalArgumentException("Compilation unit is not of SOURCE kind: \"" + javaFileObject.getName() + JavadocConstants.ANCHOR_PREFIX_END);
                    }
                }
            }
            if (diagnosticListener != null) {
                context.put((Class<Class>) DiagnosticListener.class, (Class) instance.wrap(diagnosticListener));
            }
            if (writer == null) {
                context.put((Context.Key<Context.Key<PrintWriter>>) Log.errKey, (Context.Key<PrintWriter>) new PrintWriter((OutputStream) System.err, true));
            } else {
                context.put((Context.Key<Context.Key<PrintWriter>>) Log.errKey, (Context.Key<PrintWriter>) new PrintWriter(writer, true));
            }
            if (javaFileManager == 0 && (javaFileManager = getStandardFileManager(diagnosticListener, (Locale) null, (Charset) null)) != 0) {
                javaFileManager.autoClose = true;
            }
            JavaFileManager wrap = instance.wrap(javaFileManager);
            context.put((Class<Class>) JavaFileManager.class, (Class) wrap);
            Arguments.instance(context).init("javac", iterable, iterable2, iterable3);
            Option option = Option.MULTIRELEASE;
            if (wrap.isSupportedOption(option.primaryName) == 1) {
                wrap.handleOption(option.primaryName, List.of(Target.instance(context).multiReleaseValue()).iterator());
            }
            return new JavacTaskImpl(context);
        } catch (ClientCodeException e10) {
            throw new RuntimeException(e10.getCause());
        } catch (PropagatedException e11) {
            throw e11.getCause();
        }
    }
}
