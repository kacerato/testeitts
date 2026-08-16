package org.eclipse.jdt.core;

import android.icu.text.DateFormat;
import ei.C13155a;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.taskdefs.Javac;
import org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter;
import org.apache.tools.ant.types.Commandline;
import org.apache.tools.ant.types.Path;
import org.apache.tools.ant.util.JavaEnvUtils;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.antadapter.AntAdapterMessages;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;

public class JDTCompilerAdapter extends DefaultCompilerAdapter {
    private static final char[] SEPARATOR_CHARS = {'/', JavaElement.JEM_ESCAPE};
    private static final char[] ADAPTER_PREFIX = "#ADAPTER#".toCharArray();
    private static final char[] ADAPTER_ENCODING = "ENCODING#".toCharArray();
    private static final char[] ADAPTER_ACCESS = "ACCESS#".toCharArray();
    private static String compilerClass = "org.eclipse.jdt.internal.compiler.batch.Main";
    String logFileName;
    Map customDefaultOptions;
    private Map fileEncodings = null;
    private Map dirEncodings = null;
    private List accessRules = null;

    public boolean execute() throws BuildException {
        this.attributes.log(AntAdapterMessages.getString("ant.jdtadapter.info.usingJDTCompiler"), 3);
        Commandline cmd = setupJavacCommand();
        try {
            Class c10 = Class.forName(compilerClass);
            Constructor batchCompilerConstructor = c10.getConstructor(PrintWriter.class, PrintWriter.class, Boolean.TYPE, Map.class);
            Object batchCompilerInstance = batchCompilerConstructor.newInstance(new PrintWriter(System.out), new PrintWriter(System.err), Boolean.TRUE, this.customDefaultOptions);
            Method compile = c10.getMethod("compile", String[].class);
            Object result = compile.invoke(batchCompilerInstance, cmd.getArguments());
            boolean resultValue = ((Boolean) result).booleanValue();
            if (!resultValue && this.logFileName != null) {
                this.attributes.log(AntAdapterMessages.getString("ant.jdtadapter.error.compilationFailed", this.logFileName));
            }
            return resultValue;
        } catch (ClassNotFoundException cnfe) {
            throw new BuildException(AntAdapterMessages.getString("ant.jdtadapter.error.cannotFindJDTCompiler"), cnfe);
        } catch (Exception ex) {
            throw new BuildException(ex);
        }
    }

