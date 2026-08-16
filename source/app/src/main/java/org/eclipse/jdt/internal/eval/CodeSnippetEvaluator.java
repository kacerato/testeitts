package org.eclipse.jdt.internal.eval;

import java.util.Map;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;

public class CodeSnippetEvaluator extends Evaluator implements EvaluationConstants {
    static final boolean DEVELOPMENT_MODE = false;
    char[] codeSnippet;
    CodeSnippetToCuMapper mapper;

    public CodeSnippetEvaluator(char[] cArr, EvaluationContext evaluationContext, INameEnvironment iNameEnvironment, Map<String, String> map, IRequestor iRequestor, IProblemFactory iProblemFactory) {
        super(evaluationContext, iNameEnvironment, map, iRequestor, iProblemFactory);
        this.codeSnippet = cArr;
    }

    private CodeSnippetToCuMapper getMapper() {
        char[] cArr;
        if (this.mapper == null) {
            VariablesInfo variablesInfo = this.context.installedVars;
            if (variablesInfo != null) {
                char[] cArr2 = variablesInfo.packageName;
                cArr = (cArr2 == null || cArr2.length == 0) ? variablesInfo.className : CharOperation.concat(cArr2, variablesInfo.className, '.');
            } else {
                cArr = null;
            }
            char[] cArr3 = cArr;
            char[] cArr4 = this.codeSnippet;
            EvaluationContext evaluationContext = this.context;
            char[] cArr5 = evaluationContext.packageName;
            char[][] cArr6 = evaluationContext.imports;
            char[] className = getClassName();
            EvaluationContext evaluationContext2 = this.context;
            this.mapper = new CodeSnippetToCuMapper(cArr4, cArr5, cArr6, className, cArr3, evaluationContext2.localVariableNames, evaluationContext2.localVariableTypeNames, evaluationContext2.localVariableModifiers, evaluationContext2.declaringTypeName, evaluationContext2.lineSeparator, CompilerOptions.versionToJdkLevel(this.options.get("org.eclipse.jdt.core.compiler.compliance")));
        }
        return this.mapper;
    }

    private INameEnvironment getWrapperEnvironment() {
        return new CodeSnippetEnvironment(this.environment, this.context);
    }

    @Override
    public void addEvaluationResultForCompilationProblem(Map<char[], EvaluationResult> map, CategorizedProblem categorizedProblem, char[] cArr) {
        CodeSnippetToCuMapper mapper = getMapper();
        int sourceLineNumber = categorizedProblem.getSourceLineNumber();
        int evaluationType = mapper.getEvaluationType(sourceLineNumber);
        if (evaluationType == 2) {
            cArr = this.codeSnippet;
            categorizedProblem.setSourceLineNumber(sourceLineNumber - this.mapper.lineNumberOffset);
            categorizedProblem.setSourceStart(categorizedProblem.getSourceStart() - this.mapper.startPosOffset);
            categorizedProblem.setSourceEnd(categorizedProblem.getSourceEnd() - this.mapper.startPosOffset);
        } else if (evaluationType == 3) {
            cArr = mapper.getImport(sourceLineNumber);
            categorizedProblem.setSourceLineNumber(1);
            categorizedProblem.setSourceStart(0);
            categorizedProblem.setSourceEnd(cArr.length - 1);
        } else if (evaluationType == 4) {
            cArr = this.context.packageName;
            categorizedProblem.setSourceLineNumber(1);
            categorizedProblem.setSourceStart(0);
            categorizedProblem.setSourceEnd(cArr.length - 1);
        } else if (evaluationType != 5) {
            cArr = null;
        }
        EvaluationResult evaluationResult = map.get(cArr);
        if (evaluationResult == null) {
            map.put(cArr, new EvaluationResult(cArr, evaluationType, new CategorizedProblem[]{categorizedProblem}));
        } else {
            evaluationResult.addProblem(categorizedProblem);
        }
    }

    @Override
    public char[] getClassName() {
        return CharOperation.concat(EvaluationConstants.CODE_SNIPPET_CLASS_NAME_PREFIX, Integer.toString(EvaluationContext.CODE_SNIPPET_COUNTER + 1).toCharArray());
    }

    @Override
    public Compiler getCompiler(ICompilerRequestor iCompilerRequestor) {
        ClassFileReader classFileReader;
        CompilerOptions compilerOptions = new CompilerOptions(this.options);
        compilerOptions.performMethodsFullRecovery = true;
        compilerOptions.performStatementsRecovery = true;
        CodeSnippetCompiler codeSnippetCompiler = new CodeSnippetCompiler(this.environment, DefaultErrorHandlingPolicies.exitAfterAllProblems(), compilerOptions, iCompilerRequestor, this.problemFactory, this.context, getMapper().startPosOffset, (getMapper().startPosOffset + this.codeSnippet.length) - 1);
        ((CodeSnippetParser) codeSnippetCompiler.parser).lineSeparatorLength = this.context.lineSeparator.length();
        IBinaryType rootCodeSnippetBinary = this.context.getRootCodeSnippetBinary();
        if (rootCodeSnippetBinary != null) {
            codeSnippetCompiler.lookupEnvironment.cacheBinaryType(rootCodeSnippetBinary, null);
        }
        VariablesInfo variablesInfo = this.context.installedVars;
        if (variablesInfo != null) {
            for (ClassFile classFile : variablesInfo.classFiles) {
                try {
                    classFileReader = new ClassFileReader(classFile.getBytes(), null);
                } catch (ClassFormatException e10) {
                    e10.printStackTrace();
                    classFileReader = null;
                }
                codeSnippetCompiler.lookupEnvironment.cacheBinaryType(classFileReader, null);
            }
        }
        return codeSnippetCompiler;
    }

    @Override
    public char[] getSource() {
        return getMapper().cuSource;
    }
}
