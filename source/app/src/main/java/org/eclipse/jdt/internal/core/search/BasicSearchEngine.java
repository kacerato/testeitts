package org.eclipse.jdt.internal.core.search;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Stack;
import java.util.regex.Pattern;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageDeclaration;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.MethodNameMatch;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.core.search.SearchRequestor;
import org.eclipse.jdt.core.search.TypeNameMatch;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ExtraFlags;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.search.matching.ConstructorDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.DeclarationOfAccessedFieldsPattern;
import org.eclipse.jdt.internal.core.search.matching.DeclarationOfReferencedMethodsPattern;
import org.eclipse.jdt.internal.core.search.matching.DeclarationOfReferencedTypesPattern;
import org.eclipse.jdt.internal.core.search.matching.JavaSearchPattern;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MethodDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.MultiTypeDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.QualifiedTypeDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.SecondaryTypeDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.TypeDeclarationPattern;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class BasicSearchEngine {
    public static boolean VERBOSE = false;
    private CompilerOptions compilerOptions;
    private Parser parser;
    private ICompilationUnit[] workingCopies;
    private WorkingCopyOwner workingCopyOwner;

    public BasicSearchEngine() {
    }

    public static IJavaSearchScope createHierarchyScope(IType iType) throws JavaModelException {
        return createHierarchyScope(iType, DefaultWorkingCopyOwner.PRIMARY);
    }

    public static IJavaSearchScope createJavaSearchScope(IJavaElement[] iJavaElementArr) {
        return createJavaSearchScope(false, iJavaElementArr, true);
    }

    public static MethodNameMatch createMethodNameMatch(IMethod iMethod, int i10) {
        return new JavaSearchMethodNameMatch(iMethod, i10);
    }

    public static IJavaSearchScope createStrictHierarchyScope(IJavaProject iJavaProject, IType iType, boolean z10, boolean z11, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        return new HierarchyScope(iJavaProject, iType, workingCopyOwner, z10, true, z11);
    }

    public static TypeNameMatch createTypeNameMatch(IType iType, int i10) {
        return new JavaSearchTypeNameMatch(iType, i10);
    }

    public static IJavaSearchScope createWorkspaceScope() {
        return JavaModelManager.getJavaModelManager().getWorkspaceScope();
    }

    public static SearchParticipant getDefaultSearchParticipant() {
        return new JavaSearchParticipant();
    }

    public static String getMatchRuleString(int i10) {
        if (i10 == 0) {
            return "R_EXACT_MATCH";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i11 = 1; i11 <= 16; i11++) {
            int i12 = (1 << (i11 - 1)) & i10;
            if (i12 != 0 && stringBuffer.length() > 0) {
                stringBuffer.append(" | ");
            }
            if (i12 == 1) {
                stringBuffer.append("R_PREFIX_MATCH");
            } else if (i12 == 2) {
                stringBuffer.append("R_PATTERN_MATCH");
            } else if (i12 == 4) {
                stringBuffer.append("R_REGEXP_MATCH");
            } else if (i12 == 8) {
                stringBuffer.append("R_CASE_SENSITIVE");
            } else if (i12 == 16) {
                stringBuffer.append("R_ERASURE_MATCH");
            } else if (i12 == 32) {
                stringBuffer.append("R_EQUIVALENT_MATCH");
            } else if (i12 == 64) {
                stringBuffer.append("R_FULL_MATCH");
            } else if (i12 == 128) {
                stringBuffer.append("R_CAMELCASE_MATCH");
            } else if (i12 == 256) {
                stringBuffer.append("R_CAMELCASE_SAME_PART_COUNT_MATCH");
            }
        }
        return stringBuffer.toString();
    }

    private Parser getParser() {
        if (this.parser == null) {
            this.compilerOptions = new CompilerOptions(JavaCore.getOptions());
            this.parser = new Parser(new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), this.compilerOptions, new DefaultProblemFactory()), true);
        }
        return this.parser;
    }

    public static String getSearchForString(int i10) {
        switch (i10) {
            case 0:
                return "TYPE";
            case 1:
                return "METHOD";
            case 2:
                return "PACKAGE";
            case 3:
                return "CONSTRUCTOR";
            case 4:
                return "FIELD";
            case 5:
                return SuffixConstants.EXTENSION_CLASS;
            case 6:
                return "INTERFACE";
            case 7:
                return "ENUM";
            case 8:
                return "ANNOTATION_TYPE";
            case 9:
                return "CLASS_AND_ENUM";
            case 10:
                return "CLASS_AND_INTERFACE";
            case 11:
                return "INTERFACE_AND_ANNOTATION";
            default:
                return "UNKNOWN";
        }
    }

    private ICompilationUnit[] getWorkingCopies() {
        ICompilationUnit[] iCompilationUnitArr = this.workingCopies;
        if (iCompilationUnitArr != null) {
            if (this.workingCopyOwner == null) {
                ICompilationUnit[] workingCopies = JavaModelManager.getJavaModelManager().getWorkingCopies(DefaultWorkingCopyOwner.PRIMARY, false);
                if (workingCopies == null) {
                    iCompilationUnitArr = this.workingCopies;
                } else {
                    HashMap hashMap = new HashMap();
                    for (ICompilationUnit iCompilationUnit : workingCopies) {
                        hashMap.put(iCompilationUnit.getPath(), iCompilationUnit);
                    }
                    int length = this.workingCopies.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        ICompilationUnit iCompilationUnit2 = this.workingCopies[i10];
                        hashMap.put(iCompilationUnit2.getPath(), iCompilationUnit2);
                    }
                    iCompilationUnitArr = new ICompilationUnit[hashMap.size()];
                    hashMap.values().toArray(iCompilationUnitArr);
                }
            }
        } else if (this.workingCopyOwner != null) {
            iCompilationUnitArr = JavaModelManager.getJavaModelManager().getWorkingCopies(this.workingCopyOwner, true);
        } else {
            iCompilationUnitArr = JavaModelManager.getJavaModelManager().getWorkingCopies(DefaultWorkingCopyOwner.PRIMARY, false);
        }
        ICompilationUnit[] iCompilationUnitArr2 = null;
        if (iCompilationUnitArr == null) {
            return null;
        }
        int length2 = iCompilationUnitArr.length;
        int i11 = 0;
        for (ICompilationUnit iCompilationUnit3 : iCompilationUnitArr) {
            CompilationUnit compilationUnit = (CompilationUnit) iCompilationUnit3;
            try {
                if (!compilationUnit.isPrimary() || compilationUnit.hasUnsavedChanges() || compilationUnit.hasResourceChanged()) {
                    if (iCompilationUnitArr2 == null) {
                        iCompilationUnitArr2 = new ICompilationUnit[length2];
                    }
                    int i12 = i11 + 1;
                    try {
                        iCompilationUnitArr2[i11] = compilationUnit;
                    } catch (JavaModelException unused) {
                    }
                    i11 = i12;
                }
            } catch (JavaModelException unused2) {
            }
        }
        if (i11 == length2 || iCompilationUnitArr2 == null) {
            return iCompilationUnitArr2;
        }
        ICompilationUnit[] iCompilationUnitArr3 = new ICompilationUnit[i11];
        System.arraycopy(iCompilationUnitArr2, 0, iCompilationUnitArr3, 0, i11);
        return iCompilationUnitArr3;
    }

    public char convertTypeKind(int i10) {
        if (i10 == 1) {
            return 'C';
        }
        if (i10 == 2) {
            return 'I';
        }
        if (i10 == 3) {
            return IIndexConstants.ENUM_SUFFIX;
        }
        if (i10 != 4) {
            return (char) 0;
        }
        return IIndexConstants.ANNOTATION_TYPE_SUFFIX;
    }

    public void findMatches(SearchPattern searchPattern, SearchParticipant[] searchParticipantArr, IJavaSearchScope iJavaSearchScope, SearchRequestor searchRequestor, IProgressMonitor iProgressMonitor) throws CoreException {
        try {
            if (VERBOSE) {
                Util.verbose("Searching for pattern: " + searchPattern.toString());
                Util.verbose(iJavaSearchScope.toString());
            }
            if (searchParticipantArr == null) {
                if (VERBOSE) {
                    Util.verbose("No participants => do nothing!");
                }
                searchRequestor.endReporting();
                if (iProgressMonitor != null) {
                    iProgressMonitor.done();
                    return;
                }
                return;
            }
            SubMonitor convert = SubMonitor.convert(iProgressMonitor, Messages.engine_searching, searchParticipantArr.length);
            IndexManager indexManager = JavaModelManager.getIndexManager();
            searchRequestor.beginReporting();
            for (SearchParticipant searchParticipant : searchParticipantArr) {
                SubMonitor workRemaining = convert.split(1).setWorkRemaining(100);
                try {
                    workRemaining.subTask(Messages.bind(Messages.engine_searching_indexing, (Object[]) new String[]{searchParticipant.getDescription()}));
                    searchParticipant.beginSearching();
                    searchRequestor.enterParticipant(searchParticipant);
                    PathCollector pathCollector = new PathCollector();
                    indexManager.performConcurrentJob(new PatternSearchJob(searchPattern, searchParticipant, iJavaSearchScope, pathCollector), 3, workRemaining.split(50));
                    workRemaining.subTask(Messages.bind(Messages.engine_searching_matching, (Object[]) new String[]{searchParticipant.getDescription()}));
                    String[] paths = pathCollector.getPaths();
                    if (paths != null) {
                        int length = paths.length;
                        SearchDocument[] searchDocumentArr = new SearchDocument[length];
                        for (int i10 = 0; i10 < length; i10++) {
                            searchDocumentArr[i10] = searchParticipant.getDocument(paths[i10]);
                        }
                        searchParticipant.locateMatches(MatchLocator.addWorkingCopies(searchPattern, searchDocumentArr, getWorkingCopies(), searchParticipant), searchPattern, iJavaSearchScope, searchRequestor, workRemaining.split(50));
                    }
                    searchRequestor.exitParticipant(searchParticipant);
                    searchParticipant.doneSearching();
                } finally {
                    searchRequestor.exitParticipant(searchParticipant);
                    searchParticipant.doneSearching();
                }
            }
            searchRequestor.endReporting();
            if (iProgressMonitor != null) {
                iProgressMonitor.done();
            }
        } catch (Throwable th2) {
            searchRequestor.endReporting();
            if (iProgressMonitor != null) {
                iProgressMonitor.done();
            }
            throw th2;
        }
    }

    public boolean match(char c10, int i10) {
        if (c10 == 'A') {
            return (i10 & 8192) != 0;
        }
        if (c10 == 'C') {
            return (i10 & 25088) == 0;
        }
        if (c10 == 'E') {
            return (i10 & 16384) != 0;
        }
        if (c10 == 'I') {
            return (i10 & 512) != 0;
        }
        switch (c10) {
            case '\t':
                return (i10 & 8704) == 0;
            case '\n':
                return (i10 & 24576) == 0;
            case 11:
                return (i10 & 8704) != 0;
            default:
                return true;
        }
    }

    public void reportMatchingMethod(String str, char[] cArr, char[] cArr2, TypeDeclaration typeDeclaration, MethodDeclaration methodDeclaration, IType iType, IRestrictedAccessMethodRequestor iRestrictedAccessMethodRequestor) {
        char[][] cArr3;
        char[][] cArr4;
        int i10;
        Argument[] argumentArr = methodDeclaration.arguments;
        char[][] cArr5 = CharOperation.NO_CHAR_CHAR;
        if (argumentArr != null) {
            i10 = argumentArr.length;
            cArr3 = new char[i10];
            cArr4 = new char[i10];
        } else {
            cArr3 = cArr5;
            cArr4 = cArr3;
            i10 = 0;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            Argument argument = argumentArr[i11];
            cArr4[i11] = argument.name;
            cArr3[i11] = CharOperation.concatWith(argument.type.getTypeName(), '.');
        }
        if (iRestrictedAccessMethodRequestor instanceof MethodNameMatchRequestorWrapper) {
            ((MethodNameMatchRequestorWrapper) iRestrictedAccessMethodRequestor).requestor.acceptMethodNameMatch(new JavaSearchMethodNameMatch(iType.getMethod(new String(methodDeclaration.selector), CharOperation.toStrings(cArr3)), methodDeclaration.modifiers));
        } else {
            iRestrictedAccessMethodRequestor.acceptMethod(methodDeclaration.selector, i10, cArr2, typeDeclaration.name, typeDeclaration.modifiers, cArr, null, cArr3, cArr4, CharOperation.toString(methodDeclaration.returnType.getTypeName()).toCharArray(), methodDeclaration.modifiers, str, null, -1);
        }
    }

    public void reportMatchingMethods(char[] cArr, int i10, IRestrictedAccessMethodRequestor iRestrictedAccessMethodRequestor, String str, char[] cArr2, IType iType, char[] cArr3, char[] cArr4) throws JavaModelException {
        int i11;
        IMethod[] iMethodArr;
        IMethod[] methods = iType.getMethods();
        int i12 = 0;
        while (i12 < methods.length) {
            IMethod iMethod = methods[i12];
            if (!iMethod.isConstructor()) {
                char[] charArray = iMethod.getElementName().toCharArray();
                if (match(cArr, i10, charArray)) {
                    if (iRestrictedAccessMethodRequestor instanceof MethodNameMatchRequestorWrapper) {
                        ((MethodNameMatchRequestorWrapper) iRestrictedAccessMethodRequestor).requestor.acceptMethodNameMatch(new JavaSearchMethodNameMatch(iMethod, iMethod.getFlags()));
                    } else {
                        String[] parameterNames = iMethod.getParameterNames();
                        String[] parameterTypes = iMethod.getParameterTypes();
                        int length = parameterNames.length;
                        char[][] cArr5 = new char[length];
                        char[][] cArr6 = new char[length];
                        for (int i13 = 0; i13 < length; i13++) {
                            cArr5[i13] = parameterNames[i13].toCharArray();
                            cArr6[i13] = Signature.toCharArray(Signature.getTypeErasure(parameterTypes[i13]).toCharArray());
                        }
                        char[] charArray2 = Signature.toCharArray(Signature.getTypeErasure(iMethod.getReturnType().toCharArray()));
                        CharOperation.replace(charArray2, '$', '.');
                        i11 = i12;
                        iMethodArr = methods;
                        iRestrictedAccessMethodRequestor.acceptMethod(charArray, length, cArr3, cArr4, iType.getFlags(), cArr2, null, cArr6, cArr5, charArray2, iMethod.getFlags(), str, null, i11);
                        i12 = i11 + 1;
                        methods = iMethodArr;
                    }
                }
            }
            i11 = i12;
            iMethodArr = methods;
            i12 = i11 + 1;
            methods = iMethodArr;
        }
    }

    public void search(SearchPattern searchPattern, SearchParticipant[] searchParticipantArr, IJavaSearchScope iJavaSearchScope, SearchRequestor searchRequestor, IProgressMonitor iProgressMonitor) throws CoreException {
        if (VERBOSE) {
            Util.verbose("BasicSearchEngine.search(SearchPattern, SearchParticipant[], IJavaSearchScope, SearchRequestor, IProgressMonitor)");
        }
        findMatches(searchPattern, searchParticipantArr, iJavaSearchScope, searchRequestor, iProgressMonitor);
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0125, code lost:
    
        if (((org.eclipse.jdt.internal.core.search.HierarchyScope) r41).encloses(r3, r1) == false) goto L49;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void searchAllConstructorDeclarations(final char[] cArr, final char[] cArr2, int i10, IJavaSearchScope iJavaSearchScope, final IRestrictedAccessConstructorRequestor iRestrictedAccessConstructorRequestor, int i11, IProgressMonitor iProgressMonitor) throws JavaModelException {
        String str;
        int i12;
        SubMonitor subMonitor;
        String str2 = null;
        if (cArr2 == null) {
            str = null;
        } else {
            try {
                str = new String(cArr2);
            } finally {
                if (iProgressMonitor != null) {
                    iProgressMonitor.done();
                }
            }
        }
        final int validateMatchRule = SearchPattern.validateMatchRule(str, i10);
        if (VERBOSE) {
            Util.verbose("BasicSearchEngine.searchAllConstructorDeclarations(char[], char[], int, IJavaSearchScope, IRestrictedAccessConstructorRequestor, int, IProgressMonitor)");
            StringBuilder sb2 = new StringBuilder("\t- package name: ");
            String str3 = "null";
            sb2.append(cArr == null ? "null" : new String(cArr));
            Util.verbose(sb2.toString());
            StringBuilder sb3 = new StringBuilder("\t- type name: ");
            if (cArr2 != null) {
                str3 = new String(cArr2);
            }
            sb3.append(str3);
            Util.verbose(sb3.toString());
            Util.verbose("\t- type match rule: " + getMatchRuleString(i10));
            if (validateMatchRule != i10) {
                Util.verbose("\t- validated type match rule: " + getMatchRuleString(validateMatchRule));
            }
            Util.verbose("\t- scope: " + ((Object) iJavaSearchScope));
        }
        if (validateMatchRule == -1) {
            if (iProgressMonitor != null) {
                iProgressMonitor.done();
                return;
            }
            return;
        }
        IndexManager indexManager = JavaModelManager.getIndexManager();
        ConstructorDeclarationPattern constructorDeclarationPattern = new ConstructorDeclarationPattern(cArr, cArr2, validateMatchRule);
        final HashSet hashSet = new HashSet();
        ICompilationUnit[] workingCopies = getWorkingCopies();
        int length = workingCopies == null ? 0 : workingCopies.length;
        if (workingCopies != null) {
            if (length == 1) {
                str2 = workingCopies[0].getPath().toString();
            } else {
                for (int i13 = 0; i13 < length; i13++) {
                    hashSet.add(workingCopies[i13].getPath().toString());
                }
            }
        }
        final int i14 = length;
        int i15 = 1;
        final String str4 = str2;
        int i16 = length;
        IndexQueryRequestor indexQueryRequestor = new IndexQueryRequestor() {
            @Override
            public boolean acceptIndexMatch(String str5, SearchPattern searchPattern, SearchParticipant searchParticipant, AccessRuleSet accessRuleSet) {
                AccessRestriction accessRestriction;
                ConstructorDeclarationPattern constructorDeclarationPattern2 = (ConstructorDeclarationPattern) searchPattern;
                int i17 = constructorDeclarationPattern2.extraFlags;
                if ((i17 & 2) != 0 || (i17 & 4) != 0) {
                    return true;
                }
                int i18 = i14;
                if (i18 != 0) {
                    if (i18 != 1) {
                        if (hashSet.contains(str5)) {
                            return true;
                        }
                    } else if (str4.equals(str5)) {
                        return true;
                    }
                }
                if (accessRuleSet != null) {
                    char[] cArr3 = constructorDeclarationPattern2.declaringPackageName;
                    int length2 = (cArr3 == null || cArr3.length == 0) ? 0 : cArr3.length + 1;
                    char[] cArr4 = constructorDeclarationPattern2.declaringSimpleName;
                    int length3 = cArr4 == null ? 0 : cArr4.length;
                    char[] cArr5 = new char[length2 + length3];
                    if (length2 > 0) {
                        int i19 = length2 - 1;
                        System.arraycopy(cArr3, 0, cArr5, 0, i19);
                        CharOperation.replace(cArr5, '.', '/');
                        cArr5[i19] = '/';
                    } else {
                        length2 = 0;
                    }
                    if (length3 > 0) {
                        System.arraycopy(constructorDeclarationPattern2.declaringSimpleName, 0, cArr5, length2, length3);
                        length2 += length3;
                    }
                    if (length2 > 0) {
                        accessRestriction = accessRuleSet.getViolatedRestriction(cArr5);
                        iRestrictedAccessConstructorRequestor.acceptConstructor(constructorDeclarationPattern2.modifiers, constructorDeclarationPattern2.declaringSimpleName, constructorDeclarationPattern2.parameterCount, constructorDeclarationPattern2.signature, constructorDeclarationPattern2.parameterTypes, constructorDeclarationPattern2.parameterNames, constructorDeclarationPattern2.declaringTypeModifiers, constructorDeclarationPattern2.declaringPackageName, constructorDeclarationPattern2.extraFlags, str5, accessRestriction);
                        return true;
                    }
                }
                accessRestriction = null;
                iRestrictedAccessConstructorRequestor.acceptConstructor(constructorDeclarationPattern2.modifiers, constructorDeclarationPattern2.declaringSimpleName, constructorDeclarationPattern2.parameterCount, constructorDeclarationPattern2.signature, constructorDeclarationPattern2.parameterTypes, constructorDeclarationPattern2.parameterNames, constructorDeclarationPattern2.declaringTypeModifiers, constructorDeclarationPattern2.declaringPackageName, constructorDeclarationPattern2.extraFlags, str5, accessRestriction);
                return true;
            }
        };
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, Messages.engine_searching, 1000);
        indexManager.performConcurrentJob(new PatternSearchJob(constructorDeclarationPattern, getDefaultSearchParticipant(), iJavaSearchScope, indexQueryRequestor), i11, convert.split(Math.max(1000 - i16, 0)));
        if (workingCopies != null) {
            int i17 = 0;
            while (i17 < i16) {
                IProgressMonitor split = convert.split(i15);
                ICompilationUnit iCompilationUnit = workingCopies[i17];
                if (!(iJavaSearchScope instanceof HierarchyScope)) {
                    if (!iJavaSearchScope.encloses(iCompilationUnit)) {
                        i12 = i16;
                        subMonitor = convert;
                        i17++;
                        i16 = i12;
                        convert = subMonitor;
                        i15 = 1;
                    }
                    final String obj = iCompilationUnit.getPath().toString();
                    if (iCompilationUnit.isConsistent()) {
                        IPackageDeclaration[] packageDeclarations = iCompilationUnit.getPackageDeclarations();
                        char[] charArray = packageDeclarations.length == 0 ? CharOperation.NO_CHAR : packageDeclarations[0].getElementName().toCharArray();
                        IType[] allTypes = iCompilationUnit.getAllTypes();
                        int length2 = allTypes.length;
                        int i18 = 0;
                        while (i18 < length2) {
                            IType iType = allTypes[i18];
                            char[] charArray2 = iType.getElementName().toCharArray();
                            int i19 = i16;
                            int i20 = i18;
                            int i21 = length2;
                            IType[] iTypeArr = allTypes;
                            SubMonitor subMonitor2 = convert;
                            if (match((char) 0, cArr, 8, cArr2, validateMatchRule, 0, charArray, charArray2) && !iType.isMember()) {
                                int extraFlags = ExtraFlags.getExtraFlags(iType);
                                boolean z10 = false;
                                for (IMethod iMethod : iType.getMethods()) {
                                    if (iMethod.isConstructor()) {
                                        String[] parameterNames = iMethod.getParameterNames();
                                        String[] parameterTypes = iMethod.getParameterTypes();
                                        int length3 = parameterNames.length;
                                        char[][] cArr3 = new char[length3];
                                        char[][] cArr4 = new char[length3];
                                        for (int i22 = 0; i22 < length3; i22++) {
                                            cArr3[i22] = parameterNames[i22].toCharArray();
                                            cArr4[i22] = Signature.toCharArray(Signature.getTypeErasure(parameterTypes[i22]).toCharArray());
                                        }
                                        iRestrictedAccessConstructorRequestor.acceptConstructor(iMethod.getFlags(), charArray2, length3, null, cArr4, cArr3, iType.getFlags(), charArray, extraFlags, obj, null);
                                        z10 = true;
                                    }
                                }
                                if (!z10) {
                                    char[][] cArr5 = CharOperation.NO_CHAR_CHAR;
                                    iRestrictedAccessConstructorRequestor.acceptConstructor(1, charArray2, -1, null, cArr5, cArr5, iType.getFlags(), charArray, extraFlags, obj, null);
                                }
                            }
                            i18 = i20 + 1;
                            i16 = i19;
                            length2 = i21;
                            allTypes = iTypeArr;
                            convert = subMonitor2;
                        }
                        i12 = i16;
                        subMonitor = convert;
                        i17++;
                        i16 = i12;
                        convert = subMonitor;
                        i15 = 1;
                    } else {
                        i12 = i16;
                        subMonitor = convert;
                        org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit2 = (org.eclipse.jdt.internal.compiler.env.ICompilationUnit) iCompilationUnit;
                        CompilationUnitDeclaration dietParse = getParser().dietParse(iCompilationUnit2, new CompilationResult(iCompilationUnit2, 0, 0, this.compilerOptions.maxProblemsPerUnit));
                        if (dietParse != null) {
                            ImportReference importReference = dietParse.currentPackage;
                            final char[] concatWith = importReference == null ? CharOperation.NO_CHAR : CharOperation.concatWith(importReference.getImportName(), '.');
                            dietParse.traverse(new ASTVisitor() {
                                private TypeDeclaration[] declaringTypes = new TypeDeclaration[0];
                                private int declaringTypesPtr = -1;

                                private void endVisit(TypeDeclaration typeDeclaration) {
                                    if (!hasConstructor(typeDeclaration) && typeDeclaration.enclosingType == null && BasicSearchEngine.this.match((char) 0, cArr, 8, cArr2, validateMatchRule, 0, concatWith, typeDeclaration.name)) {
                                        IRestrictedAccessConstructorRequestor iRestrictedAccessConstructorRequestor2 = iRestrictedAccessConstructorRequestor;
                                        char[] cArr6 = cArr2;
                                        char[][] cArr7 = CharOperation.NO_CHAR_CHAR;
                                        iRestrictedAccessConstructorRequestor2.acceptConstructor(1, cArr6, -1, null, cArr7, cArr7, typeDeclaration.modifiers, concatWith, ExtraFlags.getExtraFlags(typeDeclaration), obj, null);
                                    }
                                    TypeDeclaration[] typeDeclarationArr = this.declaringTypes;
                                    int i23 = this.declaringTypesPtr;
                                    typeDeclarationArr[i23] = null;
                                    this.declaringTypesPtr = i23 - 1;
                                }

                                private boolean hasConstructor(TypeDeclaration typeDeclaration) {
                                    AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration.methods;
                                    int length4 = abstractMethodDeclarationArr == null ? 0 : abstractMethodDeclarationArr.length;
                                    for (int i23 = 0; i23 < length4; i23++) {
                                        if (abstractMethodDeclarationArr[i23].isConstructor()) {
                                            return true;
                                        }
                                    }
                                    return false;
                                }

                                @Override
                                public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
                                    return false;
                                }

                                @Override
                                public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope classScope) {
                                    TypeDeclaration typeDeclaration = this.declaringTypes[this.declaringTypesPtr];
                                    if (BasicSearchEngine.this.match((char) 0, cArr, 8, cArr2, validateMatchRule, 0, concatWith, typeDeclaration.name)) {
                                        Argument[] argumentArr = constructorDeclaration.arguments;
                                        int length4 = argumentArr == null ? 0 : argumentArr.length;
                                        char[][] cArr6 = new char[length4];
                                        char[][] cArr7 = new char[length4];
                                        for (int i23 = 0; i23 < length4; i23++) {
                                            Argument argument = argumentArr[i23];
                                            cArr6[i23] = argument.name;
                                            TypeReference typeReference = argument.type;
                                            if (typeReference instanceof SingleTypeReference) {
                                                cArr7[i23] = ((SingleTypeReference) typeReference).token;
                                            } else {
                                                cArr7[i23] = CharOperation.concatWith(((QualifiedTypeReference) typeReference).tokens, '.');
                                            }
                                        }
                                        TypeDeclaration typeDeclaration2 = typeDeclaration.enclosingType;
                                        char[][] cArr8 = CharOperation.NO_CHAR_CHAR;
                                        while (typeDeclaration2 != null) {
                                            cArr8 = CharOperation.arrayConcat(new char[][]{typeDeclaration2.name}, cArr8);
                                            typeDeclaration2 = (typeDeclaration2.bits & 1024) != 0 ? typeDeclaration2.enclosingType : null;
                                        }
                                        iRestrictedAccessConstructorRequestor.acceptConstructor(constructorDeclaration.modifiers, cArr2, length4, null, cArr7, cArr6, typeDeclaration.modifiers, concatWith, ExtraFlags.getExtraFlags(typeDeclaration), obj, null);
                                    }
                                    return false;
                                }

                                @Override
                                public void endVisit(TypeDeclaration typeDeclaration, CompilationUnitScope compilationUnitScope) {
                                    endVisit(typeDeclaration);
                                }

                                @Override
                                public void endVisit(TypeDeclaration typeDeclaration, ClassScope classScope) {
                                    endVisit(typeDeclaration);
                                }

                                private boolean visit(TypeDeclaration typeDeclaration) {
                                    TypeDeclaration[] typeDeclarationArr = this.declaringTypes;
                                    int length4 = typeDeclarationArr.length;
                                    int i23 = this.declaringTypesPtr + 1;
                                    this.declaringTypesPtr = i23;
                                    if (length4 <= i23) {
                                        TypeDeclaration[] typeDeclarationArr2 = new TypeDeclaration[(i23 * 2) + 1];
                                        this.declaringTypes = typeDeclarationArr2;
                                        System.arraycopy(typeDeclarationArr, 0, typeDeclarationArr2, 0, i23);
                                    }
                                    this.declaringTypes[this.declaringTypesPtr] = typeDeclaration;
                                    return true;
                                }

                                @Override
                                public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope compilationUnitScope) {
                                    return visit(typeDeclaration);
                                }

                                @Override
                                public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
                                    return visit(typeDeclaration);
                                }
                            }, dietParse.scope);
                        }
                        i17++;
                        i16 = i12;
                        convert = subMonitor;
                        i15 = 1;
                    }
                }
            }
        }
    }

    public void searchAllMethodNames(final char[] cArr, final int i10, final char[] cArr2, final int i11, IJavaSearchScope iJavaSearchScope, final IRestrictedAccessMethodRequestor iRestrictedAccessMethodRequestor, int i12, IProgressMonitor iProgressMonitor) throws JavaModelException {
        int i13;
        SubMonitor subMonitor;
        int i14;
        char[] charArray;
        int i15;
        int i16;
        IType[] iTypeArr;
        char[] cArr3;
        SubMonitor subMonitor2;
        char c10;
        char[] cArr4 = cArr;
        String str = null;
        int validateMatchRule = SearchPattern.validateMatchRule(cArr2 == null ? null : new String(cArr2), i11);
        if (VERBOSE) {
            Util.verbose("BasicSearchEngine.searchAllMethodDeclarations(char[] qualifier,  char[] methodName, int methodMatchRule, IJavaSearchScope, IRestrictedAccessConstructorRequestor, int waitingPolicy, IProgressMonitor)");
            StringBuilder sb2 = new StringBuilder("\t- qualifier name: ");
            sb2.append(cArr4 == null ? "null" : new String(cArr4));
            Util.verbose(sb2.toString());
            StringBuilder sb3 = new StringBuilder("\t- method name: ");
            sb3.append(cArr2 != null ? new String(cArr2) : "null");
            Util.verbose(sb3.toString());
            Util.verbose("\t- method match rule: " + getMatchRuleString(i11));
            if (validateMatchRule != i11) {
                Util.verbose("\t- validated method match rule: " + getMatchRuleString(validateMatchRule));
            }
            Util.verbose("\t- scope: " + ((Object) iJavaSearchScope));
        }
        if (validateMatchRule == -1) {
            return;
        }
        IndexManager indexManager = JavaModelManager.getIndexManager();
        MethodDeclarationPattern methodDeclarationPattern = new MethodDeclarationPattern(cArr4, cArr2, i11);
        final HashSet hashSet = new HashSet();
        ICompilationUnit[] workingCopies = getWorkingCopies();
        int length = workingCopies == null ? 0 : workingCopies.length;
        if (workingCopies != null) {
            if (length == 1) {
                str = workingCopies[0].getPath().toString();
            } else {
                for (int i17 = 0; i17 < length; i17++) {
                    hashSet.add(workingCopies[i17].getPath().toString());
                }
            }
        }
        final String str2 = str;
        final int i18 = length;
        int i19 = length;
        IndexQueryRequestor indexQueryRequestor = new IndexQueryRequestor() {
            /* JADX WARN: Removed duplicated region for block: B:40:0x0093  */
            /* JADX WARN: Removed duplicated region for block: B:42:0x00c5  */
            @Override
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public boolean acceptIndexMatch(String str3, SearchPattern searchPattern, SearchParticipant searchParticipant, AccessRuleSet accessRuleSet) {
                AccessRestriction accessRestriction;
                MethodDeclarationPattern methodDeclarationPattern2 = (MethodDeclarationPattern) searchPattern;
                if ((methodDeclarationPattern2.extraFlags & 4) != 0) {
                    return true;
                }
                int i20 = i18;
                if (i20 != 0) {
                    if (i20 != 1) {
                        if (hashSet.contains(str3)) {
                            return true;
                        }
                    } else if (str2.equals(str3)) {
                        return true;
                    }
                }
                if (accessRuleSet != null) {
                    char[] cArr5 = methodDeclarationPattern2.declaringPackageName;
                    int length2 = (cArr5 == null || cArr5.length == 0) ? 0 : cArr5.length + 1;
                    char[] cArr6 = methodDeclarationPattern2.declaringQualification;
                    int length3 = (cArr6 == null || cArr6.length == 0) ? 0 : cArr6.length;
                    char[] cArr7 = methodDeclarationPattern2.declaringSimpleName;
                    int length4 = cArr7 == null ? 0 : cArr7.length;
                    char[] cArr8 = new char[length2 + length3 + length4];
                    if (length2 > 0) {
                        int i21 = length2 - 1;
                        System.arraycopy(cArr5, 0, cArr8, 0, i21);
                        CharOperation.replace(cArr8, '.', '/');
                        cArr8[i21] = '/';
                    } else {
                        length2 = 0;
                    }
                    if (length3 > 0) {
                        System.arraycopy(methodDeclarationPattern2.declaringQualification, 0, cArr8, length2, length3);
                    }
                    if (length4 > 0) {
                        System.arraycopy(methodDeclarationPattern2.declaringSimpleName, 0, cArr8, length2, length4);
                        length2 += length4;
                    }
                    if (length2 > 0) {
                        accessRestriction = accessRuleSet.getViolatedRestriction(cArr8);
                        AccessRestriction accessRestriction2 = accessRestriction;
                        if (BasicSearchEngine.this.match(cArr, i10, cArr2, i11, methodDeclarationPattern2.declaringPackageName, methodDeclarationPattern2.declaringQualification, methodDeclarationPattern2.declaringSimpleName, methodDeclarationPattern2.selector)) {
                            return true;
                        }
                        iRestrictedAccessMethodRequestor.acceptMethod(methodDeclarationPattern2.selector, methodDeclarationPattern2.parameterCount, methodDeclarationPattern2.declaringQualification, methodDeclarationPattern2.declaringSimpleName, methodDeclarationPattern2.declaringTypeModifiers, methodDeclarationPattern2.declaringPackageName, methodDeclarationPattern2.signature, methodDeclarationPattern2.parameterTypes, methodDeclarationPattern2.parameterNames, methodDeclarationPattern2.returnSimpleName, methodDeclarationPattern2.modifiers, str3, accessRestriction2, -1);
                        return true;
                    }
                }
                accessRestriction = null;
                AccessRestriction accessRestriction22 = accessRestriction;
                if (BasicSearchEngine.this.match(cArr, i10, cArr2, i11, methodDeclarationPattern2.declaringPackageName, methodDeclarationPattern2.declaringQualification, methodDeclarationPattern2.declaringSimpleName, methodDeclarationPattern2.selector)) {
                }
            }
        };
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, Messages.engine_searching, 1000);
        indexManager.performConcurrentJob(new PatternSearchJob(methodDeclarationPattern, getDefaultSearchParticipant(), iJavaSearchScope, indexQueryRequestor), i12, convert.split(Math.max(1000 - i19, 0)));
        if (workingCopies != null) {
            int i20 = 0;
            while (i20 < i19) {
                IProgressMonitor split = convert.split(1);
                final ICompilationUnit iCompilationUnit = workingCopies[i20];
                if (!(iJavaSearchScope instanceof HierarchyScope) ? iJavaSearchScope.encloses(iCompilationUnit) : ((HierarchyScope) iJavaSearchScope).encloses(iCompilationUnit, split)) {
                    final String obj = iCompilationUnit.getPath().toString();
                    char c11 = '.';
                    if (iCompilationUnit.isConsistent()) {
                        IPackageDeclaration[] packageDeclarations = iCompilationUnit.getPackageDeclarations();
                        if (packageDeclarations.length == 0) {
                            charArray = CharOperation.NO_CHAR;
                            i14 = 0;
                        } else {
                            i14 = 0;
                            charArray = packageDeclarations[0].getElementName().toCharArray();
                        }
                        IType[] allTypes = iCompilationUnit.getAllTypes();
                        int length2 = allTypes.length;
                        int i21 = i14;
                        while (i21 < length2) {
                            IType iType = allTypes[i21];
                            IJavaElement parent = iType.getParent();
                            char[] charArray2 = parent instanceof IType ? ((IType) parent).getTypeQualifiedName(c11).toCharArray() : CharOperation.NO_CHAR;
                            char[] charArray3 = iType.getElementName().toCharArray();
                            int i22 = i19;
                            if (match(cArr4, i10, CharOperation.concatNonEmpty(charArray, c11, charArray2, c11, charArray3))) {
                                i15 = i21;
                                i16 = length2;
                                iTypeArr = allTypes;
                                cArr3 = charArray;
                                subMonitor2 = convert;
                                c10 = c11;
                                reportMatchingMethods(cArr2, i11, iRestrictedAccessMethodRequestor, obj, charArray, iType, charArray2, charArray3);
                            } else {
                                i15 = i21;
                                i16 = length2;
                                iTypeArr = allTypes;
                                cArr3 = charArray;
                                subMonitor2 = convert;
                                c10 = c11;
                            }
                            i21 = i15 + 1;
                            c11 = c10;
                            charArray = cArr3;
                            i19 = i22;
                            length2 = i16;
                            allTypes = iTypeArr;
                            i14 = 0;
                            convert = subMonitor2;
                        }
                    } else {
                        SubMonitor subMonitor3 = convert;
                        i13 = i19;
                        org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit2 = (org.eclipse.jdt.internal.compiler.env.ICompilationUnit) iCompilationUnit;
                        CompilationUnitDeclaration dietParse = getParser().dietParse(iCompilationUnit2, new CompilationResult(iCompilationUnit2, 0, 0, this.compilerOptions.maxProblemsPerUnit));
                        if (dietParse != null) {
                            ImportReference importReference = dietParse.currentPackage;
                            final char[] concatWith = importReference == null ? CharOperation.NO_CHAR : CharOperation.concatWith(importReference.getImportName(), '.');
                            subMonitor = subMonitor3;
                            dietParse.traverse(new ASTVisitor() {
                                Stack<TypeInfo> typeInfoStack = new Stack<>();

                                public class TypeInfo {
                                    public char[] enclosingTypeName;
                                    public IType type;
                                    public TypeDeclaration typeDecl;
                                    public boolean visitMethods;

                                    public TypeInfo(TypeDeclaration typeDeclaration, boolean z10, char[] cArr, ICompilationUnit iCompilationUnit) {
                                        this.typeDecl = typeDeclaration;
                                        this.type = iCompilationUnit.getType(new String(typeDeclaration.name));
                                        this.visitMethods = z10;
                                        this.enclosingTypeName = cArr;
                                    }
                                }

                                private void addStackEntry(TypeDeclaration typeDeclaration, char[] cArr5) {
                                    this.typeInfoStack.push(new TypeInfo(typeDeclaration, BasicSearchEngine.this.match(cArr, i10, CharOperation.concatNonEmpty(concatWith, '.', cArr5, '.', typeDeclaration.name)), cArr5, iCompilationUnit));
                                }

                                @Override
                                public void endVisit(TypeDeclaration typeDeclaration, CompilationUnitScope compilationUnitScope) {
                                    this.typeInfoStack.pop();
                                }

                                public IType getCurrentType() {
                                    int size = this.typeInfoStack.size();
                                    if (size <= 0) {
                                        return null;
                                    }
                                    IType iType2 = this.typeInfoStack.get(0).type;
                                    if (iType2 != null) {
                                        return iType2;
                                    }
                                    TypeInfo typeInfo = this.typeInfoStack.get(0);
                                    IType iType3 = typeInfo.type;
                                    if (iType3 == null) {
                                        iType3 = iCompilationUnit.getType(new String(typeInfo.typeDecl.name));
                                    }
                                    typeInfo.type = iType3;
                                    for (int i23 = 1; i23 < size && iType3 != null; i23++) {
                                        TypeInfo typeInfo2 = this.typeInfoStack.get(i23);
                                        if (typeInfo2.type == null) {
                                            typeInfo2.type = iType3.getType(new String(typeInfo2.typeDecl.name));
                                        }
                                        iType3 = typeInfo2.type;
                                    }
                                    return iType3;
                                }

                                @Override
                                public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
                                    return false;
                                }

                                @Override
                                public void endVisit(TypeDeclaration typeDeclaration, ClassScope classScope) {
                                    this.typeInfoStack.pop();
                                }

                                @Override
                                public boolean visit(MethodDeclaration methodDeclaration, ClassScope classScope) {
                                    TypeInfo peek = this.typeInfoStack.peek();
                                    if (!peek.visitMethods || !BasicSearchEngine.this.match(cArr2, i11, methodDeclaration.selector)) {
                                        return false;
                                    }
                                    BasicSearchEngine.this.reportMatchingMethod(obj, concatWith, peek.enclosingTypeName, peek.typeDecl, methodDeclaration, getCurrentType(), iRestrictedAccessMethodRequestor);
                                    return false;
                                }

                                @Override
                                public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope compilationUnitScope) {
                                    addStackEntry(typeDeclaration, CharOperation.NO_CHAR);
                                    return true;
                                }

                                @Override
                                public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
                                    TypeInfo peek = this.typeInfoStack.peek();
                                    char[] cArr5 = peek.enclosingTypeName;
                                    addStackEntry(typeDeclaration, cArr5 == CharOperation.NO_CHAR ? peek.typeDecl.name : CharOperation.concat(cArr5, peek.typeDecl.name, '.'));
                                    return true;
                                }
                            }, dietParse.scope);
                        } else {
                            subMonitor = subMonitor3;
                        }
                        i20++;
                        cArr4 = cArr;
                        convert = subMonitor;
                        i19 = i13;
                    }
                }
                subMonitor = convert;
                i13 = i19;
                i20++;
                cArr4 = cArr;
                convert = subMonitor;
                i19 = i13;
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:1|2|(4:4|(2:(2:7|8)(2:10|11)|9)|12|13)|14|(1:16)(1:40)|17|(1:(8:20|21|22|23|24|(1:26)|27|(2:29|30)(1:32))(3:(1:36)|37|38))|39|21|22|23|24|(0)|27|(0)(0)) */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void searchAllSecondaryTypeNames(IPackageFragmentRoot[] iPackageFragmentRootArr, final IRestrictedAccessTypeRequestor iRestrictedAccessTypeRequestor, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        String str;
        try {
            if (VERBOSE) {
                Util.verbose("BasicSearchEngine.searchAllSecondaryTypeNames(IPackageFragmentRoot[], IRestrictedAccessTypeRequestor, boolean, IProgressMonitor)");
                StringBuffer stringBuffer = new StringBuffer("\t- source folders: ");
                int length = iPackageFragmentRootArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    if (i10 == 0) {
                        stringBuffer.append('[');
                    } else {
                        stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                    }
                    stringBuffer.append(iPackageFragmentRootArr[i10].getElementName());
                }
                stringBuffer.append("]\n\t- waitForIndexes: ");
                stringBuffer.append(z10);
                Util.verbose(stringBuffer.toString());
            }
            IndexManager indexManager = JavaModelManager.getIndexManager();
            SecondaryTypeDeclarationPattern secondaryTypeDeclarationPattern = new SecondaryTypeDeclarationPattern();
            final HashSet hashSet = new HashSet();
            ICompilationUnit[] workingCopies = getWorkingCopies();
            final int length2 = workingCopies == null ? 0 : workingCopies.length;
            if (workingCopies != null) {
                if (length2 == 1) {
                    str = workingCopies[0].getPath().toString();
                    final String str2 = str;
                    indexManager.performConcurrentJob(new PatternSearchJob(secondaryTypeDeclarationPattern, getDefaultSearchParticipant(), createJavaSearchScope(iPackageFragmentRootArr), new IndexQueryRequestor() {
                        @Override
                        public boolean acceptIndexMatch(String str3, SearchPattern searchPattern, SearchParticipant searchParticipant, AccessRuleSet accessRuleSet) {
                            AccessRestriction accessRestriction;
                            TypeDeclarationPattern typeDeclarationPattern = (TypeDeclarationPattern) searchPattern;
                            if (!typeDeclarationPattern.secondary || typeDeclarationPattern.enclosingTypeNames == IIndexConstants.ONE_ZERO_CHAR) {
                                return true;
                            }
                            int i11 = length2;
                            if (i11 != 0) {
                                if (i11 != 1) {
                                    if (hashSet.contains(str3)) {
                                        return true;
                                    }
                                } else if (str2.equals(str3)) {
                                    return true;
                                }
                            }
                            if (accessRuleSet != null) {
                                char[] cArr = typeDeclarationPattern.pkg;
                                int length3 = (cArr == null || cArr.length == 0) ? 0 : cArr.length + 1;
                                char[] cArr2 = typeDeclarationPattern.simpleName;
                                int length4 = cArr2 == null ? 0 : cArr2.length;
                                char[] cArr3 = new char[length3 + length4];
                                if (length3 > 0) {
                                    int i12 = length3 - 1;
                                    System.arraycopy(cArr, 0, cArr3, 0, i12);
                                    CharOperation.replace(cArr3, '.', '/');
                                    cArr3[i12] = '/';
                                } else {
                                    length3 = 0;
                                }
                                if (length4 > 0) {
                                    System.arraycopy(typeDeclarationPattern.simpleName, 0, cArr3, length3, length4);
                                    length3 += length4;
                                }
                                if (length3 > 0) {
                                    accessRestriction = accessRuleSet.getViolatedRestriction(cArr3);
                                    iRestrictedAccessTypeRequestor.acceptType(typeDeclarationPattern.modifiers, typeDeclarationPattern.pkg, typeDeclarationPattern.simpleName, typeDeclarationPattern.enclosingTypeNames, str3, accessRestriction);
                                    return true;
                                }
                            }
                            accessRestriction = null;
                            iRestrictedAccessTypeRequestor.acceptType(typeDeclarationPattern.modifiers, typeDeclarationPattern.pkg, typeDeclarationPattern.simpleName, typeDeclarationPattern.enclosingTypeNames, str3, accessRestriction);
                            return true;
                        }
                    }), z10 ? 3 : 1, SubMonitor.convert(iProgressMonitor, Messages.engine_searching, 100).split(100));
                    if (iProgressMonitor == null) {
                        iProgressMonitor.done();
                        return;
                    }
                    return;
                }
                for (int i11 = 0; i11 < length2; i11++) {
                    hashSet.add(workingCopies[i11].getPath().toString());
                }
            }
            str = null;
            final String str22 = str;
            indexManager.performConcurrentJob(new PatternSearchJob(secondaryTypeDeclarationPattern, getDefaultSearchParticipant(), createJavaSearchScope(iPackageFragmentRootArr), new IndexQueryRequestor() {
                @Override
                public boolean acceptIndexMatch(String str3, SearchPattern searchPattern, SearchParticipant searchParticipant, AccessRuleSet accessRuleSet) {
                    AccessRestriction accessRestriction;
                    TypeDeclarationPattern typeDeclarationPattern = (TypeDeclarationPattern) searchPattern;
                    if (!typeDeclarationPattern.secondary || typeDeclarationPattern.enclosingTypeNames == IIndexConstants.ONE_ZERO_CHAR) {
                        return true;
                    }
                    int i112 = length2;
                    if (i112 != 0) {
                        if (i112 != 1) {
                            if (hashSet.contains(str3)) {
                                return true;
                            }
                        } else if (str22.equals(str3)) {
                            return true;
                        }
                    }
                    if (accessRuleSet != null) {
                        char[] cArr = typeDeclarationPattern.pkg;
                        int length3 = (cArr == null || cArr.length == 0) ? 0 : cArr.length + 1;
                        char[] cArr2 = typeDeclarationPattern.simpleName;
                        int length4 = cArr2 == null ? 0 : cArr2.length;
                        char[] cArr3 = new char[length3 + length4];
                        if (length3 > 0) {
                            int i12 = length3 - 1;
                            System.arraycopy(cArr, 0, cArr3, 0, i12);
                            CharOperation.replace(cArr3, '.', '/');
                            cArr3[i12] = '/';
                        } else {
                            length3 = 0;
                        }
                        if (length4 > 0) {
                            System.arraycopy(typeDeclarationPattern.simpleName, 0, cArr3, length3, length4);
                            length3 += length4;
                        }
                        if (length3 > 0) {
                            accessRestriction = accessRuleSet.getViolatedRestriction(cArr3);
                            iRestrictedAccessTypeRequestor.acceptType(typeDeclarationPattern.modifiers, typeDeclarationPattern.pkg, typeDeclarationPattern.simpleName, typeDeclarationPattern.enclosingTypeNames, str3, accessRestriction);
                            return true;
                        }
                    }
                    accessRestriction = null;
                    iRestrictedAccessTypeRequestor.acceptType(typeDeclarationPattern.modifiers, typeDeclarationPattern.pkg, typeDeclarationPattern.simpleName, typeDeclarationPattern.enclosingTypeNames, str3, accessRestriction);
                    return true;
                }
            }), z10 ? 3 : 1, SubMonitor.convert(iProgressMonitor, Messages.engine_searching, 100).split(100));
            if (iProgressMonitor == null) {
            }
        } catch (Throwable th2) {
            if (iProgressMonitor != null) {
                iProgressMonitor.done();
            }
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x018b, code lost:
    
        if (((org.eclipse.jdt.internal.core.search.HierarchyScope) r13).encloses(r9, r1) == false) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0237 A[Catch: all -> 0x009c, TryCatch #0 {all -> 0x009c, blocks: (B:4:0x0018, B:6:0x0020, B:10:0x0037, B:13:0x0065, B:15:0x0086, B:16:0x009f, B:17:0x0060, B:18:0x0032, B:26:0x00ca, B:27:0x00cf, B:30:0x00ee, B:31:0x010c, B:37:0x0120, B:40:0x0130, B:43:0x0140, B:47:0x017a, B:49:0x0184, B:54:0x019f, B:56:0x01af, B:58:0x01b6, B:60:0x01c7, B:62:0x01d0, B:64:0x01da, B:66:0x01ee, B:70:0x0213, B:72:0x0237, B:74:0x023b, B:77:0x024f, B:76:0x0263, B:80:0x0200, B:83:0x0208, B:87:0x01eb, B:90:0x01bb, B:91:0x0270, B:93:0x028e, B:95:0x0292, B:96:0x029d, B:98:0x0295, B:101:0x0198, B:116:0x0119, B:117:0x00fd, B:127:0x0013), top: B:126:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0263 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void searchAllTypeNames(final char[] cArr, final int i10, final char[] cArr2, int i11, int i12, IJavaSearchScope iJavaSearchScope, final IRestrictedAccessTypeRequestor iRestrictedAccessTypeRequestor, int i13, IProgressMonitor iProgressMonitor) throws JavaModelException {
        String str;
        char c10;
        char c11;
        SearchPattern qualifiedTypeDeclarationPattern;
        int i14;
        SubMonitor subMonitor;
        int i15;
        int i16;
        char[][] cArr3;
        int i17;
        int i18;
        int i19;
        IJavaSearchScope iJavaSearchScope2 = iJavaSearchScope;
        String str2 = null;
        if (cArr2 == null) {
            str = null;
        } else {
            try {
                str = new String(cArr2);
            } finally {
                if (iProgressMonitor != null) {
                    iProgressMonitor.done();
                }
            }
        }
        int validateMatchRule = SearchPattern.validateMatchRule(str, i11);
        if (VERBOSE) {
            Util.verbose("BasicSearchEngine.searchAllTypeNames(char[], char[], int, int, IJavaSearchScope, IRestrictedAccessTypeRequestor, int, IProgressMonitor)");
            StringBuilder sb2 = new StringBuilder("\t- package name: ");
            String str3 = "null";
            sb2.append(cArr == null ? "null" : new String(cArr));
            Util.verbose(sb2.toString());
            Util.verbose("\t- package match rule: " + getMatchRuleString(i10));
            StringBuilder sb3 = new StringBuilder("\t- type name: ");
            if (cArr2 != null) {
                str3 = new String(cArr2);
            }
            sb3.append(str3);
            Util.verbose(sb3.toString());
            Util.verbose("\t- type match rule: " + getMatchRuleString(i11));
            if (validateMatchRule != i11) {
                Util.verbose("\t- validated type match rule: " + getMatchRuleString(validateMatchRule));
            }
            Util.verbose("\t- search for: " + i12);
            Util.verbose("\t- scope: " + ((Object) iJavaSearchScope2));
        }
        if (validateMatchRule == -1) {
            if (iProgressMonitor != null) {
                iProgressMonitor.done();
                return;
            }
            return;
        }
        IndexManager indexManager = JavaModelManager.getIndexManager();
        switch (i12) {
            case 5:
                c10 = 'C';
                c11 = c10;
                break;
            case 6:
                c10 = 'I';
                c11 = c10;
                break;
            case 7:
                c10 = IIndexConstants.ENUM_SUFFIX;
                c11 = c10;
                break;
            case 8:
                c10 = IIndexConstants.ANNOTATION_TYPE_SUFFIX;
                c11 = c10;
                break;
            case 9:
                c10 = '\t';
                c11 = c10;
                break;
            case 10:
                c10 = '\n';
                c11 = c10;
                break;
            case 11:
                c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                c11 = c10;
                break;
            default:
                c11 = 0;
                break;
        }
        if (i10 == 0) {
            qualifiedTypeDeclarationPattern = new TypeDeclarationPattern(cArr, null, cArr2, c11, validateMatchRule);
        } else {
            qualifiedTypeDeclarationPattern = new QualifiedTypeDeclarationPattern(cArr, i10, cArr2, c11, validateMatchRule);
        }
        final HashSet hashSet = new HashSet();
        ICompilationUnit[] workingCopies = getWorkingCopies();
        int length = workingCopies == null ? 0 : workingCopies.length;
        if (workingCopies != null) {
            if (length == 1) {
                str2 = workingCopies[0].getPath().toString();
            } else {
                for (int i20 = 0; i20 < length; i20++) {
                    hashSet.add(workingCopies[i20].getPath().toString());
                }
            }
        }
        final int i21 = length;
        int i22 = length;
        final String str4 = str2;
        IndexQueryRequestor indexQueryRequestor = new IndexQueryRequestor() {
            /* JADX WARN: Removed duplicated region for block: B:33:0x006c  */
            @Override
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public boolean acceptIndexMatch(String str5, SearchPattern searchPattern, SearchParticipant searchParticipant, AccessRuleSet accessRuleSet) {
                AccessRestriction accessRestriction;
                TypeDeclarationPattern typeDeclarationPattern = (TypeDeclarationPattern) searchPattern;
                if (typeDeclarationPattern.enclosingTypeNames == IIndexConstants.ONE_ZERO_CHAR) {
                    return true;
                }
                int i23 = i21;
                if (i23 != 0) {
                    if (i23 != 1) {
                        if (hashSet.contains(str5)) {
                            return true;
                        }
                    } else if (str4.equals(str5)) {
                        return true;
                    }
                }
                if (accessRuleSet != null) {
                    char[] cArr4 = typeDeclarationPattern.pkg;
                    int length2 = (cArr4 == null || cArr4.length == 0) ? 0 : cArr4.length + 1;
                    char[] cArr5 = typeDeclarationPattern.simpleName;
                    int length3 = cArr5 == null ? 0 : cArr5.length;
                    char[] cArr6 = new char[length2 + length3];
                    if (length2 > 0) {
                        int i24 = length2 - 1;
                        System.arraycopy(cArr4, 0, cArr6, 0, i24);
                        CharOperation.replace(cArr6, '.', '/');
                        cArr6[i24] = '/';
                    } else {
                        length2 = 0;
                    }
                    if (length3 > 0) {
                        System.arraycopy(typeDeclarationPattern.simpleName, 0, cArr6, length2, length3);
                        length2 += length3;
                    }
                    if (length2 > 0) {
                        accessRestriction = accessRuleSet.getViolatedRestriction(cArr6);
                        AccessRestriction accessRestriction2 = accessRestriction;
                        if (BasicSearchEngine.this.match(typeDeclarationPattern.typeSuffix, typeDeclarationPattern.modifiers)) {
                            iRestrictedAccessTypeRequestor.acceptType(typeDeclarationPattern.modifiers, typeDeclarationPattern.pkg, typeDeclarationPattern.simpleName, typeDeclarationPattern.enclosingTypeNames, str5, accessRestriction2);
                        }
                        return true;
                    }
                }
                accessRestriction = null;
                AccessRestriction accessRestriction22 = accessRestriction;
                if (BasicSearchEngine.this.match(typeDeclarationPattern.typeSuffix, typeDeclarationPattern.modifiers)) {
                }
                return true;
            }
        };
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, Messages.engine_searching, 1000);
        indexManager.performConcurrentJob(new PatternSearchJob(qualifiedTypeDeclarationPattern, getDefaultSearchParticipant(), iJavaSearchScope2, indexQueryRequestor), i13, convert.split(Math.max(1000 - i22, 0)));
        if (workingCopies != null) {
            int i23 = 0;
            while (i23 < i22) {
                IProgressMonitor split = convert.split(i23);
                final ICompilationUnit iCompilationUnit = workingCopies[i23];
                if (!(iJavaSearchScope2 instanceof HierarchyScope)) {
                    if (!iJavaSearchScope2.encloses(iCompilationUnit)) {
                        i14 = i22;
                        subMonitor = convert;
                        i15 = i23;
                        i16 = validateMatchRule;
                        i23 = i15 + 1;
                        iJavaSearchScope2 = iJavaSearchScope;
                        validateMatchRule = i16;
                        i22 = i14;
                        convert = subMonitor;
                    }
                    final String obj = iCompilationUnit.getPath().toString();
                    char c12 = '.';
                    if (iCompilationUnit.isConsistent()) {
                        IPackageDeclaration[] packageDeclarations = iCompilationUnit.getPackageDeclarations();
                        char[] charArray = packageDeclarations.length == 0 ? CharOperation.NO_CHAR : packageDeclarations[0].getElementName().toCharArray();
                        IType[] allTypes = iCompilationUnit.getAllTypes();
                        int length2 = allTypes.length;
                        int i24 = 0;
                        while (i24 < length2) {
                            IType iType = allTypes[i24];
                            IJavaElement parent = iType.getParent();
                            if (parent instanceof IType) {
                                cArr3 = CharOperation.splitOn(c12, ((IType) parent).getTypeQualifiedName(c12).toCharArray());
                            } else {
                                cArr3 = CharOperation.NO_CHAR_CHAR;
                            }
                            char[][] cArr4 = cArr3;
                            char[] charArray2 = iType.getElementName().toCharArray();
                            if (iType.isEnum()) {
                                i17 = 3;
                            } else if (iType.isAnnotation()) {
                                i17 = 4;
                            } else if (iType.isClass()) {
                                i18 = 1;
                                int i25 = i24;
                                int i26 = length2;
                                SubMonitor subMonitor2 = convert;
                                i19 = i18;
                                int i27 = i22;
                                char c13 = c12;
                                IType[] iTypeArr = allTypes;
                                if (match(c11, cArr, i10, cArr2, validateMatchRule, i19, charArray, charArray2)) {
                                    if (iRestrictedAccessTypeRequestor instanceof TypeNameMatchRequestorWrapper) {
                                        ((TypeNameMatchRequestorWrapper) iRestrictedAccessTypeRequestor).requestor.acceptTypeNameMatch(new JavaSearchTypeNameMatch(iType, iType.getFlags()));
                                    } else {
                                        iRestrictedAccessTypeRequestor.acceptType(iType.getFlags(), charArray, charArray2, cArr4, obj, null);
                                    }
                                }
                                i24 = i25 + 1;
                                c12 = c13;
                                i22 = i27;
                                length2 = i26;
                                convert = subMonitor2;
                                allTypes = iTypeArr;
                            } else {
                                i17 = 2;
                            }
                            i18 = i17;
                            int i252 = i24;
                            int i262 = length2;
                            SubMonitor subMonitor22 = convert;
                            i19 = i18;
                            int i272 = i22;
                            char c132 = c12;
                            IType[] iTypeArr2 = allTypes;
                            if (match(c11, cArr, i10, cArr2, validateMatchRule, i19, charArray, charArray2)) {
                            }
                            i24 = i252 + 1;
                            c12 = c132;
                            i22 = i272;
                            length2 = i262;
                            convert = subMonitor22;
                            allTypes = iTypeArr2;
                        }
                        i14 = i22;
                        subMonitor = convert;
                        i15 = i23;
                        i16 = validateMatchRule;
                        i23 = i15 + 1;
                        iJavaSearchScope2 = iJavaSearchScope;
                        validateMatchRule = i16;
                        i22 = i14;
                        convert = subMonitor;
                    } else {
                        i14 = i22;
                        subMonitor = convert;
                        org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit2 = (org.eclipse.jdt.internal.compiler.env.ICompilationUnit) iCompilationUnit;
                        CompilationUnitDeclaration dietParse = getParser().dietParse(iCompilationUnit2, new CompilationResult(iCompilationUnit2, 0, 0, this.compilerOptions.maxProblemsPerUnit));
                        if (dietParse != null) {
                            ImportReference importReference = dietParse.currentPackage;
                            final char c14 = c11;
                            final int i28 = validateMatchRule;
                            final char[] concatWith = importReference == null ? CharOperation.NO_CHAR : CharOperation.concatWith(importReference.getImportName(), '.');
                            i15 = i23;
                            i16 = validateMatchRule;
                            dietParse.traverse(new ASTVisitor() {
                                @Override
                                public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
                                    return false;
                                }

                                @Override
                                public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope compilationUnitScope) {
                                    if (!BasicSearchEngine.this.match(c14, cArr, i10, cArr2, i28, TypeDeclaration.kind(typeDeclaration.modifiers), concatWith, typeDeclaration.name)) {
                                        return true;
                                    }
                                    IRestrictedAccessTypeRequestor iRestrictedAccessTypeRequestor2 = iRestrictedAccessTypeRequestor;
                                    if (iRestrictedAccessTypeRequestor2 instanceof TypeNameMatchRequestorWrapper) {
                                        ((TypeNameMatchRequestorWrapper) iRestrictedAccessTypeRequestor).requestor.acceptTypeNameMatch(new JavaSearchTypeNameMatch(iCompilationUnit.getType(new String(cArr2)), typeDeclaration.modifiers));
                                        return true;
                                    }
                                    iRestrictedAccessTypeRequestor2.acceptType(typeDeclaration.modifiers, concatWith, typeDeclaration.name, CharOperation.NO_CHAR_CHAR, obj, null);
                                    return true;
                                }

                                @Override
                                public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
                                    if (BasicSearchEngine.this.match(c14, cArr, i10, cArr2, i28, TypeDeclaration.kind(typeDeclaration.modifiers), concatWith, typeDeclaration.name)) {
                                        TypeDeclaration typeDeclaration2 = typeDeclaration.enclosingType;
                                        char[][] cArr5 = CharOperation.NO_CHAR_CHAR;
                                        while (typeDeclaration2 != null) {
                                            cArr5 = CharOperation.arrayConcat(new char[][]{typeDeclaration2.name}, cArr5);
                                            typeDeclaration2 = (typeDeclaration2.bits & 1024) != 0 ? typeDeclaration2.enclosingType : null;
                                        }
                                        IRestrictedAccessTypeRequestor iRestrictedAccessTypeRequestor2 = iRestrictedAccessTypeRequestor;
                                        if (iRestrictedAccessTypeRequestor2 instanceof TypeNameMatchRequestorWrapper) {
                                            IType type = iCompilationUnit.getType(new String(cArr5[0]));
                                            int length3 = cArr5.length;
                                            for (int i29 = 1; i29 < length3; i29++) {
                                                type = type.getType(new String(cArr5[i29]));
                                            }
                                            ((TypeNameMatchRequestorWrapper) iRestrictedAccessTypeRequestor).requestor.acceptTypeNameMatch(new JavaSearchTypeNameMatch(type, 0));
                                        } else {
                                            iRestrictedAccessTypeRequestor2.acceptType(typeDeclaration.modifiers, concatWith, typeDeclaration.name, cArr5, obj, null);
                                        }
                                    }
                                    return true;
                                }
                            }, dietParse.scope);
                        } else {
                            i15 = i23;
                            i16 = validateMatchRule;
                        }
                        i23 = i15 + 1;
                        iJavaSearchScope2 = iJavaSearchScope;
                        validateMatchRule = i16;
                        i22 = i14;
                        convert = subMonitor;
                    }
                }
            }
        }
    }

    public void searchDeclarations(IJavaElement iJavaElement, SearchRequestor searchRequestor, SearchPattern searchPattern, IProgressMonitor iProgressMonitor) throws JavaModelException {
        try {
            if (VERBOSE) {
                Util.verbose("\t- java element: " + ((Object) iJavaElement));
            }
            IJavaSearchScope createJavaSearchScope = createJavaSearchScope(new IJavaElement[]{iJavaElement});
            IResource resource = ((JavaElement) iJavaElement).resource();
            if (iJavaElement instanceof IMember) {
                IMember iMember = (IMember) iJavaElement;
                ICompilationUnit compilationUnit = iMember.getCompilationUnit();
                if (compilationUnit != null) {
                    resource = compilationUnit.getResource();
                } else if (iMember.isBinary()) {
                    resource = null;
                }
            }
            try {
                if (resource instanceof IFile) {
                    try {
                        searchRequestor.beginReporting();
                        if (VERBOSE) {
                            Util.verbose("Searching for " + ((Object) searchPattern) + " in " + ((Object) resource.getFullPath()));
                        }
                        SearchParticipant defaultSearchParticipant = getDefaultSearchParticipant();
                        defaultSearchParticipant.locateMatches(MatchLocator.addWorkingCopies(searchPattern, new SearchDocument[]{new JavaSearchDocument(iJavaElement.getPath().toString(), defaultSearchParticipant)}, getWorkingCopies(iJavaElement), defaultSearchParticipant), searchPattern, createJavaSearchScope, searchRequestor, iProgressMonitor);
                        searchRequestor.endReporting();
                    } catch (Throwable th2) {
                        searchRequestor.endReporting();
                        throw th2;
                    }
                } else {
                    search(searchPattern, new SearchParticipant[]{getDefaultSearchParticipant()}, createJavaSearchScope, searchRequestor, iProgressMonitor);
                }
                if (iProgressMonitor != null) {
                    iProgressMonitor.done();
                }
            } catch (CoreException e10) {
                if (!(e10 instanceof JavaModelException)) {
                    throw new JavaModelException(e10);
                }
                throw ((JavaModelException) e10);
            }
        } catch (Throwable th3) {
            if (iProgressMonitor != null) {
                iProgressMonitor.done();
            }
            throw th3;
        }
    }

    public void searchDeclarationsOfAccessedFields(IJavaElement iJavaElement, SearchRequestor searchRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (VERBOSE) {
            Util.verbose("BasicSearchEngine.searchDeclarationsOfAccessedFields(IJavaElement, SearchRequestor, SearchPattern, IProgressMonitor)");
        }
        int elementType = iJavaElement.getElementType();
        if (elementType != 5 && elementType != 7 && elementType != 8 && elementType != 9) {
            throw new IllegalArgumentException();
        }
        searchDeclarations(iJavaElement, searchRequestor, new DeclarationOfAccessedFieldsPattern(iJavaElement), iProgressMonitor);
    }

    public void searchDeclarationsOfReferencedTypes(IJavaElement iJavaElement, SearchRequestor searchRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (VERBOSE) {
            Util.verbose("BasicSearchEngine.searchDeclarationsOfReferencedTypes(IJavaElement, SearchRequestor, SearchPattern, IProgressMonitor)");
        }
        int elementType = iJavaElement.getElementType();
        if (elementType != 5 && elementType != 7 && elementType != 8 && elementType != 9) {
            throw new IllegalArgumentException();
        }
        searchDeclarations(iJavaElement, searchRequestor, new DeclarationOfReferencedTypesPattern(iJavaElement), iProgressMonitor);
    }

    public void searchDeclarationsOfSentMessages(IJavaElement iJavaElement, SearchRequestor searchRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (VERBOSE) {
            Util.verbose("BasicSearchEngine.searchDeclarationsOfSentMessages(IJavaElement, SearchRequestor, SearchPattern, IProgressMonitor)");
        }
        int elementType = iJavaElement.getElementType();
        if (elementType != 5 && elementType != 7 && elementType != 8 && elementType != 9) {
            throw new IllegalArgumentException();
        }
        searchDeclarations(iJavaElement, searchRequestor, new DeclarationOfReferencedMethodsPattern(iJavaElement), iProgressMonitor);
    }

    public BasicSearchEngine(ICompilationUnit[] iCompilationUnitArr) {
        this.workingCopies = iCompilationUnitArr;
    }

    public static IJavaSearchScope createHierarchyScope(IType iType, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        return new HierarchyScope(iType, workingCopyOwner);
    }

    public static IJavaSearchScope createJavaSearchScope(boolean z10, IJavaElement[] iJavaElementArr) {
        return createJavaSearchScope(z10, iJavaElementArr, true);
    }

    public boolean match(char c10, char[] cArr, int i10, char[] cArr2, int i11, int i12, char[] cArr3, char[] cArr4) {
        if (c10 != 'A') {
            if (c10 != 'C') {
                if (c10 != 'E') {
                    if (c10 != 'I') {
                        switch (c10) {
                            case '\t':
                                if (i12 != 1 && i12 != 3) {
                                    return false;
                                }
                                break;
                            case '\n':
                                if (i12 != 1 && i12 != 2) {
                                    return false;
                                }
                                break;
                            case 11:
                                if (i12 != 2 && i12 != 4) {
                                    return false;
                                }
                                break;
                        }
                    } else if (i12 != 2) {
                        return false;
                    }
                } else if (i12 != 3) {
                    return false;
                }
            } else if (i12 != 1) {
                return false;
            }
        } else if (i12 != 4) {
            return false;
        }
        boolean z10 = (i10 & 8) != 0;
        if (cArr != null && !CharOperation.equals(cArr, cArr3, z10)) {
            return false;
        }
        boolean z11 = (i11 & 8) != 0;
        if (cArr2 != null) {
            boolean z12 = (i11 & 384) != 0;
            int i13 = i11 & JavaSearchPattern.MATCH_MODE_MASK;
            if (!z11 && !z12) {
                cArr2 = CharOperation.toLowerCase(cArr2);
            }
            boolean z13 = !z11 || cArr2[0] == cArr4[0];
            if (i13 == 0) {
                return z13 && CharOperation.equals(cArr2, cArr4, z11);
            }
            if (i13 == 1) {
                return z13 && CharOperation.prefixEquals(cArr2, cArr4, z11);
            }
            if (i13 == 2) {
                return CharOperation.match(cArr2, cArr4, z11);
            }
            if (i13 == 4) {
                return Pattern.matches(new String(cArr2), new String(cArr4));
            }
            if (i13 == 128) {
                if (z13 && CharOperation.camelCaseMatch(cArr2, cArr4, false)) {
                    return true;
                }
                return !z11 && z13 && CharOperation.prefixEquals(cArr2, cArr4, false);
            }
            if (i13 == 256) {
                return z13 && CharOperation.camelCaseMatch(cArr2, cArr4, true);
            }
        }
        return true;
    }

    public static IJavaSearchScope createJavaSearchScope(IJavaElement[] iJavaElementArr, boolean z10) {
        return createJavaSearchScope(false, iJavaElementArr, z10);
    }

    public BasicSearchEngine(WorkingCopyOwner workingCopyOwner) {
        this.workingCopyOwner = workingCopyOwner;
    }

    public static IJavaSearchScope createJavaSearchScope(boolean z10, IJavaElement[] iJavaElementArr, boolean z11) {
        return createJavaSearchScope(z10, iJavaElementArr, z11 ? 15 : 7);
    }

    public static IJavaSearchScope createJavaSearchScope(IJavaElement[] iJavaElementArr, int i10) {
        return createJavaSearchScope(false, iJavaElementArr, i10);
    }

    public static IJavaSearchScope createJavaSearchScope(boolean z10, IJavaElement[] iJavaElementArr, int i10) {
        HashSet hashSet = new HashSet(2);
        for (IJavaElement iJavaElement : iJavaElementArr) {
            if (iJavaElement instanceof JavaProject) {
                hashSet.add(iJavaElement);
            }
        }
        JavaSearchScope javaSearchScope = new JavaSearchScope(z10);
        for (IJavaElement iJavaElement2 : iJavaElementArr) {
            if (iJavaElement2 != null) {
                try {
                    if (hashSet.contains(iJavaElement2)) {
                        javaSearchScope.add((JavaProject) iJavaElement2, i10, hashSet);
                    } else {
                        javaSearchScope.add(iJavaElement2);
                    }
                } catch (JavaModelException unused) {
                }
            }
        }
        return javaSearchScope;
    }

    public boolean match(char[] cArr, int i10, char[] cArr2) {
        boolean z10 = (i10 & 8) != 0;
        if (cArr != null) {
            boolean z11 = (i10 & 384) != 0;
            int i11 = i10 & JavaSearchPattern.MATCH_MODE_MASK;
            if (!z10 && !z11) {
                cArr = CharOperation.toLowerCase(cArr);
            }
            boolean z12 = !z10 || cArr[0] == cArr2[0];
            if (i11 == 0) {
                return z12 && CharOperation.equals(cArr, cArr2, z10);
            }
            if (i11 == 1) {
                return z12 && CharOperation.prefixEquals(cArr, cArr2, z10);
            }
            if (i11 == 2) {
                return CharOperation.match(cArr, cArr2, z10);
            }
            if (i11 == 4) {
                return Pattern.matches(new String(cArr), new String(cArr2));
            }
            if (i11 == 128) {
                if (z12 && CharOperation.camelCaseMatch(cArr, cArr2, false)) {
                    return true;
                }
                return !z10 && z12 && CharOperation.prefixEquals(cArr, cArr2, false);
            }
            if (i11 == 256) {
                return z12 && CharOperation.camelCaseMatch(cArr, cArr2, true);
            }
        }
        return true;
    }

    public boolean match(char[] cArr, int i10, char[] cArr2, int i11, char[] cArr3, int i12, char[] cArr4, int i13, char[] cArr5, char[] cArr6, char[] cArr7, char[] cArr8) {
        if (cArr != null) {
            if (!CharOperation.equals(cArr, cArr5, (i10 & 8) != 0)) {
                return false;
            }
        }
        return match(cArr2, i11, cArr6) && match(cArr3, i12, cArr7) && match(cArr4, i13, cArr8);
    }

    public boolean match(char[] cArr, int i10, char[] cArr2, int i11, char[] cArr3, char[] cArr4, char[] cArr5, char[] cArr6) {
        if (cArr3 == null) {
            cArr3 = CharOperation.NO_CHAR;
        }
        if (cArr4 != null && cArr4.length > 0) {
            if (cArr3.length > 0) {
                cArr4 = CharOperation.concat(cArr3, cArr4, '.');
            }
            cArr3 = cArr4;
        }
        if (cArr5 != null && cArr5.length > 0) {
            if (cArr3.length > 0) {
                cArr5 = CharOperation.concat(cArr3, cArr5, '.');
            }
            cArr3 = cArr5;
        }
        return match(cArr, i10, cArr3) && match(cArr2, i11, cArr6);
    }

    private ICompilationUnit[] getWorkingCopies(IJavaElement iJavaElement) {
        if (iJavaElement instanceof IMember) {
            ICompilationUnit compilationUnit = ((IMember) iJavaElement).getCompilationUnit();
            if (compilationUnit == null || !compilationUnit.isWorkingCopy()) {
                return null;
            }
            return new ICompilationUnit[]{compilationUnit};
        }
        if (iJavaElement instanceof ICompilationUnit) {
            return new ICompilationUnit[]{(ICompilationUnit) iJavaElement};
        }
        return null;
    }

    public void searchAllMethodNames(final char[] cArr, final int i10, final char[] cArr2, final int i11, final char[] cArr3, final int i12, final char[] cArr4, final int i13, IJavaSearchScope iJavaSearchScope, final IRestrictedAccessMethodRequestor iRestrictedAccessMethodRequestor, int i14, IProgressMonitor iProgressMonitor) throws JavaModelException {
        SubMonitor subMonitor;
        int i15;
        boolean z10;
        int i16;
        int i17;
        int i18;
        IType[] iTypeArr;
        char[] cArr5;
        char[] cArr6;
        int i19;
        char c10;
        String str = null;
        int validateMatchRule = SearchPattern.validateMatchRule(cArr4 == null ? null : new String(cArr4), i13);
        if (VERBOSE) {
            Util.verbose("BasicSearchEngine.searchAllMethodDeclarations(char[] packageName, char[] declaringQualification, char[] declaringSimpleName, char[] methodName, int methodMatchRule, IJavaSearchScope, IRestrictedAccessConstructorRequestor, int waitingPolicy, IProgressMonitor)");
            StringBuilder sb2 = new StringBuilder("\t- package name: ");
            sb2.append(cArr == null ? "null" : new String(cArr));
            Util.verbose(sb2.toString());
            StringBuilder sb3 = new StringBuilder("\t- declaringQualification name: ");
            sb3.append(cArr2 == null ? "null" : new String(cArr2));
            Util.verbose(sb3.toString());
            StringBuilder sb4 = new StringBuilder("\t- declaringSimple name: ");
            sb4.append(cArr3 == null ? "null" : new String(cArr3));
            Util.verbose(sb4.toString());
            StringBuilder sb5 = new StringBuilder("\t- method name: ");
            sb5.append(cArr4 != null ? new String(cArr4) : "null");
            Util.verbose(sb5.toString());
            Util.verbose("\t- method match rule: " + getMatchRuleString(i13));
            if (validateMatchRule != i13) {
                Util.verbose("\t- validated method match rule: " + getMatchRuleString(validateMatchRule));
            }
            Util.verbose("\t- scope: " + ((Object) iJavaSearchScope));
        }
        if (validateMatchRule == -1) {
            return;
        }
        IndexManager indexManager = JavaModelManager.getIndexManager();
        MethodDeclarationPattern methodDeclarationPattern = new MethodDeclarationPattern(cArr, cArr2, cArr3, cArr4, i13);
        final HashSet hashSet = new HashSet();
        ICompilationUnit[] workingCopies = getWorkingCopies();
        final int length = workingCopies == null ? 0 : workingCopies.length;
        if (workingCopies != null) {
            if (length == 1) {
                str = workingCopies[0].getPath().toString();
            } else {
                for (int i20 = 0; i20 < length; i20++) {
                    hashSet.add(workingCopies[i20].getPath().toString());
                }
            }
        }
        int i21 = length;
        final String str2 = str;
        IndexQueryRequestor indexQueryRequestor = new IndexQueryRequestor() {
            /* JADX WARN: Removed duplicated region for block: B:40:0x00b5  */
            /* JADX WARN: Removed duplicated region for block: B:42:0x00e1 A[ORIG_RETURN, RETURN] */
            @Override
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public boolean acceptIndexMatch(String str3, SearchPattern searchPattern, SearchParticipant searchParticipant, AccessRuleSet accessRuleSet) {
                AccessRestriction accessRestriction;
                MethodDeclarationPattern methodDeclarationPattern2 = (MethodDeclarationPattern) searchPattern;
                if ((methodDeclarationPattern2.extraFlags & 4) != 0) {
                    return true;
                }
                int i22 = length;
                if (i22 != 0) {
                    if (i22 != 1) {
                        if (hashSet.contains(str3)) {
                            return true;
                        }
                    } else if (str2.equals(str3)) {
                        return true;
                    }
                }
                if (accessRuleSet != null) {
                    char[] cArr7 = methodDeclarationPattern2.declaringPackageName;
                    int length2 = (cArr7 == null || cArr7.length == 0) ? 0 : cArr7.length + 1;
                    char[] cArr8 = methodDeclarationPattern2.declaringQualification;
                    int length3 = (cArr8 == null || cArr8.length == 0) ? 0 : cArr8.length;
                    char[] cArr9 = methodDeclarationPattern2.declaringSimpleName;
                    int length4 = cArr9 == null ? 0 : cArr9.length;
                    char[] cArr10 = new char[length2 + length3 + length4];
                    if (length2 > 0) {
                        int i23 = length2 - 1;
                        System.arraycopy(cArr7, 0, cArr10, 0, i23);
                        CharOperation.replace(cArr10, '.', '/');
                        cArr10[i23] = '/';
                    } else {
                        length2 = 0;
                    }
                    if (length3 > 0) {
                        System.arraycopy(methodDeclarationPattern2.declaringQualification, 0, cArr10, length2, length3);
                    }
                    if (length4 > 0) {
                        System.arraycopy(methodDeclarationPattern2.declaringSimpleName, 0, cArr10, length2, length4);
                        length2 += length4;
                    }
                    if (length2 > 0) {
                        accessRestriction = accessRuleSet.getViolatedRestriction(cArr10);
                        AccessRestriction accessRestriction2 = accessRestriction;
                        if (BasicSearchEngine.this.match(cArr, i10, cArr2, i11, cArr3, i12, cArr4, i13, methodDeclarationPattern2.declaringPackageName, methodDeclarationPattern2.declaringQualification, methodDeclarationPattern2.declaringSimpleName, methodDeclarationPattern2.selector)) {
                            return true;
                        }
                        iRestrictedAccessMethodRequestor.acceptMethod(methodDeclarationPattern2.selector, methodDeclarationPattern2.parameterCount, methodDeclarationPattern2.declaringQualification, methodDeclarationPattern2.declaringSimpleName, methodDeclarationPattern2.declaringTypeModifiers, methodDeclarationPattern2.declaringPackageName, methodDeclarationPattern2.signature, methodDeclarationPattern2.parameterTypes, methodDeclarationPattern2.parameterNames, methodDeclarationPattern2.returnSimpleName, methodDeclarationPattern2.modifiers, str3, accessRestriction2, -1);
                        return true;
                    }
                }
                accessRestriction = null;
                AccessRestriction accessRestriction22 = accessRestriction;
                if (BasicSearchEngine.this.match(cArr, i10, cArr2, i11, cArr3, i12, cArr4, i13, methodDeclarationPattern2.declaringPackageName, methodDeclarationPattern2.declaringQualification, methodDeclarationPattern2.declaringSimpleName, methodDeclarationPattern2.selector)) {
                }
            }
        };
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, Messages.engine_searching, 1000);
        IJavaSearchScope iJavaSearchScope2 = iJavaSearchScope;
        int i22 = 0;
        indexManager.performConcurrentJob(new PatternSearchJob(methodDeclarationPattern, getDefaultSearchParticipant(), iJavaSearchScope2, indexQueryRequestor), i14, convert.split(Math.max(1000 - i21, 0)));
        if (workingCopies != null) {
            int i23 = i10;
            boolean z11 = (i23 & 8) != 0;
            int i24 = 0;
            while (i24 < i21) {
                IProgressMonitor split = convert.split(1);
                final ICompilationUnit iCompilationUnit = workingCopies[i24];
                if (!(iJavaSearchScope2 instanceof HierarchyScope) ? iJavaSearchScope2.encloses(iCompilationUnit) : ((HierarchyScope) iJavaSearchScope2).encloses(iCompilationUnit, split)) {
                    final String obj = iCompilationUnit.getPath().toString();
                    char c11 = '.';
                    if (iCompilationUnit.isConsistent()) {
                        IPackageDeclaration[] packageDeclarations = iCompilationUnit.getPackageDeclarations();
                        char[] cArr7 = cArr;
                        char[] charArray = packageDeclarations.length == 0 ? CharOperation.NO_CHAR : packageDeclarations[i22].getElementName().toCharArray();
                        if (cArr7 == null || CharOperation.equals(cArr7, charArray, z11)) {
                            IType[] allTypes = iCompilationUnit.getAllTypes();
                            int length2 = allTypes.length;
                            int i25 = i22;
                            while (i25 < length2) {
                                IType iType = allTypes[i25];
                                IJavaElement parent = iType.getParent();
                                char[] charArray2 = parent instanceof IType ? ((IType) parent).getTypeQualifiedName(c11).toCharArray() : CharOperation.NO_CHAR;
                                char[] charArray3 = iType.getElementName().toCharArray();
                                SubMonitor subMonitor2 = convert;
                                if (match(cArr2, i11, charArray2) && match(cArr3, i12, charArray3)) {
                                    i17 = i25;
                                    i18 = length2;
                                    iTypeArr = allTypes;
                                    cArr5 = cArr7;
                                    cArr6 = charArray;
                                    i19 = i24;
                                    c10 = c11;
                                    reportMatchingMethods(cArr4, i13, iRestrictedAccessMethodRequestor, obj, charArray, iType, charArray2, charArray3);
                                } else {
                                    i17 = i25;
                                    i18 = length2;
                                    iTypeArr = allTypes;
                                    cArr5 = cArr7;
                                    cArr6 = charArray;
                                    i19 = i24;
                                    c10 = c11;
                                }
                                i25 = i17 + 1;
                                convert = subMonitor2;
                                c11 = c10;
                                cArr7 = cArr5;
                                charArray = cArr6;
                                i24 = i19;
                                length2 = i18;
                                allTypes = iTypeArr;
                                i22 = 0;
                            }
                        }
                    } else {
                        int i26 = i24;
                        subMonitor = convert;
                        org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit2 = (org.eclipse.jdt.internal.compiler.env.ICompilationUnit) iCompilationUnit;
                        CompilationUnitDeclaration dietParse = getParser().dietParse(iCompilationUnit2, new CompilationResult(iCompilationUnit2, 0, 0, this.compilerOptions.maxProblemsPerUnit));
                        if (dietParse != null) {
                            ImportReference importReference = dietParse.currentPackage;
                            final char[] concatWith = importReference == null ? CharOperation.NO_CHAR : CharOperation.concatWith(importReference.getImportName(), '.');
                            if (match(cArr, i23, concatWith)) {
                                i15 = 0;
                                i16 = i26;
                                z10 = z11;
                                dietParse.traverse(new ASTVisitor() {
                                    Stack<TypeInfo> typeInfoStack = new Stack<>();

                                    public class TypeInfo {
                                        public char[] enclosingTypeName;
                                        public IType type;
                                        public TypeDeclaration typeDecl;
                                        public boolean visitMethods;

                                        public TypeInfo(TypeDeclaration typeDeclaration, boolean z10, char[] cArr, ICompilationUnit iCompilationUnit) {
                                            this.typeDecl = typeDeclaration;
                                            this.type = iCompilationUnit.getType(new String(typeDeclaration.name));
                                            this.visitMethods = z10;
                                            this.enclosingTypeName = cArr;
                                        }
                                    }

                                    private void addStackEntry(TypeDeclaration typeDeclaration, char[] cArr8) {
                                        this.typeInfoStack.push(new TypeInfo(typeDeclaration, BasicSearchEngine.this.match(cArr2, i11, cArr8) && BasicSearchEngine.this.match(cArr3, i12, typeDeclaration.name), cArr8, iCompilationUnit));
                                    }

                                    @Override
                                    public void endVisit(TypeDeclaration typeDeclaration, CompilationUnitScope compilationUnitScope) {
                                        this.typeInfoStack.pop();
                                    }

                                    public IType getCurrentType() {
                                        int size = this.typeInfoStack.size();
                                        if (size <= 0) {
                                            return null;
                                        }
                                        IType iType2 = this.typeInfoStack.get(0).type;
                                        if (iType2 != null) {
                                            return iType2;
                                        }
                                        TypeInfo typeInfo = this.typeInfoStack.get(0);
                                        IType iType3 = typeInfo.type;
                                        if (iType3 == null) {
                                            iType3 = iCompilationUnit.getType(new String(typeInfo.typeDecl.name));
                                        }
                                        typeInfo.type = iType3;
                                        for (int i27 = 1; i27 < size && iType3 != null; i27++) {
                                            TypeInfo typeInfo2 = this.typeInfoStack.get(i27);
                                            if (typeInfo2.type == null) {
                                                typeInfo2.type = iType3.getType(new String(typeInfo2.typeDecl.name));
                                            }
                                            iType3 = typeInfo2.type;
                                        }
                                        return iType3;
                                    }

                                    @Override
                                    public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
                                        return false;
                                    }

                                    @Override
                                    public void endVisit(TypeDeclaration typeDeclaration, ClassScope classScope) {
                                        this.typeInfoStack.pop();
                                    }

                                    @Override
                                    public boolean visit(MethodDeclaration methodDeclaration, ClassScope classScope) {
                                        TypeInfo peek = this.typeInfoStack.peek();
                                        if (!peek.visitMethods || !BasicSearchEngine.this.match(cArr4, i13, methodDeclaration.selector)) {
                                            return false;
                                        }
                                        BasicSearchEngine.this.reportMatchingMethod(obj, concatWith, peek.enclosingTypeName, peek.typeDecl, methodDeclaration, getCurrentType(), iRestrictedAccessMethodRequestor);
                                        return false;
                                    }

                                    @Override
                                    public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope compilationUnitScope) {
                                        addStackEntry(typeDeclaration, CharOperation.NO_CHAR);
                                        return true;
                                    }

                                    @Override
                                    public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
                                        TypeInfo peek = this.typeInfoStack.peek();
                                        char[] cArr8 = peek.enclosingTypeName;
                                        addStackEntry(typeDeclaration, cArr8 == CharOperation.NO_CHAR ? peek.typeDecl.name : CharOperation.concat(cArr8, peek.typeDecl.name, '.'));
                                        return true;
                                    }
                                }, dietParse.scope);
                                i24 = i16 + 1;
                                i23 = i10;
                                iJavaSearchScope2 = iJavaSearchScope;
                                convert = subMonitor;
                                z11 = z10;
                                i22 = i15;
                            }
                        }
                        i15 = 0;
                        z10 = z11;
                        i16 = i26;
                        i24 = i16 + 1;
                        i23 = i10;
                        iJavaSearchScope2 = iJavaSearchScope;
                        convert = subMonitor;
                        z11 = z10;
                        i22 = i15;
                    }
                }
                i16 = i24;
                z10 = z11;
                subMonitor = convert;
                i15 = i22;
                i24 = i16 + 1;
                i23 = i10;
                iJavaSearchScope2 = iJavaSearchScope;
                convert = subMonitor;
                z11 = z10;
                i22 = i15;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0114 A[Catch: all -> 0x008c, TryCatch #1 {all -> 0x008c, blocks: (B:3:0x000c, B:5:0x0010, B:9:0x002d, B:12:0x004a, B:13:0x0041, B:14:0x0024, B:15:0x0091, B:16:0x0096, B:18:0x00af, B:24:0x00c7, B:26:0x00ea, B:28:0x0114, B:30:0x011c, B:32:0x012e, B:34:0x0135, B:35:0x0142, B:37:0x0151, B:39:0x015b, B:40:0x0175, B:43:0x01a2, B:45:0x01ad, B:47:0x01be, B:49:0x0186, B:52:0x018f, B:55:0x0198, B:59:0x0170, B:65:0x0138, B:66:0x01c1, B:94:0x00d8, B:98:0x00c1), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:91:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void searchAllTypeNames(char[][] cArr, char[][] cArr2, final int i10, int i11, IJavaSearchScope iJavaSearchScope, final IRestrictedAccessTypeRequestor iRestrictedAccessTypeRequestor, int i12, IProgressMonitor iProgressMonitor) throws JavaModelException {
        char c10;
        String str;
        char[] concatWith;
        int i13;
        ICompilationUnit[] iCompilationUnitArr;
        char[][] cArr3;
        char[] cArr4;
        char c11;
        try {
            if (VERBOSE) {
                Util.verbose("BasicSearchEngine.searchAllTypeNames(char[][], char[][], int, int, IJavaSearchScope, IRestrictedAccessTypeRequestor, int, IProgressMonitor)");
                StringBuilder sb2 = new StringBuilder("\t- package name: ");
                String str2 = "null";
                sb2.append(cArr == null ? "null" : new String(CharOperation.concatWith(cArr, IIndexConstants.PARAMETER_SEPARATOR)));
                Util.verbose(sb2.toString());
                StringBuilder sb3 = new StringBuilder("\t- type name: ");
                if (cArr2 != null) {
                    str2 = new String(CharOperation.concatWith(cArr2, IIndexConstants.PARAMETER_SEPARATOR));
                }
                sb3.append(str2);
                Util.verbose(sb3.toString());
                Util.verbose("\t- match rule: " + getMatchRuleString(i10));
                Util.verbose("\t- search for: " + i11);
                Util.verbose("\t- scope: " + ((Object) iJavaSearchScope));
            }
            IndexManager indexManager = JavaModelManager.getIndexManager();
            switch (i11) {
                case 5:
                    c10 = 'C';
                    break;
                case 6:
                    c10 = 'I';
                    break;
                case 7:
                    c10 = IIndexConstants.ENUM_SUFFIX;
                    break;
                case 8:
                    c10 = IIndexConstants.ANNOTATION_TYPE_SUFFIX;
                    break;
                case 9:
                    c10 = '\t';
                    break;
                case 10:
                    c10 = '\n';
                    break;
                case 11:
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    break;
                default:
                    c10 = 0;
                    break;
            }
            final MultiTypeDeclarationPattern multiTypeDeclarationPattern = new MultiTypeDeclarationPattern(cArr, cArr2, c10, i10);
            final HashSet hashSet = new HashSet();
            ICompilationUnit[] workingCopies = getWorkingCopies();
            int length = workingCopies == null ? 0 : workingCopies.length;
            if (workingCopies != null) {
                if (length == 1) {
                    str = workingCopies[0].getPath().toString();
                    final String str3 = str;
                    final int i14 = length;
                    indexManager.performConcurrentJob(new PatternSearchJob(multiTypeDeclarationPattern, getDefaultSearchParticipant(), iJavaSearchScope, new IndexQueryRequestor() {
                        @Override
                        public boolean acceptIndexMatch(String str4, SearchPattern searchPattern, SearchParticipant searchParticipant, AccessRuleSet accessRuleSet) {
                            AccessRestriction accessRestriction;
                            QualifiedTypeDeclarationPattern qualifiedTypeDeclarationPattern = (QualifiedTypeDeclarationPattern) searchPattern;
                            if (qualifiedTypeDeclarationPattern.enclosingTypeNames == IIndexConstants.ONE_ZERO_CHAR) {
                                return true;
                            }
                            int i15 = i14;
                            if (i15 != 0) {
                                if (i15 != 1) {
                                    if (hashSet.contains(str4)) {
                                        return true;
                                    }
                                } else if (str3.equals(str4)) {
                                    return true;
                                }
                            }
                            if (accessRuleSet != null) {
                                char[] cArr5 = qualifiedTypeDeclarationPattern.qualification;
                                int length2 = (cArr5 == null || cArr5.length == 0) ? 0 : cArr5.length + 1;
                                char[] cArr6 = qualifiedTypeDeclarationPattern.simpleName;
                                int length3 = cArr6 == null ? 0 : cArr6.length;
                                char[] cArr7 = new char[length2 + length3];
                                if (length2 > 0) {
                                    int i16 = length2 - 1;
                                    System.arraycopy(cArr5, 0, cArr7, 0, i16);
                                    CharOperation.replace(cArr7, '.', '/');
                                    char[][] cArr8 = qualifiedTypeDeclarationPattern.enclosingTypeNames;
                                    cArr7[i16] = cArr8 != null && cArr8.length > 0 ? '$' : '/';
                                } else {
                                    length2 = 0;
                                }
                                if (length3 > 0) {
                                    System.arraycopy(qualifiedTypeDeclarationPattern.simpleName, 0, cArr7, length2, length3);
                                    length2 += length3;
                                }
                                if (length2 > 0) {
                                    accessRestriction = accessRuleSet.getViolatedRestriction(cArr7);
                                    iRestrictedAccessTypeRequestor.acceptType(qualifiedTypeDeclarationPattern.modifiers, qualifiedTypeDeclarationPattern.pkg, qualifiedTypeDeclarationPattern.simpleName, qualifiedTypeDeclarationPattern.enclosingTypeNames, str4, accessRestriction);
                                    return true;
                                }
                            }
                            accessRestriction = null;
                            iRestrictedAccessTypeRequestor.acceptType(qualifiedTypeDeclarationPattern.modifiers, qualifiedTypeDeclarationPattern.pkg, qualifiedTypeDeclarationPattern.simpleName, qualifiedTypeDeclarationPattern.enclosingTypeNames, str4, accessRestriction);
                            return true;
                        }
                    }), i12, SubMonitor.convert(iProgressMonitor, Messages.engine_searching, 100).split(100));
                    if (workingCopies != null) {
                        int length2 = workingCopies.length;
                        int i15 = 0;
                        while (i15 < length2) {
                            ICompilationUnit iCompilationUnit = workingCopies[i15];
                            final String obj = iCompilationUnit.getPath().toString();
                            if (iCompilationUnit.isConsistent()) {
                                IPackageDeclaration[] packageDeclarations = iCompilationUnit.getPackageDeclarations();
                                char[] charArray = packageDeclarations.length == 0 ? CharOperation.NO_CHAR : packageDeclarations[0].getElementName().toCharArray();
                                for (IType iType : iCompilationUnit.getAllTypes()) {
                                    IJavaElement parent = iType.getParent();
                                    if (parent instanceof IType) {
                                        char[] charArray2 = ((IType) parent).getTypeQualifiedName('.').toCharArray();
                                        char[][] splitOn = CharOperation.splitOn('.', charArray2);
                                        cArr4 = CharOperation.concat(charArray, charArray2);
                                        cArr3 = splitOn;
                                    } else {
                                        cArr3 = CharOperation.NO_CHAR_CHAR;
                                        cArr4 = charArray;
                                    }
                                    char[] charArray3 = iType.getElementName().toCharArray();
                                    if (iType.isClass()) {
                                        c11 = 'C';
                                    } else if (iType.isInterface()) {
                                        c11 = 'I';
                                    } else if (iType.isEnum()) {
                                        c11 = IIndexConstants.ENUM_SUFFIX;
                                    } else {
                                        c11 = iType.isAnnotation() ? IIndexConstants.ANNOTATION_TYPE_SUFFIX : (char) 0;
                                    }
                                    if (multiTypeDeclarationPattern.matchesDecodedKey(new QualifiedTypeDeclarationPattern(cArr4, charArray3, c11, i10))) {
                                        iRestrictedAccessTypeRequestor.acceptType(iType.getFlags(), charArray, charArray3, cArr3, obj, null);
                                    }
                                }
                            } else {
                                org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit2 = (org.eclipse.jdt.internal.compiler.env.ICompilationUnit) iCompilationUnit;
                                try {
                                    CompilationUnitDeclaration dietParse = getParser().dietParse(iCompilationUnit2, new CompilationResult(iCompilationUnit2, 0, 0, this.compilerOptions.maxProblemsPerUnit));
                                    if (dietParse != null) {
                                        ImportReference importReference = dietParse.currentPackage;
                                        if (importReference == null) {
                                            concatWith = CharOperation.NO_CHAR;
                                        } else {
                                            concatWith = CharOperation.concatWith(importReference.getImportName(), '.');
                                        }
                                        final char[] cArr5 = concatWith;
                                        i13 = i15;
                                        iCompilationUnitArr = workingCopies;
                                        dietParse.traverse(new ASTVisitor() {
                                            @Override
                                            public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
                                                return false;
                                            }

                                            @Override
                                            public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope compilationUnitScope) {
                                                if (!multiTypeDeclarationPattern.matchesDecodedKey(new QualifiedTypeDeclarationPattern(cArr5, typeDeclaration.name, BasicSearchEngine.this.convertTypeKind(TypeDeclaration.kind(typeDeclaration.modifiers)), i10))) {
                                                    return true;
                                                }
                                                iRestrictedAccessTypeRequestor.acceptType(typeDeclaration.modifiers, cArr5, typeDeclaration.name, CharOperation.NO_CHAR_CHAR, obj, null);
                                                return true;
                                            }

                                            @Override
                                            public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
                                                char[] cArr6 = cArr5;
                                                TypeDeclaration typeDeclaration2 = typeDeclaration.enclosingType;
                                                char[][] cArr7 = CharOperation.NO_CHAR_CHAR;
                                                while (typeDeclaration2 != null) {
                                                    cArr6 = CharOperation.concat(cArr6, typeDeclaration2.name, '.');
                                                    cArr7 = CharOperation.arrayConcat(new char[][]{typeDeclaration2.name}, cArr7);
                                                    typeDeclaration2 = (typeDeclaration2.bits & 1024) != 0 ? typeDeclaration2.enclosingType : null;
                                                }
                                                if (!multiTypeDeclarationPattern.matchesDecodedKey(new QualifiedTypeDeclarationPattern(cArr6, typeDeclaration.name, BasicSearchEngine.this.convertTypeKind(TypeDeclaration.kind(typeDeclaration.modifiers)), i10))) {
                                                    return true;
                                                }
                                                iRestrictedAccessTypeRequestor.acceptType(typeDeclaration.modifiers, cArr5, typeDeclaration.name, cArr7, obj, null);
                                                return true;
                                            }
                                        }, dietParse.scope);
                                        i15 = i13 + 1;
                                        workingCopies = iCompilationUnitArr;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (iProgressMonitor != null) {
                                        iProgressMonitor.done();
                                    }
                                    throw th;
                                }
                            }
                            i13 = i15;
                            iCompilationUnitArr = workingCopies;
                            i15 = i13 + 1;
                            workingCopies = iCompilationUnitArr;
                        }
                    }
                    if (iProgressMonitor == null) {
                        iProgressMonitor.done();
                        return;
                    }
                    return;
                }
                for (int i16 = 0; i16 < length; i16++) {
                    hashSet.add(workingCopies[i16].getPath().toString());
                }
            }
            str = null;
            final String str32 = str;
            final int i142 = length;
            indexManager.performConcurrentJob(new PatternSearchJob(multiTypeDeclarationPattern, getDefaultSearchParticipant(), iJavaSearchScope, new IndexQueryRequestor() {
                @Override
                public boolean acceptIndexMatch(String str4, SearchPattern searchPattern, SearchParticipant searchParticipant, AccessRuleSet accessRuleSet) {
                    AccessRestriction accessRestriction;
                    QualifiedTypeDeclarationPattern qualifiedTypeDeclarationPattern = (QualifiedTypeDeclarationPattern) searchPattern;
                    if (qualifiedTypeDeclarationPattern.enclosingTypeNames == IIndexConstants.ONE_ZERO_CHAR) {
                        return true;
                    }
                    int i152 = i142;
                    if (i152 != 0) {
                        if (i152 != 1) {
                            if (hashSet.contains(str4)) {
                                return true;
                            }
                        } else if (str32.equals(str4)) {
                            return true;
                        }
                    }
                    if (accessRuleSet != null) {
                        char[] cArr52 = qualifiedTypeDeclarationPattern.qualification;
                        int length22 = (cArr52 == null || cArr52.length == 0) ? 0 : cArr52.length + 1;
                        char[] cArr6 = qualifiedTypeDeclarationPattern.simpleName;
                        int length3 = cArr6 == null ? 0 : cArr6.length;
                        char[] cArr7 = new char[length22 + length3];
                        if (length22 > 0) {
                            int i162 = length22 - 1;
                            System.arraycopy(cArr52, 0, cArr7, 0, i162);
                            CharOperation.replace(cArr7, '.', '/');
                            char[][] cArr8 = qualifiedTypeDeclarationPattern.enclosingTypeNames;
                            cArr7[i162] = cArr8 != null && cArr8.length > 0 ? '$' : '/';
                        } else {
                            length22 = 0;
                        }
                        if (length3 > 0) {
                            System.arraycopy(qualifiedTypeDeclarationPattern.simpleName, 0, cArr7, length22, length3);
                            length22 += length3;
                        }
                        if (length22 > 0) {
                            accessRestriction = accessRuleSet.getViolatedRestriction(cArr7);
                            iRestrictedAccessTypeRequestor.acceptType(qualifiedTypeDeclarationPattern.modifiers, qualifiedTypeDeclarationPattern.pkg, qualifiedTypeDeclarationPattern.simpleName, qualifiedTypeDeclarationPattern.enclosingTypeNames, str4, accessRestriction);
                            return true;
                        }
                    }
                    accessRestriction = null;
                    iRestrictedAccessTypeRequestor.acceptType(qualifiedTypeDeclarationPattern.modifiers, qualifiedTypeDeclarationPattern.pkg, qualifiedTypeDeclarationPattern.simpleName, qualifiedTypeDeclarationPattern.enclosingTypeNames, str4, accessRestriction);
                    return true;
                }
            }), i12, SubMonitor.convert(iProgressMonitor, Messages.engine_searching, 100).split(100));
            if (workingCopies != null) {
            }
            if (iProgressMonitor == null) {
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
