package org.eclipse.jdt.core.formatter;

import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Map;
import java.util.Properties;
import org.eclipse.equinox.app.IApplication;
import org.eclipse.equinox.app.IApplicationContext;
import org.eclipse.jdt.core.ToolFactory;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.Document;
import org.eclipse.osgi.util.NLS;
import org.eclipse.text.edits.TextEdit;

public class CodeFormatterApplication implements IApplication {
    private static final String ARG_CONFIG = "-config";
    private static final String ARG_HELP = "-help";
    private static final String ARG_QUIET = "-quiet";
    private static final String ARG_VERBOSE = "-verbose";
    private static final String PDE_LAUNCH = "-pdelaunch";
    private String configName;
    private Map options = null;
    private boolean quiet = false;
    private boolean verbose = false;

    public static final class Messages extends NLS {
        private static final String BUNDLE_NAME = "org.eclipse.jdt.core.formatter.messages";
        public static String CaughtException;
        public static String CommandLineConfigFile;
        public static String CommandLineDone;
        public static String CommandLineErrorConfig;
        public static String CommandLineErrorFile;
        public static String CommandLineErrorFileDir;
        public static String CommandLineErrorFileTryFullPath;
        public static String CommandLineErrorNoConfigFile;
        public static String CommandLineErrorQuietVerbose;
        public static String CommandLineFormatting;
        public static String CommandLineStart;
        public static String CommandLineUsage;
        public static String ConfigFileNotFoundErrorTryFullPath;
        public static String ConfigFileReadingError;
        public static String ExceptionSkip;
        public static String FormatProblem;

