package org.eclipse.jdt.internal.core.search.indexing;

import java.util.Collections;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FunctionalExpression;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.ITypeRequestor;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.jdom.CompilationUnit;
import org.eclipse.jdt.internal.core.search.matching.IndexBasedJavaSearchEnvironment;
import org.eclipse.jdt.internal.core.search.matching.MethodPattern;
import org.eclipse.jdt.internal.core.search.processing.JobManager;

public class SourceIndexer extends AbstractIndexer implements ITypeRequestor, SuffixConstants {
    private static final boolean DEBUG = false;
    private Parser basicParser;
    private CompilationUnit compilationUnit;
    private CompilationUnitDeclaration cud;
    private LookupEnvironment lookupEnvironment;
    private CompilerOptions options;
    public ISourceElementRequestor requestor;

    public SourceIndexer(SearchDocument searchDocument) {
        super(searchDocument);
        this.requestor = new SourceIndexerRequestor(this);
    }

    private void purgeMethodStatements(TypeDeclaration typeDeclaration) {
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration.methods;
        int length = abstractMethodDeclarationArr == null ? 0 : abstractMethodDeclarationArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            AbstractMethodDeclaration abstractMethodDeclaration = abstractMethodDeclarationArr[i10];
            if (abstractMethodDeclaration != null && (abstractMethodDeclaration.bits & 2097152) == 0) {
                abstractMethodDeclaration.statements = null;
                abstractMethodDeclaration.javadoc = null;
            }
        }
        TypeDeclaration[] typeDeclarationArr = typeDeclaration.memberTypes;
        if (typeDeclarationArr != null) {
            for (TypeDeclaration typeDeclaration2 : typeDeclarationArr) {
                purgeMethodStatements(typeDeclaration2);
            }
        }
    }

    private void reduceParseTree(CompilationUnitDeclaration compilationUnitDeclaration) {
        TypeDeclaration[] typeDeclarationArr = compilationUnitDeclaration.types;
        int length = typeDeclarationArr == null ? 0 : typeDeclarationArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            purgeMethodStatements(typeDeclarationArr[i10]);
        }
    }

    @Override
    public void accept(IBinaryType iBinaryType, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        this.lookupEnvironment.createBinaryTypeFrom(iBinaryType, packageBinding, accessRestriction);
    }

    @Override
    public void indexDocument() {
        char[] cArr;
        char[] cArr2;
        String path = this.document.getPath();
        SourceElementParser parser = this.document.getParser();
        if (parser == null) {
            parser = JavaModelManager.getJavaModelManager().indexManager.getSourceElementParser(JavaCore.create(ResourcesPlugin.getWorkspace().getRoot().getProject(new Path(path).segment(0))), this.requestor);
        } else {
            parser.setRequestor(this.requestor);
        }
        try {
            cArr = this.document.getCharContents();
            try {
                cArr2 = path.toCharArray();
            } catch (Exception unused) {
                cArr2 = null;
                if (cArr != null) {
                    return;
                } else {
                    return;
                }
            }
        } catch (Exception unused2) {
            cArr = null;
        }
        if (cArr != null || cArr2 == null) {
            return;
        }
        CompilationUnit compilationUnit = new CompilationUnit(cArr, cArr2);
        this.compilationUnit = compilationUnit;
        try {
            if (parser.parseCompilationUnit(compilationUnit, true, null).hasFunctionalTypes()) {
                this.document.requireIndexingResolvedDocument();
            }
        } catch (Exception e10) {
            if (JobManager.VERBOSE) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void indexResolvedDocument() {
        MethodBinding methodBinding;
        try {
            int i10 = this.cud.functionalExpressionsCount;
            for (int i11 = 0; i11 < i10; i11++) {
                FunctionalExpression functionalExpression = this.cud.functionalExpressions[i11];
                if (functionalExpression instanceof LambdaExpression) {
                    LambdaExpression lambdaExpression = (LambdaExpression) functionalExpression;
                    MethodBinding methodBinding2 = lambdaExpression.binding;
                    if (methodBinding2 != null && methodBinding2.isValidBinding()) {
                        char[] sourceName = lambdaExpression.resolvedType.sourceName();
                        char[] cArr = IIndexConstants.METHOD_DECL;
                        MethodBinding methodBinding3 = lambdaExpression.descriptor;
                        addIndexEntry(cArr, MethodPattern.createIndexKey(methodBinding3.selector, methodBinding3.parameters.length));
                        char[] cArr2 = CharOperation.NO_CHAR;
                        addClassDeclaration(0, cArr2, IIndexConstants.ONE_ZERO, IIndexConstants.ONE_ZERO_CHAR, cArr2, new char[][]{sourceName}, CharOperation.NO_CHAR_CHAR, true);
                    }
                } else {
                    ReferenceExpression referenceExpression = (ReferenceExpression) functionalExpression;
                    if (!referenceExpression.isArrayConstructorReference() && (methodBinding = referenceExpression.getMethodBinding()) != null && methodBinding.isValidBinding()) {
                        if (referenceExpression.isMethodReference()) {
                            addMethodReference(methodBinding.selector, methodBinding.parameters.length);
                        } else {
                            addConstructorReference(methodBinding.declaringClass.sourceName(), methodBinding.parameters.length);
                        }
                    }
                }
            }
        } catch (Exception e10) {
            if (JobManager.VERBOSE) {
                e10.printStackTrace();
            }
        }
    }

    public void resolveDocument() {
        try {
            try {
                JavaProject javaProject = (JavaProject) JavaModelManager.getJavaModelManager().getJavaModel().getJavaProject(ResourcesPlugin.getWorkspace().getRoot().getProject(new Path(this.document.getPath()).segment(0)));
                this.options = new CompilerOptions(javaProject.getOptions(true));
                ProblemReporter problemReporter = new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), this.options, new DefaultProblemFactory());
                Parser parser = new Parser(problemReporter, false);
                this.basicParser = parser;
                parser.reportOnlyOneSyntaxError = true;
                parser.scanner.taskTags = null;
                this.cud = parser.parse(this.compilationUnit, new CompilationResult(this.compilationUnit, 0, 0, this.options.maxProblemsPerUnit));
                JavaModelManager.getJavaModelManager().cacheZipFiles(this);
                this.lookupEnvironment = new LookupEnvironment(this, this.options, problemReporter, IndexBasedJavaSearchEnvironment.create(Collections.singletonList(javaProject), JavaModelManager.getJavaModelManager().getWorkingCopies(DefaultWorkingCopyOwner.PRIMARY, true)));
                reduceParseTree(this.cud);
                this.lookupEnvironment.buildTypeBindings(this.cud, null);
                this.lookupEnvironment.completeTypeBindings();
                this.cud.scope.faultInTypes();
                this.cud.resolve();
            } catch (Exception e10) {
                if (JobManager.VERBOSE) {
                    e10.printStackTrace();
                }
            }
        } finally {
            JavaModelManager.getJavaModelManager().flushZipFiles(this);
        }
    }

    @Override
    public void accept(ICompilationUnit iCompilationUnit, AccessRestriction accessRestriction) {
        CompilationUnitDeclaration dietParse = this.basicParser.dietParse(iCompilationUnit, new CompilationResult(iCompilationUnit, 1, 1, this.options.maxProblemsPerUnit));
        this.lookupEnvironment.buildTypeBindings(dietParse, accessRestriction);
        this.lookupEnvironment.completeTypeBindings(dietParse, true);
    }

    @Override
    public void accept(ISourceType[] iSourceTypeArr, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        ISourceType iSourceType = iSourceTypeArr[0];
        while (iSourceType.getEnclosingType() != null) {
            iSourceType = iSourceType.getEnclosingType();
        }
        accept((ICompilationUnit) ((SourceTypeElementInfo) iSourceType).getHandle().getCompilationUnit(), accessRestriction);
    }
}
