package org.openjdk.tools.javah;

import java.io.Writer;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.concurrent.Callable;
import org.openjdk.javax.tools.DiagnosticListener;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.OptionChecker;
import org.openjdk.javax.tools.StandardJavaFileManager;
import org.openjdk.javax.tools.Tool;

public interface NativeHeaderTool extends Tool, OptionChecker {

    public interface NativeHeaderTask extends Callable<Boolean> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        Boolean call();

        void setLocale(Locale locale);
    }

    StandardJavaFileManager getStandardFileManager(DiagnosticListener<? super JavaFileObject> diagnosticListener, Locale locale, Charset charset);

    NativeHeaderTask getTask(Writer writer, JavaFileManager javaFileManager, DiagnosticListener<? super JavaFileObject> diagnosticListener, Iterable<String> iterable, Iterable<String> iterable2);
}
