package org.openjdk.tools.javah;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Locale;
import java.util.Set;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.tools.DiagnosticListener;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardJavaFileManager;
import org.openjdk.tools.javah.JavahTask;
import org.openjdk.tools.javah.NativeHeaderTool;

public class JavahTool implements NativeHeaderTool {
    @Override
    public Set<SourceVersion> getSourceVersions() {
        return EnumSet.allOf(SourceVersion.class);
    }

    @Override
    public StandardJavaFileManager getStandardFileManager(DiagnosticListener<? super JavaFileObject> diagnosticListener, Locale locale, Charset charset) {
        return JavahTask.getDefaultFileManager(diagnosticListener, null);
    }

    @Override
    public NativeHeaderTool.NativeHeaderTask getTask(Writer writer, JavaFileManager javaFileManager, DiagnosticListener<? super JavaFileObject> diagnosticListener, Iterable<String> iterable, Iterable<String> iterable2) {
        return new JavahTask(writer, javaFileManager, diagnosticListener, iterable, iterable2);
    }

    @Override
    public int isSupportedOption(String str) {
        for (JavahTask.Option option : JavahTask.recognizedOptions) {
            if (option.matches(str)) {
                return option.hasArg ? 1 : 0;
            }
        }
        return -1;
    }

    @Override
    public int run(InputStream inputStream, OutputStream outputStream, OutputStream outputStream2, String... strArr) {
        return !new JavahTask(JavahTask.getPrintWriterForStream(outputStream), null, null, Arrays.asList(strArr), null).run() ? 1 : 0;
    }
}
