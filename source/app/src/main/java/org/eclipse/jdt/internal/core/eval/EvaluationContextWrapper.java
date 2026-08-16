package org.eclipse.jdt.internal.core.eval;

import java.util.Locale;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.ICodeCompletionRequestor;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.ICompletionRequestor;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.eval.ICodeSnippetRequestor;
import org.eclipse.jdt.core.eval.IEvaluationContext;
import org.eclipse.jdt.core.eval.IGlobalVariable;
import org.eclipse.jdt.internal.codeassist.CompletionRequestorWrapper;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.core.AbstractClassFile;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.CompilationGroup;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.SelectionRequestor;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.builder.NameEnvironment;
import org.eclipse.jdt.internal.core.builder.ProblemFactory;
import org.eclipse.jdt.internal.eval.EvaluationContext;
import org.eclipse.jdt.internal.eval.GlobalVariable;
import org.eclipse.jdt.internal.eval.IRequestor;
import org.eclipse.jdt.internal.eval.InstallException;

public class EvaluationContextWrapper implements IEvaluationContext {
    protected EvaluationContext context;
    protected JavaProject project;

    public EvaluationContextWrapper(EvaluationContext evaluationContext, JavaProject javaProject) {
        this.context = evaluationContext;
        this.project = javaProject;
    }

    @Override
    public IGlobalVariable[] allVariables() {
        GlobalVariable[] allVariables = this.context.allVariables();
        int length = allVariables.length;
        GlobalVariableWrapper[] globalVariableWrapperArr = new GlobalVariableWrapper[length];
        for (int i10 = 0; i10 < length; i10++) {
            globalVariableWrapperArr[i10] = new GlobalVariableWrapper(allVariables[i10]);
        }
        return globalVariableWrapperArr;
    }

    public void checkBuilderState() {
    }

    @Override
    public void codeComplete(String str, int i10, ICompletionRequestor iCompletionRequestor) throws JavaModelException {
        codeComplete(str, i10, iCompletionRequestor, DefaultWorkingCopyOwner.PRIMARY);
    }

    @Override
    public IJavaElement[] codeSelect(String str, int i10, int i11) throws JavaModelException {
        return codeSelect(str, i10, i11, DefaultWorkingCopyOwner.PRIMARY);
    }

    @Override
    public void deleteVariable(IGlobalVariable iGlobalVariable) {
        if (!(iGlobalVariable instanceof GlobalVariableWrapper)) {
            throw new Error("Unknown implementation of IGlobalVariable");
        }
        this.context.deleteVariable(((GlobalVariableWrapper) iGlobalVariable).variable);
    }

    @Override
    public void evaluateCodeSnippet(String str, String[] strArr, String[] strArr2, int[] iArr, IType iType, boolean z10, boolean z11, ICodeSnippetRequestor iCodeSnippetRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException {
        char[][] imports;
        checkBuilderState();
        int length = strArr.length;
        char[][] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = strArr[i10].toCharArray();
        }
        int length2 = strArr2.length;
        char[][] cArr2 = new char[length2];
        for (int i11 = 0; i11 < length2; i11++) {
            cArr2[i11] = strArr2[i11].toCharArray();
        }
        Map<String, String> options = this.project.getOptions(true);
        if (iType != null) {
            this.context.setPackageName(iType.getPackageFragment().getElementName().toCharArray());
            ICompilationUnit compilationUnit = iType.getCompilationUnit();
            if (compilationUnit != null) {
                IImportDeclaration[] imports2 = compilationUnit.getImports();
                int length3 = imports2.length;
                if (length3 != 0) {
                    char[][] cArr3 = new char[length3];
                    for (int i12 = 0; i12 < length3; i12++) {
                        cArr3[i12] = imports2[i12].getElementName().toCharArray();
                    }
                    this.context.setImports(cArr3);
                    options.put("org.eclipse.jdt.core.compiler.problem.unusedImport", "ignore");
                }
            } else {
                SourceMapper sourceMapper = ((AbstractClassFile) iType.getClassFile()).getSourceMapper();
                if (sourceMapper != null && (imports = sourceMapper.getImports((BinaryType) iType)) != null) {
                    this.context.setImports(imports);
                    options.put("org.eclipse.jdt.core.compiler.problem.unusedImport", "ignore");
                }
            }
        }
        INameEnvironment iNameEnvironment = null;
        try {
            try {
                EvaluationContext evaluationContext = this.context;
                char[] charArray = str.toCharArray();
                char[] charArray2 = iType == null ? null : iType.getFullyQualifiedName().toCharArray();
                iNameEnvironment = getBuildNameEnvironment();
                evaluationContext.evaluate(charArray, cArr, cArr2, iArr, charArray2, z10, z11, iNameEnvironment, options, getInfrastructureEvaluationRequestor(iCodeSnippetRequestor), getProblemFactory());
                if (iNameEnvironment == null) {
                    return;
                }
            } catch (InstallException e10) {
                handleInstallException(e10);
                if (iNameEnvironment == null) {
                    return;
                }
            }
            iNameEnvironment.cleanup();
        } catch (Throwable th2) {
            if (iNameEnvironment != null) {
                iNameEnvironment.cleanup();
            }
            throw th2;
        }
    }