        static {
            NLS.initializeMessages(BUNDLE_NAME, Messages.class);
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

    private void displayHelp() {
        System.out.println(Messages.bind(Messages.CommandLineUsage));
    }

    private void formatDirTree(File file, CodeFormatter codeFormatter) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                formatDirTree(file2, codeFormatter);
            } else if (Util.isJavaLikeFileName(file2.getPath())) {
                formatFile(file2, codeFormatter);
            }
        }
    }

    private void formatFile(File file, CodeFormatter codeFormatter) {
        Document document = new Document();
        try {
            try {
                if (this.verbose) {
                    System.out.println(Messages.bind(Messages.CommandLineFormatting, file.getAbsolutePath()));
                }
                String str = new String(org.eclipse.jdt.internal.compiler.util.Util.getFileCharContent(file, null));
                document.set(str);
                TextEdit format = codeFormatter.format((file.getName().equals("module-info.java") ? 128 : 8) | 4096, str, 0, str.length(), 0, null);
                if (format == null) {
                    System.err.println(Messages.bind(Messages.FormatProblem, file.getAbsolutePath()));
                    return;
                }
                format.apply(document);
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
                try {
                    bufferedWriter.write(document.get());
                    bufferedWriter.flush();
                } finally {
                    try {
                        bufferedWriter.close();
                    } catch (IOException unused) {
                    }
                }
            } catch (BadLocationException e10) {
                String bind = Messages.bind(Messages.CaughtException, "BadLocationException", e10.getLocalizedMessage());
                Util.log((Throwable) e10, bind);
                System.err.println(Messages.bind(Messages.ExceptionSkip, bind));
            }
        } catch (IOException e11) {
            String bind2 = Messages.bind(Messages.CaughtException, "IOException", e11.getLocalizedMessage());
            Util.log(e11, bind2);
            System.err.println(Messages.bind(Messages.ExceptionSkip, bind2));
        }
    }

    private File[] processCommandLine(String[] strArr) {
        String absolutePath;
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(str);
        }
        int length = strArr.length;
        File[] fileArr = new File[1];
        int i10 = 0;
        boolean z10 = false;
        int i11 = 0;
        while (i10 < length) {
            int i12 = i10 + 1;
            String str2 = strArr[i10];
            if (z10) {
                if (!z10) {
                    continue;
                } else {
                    this.configName = str2;
                    Properties readConfig = readConfig(str2);
                    this.options = readConfig;
                    if (readConfig == null) {
                        displayHelp(Messages.bind(Messages.CommandLineErrorConfig, str2));
                        return null;
                    }
                    z10 = false;
                }
            } else if (PDE_LAUNCH.equals(str2)) {
                continue;
            } else {
                if (ARG_HELP.equals(str2)) {
                    displayHelp();
                    return null;
                }
                if (ARG_VERBOSE.equals(str2)) {
                    this.verbose = true;
                } else if (ARG_QUIET.equals(str2)) {
                    this.quiet = true;
                } else if (ARG_CONFIG.equals(str2)) {
                    z10 = true;
                } else {
                    File file = new File(str2);
                    if (!file.exists()) {
                        try {
                            absolutePath = file.getCanonicalPath();
                        } catch (IOException unused) {
                            absolutePath = file.getAbsolutePath();
                        }
                        displayHelp(file.isAbsolute() ? Messages.bind(Messages.CommandLineErrorFile, absolutePath) : Messages.bind(Messages.CommandLineErrorFileTryFullPath, absolutePath));
                        return null;
                    }
                    if (fileArr.length == i11) {
                        File[] fileArr2 = new File[i11 * 2];
                        System.arraycopy(fileArr, 0, fileArr2, 0, i11);
                        fileArr = fileArr2;
                    }
                    fileArr[i11] = file;
                    i11++;
                }
            }
            i10 = i12;
        }
        if (z10 || this.options == null) {
            displayHelp(Messages.bind(Messages.CommandLineErrorNoConfigFile));
            return null;
        }
        if (this.quiet && this.verbose) {
            displayHelp(Messages.bind(Messages.CommandLineErrorQuietVerbose, (Object[]) new String[]{ARG_QUIET, ARG_VERBOSE}));
            return null;
        }
        if (i11 == 0) {
            displayHelp(Messages.bind(Messages.CommandLineErrorFileDir));
            return null;
        }
        if (fileArr.length == i11) {
            return fileArr;
        }
        File[] fileArr3 = new File[i11];
        System.arraycopy(fileArr, 0, fileArr3, 0, i11);
        return fileArr3;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Properties readConfig(String str) {
        BufferedInputStream bufferedInputStream;
        Throwable th2;
        String absolutePath;
        File file = new File(str);
        try {
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                try {
                    Properties properties = new Properties();
                    properties.load(bufferedInputStream);
                    try {
                        bufferedInputStream.close();
                    } catch (IOException unused) {
                    }
                    return properties;
                } catch (IOException e10) {
                    e = e10;
                    try {
                        absolutePath = file.getCanonicalPath();
                    } catch (IOException unused2) {
                        absolutePath = file.getAbsolutePath();
                    }
                    String bind = (file.exists() || file.isAbsolute()) ? Messages.bind(Messages.ConfigFileReadingError, absolutePath) : Messages.bind(Messages.ConfigFileNotFoundErrorTryFullPath, new Object[]{absolutePath, System.getProperty("user.dir")});
                    Util.log(e, bind);
                    System.err.println(bind);
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    return null;
                }
            } catch (Throwable th3) {
                th2 = th3;
                if (bufferedInputStream != null) {
                    try {
                        bufferedInputStream.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th2;
            }
        } catch (IOException e11) {
            e = e11;
            bufferedInputStream = null;
        } catch (Throwable th4) {
            bufferedInputStream = null;
            th2 = th4;
            if (bufferedInputStream != null) {
            }
            throw th2;
        }
    }

    public Object start(IApplicationContext iApplicationContext) throws Exception {
        File[] processCommandLine = processCommandLine((String[]) iApplicationContext.getArguments().get("application.args"));
        if (processCommandLine == null) {
            return IApplication.EXIT_OK;
        }
        if (!this.quiet) {
            String str = this.configName;
            if (str != null) {
                System.out.println(Messages.bind(Messages.CommandLineConfigFile, str));
            }
            System.out.println(Messages.bind(Messages.CommandLineStart));
        }
        CodeFormatter createCodeFormatter = ToolFactory.createCodeFormatter(this.options, ToolFactory.M_FORMAT_EXISTING);
        for (File file : processCommandLine) {
            if (file.isDirectory()) {
                formatDirTree(file, createCodeFormatter);
            } else if (Util.isJavaLikeFileName(file.getPath())) {
                formatFile(file, createCodeFormatter);
            }
        }
        if (!this.quiet) {
            System.out.println(Messages.bind(Messages.CommandLineDone));
        }
        return IApplication.EXIT_OK;
    }

    public void stop() {
    }

    private void displayHelp(String str) {
        System.err.println(str);
        System.out.println();
        displayHelp();
    }
}
