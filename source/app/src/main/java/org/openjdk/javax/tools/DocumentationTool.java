package org.openjdk.javax.tools;

import java.io.Writer;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.concurrent.Callable;
import org.openjdk.javax.tools.JavaFileManager;

public interface DocumentationTool extends Tool, OptionChecker {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$javax$tools$DocumentationTool$Location;

        static {
            int[] iArr = new int[Location.values().length];
            $SwitchMap$javax$tools$DocumentationTool$Location = iArr;
            try {
                iArr[Location.DOCUMENTATION_OUTPUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public interface DocumentationTask extends Callable<Boolean> {
        void addModules(Iterable<String> iterable);

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        Boolean call();

        void setLocale(Locale locale);
    }

    public enum Location implements JavaFileManager.Location {
        DOCUMENTATION_OUTPUT,
        DOCLET_PATH,
        TAGLET_PATH;

        @Override
        public String getName() {
            return name();
        }

        @Override
        public boolean isOutputLocation() {
            return AnonymousClass1.$SwitchMap$javax$tools$DocumentationTool$Location[ordinal()] == 1;
        }
    }

    StandardJavaFileManager getStandardFileManager(DiagnosticListener<? super JavaFileObject> diagnosticListener, Locale locale, Charset charset);

    DocumentationTask getTask(Writer writer, JavaFileManager javaFileManager, DiagnosticListener<? super JavaFileObject> diagnosticListener, Class<?> cls, Iterable<String> iterable, Iterable<? extends JavaFileObject> iterable2);
}