    @Override
    public void evaluateVariable(IGlobalVariable iGlobalVariable, ICodeSnippetRequestor iCodeSnippetRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException {
        checkBuilderState();
        INameEnvironment iNameEnvironment = null;
        try {
            try {
                EvaluationContext evaluationContext = this.context;
                GlobalVariable globalVariable = ((GlobalVariableWrapper) iGlobalVariable).variable;
                iNameEnvironment = getBuildNameEnvironment();
                evaluationContext.evaluateVariable(globalVariable, iNameEnvironment, this.project.getOptions(true), getInfrastructureEvaluationRequestor(iCodeSnippetRequestor), getProblemFactory());
                if (iNameEnvironment == null) {
                    return;
                }
            } catch (InstallException e10) {
                handleInstallException(e10);
                if (iNameEnvironment == null) {
                    return;
                }
            }
            iNameEnvironment.cleanup();
        } catch (Throwable th2) {
            if (iNameEnvironment != null) {
                iNameEnvironment.cleanup();
            }
            throw th2;
        }
    }

    public INameEnvironment getBuildNameEnvironment() {
        return new NameEnvironment(getProject(), CompilationGroup.TEST);
    }

    @Override
    public String[] getImports() {
        char[][] imports = this.context.getImports();
        int length = imports.length;
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr[i10] = new String(imports[i10]);
        }
        return strArr;
    }

    public EvaluationContext getInfrastructureEvaluationContext() {
        return this.context;
    }

    public IRequestor getInfrastructureEvaluationRequestor(ICodeSnippetRequestor iCodeSnippetRequestor) {
        return new RequestorWrapper(iCodeSnippetRequestor);
    }

    @Override
    public String getPackageName() {
        return new String(this.context.getPackageName());
    }

    public IProblemFactory getProblemFactory() {
        return ProblemFactory.getProblemFactory(Locale.getDefault());
    }

    @Override
    public IJavaProject getProject() {
        return this.project;
    }

    public char[] getVarClassName() {
        return this.context.getVarClassName();
    }

