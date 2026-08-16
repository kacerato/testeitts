package org.eclipse.jdt.internal.eval;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class Evaluator {
    EvaluationContext context;
    INameEnvironment environment;
    Map<String, String> options;
    IProblemFactory problemFactory;
    IRequestor requestor;

    public class C1CompilerRequestor implements ICompilerRequestor {
        boolean hasErrors = false;
        private final ArrayList val$classDefinitions;
        private final char[] val$source;

        public C1CompilerRequestor(char[] cArr, ArrayList arrayList) {
            this.val$source = cArr;
            this.val$classDefinitions = arrayList;
        }

        @Override
        public void acceptResult(CompilationResult compilationResult) {
            if (compilationResult.hasProblems()) {
                for (EvaluationResult evaluationResult : Evaluator.this.evaluationResultsForCompilationProblems(compilationResult, this.val$source)) {
                    for (CategorizedProblem categorizedProblem : evaluationResult.getProblems()) {
                        Evaluator.this.requestor.acceptProblem(categorizedProblem, evaluationResult.getEvaluationID(), evaluationResult.getEvaluationType());
                    }
                }
            }
            if (compilationResult.hasErrors()) {
                this.hasErrors = true;
                return;
            }
            for (ClassFile classFile : compilationResult.getClassFiles()) {
                this.val$classDefinitions.add(classFile);
            }
        }
    }

    public Evaluator(EvaluationContext evaluationContext, INameEnvironment iNameEnvironment, Map<String, String> map, IRequestor iRequestor, IProblemFactory iProblemFactory) {
        this.context = evaluationContext;
        this.environment = iNameEnvironment;
        this.options = map;
        this.requestor = iRequestor;
        this.problemFactory = iProblemFactory;
    }

    public abstract void addEvaluationResultForCompilationProblem(Map<char[], EvaluationResult> map, CategorizedProblem categorizedProblem, char[] cArr);

    public EvaluationResult[] evaluationResultsForCompilationProblems(CompilationResult compilationResult, char[] cArr) {
        CategorizedProblem[] allProblems = compilationResult.getAllProblems();
        HashMap hashMap = new HashMap(5);
        for (CategorizedProblem categorizedProblem : allProblems) {
            addEvaluationResultForCompilationProblem(hashMap, categorizedProblem, cArr);
        }
        int size = hashMap.size();
        EvaluationResult[] evaluationResultArr = new EvaluationResult[size];
        Iterator<EvaluationResult> it = hashMap.values().iterator();
        for (int i10 = 0; i10 < size; i10++) {
            evaluationResultArr[i10] = it.next();
        }
        return evaluationResultArr;
    }

    public abstract char[] getClassName();

    public ClassFile[] getClasses() {
        final char[] source = getSource();
        ArrayList arrayList = new ArrayList();
        C1CompilerRequestor c1CompilerRequestor = new C1CompilerRequestor(source, arrayList);
        getCompiler(c1CompilerRequestor).compile(new ICompilationUnit[]{new ICompilationUnit() {
            @Override
            public char[] getContents() {
                return source;
            }

            @Override
            public char[] getFileName() {
                return CharOperation.concat(Evaluator.this.getClassName(), Util.defaultJavaExtension().toCharArray());
            }

            @Override
            public char[] getMainTypeName() {
                return Evaluator.this.getClassName();
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
        }});
        if (c1CompilerRequestor.hasErrors) {
            return null;
        }
        ClassFile[] classFileArr = new ClassFile[arrayList.size()];
        arrayList.toArray(classFileArr);
        return classFileArr;
    }

    public Compiler getCompiler(ICompilerRequestor iCompilerRequestor) {
        CompilerOptions compilerOptions = new CompilerOptions(this.options);
        compilerOptions.performMethodsFullRecovery = true;
        compilerOptions.performStatementsRecovery = true;
        return new Compiler(this.environment, DefaultErrorHandlingPolicies.exitAfterAllProblems(), compilerOptions, iCompilerRequestor, this.problemFactory);
    }

    public abstract char[] getSource();
}