    protected Commandline setupJavacCommand() throws BuildException {
        Path sourcepath;
        int length;
        Commandline cmd = new Commandline();
        this.customDefaultOptions = new CompilerOptions().getMap();
        String[] compilerArgs = processCompilerArguments(Javac.class);
        cmd.createArgument().setValue("-noExit");
        if (this.bootclasspath != null) {
            cmd.createArgument().setValue("-bootclasspath");
            if (this.bootclasspath.size() != 0) {
                cmd.createArgument().setPath(this.bootclasspath);
            } else {
                cmd.createArgument().setValue(Util.EMPTY_STRING);
            }
        }
        if (this.extdirs != null) {
            cmd.createArgument().setValue("-extdirs");
            cmd.createArgument().setPath(this.extdirs);
        }
        Path classpath = new Path(this.project);
        classpath.append(getCompileClasspath());
        cmd.createArgument().setValue("-classpath");
        createClasspathArgument(cmd, classpath);
        Method getSourcepathMethod = null;
        try {
            getSourcepathMethod = Javac.class.getMethod("getSourcepath", null);
        } catch (NoSuchMethodException unused) {
        }
        Path compileSourcePath = null;
        if (getSourcepathMethod != null) {
            try {
                compileSourcePath = (Path) getSourcepathMethod.invoke(this.attributes, null);
            } catch (IllegalAccessException unused2) {
            } catch (InvocationTargetException unused3) {
            }
        }
        if (compileSourcePath != null) {
            sourcepath = compileSourcePath;
        } else {
            sourcepath = this.src;
        }
        cmd.createArgument().setValue("-sourcepath");
        createClasspathArgument(cmd, sourcepath);
        String javaVersion = JavaEnvUtils.getJavaVersion();
        String memoryParameterPrefix = javaVersion.equals("1.1") ? "-J-" : "-J-X";
        if (this.memoryInitialSize != null) {
            if (!this.attributes.isForkedJavac()) {
                this.attributes.log(AntAdapterMessages.getString("ant.jdtadapter.info.ignoringMemoryInitialSize"), 1);
            } else {
                cmd.createArgument().setValue(String.valueOf(memoryParameterPrefix) + DateFormat.MINUTE_SECOND + this.memoryInitialSize);
            }
        }
        if (this.memoryMaximumSize != null) {
            if (!this.attributes.isForkedJavac()) {
                this.attributes.log(AntAdapterMessages.getString("ant.jdtadapter.info.ignoringMemoryMaximumSize"), 1);
            } else {
                cmd.createArgument().setValue(String.valueOf(memoryParameterPrefix) + "mx" + this.memoryMaximumSize);
            }
        }
        if (this.debug) {
            Method getDebugLevelMethod = null;
            try {
                getDebugLevelMethod = Javac.class.getMethod("getDebugLevel", null);
            } catch (NoSuchMethodException unused4) {
            }
            String debugLevel = null;
            if (getDebugLevelMethod != null) {
                try {
                    debugLevel = (String) getDebugLevelMethod.invoke(this.attributes, null);
                } catch (IllegalAccessException unused5) {
                } catch (InvocationTargetException unused6) {
                }
            }
            if (debugLevel != null) {
                this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.debug.localVariable", "do not generate");
                this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.debug.lineNumber", "do not generate");
                this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.debug.sourceFile", "do not generate");
                if (debugLevel.length() != 0) {
                    if (debugLevel.indexOf("vars") != -1) {
                        this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.debug.localVariable", "generate");
                    }
                    if (debugLevel.indexOf("lines") != -1) {
                        this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.debug.lineNumber", "generate");
                    }
                    if (debugLevel.indexOf("source") != -1) {
                        this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.debug.sourceFile", "generate");
                    }
                }
            } else {
                this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.debug.localVariable", "generate");
                this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.debug.lineNumber", "generate");
                this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.debug.sourceFile", "generate");
            }
        } else {
            this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.debug.localVariable", "do not generate");
            this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.debug.lineNumber", "do not generate");
            this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.debug.sourceFile", "do not generate");
        }
        if (this.attributes.getNowarn()) {
            Object[] entries = this.customDefaultOptions.entrySet().toArray();
            for (Object obj : entries) {
                Map.Entry entry = (Map.Entry) obj;
                if ((entry.getKey() instanceof String) && (entry.getValue() instanceof String) && ((String) entry.getValue()).equals("warning")) {
                    this.customDefaultOptions.put(entry.getKey(), "ignore");
                }
            }
            this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.taskTags", Util.EMPTY_STRING);
            if (this.deprecation) {
                this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.problem.deprecation", "warning");
                this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode", "enabled");
                this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod", "enabled");
            }
        } else if (this.deprecation) {
            this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.problem.deprecation", "warning");
            this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode", "enabled");
            this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod", "enabled");
        } else {
            this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.problem.deprecation", "ignore");
            this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode", "disabled");
            this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod", "disabled");
        }
        if (this.destDir != null) {
            cmd.createArgument().setValue("-d");
            cmd.createArgument().setFile(this.destDir.getAbsoluteFile());
        }
        if (this.verbose) {
            cmd.createArgument().setValue("-verbose");
        }
        if (!this.attributes.getFailonerror()) {
            cmd.createArgument().setValue("-proceedOnError");
        }
        if (this.target != null) {
            this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", this.target);
        }
        String source = this.attributes.getSource();
        if (source != null) {
            this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.source", source);
            this.customDefaultOptions.put("org.eclipse.jdt.core.compiler.compliance", source);
        }
        if (compilerArgs != null && (length = compilerArgs.length) != 0) {
            for (int i10 = 0; i10 < length; i10++) {
                String arg = compilerArgs[i10];
                if (this.logFileName == null && "-log".equals(arg) && i10 + 1 < length) {
                    this.logFileName = compilerArgs[i10 + 1];
                }
                cmd.createArgument().setValue(arg);
            }
        }
        if (this.encoding != null) {
            cmd.createArgument().setValue("-encoding");
            cmd.createArgument().setValue(this.encoding);
        }
        logAndAddFilesToCompile(cmd);
        return cmd;
    }