    public void handleInstallException(InstallException installException) throws JavaModelException {
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.EVALUATION_ERROR, installException.toString()));
    }

    @Override
    public IGlobalVariable newVariable(String str, String str2, String str3) {
        return new GlobalVariableWrapper(this.context.newVariable(str.toCharArray(), str2.toCharArray(), str3 == null ? null : str3.toCharArray()));
    }

    @Override
    public void setImports(String[] strArr) {
        int length = strArr.length;
        char[][] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = strArr[i10].toCharArray();
        }
        this.context.setImports(cArr);
    }

    @Override
    public void setPackageName(String str) {
        this.context.setPackageName(str.toCharArray());
    }

    @Override
    public void validateImports(ICodeSnippetRequestor iCodeSnippetRequestor) {
        checkBuilderState();
        INameEnvironment iNameEnvironment = null;
        try {
            EvaluationContext evaluationContext = this.context;
            iNameEnvironment = getBuildNameEnvironment();
            evaluationContext.evaluateImports(iNameEnvironment, getInfrastructureEvaluationRequestor(iCodeSnippetRequestor), getProblemFactory());
        } finally {
            if (iNameEnvironment != null) {
                iNameEnvironment.cleanup();
            }
        }
    }

    @Override
    public void codeComplete(String str, int i10, ICompletionRequestor iCompletionRequestor, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        if (iCompletionRequestor != null) {
            codeComplete(str, i10, new CompletionRequestorWrapper(iCompletionRequestor), workingCopyOwner);
            return;
        }
        throw new IllegalArgumentException("Completion requestor cannot be null");
    }

    @Override
    public IJavaElement[] codeSelect(String str, int i10, int i11, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        SearchableEnvironment newSearchableNameEnvironment = this.project.newSearchableNameEnvironment(workingCopyOwner);
        SelectionRequestor selectionRequestor = new SelectionRequestor(newSearchableNameEnvironment.nameLookup, null);
        this.context.select(str.toCharArray(), i10, (i11 + i10) - 1, newSearchableNameEnvironment, selectionRequestor, this.project.getOptions(true), workingCopyOwner);
        return selectionRequestor.getElements();
    }

    @Override
    public void codeComplete(String str, int i10, CompletionRequestor completionRequestor) throws JavaModelException {
        codeComplete(str, i10, completionRequestor, DefaultWorkingCopyOwner.PRIMARY);
    }

    @Override
    public void codeComplete(String str, int i10, CompletionRequestor completionRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException {
        codeComplete(str, i10, completionRequestor, DefaultWorkingCopyOwner.PRIMARY, null);
    }

    @Override
    public void codeComplete(String str, int i10, CompletionRequestor completionRequestor, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        codeComplete(str, i10, completionRequestor, workingCopyOwner, null);
    }

    @Override
    public void codeComplete(String str, int i10, CompletionRequestor completionRequestor, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        this.context.complete(str.toCharArray(), i10, this.project.newSearchableNameEnvironment(workingCopyOwner), completionRequestor, this.project.getOptions(true), this.project, workingCopyOwner, iProgressMonitor);
    }

    @Override
    public void codeComplete(String str, int i10, final ICodeCompletionRequestor iCodeCompletionRequestor) throws JavaModelException {
        if (iCodeCompletionRequestor == null) {
            codeComplete(str, i10, (ICompletionRequestor) null);
        } else {
            codeComplete(str, i10, new ICompletionRequestor() {
                @Override
                public void acceptAnonymousType(char[] cArr, char[] cArr2, char[][] cArr3, char[][] cArr4, char[][] cArr5, char[] cArr6, int i11, int i12, int i13, int i14) {
                }

                @Override
                public void acceptClass(char[] cArr, char[] cArr2, char[] cArr3, int i11, int i12, int i13, int i14) {
                    iCodeCompletionRequestor.acceptClass(cArr, cArr2, cArr3, i11, i12, i13);
                }

                @Override
                public void acceptError(IProblem iProblem) {
                }

                @Override
                public void acceptField(char[] cArr, char[] cArr2, char[] cArr3, char[] cArr4, char[] cArr5, char[] cArr6, int i11, int i12, int i13, int i14) {
                    iCodeCompletionRequestor.acceptField(cArr, cArr2, cArr3, cArr4, cArr5, cArr6, i11, i12, i13);
                }

                @Override
                public void acceptInterface(char[] cArr, char[] cArr2, char[] cArr3, int i11, int i12, int i13, int i14) {
                    iCodeCompletionRequestor.acceptInterface(cArr, cArr2, cArr3, i11, i12, i13);
                }

                @Override
                public void acceptKeyword(char[] cArr, int i11, int i12, int i13) {
                    iCodeCompletionRequestor.acceptKeyword(cArr, i11, i12);
                }

                @Override
                public void acceptLabel(char[] cArr, int i11, int i12, int i13) {
                    iCodeCompletionRequestor.acceptLabel(cArr, i11, i12);
                }

                @Override
                public void acceptLocalVariable(char[] cArr, char[] cArr2, char[] cArr3, int i11, int i12, int i13, int i14) {
                }

                @Override
                public void acceptMethod(char[] cArr, char[] cArr2, char[] cArr3, char[][] cArr4, char[][] cArr5, char[][] cArr6, char[] cArr7, char[] cArr8, char[] cArr9, int i11, int i12, int i13, int i14) {
                    iCodeCompletionRequestor.acceptMethod(cArr, cArr2, cArr3, cArr4, cArr5, cArr7, cArr8, cArr9, i11, i12, i13);
                }

                @Override
                public void acceptMethodDeclaration(char[] cArr, char[] cArr2, char[] cArr3, char[][] cArr4, char[][] cArr5, char[][] cArr6, char[] cArr7, char[] cArr8, char[] cArr9, int i11, int i12, int i13, int i14) {
                }

                @Override
                public void acceptModifier(char[] cArr, int i11, int i12, int i13) {
                    iCodeCompletionRequestor.acceptModifier(cArr, i11, i12);
                }

                @Override
                public void acceptPackage(char[] cArr, char[] cArr2, int i11, int i12, int i13) {
                    iCodeCompletionRequestor.acceptPackage(cArr, cArr2, i11, i12);
                }

                @Override
                public void acceptType(char[] cArr, char[] cArr2, char[] cArr3, int i11, int i12, int i13) {
                    iCodeCompletionRequestor.acceptType(cArr, cArr2, cArr3, i11, i12);
                }

                @Override
                public void acceptVariableName(char[] cArr, char[] cArr2, char[] cArr3, char[] cArr4, int i11, int i12, int i13) {
                }
            });
        }
    }

    @Override
    public void evaluateCodeSnippet(String str, ICodeSnippetRequestor iCodeSnippetRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException {
        checkBuilderState();
        INameEnvironment iNameEnvironment = null;
        try {
            try {
                EvaluationContext evaluationContext = this.context;
                char[] charArray = str.toCharArray();
                iNameEnvironment = getBuildNameEnvironment();
                evaluationContext.evaluate(charArray, iNameEnvironment, this.project.getOptions(true), getInfrastructureEvaluationRequestor(iCodeSnippetRequestor), getProblemFactory());
                if (iNameEnvironment == null) {
                    return;
                }
            } catch (InstallException e10) {
                handleInstallException(e10);
                if (iNameEnvironment == null) {
                    return;
                }
            }
            iNameEnvironment.cleanup();
        } catch (Throwable th2) {
            if (iNameEnvironment != null) {
                iNameEnvironment.cleanup();
            }
            throw th2;
        }
    }
}
