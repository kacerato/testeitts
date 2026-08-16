package org.openjdk.tools.javah;

import java.io.PrintWriter;
import java.nio.charset.Charset;
import org.openjdk.javax.tools.DiagnosticListener;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.file.JavacFileManager;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Log;

class JavahFileManager extends JavacFileManager {
    private JavahFileManager(Context context, Charset charset) {
        super(context, true, charset);
        setSymbolFileEnabled(false);
    }

    public static JavahFileManager create(DiagnosticListener<? super JavaFileObject> diagnosticListener, PrintWriter printWriter) {
        Context context = new Context();
        if (diagnosticListener != null) {
            context.put((Class<Class>) DiagnosticListener.class, (Class) diagnosticListener);
        }
        context.put((Context.Key<Context.Key<PrintWriter>>) Log.errKey, (Context.Key<PrintWriter>) printWriter);
        return new JavahFileManager(context, null);
    }
}
