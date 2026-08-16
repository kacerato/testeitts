package org.openjdk.tools.javah;

import java.io.PrintWriter;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.DiagnosticListener;
import org.openjdk.javax.tools.JavaFileObject;

public class Util {

    public DiagnosticListener<? super JavaFileObject> f103315dl;
    public PrintWriter log;

    private ResourceBundle f103316m;
    public boolean verbose = false;

    public static class Exit extends Error {
        private static final long serialVersionUID = 430820978114067221L;
        public final Throwable cause;
        public final int exitValue;

        public Exit(int i10) {
            this(i10, null);
        }

        public Exit(int i10, Throwable th2) {
            super(th2);
            this.exitValue = i10;
            this.cause = th2;
        }

        public Exit(Exit exit) {
            this(exit.exitValue, exit.cause);
        }
    }

    public Util(PrintWriter printWriter, DiagnosticListener<? super JavaFileObject> diagnosticListener) {
        this.log = printWriter;
        this.f103315dl = diagnosticListener;
    }

    private Diagnostic<JavaFileObject> createDiagnostic(final Diagnostic.Kind kind, final String str, final Object... objArr) {
        return new Diagnostic<JavaFileObject>() {
            @Override
            public String getCode() {
                return str;
            }

            @Override
            public long getColumnNumber() {
                return -1L;
            }

            @Override
            public long getEndPosition() {
                return -1L;
            }

            @Override
            public Diagnostic.Kind getKind() {
                return kind;
            }

            @Override
            public long getLineNumber() {
                return -1L;
            }

            @Override
            public String getMessage(Locale locale) {
                return str.length() == 0 ? (String) objArr[0] : Util.this.getText(str, objArr);
            }

            @Override
            public long getPosition() {
                return -1L;
            }

            @Override
            public JavaFileObject getSource() {
                return null;
            }

            @Override
            public long getStartPosition() {
                return -1L;
            }
        };
    }

    private void fatal(String str, Exception exc) throws Exit {
        this.f103315dl.report(createDiagnostic(Diagnostic.Kind.ERROR, "", str));
        throw new Exit(10, exc);
    }

    public String getText(String str, Object... objArr) throws Exit {
        if (this.f103316m == null) {
            initMessages();
        }
        try {
            return MessageFormat.format(this.f103316m.getString(str), objArr);
        } catch (MissingResourceException e10) {
            fatal("Key " + str + " not found in resources.", e10);
            return null;
        }
    }

    private void initMessages() throws Exit {
        try {
            this.f103316m = ResourceBundle.getBundle("org.openjdk.tools.javah.resources.l10n");
        } catch (MissingResourceException e10) {
            fatal("Error loading resources.  Please file a bug report.", e10);
        }
    }

    public void bug(String str) throws Exit {
        bug(str, null);
    }

    public void error(String str, Object... objArr) throws Exit {
        this.f103315dl.report(createDiagnostic(Diagnostic.Kind.ERROR, str, objArr));
        throw new Exit(15);
    }

    public void log(String str) {
        this.log.println(str);
    }

    public void bug(String str, Exception exc) throws Exit {
        this.f103315dl.report(createDiagnostic(Diagnostic.Kind.ERROR, str, new Object[0]));
        this.f103315dl.report(createDiagnostic(Diagnostic.Kind.NOTE, "bug.report", new Object[0]));
        throw new Exit(11, exc);
    }
}
