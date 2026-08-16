package org.eclipse.jdt.core.index;

import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.text.MessageFormat;
import java.util.ArrayList;
import org.eclipse.equinox.app.IApplication;
import org.eclipse.equinox.app.IApplicationContext;
import org.eclipse.osgi.util.NLS;

public class JavaIndexerApplication implements IApplication {
    private static final String ARG_HELP = "-help";
    private static final String ARG_OUTPUT = "-output";
    private static final String ARG_VERBOSE = "-verbose";
    private static final String PDE_LAUNCH = "-pdelaunch";
    private String indexFile;
    private String jarToIndex;
    private boolean verbose = false;

    public static final class Messages extends NLS {
        public static String CaughtException = null;
        public static String CommandLineIndexFileNotSpecified = null;
        public static String CommandLineJarFileNotExist = null;
        public static String CommandLineJarNotSpecified = null;
        public static String CommandLineOnlyOneJarError = null;
        public static String CommandLineOnlyOneOutputError = null;
        public static String CommandLineOutputTakesArgs = null;
        public static String CommandLineProcessing = null;
        public static String CommandLineUsage = null;
        private static final String MESSAGES_NAME = "org.eclipse.jdt.core.index.messages";

        static {
            NLS.initializeMessages(MESSAGES_NAME, Messages.class);
        }

        private Messages() {
        }

        public static String bind(String str) {
            return bind(str, (Object[]) null);
        }

        public static String bind(String str, Object obj) {
            return bind(str, new Object[]{obj});
        }

        public static String bind(String str, Object obj, Object obj2) {
            return bind(str, new Object[]{obj, obj2});
        }

        public static String bind(String str, Object[] objArr) {
            return MessageFormat.format(str, objArr);
        }
    }

    private void displayError(String str) {
        PrintStream printStream = System.out;
        printStream.println(str);
        printStream.println();
        displayHelp();
    }

    private void displayHelp() {
        System.out.println(Messages.bind(Messages.CommandLineUsage));
    }

    private boolean processCommandLine(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(str);
        }
        int length = strArr.length;
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1;
            String str2 = strArr[i10];
            if (!PDE_LAUNCH.equals(str2)) {
                if (ARG_HELP.equals(str2)) {
                    displayHelp();
                    return false;
                }
                if (ARG_VERBOSE.equals(str2)) {
                    this.verbose = true;
                } else if (ARG_OUTPUT.equals(str2)) {
                    if (this.indexFile != null) {
                        displayError(Messages.bind(Messages.CommandLineOnlyOneOutputError));
                        return false;
                    }
                    if (i11 == length) {
                        displayError(Messages.bind(Messages.CommandLineOutputTakesArgs));
                        return false;
                    }
                    i10 += 2;
                    this.indexFile = strArr[i11];
                } else {
                    if (this.jarToIndex != null) {
                        displayError(Messages.bind(Messages.CommandLineOnlyOneJarError));
                        return false;
                    }
                    this.jarToIndex = str2;
                }
            }
            i10 = i11;
        }
        return true;
    }

    public Object start(IApplicationContext iApplicationContext) throws Exception {
        if (processCommandLine((String[]) iApplicationContext.getArguments().get("application.args"))) {
            String str = this.jarToIndex;
            if (str == null || this.indexFile == null) {
                if (str == null) {
                    System.out.println(Messages.bind(Messages.CommandLineJarNotSpecified));
                } else if (this.indexFile == null) {
                    System.out.println(Messages.bind(Messages.CommandLineIndexFileNotSpecified));
                }
            } else if (new File(this.jarToIndex).exists()) {
                if (this.verbose) {
                    System.out.println(Messages.bind(Messages.CommandLineProcessing, this.indexFile, this.jarToIndex));
                }
                try {
                    JavaIndexer.generateIndexForJar(this.jarToIndex, this.indexFile);
                } catch (IOException e10) {
                    System.out.println(Messages.bind(Messages.CaughtException, "IOException", e10.getLocalizedMessage()));
                }
            } else {
                System.out.println(Messages.bind(Messages.CommandLineJarFileNotExist, this.jarToIndex));
            }
        }
        return IApplication.EXIT_OK;
    }

    public void stop() {
    }
}
