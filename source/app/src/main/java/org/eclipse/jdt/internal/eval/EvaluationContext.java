package org.eclipse.jdt.internal.eval;

import java.util.Locale;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.codeassist.CompletionEngine;
import org.eclipse.jdt.internal.codeassist.ISelectionRequestor;
import org.eclipse.jdt.internal.codeassist.SelectionEngine;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.util.Util;

public class EvaluationContext implements EvaluationConstants, SuffixConstants {
    static int CODE_SNIPPET_COUNTER;
    static int VAR_CLASS_COUNTER;
    IBinaryType codeSnippetBinary;
    char[] declaringTypeName;
    VariablesInfo installedVars;
    int[] localVariableModifiers;
    char[][] localVariableNames;
    char[][] localVariableTypeNames;
    GlobalVariable[] variables = new GlobalVariable[5];
    int variableCount = 0;
    char[][] imports = CharOperation.NO_CHAR_CHAR;
    char[] packageName = CharOperation.NO_CHAR;
    boolean varsChanged = true;
    boolean isStatic = true;
    boolean isConstructorCall = false;
    String lineSeparator = Util.LINE_SEPARATOR;

    public class C1ForwardingRequestor implements IRequestor {
        boolean hasErrors = false;
        private final IRequestor val$requestor;

        public C1ForwardingRequestor(IRequestor iRequestor) {
            this.val$requestor = iRequestor;
        }

        @Override
        public boolean acceptClassFiles(ClassFile[] classFileArr, char[] cArr) {
            return this.val$requestor.acceptClassFiles(classFileArr, cArr);
        }

        @Override
        public void acceptProblem(CategorizedProblem categorizedProblem, char[] cArr, int i10) {
            this.val$requestor.acceptProblem(categorizedProblem, cArr, i10);
            if (categorizedProblem.isError()) {
                this.hasErrors = true;
            }
        }
    }

    private void deployCodeSnippetClassIfNeeded(IRequestor iRequestor) throws InstallException {
        if (this.codeSnippetBinary == null && !iRequestor.acceptClassFiles(new ClassFile[]{new ClassFile() {
            @Override
            public byte[] getBytes() {
                return EvaluationContext.this.getCodeSnippetBytes();
            }

            @Override
            public char[][] getCompoundName() {
                return EvaluationConstants.ROOT_COMPOUND_NAME;
            }
        }}, null)) {
            throw new InstallException();
        }
    }

    public static String getCodeSnippetSource() {
        return "package org.eclipse.jdt.internal.eval.target;\n\n/*\n * (c) Copyright IBM Corp. 2000, 2001.\n * All Rights Reserved.\n */\n/**\n * The root of all code snippet classes. Code snippet classes\n * are supposed to overide the run() method.\n * <p>\n * IMPORTANT NOTE:\n * All methods in this class must be public since this class is going to be loaded by the\n * bootstrap class loader, and the other code snippet support classes might be loaded by \n * another class loader (so their runtime packages are going to be different).\n */\npublic class CodeSnippet {\n\tprivate Class resultType = void.class;\n\tprivate Object resultValue = null;\n/**\n * Returns the result type of the code snippet evaluation.\n */\npublic Class getResultType() {\n\treturn this.resultType;\n}\n/**\n * Returns the result value of the code snippet evaluation.\n */\npublic Object getResultValue() {\n\treturn this.resultValue;\n}\n/**\n * The code snippet. Subclasses must override this method with a transformed code snippet\n * that stores the result using setResult(Class, Object).\n */\npublic void run() {\n}\n/**\n * Stores the result type and value of the code snippet evaluation.\n */\npublic void setResult(Object someResultValue, Class someResultType) {\n\tthis.resultValue = someResultValue;\n\tthis.resultType = someResultType;\n}\n}\n";
    }