    private String[] processCompilerArguments(Class javacClass) {
        Method getCurrentCompilerArgsMethod = null;
        try {
            getCurrentCompilerArgsMethod = javacClass.getMethod("getCurrentCompilerArgs", null);
        } catch (NoSuchMethodException unused) {
        }
        String[] compilerArgs = null;
        if (getCurrentCompilerArgsMethod != null) {
            try {
                compilerArgs = (String[]) getCurrentCompilerArgsMethod.invoke(this.attributes, null);
            } catch (IllegalAccessException unused2) {
            } catch (InvocationTargetException unused3) {
            }
        }
        if (compilerArgs != null) {
            checkCompilerArgs(compilerArgs);
        }
        return compilerArgs;
    }

    private void checkCompilerArgs(String[] args) {
        for (int i10 = 0; i10 < args.length; i10++) {
            if (args[i10].charAt(0) == '@') {
                try {
                    char[] content = Util.getFileCharContent(new File(args[i10].substring(1)), null);
                    int offset = 0;
                    int prefixLength = ADAPTER_PREFIX.length;
                    while (true) {
                        int offset2 = CharOperation.indexOf(ADAPTER_PREFIX, content, true, offset);
                        if (offset2 <= -1) {
                            break;
                        }
                        int start = offset2 + prefixLength;
                        int end = CharOperation.indexOf('\n', content, start);
                        if (end == -1) {
                            end = content.length;
                        }
                        while (CharOperation.isWhitespace(content[end])) {
                            end--;
                        }
                        if (CharOperation.equals(ADAPTER_ENCODING, content, start, start + ADAPTER_ENCODING.length)) {
                            CharOperation.replace(content, SEPARATOR_CHARS, File.separatorChar, start, end + 1);
                            int start2 = start + ADAPTER_ENCODING.length;
                            int encodeStart = CharOperation.lastIndexOf('[', content, start2, end);
                            if (start2 < encodeStart && encodeStart < end) {
                                boolean isFile = CharOperation.equals(SuffixConstants.SUFFIX_java, content, encodeStart - 5, encodeStart, false);
                                String str = String.valueOf(content, start2, encodeStart - start2);
                                String enc = String.valueOf(content, encodeStart, (end - encodeStart) + 1);
                                if (isFile) {
                                    if (this.fileEncodings == null) {
                                        this.fileEncodings = new HashMap();
                                    }
                                    this.fileEncodings.put(str, enc);
                                } else {
                                    if (this.dirEncodings == null) {
                                        this.dirEncodings = new HashMap();
                                    }
                                    this.dirEncodings.put(str, enc);
                                }
                            }
                        } else if (CharOperation.equals(ADAPTER_ACCESS, content, start, start + ADAPTER_ACCESS.length)) {
                            int start3 = start + ADAPTER_ACCESS.length;
                            int accessStart = CharOperation.indexOf('[', content, start3, end);
                            CharOperation.replace(content, SEPARATOR_CHARS, File.separatorChar, start3, accessStart);
                            if (start3 < accessStart && accessStart < end) {
                                String path = String.valueOf(content, start3, accessStart - start3);
                                String access = String.valueOf(content, accessStart, (end - accessStart) + 1);
                                if (this.accessRules == null) {
                                    this.accessRules = new ArrayList();
                                }
                                this.accessRules.add(path);
                                this.accessRules.add(access);
                            }
                        }
                        offset = end;
                    }
                } catch (IOException unused) {
                }
            }
        }
    }

