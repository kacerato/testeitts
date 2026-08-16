package org.eclipse.jdt.internal.eval;

import java.util.Map;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.core.JavaElement;

public class VariablesEvaluator extends Evaluator implements EvaluationConstants {
    public VariablesEvaluator(EvaluationContext evaluationContext, INameEnvironment iNameEnvironment, Map<String, String> map, IRequestor iRequestor, IProblemFactory iProblemFactory) {
        super(evaluationContext, iNameEnvironment, map, iRequestor, iProblemFactory);
    }

    private int numberOfCRs(char[] cArr) {
        int i10 = 0;
        boolean z10 = false;
        for (char c10 : cArr) {
            if (c10 != '\n') {
                if (c10 == '\r') {
                    i10++;
                    z10 = true;
                }
            } else if (!z10) {
                i10++;
            }
            z10 = false;
        }
        return i10;
    }

    @Override
    public void addEvaluationResultForCompilationProblem(Map<char[], EvaluationResult> map, CategorizedProblem categorizedProblem, char[] cArr) {
        int i10;
        int sourceLineNumber = categorizedProblem.getSourceLineNumber();
        char[] packageName = getPackageName();
        int i11 = 5;
        int i12 = 1;
        if (packageName.length > 0) {
            if (sourceLineNumber == 1) {
                categorizedProblem.setSourceLineNumber(1);
                categorizedProblem.setSourceStart(0);
                categorizedProblem.setSourceEnd(packageName.length - 1);
                i11 = 4;
                cArr = packageName;
            }
            i10 = 2;
        } else {
            i10 = 1;
        }
        char[][] cArr2 = this.context.imports;
        if (i10 <= sourceLineNumber && sourceLineNumber < cArr2.length + i10) {
            cArr = cArr2[sourceLineNumber - i10];
            categorizedProblem.setSourceLineNumber(1);
            categorizedProblem.setSourceStart(0);
            categorizedProblem.setSourceEnd(cArr.length - 1);
            i11 = 3;
        }
        int length = i10 + cArr2.length + 1;
        EvaluationContext evaluationContext = this.context;
        int i13 = evaluationContext.variableCount;
        if (length <= sourceLineNumber && sourceLineNumber < length + i13) {
            GlobalVariable globalVariable = evaluationContext.variables[sourceLineNumber - length];
            char[] name = globalVariable.getName();
            int sourceStart = categorizedProblem.getSourceStart() - globalVariable.declarationStart;
            int sourceEnd = categorizedProblem.getSourceEnd() - globalVariable.declarationStart;
            int length2 = globalVariable.getTypeName().length;
            if (sourceStart < 0 || sourceEnd >= length2) {
                int i14 = length2 + 1;
                sourceStart -= i14;
                sourceEnd -= i14;
                categorizedProblem.setSourceLineNumber(0);
            } else {
                categorizedProblem.setSourceLineNumber(-1);
            }
            categorizedProblem.setSourceStart(sourceStart);
            categorizedProblem.setSourceEnd(sourceEnd);
            cArr = name;
            i11 = 1;
        }
        int i15 = 0;
        while (true) {
            if (i15 >= i13) {
                i12 = i11;
                break;
            }
            GlobalVariable globalVariable2 = this.context.variables[i15];
            char[] initializer = globalVariable2.getInitializer();
            int length3 = initializer == null ? 0 : initializer.length;
            if (globalVariable2.initializerStart <= categorizedProblem.getSourceStart() && categorizedProblem.getSourceEnd() < globalVariable2.initializerStart + globalVariable2.name.length) {
                return;
            }
            if (globalVariable2.initExpressionStart <= categorizedProblem.getSourceStart() && categorizedProblem.getSourceEnd() < globalVariable2.initExpressionStart + length3) {
                cArr = globalVariable2.name;
                categorizedProblem.setSourceLineNumber((sourceLineNumber - globalVariable2.initializerLineStart) + 1);
                categorizedProblem.setSourceStart(categorizedProblem.getSourceStart() - globalVariable2.initExpressionStart);
                categorizedProblem.setSourceEnd(categorizedProblem.getSourceEnd() - globalVariable2.initExpressionStart);
                break;
            }
            i15++;
        }
        EvaluationResult evaluationResult = map.get(cArr);
        if (evaluationResult == null) {
            map.put(cArr, new EvaluationResult(cArr, i12, new CategorizedProblem[]{categorizedProblem}));
        } else {
            evaluationResult.addProblem(categorizedProblem);
        }
    }

    @Override
    public char[] getClassName() {
        return CharOperation.concat(EvaluationConstants.GLOBAL_VARS_CLASS_NAME_PREFIX, Integer.toString(EvaluationContext.VAR_CLASS_COUNTER + 1).toCharArray());
    }