    public GlobalVariable[] allVariables() {
        int i10 = this.variableCount;
        GlobalVariable[] globalVariableArr = new GlobalVariable[i10];
        System.arraycopy(this.variables, 0, globalVariableArr, 0, i10);
        return globalVariableArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment] */
    /* JADX WARN: Type inference failed for: r10v2, types: [org.eclipse.jdt.internal.codeassist.CompletionEngine, org.eclipse.jdt.internal.codeassist.impl.Engine] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [org.eclipse.jdt.core.ITypeRoot] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [char[], org.eclipse.jdt.internal.compiler.env.AccessRestriction] */
    /* JADX WARN: Type inference failed for: r3v9 */
    public void complete(char[] cArr, int i10, SearchableEnvironment searchableEnvironment, CompletionRequestor completionRequestor, Map<String, String> map, IJavaProject iJavaProject, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) {
        ?? r32;
        ClassFileReader classFileReader;
        try {
            try {
                evaluateVariables(searchableEnvironment, map, new IRequestor() {
                    @Override
                    public boolean acceptClassFiles(ClassFile[] classFileArr, char[] cArr2) {
                        return true;
                    }

                    @Override
                    public void acceptProblem(CategorizedProblem categorizedProblem, char[] cArr2, int i11) {
                    }
                }, new DefaultProblemFactory(Locale.getDefault()));
            } catch (InstallException unused) {
            }
        } catch (InstallException unused2) {
        }
        final char[] charArray = "CodeSnippetCompletion".toCharArray();
        long versionToJdkLevel = CompilerOptions.versionToJdkLevel(map.get("org.eclipse.jdt.core.compiler.compliance"));
        char[] cArr2 = this.packageName;
        char[][] cArr3 = this.imports;
        VariablesInfo variablesInfo = this.installedVars;
        final CodeSnippetToCuMapper codeSnippetToCuMapper = new CodeSnippetToCuMapper(cArr, cArr2, cArr3, charArray, variablesInfo == null ? null : variablesInfo.className, this.localVariableNames, this.localVariableTypeNames, this.localVariableModifiers, this.declaringTypeName, this.lineSeparator, versionToJdkLevel);
        ICompilationUnit iCompilationUnit = new ICompilationUnit() {
            @Override
            public char[] getContents() {
                return codeSnippetToCuMapper.getCUSource(EvaluationContext.this.lineSeparator);
            }

            @Override
            public char[] getFileName() {
                return CharOperation.concat(charArray, org.eclipse.jdt.internal.core.util.Util.defaultJavaExtension().toCharArray());
            }

            @Override
            public char[] getMainTypeName() {
                return charArray;
            }

            @Override
            public char[] getModuleName() {
                return null;
            }

            @Override
            public char[][] getPackageName() {
                return null;
            }

            @Override
            public boolean ignoreOptionalProblems() {
                return false;
            }
        };
        ?? completionEngine = new CompletionEngine(searchableEnvironment, codeSnippetToCuMapper.getCompletionRequestor(completionRequestor), map, iJavaProject, workingCopyOwner, iProgressMonitor);
        if (this.installedVars != null) {
            IBinaryType rootCodeSnippetBinary = getRootCodeSnippetBinary();
            if (rootCodeSnippetBinary != null) {
                r32 = 0;
                completionEngine.lookupEnvironment.cacheBinaryType(rootCodeSnippetBinary, null);
            } else {
                r32 = 0;
            }
            for (ClassFile classFile : this.installedVars.classFiles) {
                try {
                    classFileReader = new ClassFileReader(classFile.getBytes(), r32);
                } catch (ClassFormatException e10) {
                    e10.printStackTrace();
                    classFileReader = r32;
                }
                completionEngine.lookupEnvironment.cacheBinaryType(classFileReader, r32);
            }
        } else {
            r32 = 0;
        }
        int i11 = codeSnippetToCuMapper.startPosOffset;
        completionEngine.complete(iCompilationUnit, i11 + i10, i11, r32);
    }