    private void createClasspathArgument(Commandline cmd, Path classpath) {
        Commandline.Argument arg = cmd.createArgument();
        String[] pathElements = classpath.list();
        if (pathElements.length == 0) {
            arg.setValue(Util.EMPTY_STRING);
            return;
        }
        if (this.accessRules == null) {
            arg.setPath(classpath);
            return;
        }
        int rulesLength = this.accessRules.size();
        String[] rules = (String[]) this.accessRules.toArray(new String[rulesLength]);
        int nextRule = 0;
        StringBuffer result = new StringBuffer();
        int max = pathElements.length;
        for (int i10 = 0; i10 < max; i10++) {
            if (i10 > 0) {
                result.append(File.pathSeparatorChar);
            }
            String pathElement = pathElements[i10];
            result.append(pathElement);
            int j10 = nextRule;
            while (true) {
                if (j10 >= rulesLength) {
                    break;
                }
                String rule = rules[j10];
                if (pathElement.endsWith(rule)) {
                    result.append(rules[j10 + 1]);
                    nextRule = j10 + 2;
                    break;
                }
                if (rule.endsWith(File.separator)) {
                    int ruleLength = rule.length();
                    if (!pathElement.regionMatches(false, (pathElement.length() - ruleLength) + 1, rule, 0, ruleLength - 1)) {
                        j10 += 2;
                    } else {
                        result.append(rules[j10 + 1]);
                        nextRule = j10 + 2;
                        break;
                    }
                } else {
                    if (pathElement.endsWith(File.separator)) {
                        int ruleLength2 = rule.length();
                        if (pathElement.regionMatches(false, (pathElement.length() - ruleLength2) - 1, rule, 0, ruleLength2)) {
                            result.append(rules[j10 + 1]);
                            nextRule = j10 + 2;
                            break;
                        }
                    } else {
                        continue;
                    }
                    j10 += 2;
                }
            }
        }
        arg.setValue(result.toString());
    }

    protected void logAndAddFilesToCompile(Commandline cmd) {
        this.attributes.log("Compilation " + cmd.describeArguments(), 3);
        StringBuffer niceSourceList = new StringBuffer("File");
        if (this.compileList.length != 1) {
            niceSourceList.append("s");
        }
        niceSourceList.append(" to be compiled:");
        niceSourceList.append(System.lineSeparator());
        String[] encodedFiles = null;
        String[] encodedDirs = null;
        int encodedFilesLength = 0;
        int encodedDirsLength = 0;
        if (this.fileEncodings != null) {
            encodedFilesLength = this.fileEncodings.size();
            encodedFiles = new String[encodedFilesLength];
            this.fileEncodings.o().toArray(encodedFiles);
        }
        if (this.dirEncodings != null) {
            encodedDirsLength = this.dirEncodings.size();
            encodedDirs = new String[encodedDirsLength];
            this.dirEncodings.o().toArray(encodedDirs);
            Comparator comparator = new Comparator() {
                @Override
                public int compare(Object o12, Object o22) {
                    return ((String) o22).length() - ((String) o12).length();
                }
            };
            Arrays.sort(encodedDirs, comparator);
        }
        for (int i10 = 0; i10 < this.compileList.length; i10++) {
            String arg = this.compileList[i10].getAbsolutePath();
            boolean encoded = false;
            if (encodedFiles != null) {
                int j10 = 0;
                while (true) {
                    if (j10 >= encodedFilesLength) {
                        break;
                    }
                    if (!arg.endsWith(encodedFiles[j10])) {
                        j10++;
                    } else {
                        arg = String.valueOf(arg) + ((String) this.fileEncodings.get(encodedFiles[j10]));
                        if (j10 < encodedFilesLength - 1) {
                            System.arraycopy(encodedFiles, j10 + 1, encodedFiles, j10, (encodedFilesLength - j10) - 1);
                        }
                        encodedFilesLength--;
                        encodedFiles[encodedFilesLength] = null;
                        encoded = true;
                    }
                }
            }
            if (!encoded && encodedDirs != null) {
                int j11 = 0;
                while (true) {
                    if (j11 < encodedDirsLength) {
                        if (arg.lastIndexOf(encodedDirs[j11]) == -1) {
                            j11++;
                        } else {
                            arg = String.valueOf(arg) + ((String) this.dirEncodings.get(encodedDirs[j11]));
                            break;
                        }
                    }
                }
            }
            cmd.createArgument().setValue(arg);
            niceSourceList.append(C13155a.f85806a + arg + System.lineSeparator());
        }
        this.attributes.log(niceSourceList.toString(), 3);
    }
}