    @Override
    public Compiler getCompiler(ICompilerRequestor iCompilerRequestor) {
        ClassFileReader classFileReader;
        Compiler compiler = super.getCompiler(iCompilerRequestor);
        IBinaryType rootCodeSnippetBinary = this.context.getRootCodeSnippetBinary();
        if (rootCodeSnippetBinary != null) {
            compiler.lookupEnvironment.cacheBinaryType(rootCodeSnippetBinary, null);
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
                compiler.lookupEnvironment.cacheBinaryType(classFileReader, null);
            }
        }
        return compiler;
    }

    public char[] getPackageName() {
        return this.context.packageName;
    }

    @Override
    public char[] getSource() {
        int i10;
        StringBuffer stringBuffer = new StringBuffer();
        char[] packageName = getPackageName();
        if (packageName.length != 0) {
            stringBuffer.append("package ");
            stringBuffer.append(packageName);
            stringBuffer.append(';');
            stringBuffer.append(this.context.lineSeparator);
            i10 = 2;
        } else {
            i10 = 1;
        }
        for (char[] cArr : this.context.imports) {
            stringBuffer.append("import ");
            stringBuffer.append(cArr);
            stringBuffer.append(';');
            stringBuffer.append(this.context.lineSeparator);
            i10++;
        }
        stringBuffer.append("public class ");
        stringBuffer.append(getClassName());
        stringBuffer.append(" extends ");
        stringBuffer.append(EvaluationConstants.PACKAGE_NAME);
        stringBuffer.append(".");
        stringBuffer.append(EvaluationConstants.ROOT_CLASS_NAME);
        stringBuffer.append(" {");
        stringBuffer.append(this.context.lineSeparator);
        int i11 = i10 + 1;
        EvaluationContext evaluationContext = this.context;
        GlobalVariable[] globalVariableArr = evaluationContext.variables;
        VariablesInfo variablesInfo = evaluationContext.installedVars;
        for (int i12 = 0; i12 < this.context.variableCount; i12++) {
            GlobalVariable globalVariable = globalVariableArr[i12];
            stringBuffer.append("\tpublic static ");
            globalVariable.declarationStart = stringBuffer.length();
            stringBuffer.append(globalVariable.typeName);
            stringBuffer.append(" ");
            stringBuffer.append(globalVariable.name);
            stringBuffer.append(';');
            stringBuffer.append(this.context.lineSeparator);
            i11++;
        }
        stringBuffer.append("\tstatic {");
        stringBuffer.append(this.context.lineSeparator);
        int i13 = i11 + 1;
        for (int i14 = 0; i14 < this.context.variableCount; i14++) {
            GlobalVariable globalVariable2 = globalVariableArr[i14];
            char[] cArr2 = globalVariable2.name;
            GlobalVariable varNamed = variablesInfo == null ? null : variablesInfo.varNamed(cArr2);
            if (varNamed == null || !CharOperation.equals(varNamed.typeName, globalVariable2.typeName)) {
                char[] cArr3 = globalVariable2.initializer;
                if (cArr3 != null) {
                    stringBuffer.append("\t\ttry {");
                    stringBuffer.append(this.context.lineSeparator);
                    int i15 = i13 + 1;
                    globalVariable2.initializerLineStart = i15;
                    stringBuffer.append("\t\t\t");
                    globalVariable2.initializerStart = stringBuffer.length();
                    stringBuffer.append(cArr2);
                    stringBuffer.append("= ");
                    globalVariable2.initExpressionStart = stringBuffer.length();
                    stringBuffer.append(cArr3);
                    int numberOfCRs = i15 + numberOfCRs(cArr3);
                    stringBuffer.append(';');
                    stringBuffer.append(this.context.lineSeparator);
                    stringBuffer.append("\t\t} catch (Throwable e) {");
                    stringBuffer.append(this.context.lineSeparator);
                    stringBuffer.append("\t\t\te.printStackTrace();");
                    stringBuffer.append(this.context.lineSeparator);
                    stringBuffer.append("\t\t}");
                    stringBuffer.append(this.context.lineSeparator);
                    i13 = numberOfCRs + 4;
                }
            } else {
                stringBuffer.append("\t\t");
                stringBuffer.append(cArr2);
                stringBuffer.append("= ");
                char[] cArr4 = variablesInfo.packageName;
                if (cArr4 != null && cArr4.length != 0) {
                    stringBuffer.append(cArr4);
                    stringBuffer.append(".");
                }
                stringBuffer.append(variablesInfo.className);
                stringBuffer.append(".");
                stringBuffer.append(cArr2);
                stringBuffer.append(';');
                stringBuffer.append(this.context.lineSeparator);
                i13++;
            }
        }
        stringBuffer.append("\t}");
        stringBuffer.append(this.context.lineSeparator);
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        stringBuffer.append(this.context.lineSeparator);
        int length = stringBuffer.length();
        char[] cArr5 = new char[length];
        stringBuffer.getChars(0, length, cArr5, 0);
        return cArr5;
    }
}