    public void deleteVariable(GlobalVariable globalVariable) {
        GlobalVariable[] globalVariableArr = this.variables;
        int i10 = 0;
        while (true) {
            if (i10 >= this.variableCount) {
                i10 = -1;
                break;
            } else if (globalVariableArr[i10].equals(globalVariable)) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 == -1) {
            return;
        }
        int i11 = this.variableCount;
        int i12 = i11 - 1;
        this.variableCount = i12;
        int i13 = (i11 - i10) - 1;
        if (i13 > 0) {
            System.arraycopy(globalVariableArr, i10 + 1, globalVariableArr, i10, i13);
        }
        globalVariableArr[i12] = null;
        this.varsChanged = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void evaluate(char[] cArr, char[][] cArr2, char[][] cArr3, int[] iArr, char[] cArr4, boolean z10, boolean z11, INameEnvironment iNameEnvironment, Map<String, String> map, IRequestor iRequestor, IProblemFactory iProblemFactory) throws InstallException {
        CodeSnippetEvaluator codeSnippetEvaluator;
        ClassFile[] classes;
        this.localVariableTypeNames = cArr2;
        this.localVariableNames = cArr3;
        this.localVariableModifiers = iArr;
        this.declaringTypeName = cArr4;
        this.isStatic = z10;
        this.isConstructorCall = z11;
        deployCodeSnippetClassIfNeeded(iRequestor);
        try {
            C1ForwardingRequestor c1ForwardingRequestor = new C1ForwardingRequestor(iRequestor);
            if (this.varsChanged) {
                evaluateVariables(iNameEnvironment, map, c1ForwardingRequestor, iProblemFactory);
            }
            if (!c1ForwardingRequestor.hasErrors && (classes = (codeSnippetEvaluator = new CodeSnippetEvaluator(cArr, this, iNameEnvironment, map, iRequestor, iProblemFactory)).getClasses()) != null && classes.length > 0) {
                char[] className = codeSnippetEvaluator.getClassName();
                char[] packageName = getPackageName();
                if (packageName.length != 0) {
                    className = CharOperation.concat(packageName, className, '.');
                }
                CODE_SNIPPET_COUNTER++;
                if (!iRequestor.acceptClassFiles(classes, className)) {
                    throw new InstallException();
                }
            }
        } finally {
            this.localVariableTypeNames = null;
            this.localVariableNames = null;
            this.localVariableModifiers = null;
            this.declaringTypeName = null;
            this.isStatic = true;
            this.isConstructorCall = false;
        }
    }

    public void evaluateImports(INameEnvironment iNameEnvironment, IRequestor iRequestor, IProblemFactory iProblemFactory) {
        int i10 = 0;
        while (true) {
            char[][] cArr = this.imports;
            if (i10 >= cArr.length) {
                return;
            }
            CategorizedProblem[] categorizedProblemArr = new CategorizedProblem[1];
            char[] cArr2 = cArr[i10];
            char[][] splitOn = CharOperation.splitOn('.', cArr2);
            int length = splitOn.length;
            if (length > 0) {
                char[] cArr3 = splitOn[length - 1];
                if (cArr3.length == 1 && cArr3[0] == '*') {
                    char[][] cArr4 = null;
                    if (length != 1) {
                        if (length != 2) {
                            int i11 = length - 2;
                            cArr4 = CharOperation.subarray(splitOn, 0, i11);
                            cArr3 = splitOn[i11];
                        } else {
                            cArr3 = splitOn[length - 2];
                        }
                    }
                    if (!iNameEnvironment.isPackage(cArr4, cArr3)) {
                        String[] strArr = {new String(cArr2)};
                        categorizedProblemArr[0] = iProblemFactory.createProblem(cArr2, IProblem.ImportNotFound, strArr, strArr, 0, 0, cArr2.length - 1, i10, 0);
                    }
                } else if (iNameEnvironment.findType(splitOn) == null) {
                    String[] strArr2 = {new String(cArr2)};
                    categorizedProblemArr[0] = iProblemFactory.createProblem(cArr2, IProblem.ImportNotFound, strArr2, strArr2, 0, 0, cArr2.length - 1, i10, 0);
                }
            } else {
                String[] strArr3 = {new String(cArr2)};
                categorizedProblemArr[0] = iProblemFactory.createProblem(cArr2, IProblem.ImportNotFound, strArr3, strArr3, 0, 0, cArr2.length - 1, i10, 0);
            }
            CategorizedProblem categorizedProblem = categorizedProblemArr[0];
            if (categorizedProblem != null) {
                iRequestor.acceptProblem(categorizedProblem, cArr2, 3);
            }
            i10++;
        }
    }

    public void evaluateVariable(GlobalVariable globalVariable, INameEnvironment iNameEnvironment, Map<String, String> map, IRequestor iRequestor, IProblemFactory iProblemFactory) throws InstallException {
        evaluate(globalVariable.getName(), iNameEnvironment, map, iRequestor, iProblemFactory);
    }

    public void evaluateVariables(INameEnvironment iNameEnvironment, Map<String, String> map, IRequestor iRequestor, IProblemFactory iProblemFactory) throws InstallException {
        deployCodeSnippetClassIfNeeded(iRequestor);
        VariablesEvaluator variablesEvaluator = new VariablesEvaluator(this, iNameEnvironment, map, iRequestor, iProblemFactory);
        ClassFile[] classes = variablesEvaluator.getClasses();
        if (classes != null) {
            if (classes.length > 0) {
                org.eclipse.jdt.internal.core.util.Util.sort(classes, new Util.Comparer() {
                    @Override
                    public int compare(Object obj, Object obj2) {
                        if (obj == obj2) {
                            return 0;
                        }
                        for (ClassFile classFile = ((ClassFile) obj).enclosingClassFile; classFile != null; classFile = classFile.enclosingClassFile) {
                            if (classFile == obj2) {
                                return 1;
                            }
                        }
                        return -1;
                    }
                });
                if (!iRequestor.acceptClassFiles(classes, null)) {
                    throw new InstallException();
                }
                int i10 = this.variableCount;
                GlobalVariable[] globalVariableArr = new GlobalVariable[i10];
                System.arraycopy(this.variables, 0, globalVariableArr, 0, i10);
                this.installedVars = new VariablesInfo(variablesEvaluator.getPackageName(), variablesEvaluator.getClassName(), classes, globalVariableArr, i10);
                VAR_CLASS_COUNTER++;
            }
            this.varsChanged = false;
        }
    }

    public byte[] getCodeSnippetBytes() {
        return new byte[]{-54, -2, Opcodes.OPC_invokedynamic, Opcodes.OPC_arraylength, 0, 3, 0, Opcodes.OPC_aload_3, 0, Opcodes.OPC_fload_1, 1, 0, 48, 111, Opcodes.OPC_frem, Opcodes.OPC_dsub, Opcodes.OPC_laload, 101, Opcodes.OPC_dadd, Opcodes.OPC_idiv, 105, 112, Opcodes.OPC_drem, 101, Opcodes.OPC_laload, 106, 100, Opcodes.OPC_ineg, Opcodes.OPC_laload, 105, 110, Opcodes.OPC_ineg, 101, Opcodes.OPC_frem, 110, Opcodes.OPC_ladd, Opcodes.OPC_idiv, Opcodes.OPC_laload, 101, Opcodes.OPC_fneg, Opcodes.OPC_ladd, Opcodes.OPC_idiv, Opcodes.OPC_laload, Opcodes.OPC_ineg, Opcodes.OPC_ladd, Opcodes.OPC_frem, Opcodes.OPC_dsub, 101, Opcodes.OPC_ineg, Opcodes.OPC_laload, Opcodes.OPC_fstore_0, 111, 100, 101, Opcodes.OPC_aastore, 110, 105, 112, 112, 101, Opcodes.OPC_ineg, 7, 0, 1, 1, 0, 16, 106, Opcodes.OPC_ladd, Opcodes.OPC_fneg, Opcodes.OPC_ladd, Opcodes.OPC_laload, Opcodes.OPC_idiv, Opcodes.OPC_ladd, 110, Opcodes.OPC_dsub, Opcodes.OPC_laload, Opcodes.OPC_iastore, Opcodes.OPC_fadd, 106, 101, Opcodes.OPC_dadd, Opcodes.OPC_ineg, 7, 0, 3, 1, 0, 10, Opcodes.OPC_frem, 101, Opcodes.OPC_drem, Opcodes.OPC_lneg, Opcodes.OPC_idiv, Opcodes.OPC_ineg, Opcodes.OPC_bastore, 121, 112, 101, 1, 0, 17, Opcodes.OPC_astore_1, 106, Opcodes.OPC_ladd, Opcodes.OPC_fneg, Opcodes.OPC_ladd, Opcodes.OPC_laload, Opcodes.OPC_idiv, Opcodes.OPC_ladd, 110, Opcodes.OPC_dsub, Opcodes.OPC_laload, Opcodes.OPC_fstore_0, Opcodes.OPC_idiv, Opcodes.OPC_ladd, Opcodes.OPC_drem, Opcodes.OPC_drem, Opcodes.OPC_istore_0, 1, 0, 11, Opcodes.OPC_frem, 101, Opcodes.OPC_drem, Opcodes.OPC_lneg, Opcodes.OPC_idiv, Opcodes.OPC_ineg, Opcodes.OPC_sastore, Opcodes.OPC_ladd, Opcodes.OPC_idiv, Opcodes.OPC_lneg, 101, 1, 0, 18, Opcodes.OPC_astore_1, 106, Opcodes.OPC_ladd, Opcodes.OPC_fneg, Opcodes.OPC_ladd, Opcodes.OPC_laload, Opcodes.OPC_idiv, Opcodes.OPC_ladd, 110, Opcodes.OPC_dsub, Opcodes.OPC_laload, Opcodes.OPC_iastore, Opcodes.OPC_fadd, 106, 101, Opcodes.OPC_dadd, Opcodes.OPC_ineg, Opcodes.OPC_istore_0, 1, 0, 7, Opcodes.OPC_dadd, Opcodes.OPC_idiv, Opcodes.OPC_ladd, Opcodes.OPC_drem, Opcodes.OPC_drem, Opcodes.OPC_fload_2, 48, 1, 0, 9, Opcodes.OPC_aastore, 121, 110, Opcodes.OPC_ineg, Opcodes.OPC_imul, 101, Opcodes.OPC_ineg, 105, Opcodes.OPC_dadd, 1, 0, 6, 60, 105, 110, 105, Opcodes.OPC_ineg, 62, 1, 0, 3, 40, 41, Opcodes.OPC_sastore, 1, 0, 4, Opcodes.OPC_fstore_0, 111, 100, 101, 12, 0, 11, 0, 12, 10, 0, 4, 0, 14, 1, 0, 14, 106, Opcodes.OPC_ladd, Opcodes.OPC_fneg, Opcodes.OPC_ladd, Opcodes.OPC_laload, Opcodes.OPC_idiv, Opcodes.OPC_ladd, 110, Opcodes.OPC_dsub, Opcodes.OPC_laload, Opcodes.OPC_sastore, 111, 105, 100, 7, 0, 16, 1, 0, 4, Opcodes.OPC_bastore, Opcodes.OPC_dup, 80, Opcodes.OPC_fstore_2, 12, 0, 18, 0, 6, 9, 0, 17, 0, 19, 12, 0, 5, 0, 6, 9, 0, 2, 0, 21, 12, 0, 7, 0, 8, 9, 0, 2, 0, 23, 1, 0, 15, Opcodes.OPC_astore_1, 105, 110, 101, Opcodes.OPC_astore_3, Opcodes.OPC_lneg, Opcodes.OPC_ldiv, Opcodes.OPC_fadd, 101, Opcodes.OPC_frem, Opcodes.OPC_bastore, Opcodes.OPC_ladd, Opcodes.OPC_fadd, Opcodes.OPC_idiv, 101, 1, 0, 13, Opcodes.OPC_dsub, 101, Opcodes.OPC_ineg, Opcodes.OPC_dastore, 101, Opcodes.OPC_drem, Opcodes.OPC_lneg, Opcodes.OPC_idiv, Opcodes.OPC_ineg, Opcodes.OPC_bastore, 121, 112, 101, 1, 0, 19, 40, 41, Opcodes.OPC_astore_1, 106, Opcodes.OPC_ladd, Opcodes.OPC_fneg, Opcodes.OPC_ladd, Opcodes.OPC_laload, Opcodes.OPC_idiv, Opcodes.OPC_ladd, 110, Opcodes.OPC_dsub, Opcodes.OPC_laload, Opcodes.OPC_fstore_0, Opcodes.OPC_idiv, Opcodes.OPC_ladd, Opcodes.OPC_drem, Opcodes.OPC_drem, Opcodes.OPC_istore_0, 1, 0, 14, Opcodes.OPC_dsub, 101, Opcodes.OPC_ineg, Opcodes.OPC_dastore, 101, Opcodes.OPC_drem, Opcodes.OPC_lneg, Opcodes.OPC_idiv, Opcodes.OPC_ineg, Opcodes.OPC_sastore, Opcodes.OPC_ladd, Opcodes.OPC_idiv, Opcodes.OPC_lneg, 101, 1, 0, 20, 40, 41, Opcodes.OPC_astore_1, 106, Opcodes.OPC_ladd, Opcodes.OPC_fneg, Opcodes.OPC_ladd, Opcodes.OPC_laload, Opcodes.OPC_idiv, Opcodes.OPC_ladd, 110, Opcodes.OPC_dsub, Opcodes.OPC_laload, Opcodes.OPC_iastore, Opcodes.OPC_fadd, 106, 101, Opcodes.OPC_dadd, Opcodes.OPC_ineg, Opcodes.OPC_istore_0, 1, 0, 3, Opcodes.OPC_frem, Opcodes.OPC_lneg, 110, 1, 0, 9, Opcodes.OPC_drem, 101, Opcodes.OPC_ineg, Opcodes.OPC_dastore, 101, Opcodes.OPC_drem, Opcodes.OPC_lneg, Opcodes.OPC_idiv, Opcodes.OPC_ineg, 1, 0, 38, 40, Opcodes.OPC_astore_1, 106, Opcodes.OPC_ladd, Opcodes.OPC_fneg, Opcodes.OPC_ladd, Opcodes.OPC_laload, Opcodes.OPC_idiv, Opcodes.OPC_ladd, 110, Opcodes.OPC_dsub, Opcodes.OPC_laload, Opcodes.OPC_iastore, Opcodes.OPC_fadd, 106, 101, Opcodes.OPC_dadd, Opcodes.OPC_ineg, Opcodes.OPC_istore_0, Opcodes.OPC_astore_1, 106, Opcodes.OPC_ladd, Opcodes.OPC_fneg, Opcodes.OPC_ladd, Opcodes.OPC_laload, Opcodes.OPC_idiv, Opcodes.OPC_ladd, 110, Opcodes.OPC_dsub, Opcodes.OPC_laload, Opcodes.OPC_fstore_0, Opcodes.OPC_idiv, Opcodes.OPC_ladd, Opcodes.OPC_drem, Opcodes.OPC_drem, Opcodes.OPC_istore_0, 41, Opcodes.OPC_sastore, 1, 0, 10, Opcodes.OPC_aastore, 111, Opcodes.OPC_lneg, Opcodes.OPC_frem, Opcodes.OPC_dadd, 101, 70, 105, Opcodes.OPC_idiv, 101, 1, 0, 16, Opcodes.OPC_fstore_0, 111, 100, 101, Opcodes.OPC_aastore, 110, 105, 112, 112, 101, Opcodes.OPC_ineg, Opcodes.OPC_iaload, 106, Opcodes.OPC_ladd, Opcodes.OPC_fneg, Opcodes.OPC_ladd, 0, 33, 0, 2, 0, 4, 0, 0, 0, 3, 0, 2, 0, 5, 0, 6, 0, 0, 0, 2, 0, 7, 0, 8, 0, 0, 0, 8, 0, 9, 0, 6, 0, 1, 0, 10, 0, 0, 0, 0, 0, 5, 0, 1, 0, 11, 0, 12, 0, 1, 0, 13, 0, 0, 0, Opcodes.OPC_saload, 0, 2, 0, 1, 0, 0, 0, 17, 42, Opcodes.OPC_invokespecial, 0, 15, 42, Opcodes.OPC_getstatic, 0, 20, Opcodes.OPC_putfield, 0, 22, 42, 1, Opcodes.OPC_putfield, 0, 24, Opcodes.OPC_return, 0, 0, 0, 1, 0, 25, 0, 0, 0, 18, 0, 4, 0, 0, 0, 17, 0, 4, 0, 18, 0, 11, 0, 19, 0, 16, 0, 17, 0, 1, 0, 26, 0, 27, 0, 1, 0, 13, 0, 0, 0, 29, 0, 1, 0, 1, 0, 0, 0, 5, 42, Opcodes.OPC_getfield, 0, 22, Opcodes.OPC_areturn, 0, 0, 0, 1, 0, 25, 0, 0, 0, 6, 0, 1, 0, 0, 0, 24, 0, 1, 0, 28, 0, 29, 0, 1, 0, 13, 0, 0, 0, 29, 0, 1, 0, 1, 0, 0, 0, 5, 42, Opcodes.OPC_getfield, 0, 24, Opcodes.OPC_areturn, 0, 0, 0, 1, 0, 25, 0, 0, 0, 6, 0, 1, 0, 0, 0, 30, 0, 1, 0, 30, 0, 12, 0, 1, 0, 13, 0, 0, 0, 25, 0, 0, 0, 1, 0, 0, 0, 1, Opcodes.OPC_return, 0, 0, 0, 1, 0, 25, 0, 0, 0, 6, 0, 1, 0, 0, 0, Opcodes.OPC_fload_2, 0, 1, 0, 31, 0, 32, 0, 1, 0, 13, 0, 0, 0, Opcodes.OPC_aload_1, 0, 2, 0, 3, 0, 0, 0, 11, 42, Opcodes.OPC_aload_1, Opcodes.OPC_putfield, 0, 24, 42, Opcodes.OPC_aload_2, Opcodes.OPC_putfield, 0, 22, Opcodes.OPC_return, 0, 0, 0, 1, 0, 25, 0, 0, 0, 14, 0, 3, 0, 0, 0, 42, 0, 5, 0, Opcodes.OPC_aload_1, 0, 10, 0, 41, 0, 1, 0, 33, 0, 0, 0, 2, 0, 34};
    }

    public char[][] getImports() {
        return this.imports;
    }

    public char[] getPackageName() {
        return this.packageName;
    }

    public IBinaryType getRootCodeSnippetBinary() {
        if (this.codeSnippetBinary == null) {
            this.codeSnippetBinary = new CodeSnippetSkeleton();
        }
        return this.codeSnippetBinary;
    }

    public char[] getVarClassName() {
        VariablesInfo variablesInfo = this.installedVars;
        return variablesInfo == null ? CharOperation.NO_CHAR : CharOperation.concat(variablesInfo.packageName, variablesInfo.className, '.');
    }

    public GlobalVariable newVariable(char[] cArr, char[] cArr2, char[] cArr3) {
        GlobalVariable globalVariable = new GlobalVariable(cArr, cArr2, cArr3);
        int i10 = this.variableCount;
        GlobalVariable[] globalVariableArr = this.variables;
        if (i10 >= globalVariableArr.length) {
            GlobalVariable[] globalVariableArr2 = new GlobalVariable[i10 * 2];
            this.variables = globalVariableArr2;
            System.arraycopy(globalVariableArr, 0, globalVariableArr2, 0, i10);
        }
        GlobalVariable[] globalVariableArr3 = this.variables;
        int i11 = this.variableCount;
        this.variableCount = i11 + 1;
        globalVariableArr3[i11] = globalVariable;
        this.varsChanged = true;
        return globalVariable;
    }

    public void select(char[] cArr, int i10, int i11, SearchableEnvironment searchableEnvironment, ISelectionRequestor iSelectionRequestor, Map<String, String> map, WorkingCopyOwner workingCopyOwner) {
        final char[] charArray = "CodeSnippetSelection".toCharArray();
        long versionToJdkLevel = CompilerOptions.versionToJdkLevel(map.get("org.eclipse.jdt.core.compiler.compliance"));
        char[] cArr2 = this.packageName;
        char[][] cArr3 = this.imports;
        VariablesInfo variablesInfo = this.installedVars;
        final CodeSnippetToCuMapper codeSnippetToCuMapper = new CodeSnippetToCuMapper(cArr, cArr2, cArr3, charArray, variablesInfo == null ? null : variablesInfo.className, this.localVariableNames, this.localVariableTypeNames, this.localVariableModifiers, this.declaringTypeName, this.lineSeparator, versionToJdkLevel);
        ICompilationUnit iCompilationUnit = new ICompilationUnit() {
            @Override
            public char[] getContents() {
                return codeSnippetToCuMapper.getCUSource(EvaluationContext.this.lineSeparator);
            }

            @Override
            public char[] getFileName() {
                return CharOperation.concat(charArray, org.eclipse.jdt.internal.core.util.Util.defaultJavaExtension().toCharArray());
            }

            @Override
            public char[] getMainTypeName() {
                return charArray;
            }

            @Override
            public char[] getModuleName() {
                return null;
            }

            @Override
            public char[][] getPackageName() {
                return null;
            }

            @Override
            public boolean ignoreOptionalProblems() {
                return false;
            }
        };
        SelectionEngine selectionEngine = new SelectionEngine(searchableEnvironment, codeSnippetToCuMapper.getSelectionRequestor(iSelectionRequestor), map, workingCopyOwner);
        int i12 = codeSnippetToCuMapper.startPosOffset;
        selectionEngine.select(iCompilationUnit, i12 + i10, i12 + i11);
    }

    public void setImports(char[][] cArr) {
        this.imports = cArr;
        this.varsChanged = true;
    }

    public void setLineSeparator(String str) {
        this.lineSeparator = str;
    }

    public void setPackageName(char[] cArr) {
        this.packageName = cArr;
        this.varsChanged = true;
    }

    public void evaluate(char[] cArr, INameEnvironment iNameEnvironment, Map<String, String> map, IRequestor iRequestor, IProblemFactory iProblemFactory) throws InstallException {
        evaluate(cArr, null, null, null, null, true, false, iNameEnvironment, map, iRequestor, iProblemFactory);
    }
}
