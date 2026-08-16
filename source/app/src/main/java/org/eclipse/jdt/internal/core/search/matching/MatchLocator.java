package org.eclipse.jdt.internal.core.search.matching;

import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IAnnotatable;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IOrdinaryClassFile;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.search.FieldDeclarationMatch;
import org.eclipse.jdt.core.search.FieldReferenceMatch;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.LocalVariableDeclarationMatch;
import org.eclipse.jdt.core.search.LocalVariableReferenceMatch;
import org.eclipse.jdt.core.search.MethodDeclarationMatch;
import org.eclipse.jdt.core.search.MethodReferenceMatch;
import org.eclipse.jdt.core.search.ModuleDeclarationMatch;
import org.eclipse.jdt.core.search.ModuleReferenceMatch;
import org.eclipse.jdt.core.search.PackageDeclarationMatch;
import org.eclipse.jdt.core.search.PackageReferenceMatch;
import org.eclipse.jdt.core.search.ReferenceMatch;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.core.search.SearchRequestor;
import org.eclipse.jdt.core.search.TypeDeclarationMatch;
import org.eclipse.jdt.core.search.TypeParameterDeclarationMatch;
import org.eclipse.jdt.core.search.TypeParameterReferenceMatch;
import org.eclipse.jdt.core.search.TypeReferenceMatch;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;
import org.eclipse.jdt.internal.compiler.ast.PackageVisibilityStatement;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ProvidesStatement;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.RequiresStatement;
import org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UsesStatement;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.AutomaticModuleNaming;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.ITypeRequestor;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.SourceTypeConverter;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfIntValues;
import org.eclipse.jdt.internal.compiler.util.Messages;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.AbstractModule;
import org.eclipse.jdt.internal.core.BinaryMember;
import org.eclipse.jdt.internal.core.BinaryMethod;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.LambdaFactory;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.Member;
import org.eclipse.jdt.internal.core.ModularClassFile;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.SourceMethod;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.hierarchy.HierarchyResolver;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;
import org.eclipse.jdt.internal.core.search.HierarchyScope;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.IndexSelector;
import org.eclipse.jdt.internal.core.search.JavaSearchDocument;
import org.eclipse.jdt.internal.core.util.ASTNodeFinder;
import org.eclipse.jdt.internal.core.util.HandleFactory;
import org.eclipse.jdt.internal.core.util.Util;

public class MatchLocator implements ITypeRequestor {
    public static final int MAX_AT_ONCE;
    public char[][][] allSuperTypeNames;
    private Parser basicParser;
    SimpleLookupTable bindings;
    public PossibleMatch currentPossibleMatch;
    public HandleFactory handleFactory;
    public HierarchyResolver hierarchyResolver;
    public LookupEnvironment lookupEnvironment;
    public int matchContainer;
    public PossibleMatch[] matchesToProcess;
    HashSet methodHandles;
    public INameEnvironment nameEnvironment;
    public NameLookup nameLookup;
    public int numberOfMatches;
    public CompilerOptions options;
    public MatchLocatorParser parser;
    public SearchPattern pattern;
    public PatternLocator patternLocator;
    public IProgressMonitor progressMonitor;
    int progressStep;
    int progressWorked;
    public SearchRequestor requestor;
    public IJavaSearchScope scope;
    private final boolean searchPackageDeclaration;
    private int sourceEndOfMethodToRetain;
    private int sourceStartOfMethodToRetain;
    CompilationUnitScope unitScope;
    public ICompilationUnit[] workingCopies;
    private IJavaSearchScope subScope = null;
    HashMap<SearchMatch, Binding> matchBinding = new HashMap<>();
    public long resultCollectorTime = 0;
    HashtableOfIntValues inTypeOccurrencesCounts = new HashtableOfIntValues();
    private TypeBinding unitScopeTypeBinding = null;

    public static class WorkingCopyDocument extends JavaSearchDocument {
        public ICompilationUnit workingCopy;

        public WorkingCopyDocument(ICompilationUnit iCompilationUnit, SearchParticipant searchParticipant) {
            super(iCompilationUnit.getPath().toString(), searchParticipant);
            this.charContents = ((CompilationUnit) iCompilationUnit).getContents();
            this.workingCopy = iCompilationUnit;
        }

        @Override
        public String toString() {
            return "WorkingCopyDocument for " + getPath();
        }
    }

    public static class WrappedCoreException extends RuntimeException {
        private static final long serialVersionUID = 8354329870126121212L;
        public CoreException coreException;

        public WrappedCoreException(CoreException coreException) {
            this.coreException = coreException;
        }
    }

    static {
        int round = (int) Math.round(Runtime.getRuntime().maxMemory() / 6.7108864E7d);
        if (round == 0 || round == 1) {
            MAX_AT_ONCE = 100;
            return;
        }
        if (round == 2) {
            MAX_AT_ONCE = 200;
        } else if (round != 3) {
            MAX_AT_ONCE = 400;
        } else {
            MAX_AT_ONCE = 300;
        }
    }

    public MatchLocator(SearchPattern searchPattern, SearchRequestor searchRequestor, IJavaSearchScope iJavaSearchScope, IProgressMonitor iProgressMonitor) {
        IType iType;
        this.pattern = searchPattern;
        PatternLocator patternLocator = PatternLocator.patternLocator(searchPattern);
        this.patternLocator = patternLocator;
        this.matchContainer = patternLocator == null ? 0 : patternLocator.matchContainer();
        this.requestor = searchRequestor;
        this.scope = iJavaSearchScope;
        this.progressMonitor = iProgressMonitor;
        if (searchPattern instanceof PackageDeclarationPattern) {
            this.searchPackageDeclaration = true;
        } else if (searchPattern instanceof OrPattern) {
            this.searchPackageDeclaration = ((OrPattern) searchPattern).hasPackageDeclaration();
        } else {
            this.searchPackageDeclaration = false;
        }
        if (!(searchPattern instanceof MethodPattern) || (iType = ((MethodPattern) searchPattern).declaringType) == null || iType.isBinary()) {
            return;
        }
        Member outerMostLocalContext = ((SourceType) iType).getOuterMostLocalContext();
        if (outerMostLocalContext instanceof IMethod) {
            try {
                ISourceRange sourceRange = outerMostLocalContext.getSourceRange();
                int offset = sourceRange.getOffset();
                this.sourceStartOfMethodToRetain = offset;
                this.sourceEndOfMethodToRetain = (offset + sourceRange.getLength()) - 1;
            } catch (JavaModelException unused) {
            }
        }
    }

    public static SearchDocument[] addWorkingCopies(SearchPattern searchPattern, SearchDocument[] searchDocumentArr, ICompilationUnit[] iCompilationUnitArr, SearchParticipant searchParticipant) {
        SearchDocument searchDocument;
        if (iCompilationUnitArr == null) {
            return searchDocumentArr;
        }
        HashMap workingCopiesThatCanSeeFocus = workingCopiesThatCanSeeFocus(iCompilationUnitArr, searchPattern, searchParticipant);
        if (workingCopiesThatCanSeeFocus.size() == 0) {
            return searchDocumentArr;
        }
        int length = searchDocumentArr.length;
        SearchDocument[] searchDocumentArr2 = null;
        for (int i10 = 0; i10 < length; i10++) {
            SearchDocument searchDocument2 = searchDocumentArr[i10];
            if (searchDocument2.getParticipant() == searchParticipant && (searchDocument = (SearchDocument) workingCopiesThatCanSeeFocus.remove(searchDocument2.getPath())) != null) {
                if (searchDocumentArr2 == null) {
                    searchDocumentArr2 = new SearchDocument[length];
                    System.arraycopy(searchDocumentArr, 0, searchDocumentArr2, 0, length);
                }
                searchDocumentArr2[i10] = searchDocument;
            }
        }
        if (searchDocumentArr2 != null) {
            searchDocumentArr = searchDocumentArr2;
        }
        int size = workingCopiesThatCanSeeFocus.size();
        if (size == 0) {
            return searchDocumentArr;
        }
        SearchDocument[] searchDocumentArr3 = new SearchDocument[size + length];
        System.arraycopy(searchDocumentArr, 0, searchDocumentArr3, 0, length);
        Iterator it = workingCopiesThatCanSeeFocus.values().iterator();
        while (it.hasNext()) {
            searchDocumentArr3[length] = (SearchDocument) it.next();
            length++;
        }
        return searchDocumentArr3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static IBinaryType classFileReader(IType iType) {
        ZipFile zipFile;
        IOrdinaryClassFile classFile = iType.getClassFile();
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        if (classFile.isOpen()) {
            return (IBinaryType) javaModelManager.getInfo(iType);
        }
        PackageFragment packageFragment = (PackageFragment) iType.getPackageFragment();
        IPackageFragmentRoot iPackageFragmentRoot = (IPackageFragmentRoot) packageFragment.getParent();
        try {
            if (!iPackageFragmentRoot.isArchive()) {
                return Util.newClassFileReader(((JavaElement) iType).resource());
            }
            String oSString = iPackageFragmentRoot.getPath().toOSString();
            if (org.eclipse.jdt.internal.compiler.util.Util.isJrt(oSString)) {
                return ClassFileReader.readFromJrt(new File(oSString), null, Util.concatWith(packageFragment.names, classFile.getElementName(), '/'));
            }
            try {
                IPath path = iPackageFragmentRoot.getPath();
                if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                    System.out.println("(" + ((Object) Thread.currentThread()) + ") [MatchLocator.classFileReader()] Creating ZipFile on " + ((Object) path));
                }
                ZipFile zipFile2 = javaModelManager.getZipFile(path);
                try {
                    ClassFileReader read = ClassFileReader.read(zipFile2, Util.concatWith(packageFragment.names, classFile.getElementName(), '/'));
                    javaModelManager.closeZipFile(zipFile2);
                    return read;
                } catch (Throwable th2) {
                    zipFile = zipFile2;
                    th = th2;
                    javaModelManager.closeZipFile(zipFile);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                zipFile = null;
            }
        } catch (ClassFormatException | CoreException | IOException unused) {
            return null;
        }
    }

    private IJavaElement[] createHandles(FieldDeclaration[] fieldDeclarationArr, TypeDeclaration typeDeclaration, IJavaElement iJavaElement) {
        if (fieldDeclarationArr == null) {
            return null;
        }
        int length = fieldDeclarationArr.length;
        int i10 = 0;
        while (i10 < length && fieldDeclarationArr[i10] != null) {
            i10++;
        }
        IJavaElement[] iJavaElementArr = new IJavaElement[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            iJavaElementArr[i11] = createHandle(fieldDeclarationArr[i11], typeDeclaration, iJavaElement);
        }
        return iJavaElementArr;
    }

    private IJavaElement createMethodHandle(IType iType, String str, String[] strArr) {
        IMethod method = iType.getMethod(str, strArr);
        if (method instanceof SourceMethod) {
            while (this.methodHandles.contains(method)) {
                ((SourceMethod) method).occurrenceCount++;
            }
        }
        this.methodHandles.add(method);
        return method;
    }

    private boolean filterEnum(SearchMatch searchMatch) {
        PackageFragment packageFragment = (PackageFragment) ((IJavaElement) searchMatch.getElement()).getAncestor(4);
        if (packageFragment == null) {
            return false;
        }
        String[] strArr = packageFragment.names;
        if (strArr.length != 5 || !strArr[4].equals("enum")) {
            return false;
        }
        CompilerOptions compilerOptions = this.options;
        return compilerOptions == null ? CompilerOptions.versionToJdkLevel(((IJavaProject) packageFragment.getAncestor(2)).getOption("org.eclipse.jdt.core.compiler.source", true)) >= ClassFileConstants.JDK1_5 : compilerOptions.sourceLevel >= ClassFileConstants.JDK1_5;
    }

    public static void findIndexMatches(SearchPattern searchPattern, Index index, IndexQueryRequestor indexQueryRequestor, SearchParticipant searchParticipant, IJavaSearchScope iJavaSearchScope, IProgressMonitor iProgressMonitor) throws IOException {
        searchPattern.findIndexMatches(index, indexQueryRequestor, searchParticipant, iJavaSearchScope, iProgressMonitor);
    }

    private long findLastTypeArgumentInfo(TypeReference typeReference) {
        TypeReference[] typeReferenceArr;
        int i10 = 0;
        while (true) {
            TypeReference typeReference2 = null;
            if (typeReference instanceof ParameterizedQualifiedTypeReference) {
                ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = (ParameterizedQualifiedTypeReference) typeReference;
                typeReferenceArr = null;
                for (int length = parameterizedQualifiedTypeReference.typeArguments.length - 1; length >= 0 && typeReferenceArr == null; length--) {
                    typeReferenceArr = parameterizedQualifiedTypeReference.typeArguments[length];
                }
            } else {
                typeReferenceArr = null;
            }
            if ((typeReference instanceof ParameterizedSingleTypeReference) || typeReferenceArr != null) {
                if (typeReferenceArr == null) {
                    typeReferenceArr = ((ParameterizedSingleTypeReference) typeReference).typeArguments;
                }
                if (typeReferenceArr != null) {
                    for (int length2 = typeReferenceArr.length - 1; length2 >= 0 && typeReference2 == null; length2++) {
                        typeReference2 = typeReferenceArr[length2];
                    }
                }
            }
            if (typeReference2 == null) {
                return (i10 << 32) + typeReference.sourceEnd;
            }
            i10++;
            typeReference = typeReference2;
        }
    }

    private Openable getCloserOpenable(Openable openable, String str) {
        SearchPattern searchPattern = this.pattern;
        if (!(searchPattern instanceof TypeDeclarationPattern) || ((TypeDeclarationPattern) searchPattern).moduleNames == null) {
            return openable;
        }
        JavaProject javaProject = (JavaProject) openable.getJavaProject();
        PackageFragmentRoot packageFragmentRoot = openable.getPackageFragmentRoot();
        return (!(packageFragmentRoot instanceof JarPackageFragmentRoot) || ((JarPackageFragmentRoot) packageFragmentRoot).getModuleDescription() == null || CompilerOptions.versionToJdkLevel(javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true)) >= ClassFileConstants.JDK9) ? openable : this.handleFactory.createOpenable(str, getSubScope("org.eclipse.jdt.core.compiler.compliance", ClassFileConstants.JDK9, false));
    }

    private List<String> getInverseFullName(char[] cArr, char[] cArr2) {
        ArrayList arrayList = new ArrayList();
        if (cArr != null && cArr.length > 0) {
            arrayList.addAll(Arrays.asList(new String(cArr).split("\\.")));
            Collections.reverse(arrayList);
        }
        if (cArr2 != null) {
            arrayList.add(0, new String(cArr2));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int getMaxResult(int[][] iArr) {
        int length = iArr.length;
        int length2 = iArr[0].length;
        ArrayList arrayList = new ArrayList();
        arrayList.add(0);
        for (int i10 = 0; i10 < length2; i10++) {
            int i11 = iArr[0][i10];
            for (int i12 = 1; i12 < length; i12++) {
                int i13 = iArr[i12][i10];
                if (i13 >= i11) {
                    if (i13 > i11) {
                        arrayList.clear();
                        i11 = i13;
                    }
                    arrayList.add(Integer.valueOf(i12));
                }
            }
            if (arrayList.size() <= 1) {
                break;
            }
        }
        return ((Integer) arrayList.get(0)).intValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private MethodBinding getMethodBinding0(MethodPattern methodPattern) {
        MethodBinding methodBinding;
        if (this.unitScope == null) {
            return null;
        }
        Binding binding = (Binding) this.bindings.get(methodPattern);
        if (binding != null && (binding instanceof MethodBinding) && binding.isValidBinding()) {
            return (MethodBinding) binding;
        }
        char[] qualifiedPattern = PatternLocator.qualifiedPattern(methodPattern.declaringSimpleName, methodPattern.declaringQualification);
        if (qualifiedPattern == null) {
            IType iType = methodPattern.declaringType;
            if (iType == null) {
                return null;
            }
            qualifiedPattern = iType.getFullyQualifiedName().toCharArray();
        }
        TypeBinding type = getType(qualifiedPattern, qualifiedPattern);
        if (type != null) {
            if (type.isArrayType()) {
                type = type.leafComponentType();
            }
            if (!type.isBaseType()) {
                methodBinding = getMethodBinding(methodPattern, type);
                this.bindings.put(methodPattern, methodBinding == null ? methodBinding : new ProblemMethodBinding(methodPattern.selector, null, 1));
                return methodBinding;
            }
        }
        methodBinding = null;
        this.bindings.put(methodPattern, methodBinding == null ? methodBinding : new ProblemMethodBinding(methodPattern.selector, null, 1));
        return methodBinding;
    }

    private MethodBinding getMostApplicableMethod(List<MethodBinding> list, MethodPattern methodPattern) {
        int size = list.size();
        MethodBinding methodBinding = size != 0 ? list.get(0) : null;
        if (size <= 1) {
            return methodBinding;
        }
        Map<Integer, List<String>> splitNames = getSplitNames(methodPattern.parameterQualifications, methodPattern.parameterSimpleNames);
        int size2 = list.size();
        int[][] iArr = new int[size2];
        for (int i10 = 0; i10 < size2; i10++) {
            iArr[i10] = getResultMap(splitNames, getSplitNames(list.get(i10)));
        }
        return list.get(getMaxResult(iArr));
    }

    public static IJavaElement getProjectOrJar(IJavaElement iJavaElement) {
        while (!(iJavaElement instanceof IJavaProject) && !(iJavaElement instanceof JarPackageFragmentRoot)) {
            iJavaElement = iJavaElement.getParent();
        }
        return iJavaElement;
    }

    private int[] getResultMap(Map<Integer, List<String>> map, Map<Integer, List<String>> map2) {
        int size = map2.size();
        int[] iArr = new int[size];
        for (int i10 = 0; i10 < size; i10++) {
            iArr[i10] = mapParameter(map.get(Integer.valueOf(i10)), map2.get(Integer.valueOf(i10)));
        }
        return iArr;
    }

    private Map<Integer, List<String>> getSplitNames(char[][] cArr, char[][] cArr2) {
        int length = cArr2.length;
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 < length; i10++) {
            hashMap.put(Integer.valueOf(i10), getInverseFullName(cArr[i10], cArr2[i10]));
        }
        return hashMap;
    }

    private IJavaSearchScope getSubScope(String str, long j10, boolean z10) {
        IJavaProject javaProject;
        IJavaSearchScope iJavaSearchScope = this.subScope;
        if (iJavaSearchScope != null) {
            return iJavaSearchScope;
        }
        IPath[] enclosingProjectsAndJars = this.scope.enclosingProjectsAndJars();
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        HashSet hashSet = new HashSet();
        for (IPath iPath : enclosingProjectsAndJars) {
            if (iPath.segmentCount() == 1 && (javaProject = javaModelManager.getJavaModel().getJavaProject(iPath.segment(0))) != null && CompilerOptions.versionToJdkLevel(javaProject.getOption(str, true)) >= j10) {
                hashSet.add(javaProject);
            }
        }
        IJavaSearchScope createJavaSearchScope = BasicSearchEngine.createJavaSearchScope((IJavaElement[]) hashSet.toArray(new IJavaProject[0]), z10);
        this.subScope = createJavaSearchScope;
        return createJavaSearchScope;
    }

    private int mapParameter(List<String> list, List<String> list2) {
        int size = list.size();
        int size2 = list2.size();
        int i10 = size < size2 ? size : size2;
        int i11 = -1;
        for (int i12 = 0; i12 < i10 && list.get(i12).equals(list2.get(i12)); i12++) {
            i11++;
        }
        if (size == size2 && i11 + 1 == size) {
            return Integer.MAX_VALUE;
        }
        return i11;
    }

    private boolean matchParams(MethodPattern methodPattern, int i10, TypeBinding typeBinding) {
        char[] concat = CharOperation.concat(methodPattern.parameterQualifications[i10], methodPattern.parameterSimpleNames[i10], '.');
        int i11 = 0;
        if (concat.length > 0 && concat[0] == '*') {
            i11 = 1;
        }
        return new String(CharOperation.concat(typeBinding.qualifiedPackageName(), typeBinding.qualifiedSourceName(), '.')).endsWith(new String(concat, i11, concat.length - i11));
    }

    public static IJavaElement projectOrJarFocus(SearchPattern searchPattern) {
        IJavaElement iJavaElement;
        if (searchPattern == null || (iJavaElement = searchPattern.focus) == null) {
            return null;
        }
        return getProjectOrJar(iJavaElement);
    }

    private void reportMatchingAutoModule(ModuleDeclaration moduleDeclaration, IJavaElement iJavaElement, int i10) throws CoreException {
        PossibleMatch possibleMatch = this.currentPossibleMatch;
        report(this.patternLocator.newDeclarationMatch(moduleDeclaration, new AbstractModule.AutoModule(possibleMatch.openable, possibleMatch.autoModuleName, true), moduleDeclaration.binding, i10, moduleDeclaration.moduleName.length, this));
    }

    public static void setFocus(SearchPattern searchPattern, IJavaElement iJavaElement) {
        searchPattern.focus = iJavaElement;
    }

    private boolean skipMatch(JavaProject javaProject, PossibleMatch possibleMatch) {
        char[] moduleName;
        return this.options.sourceLevel >= ClassFileConstants.JDK9 && (moduleName = possibleMatch.getModuleName()) != null && this.lookupEnvironment.getModule(moduleName) == null;
    }

    private static HashMap workingCopiesThatCanSeeFocus(ICompilationUnit[] iCompilationUnitArr, SearchPattern searchPattern, SearchParticipant searchParticipant) {
        if (iCompilationUnitArr == null) {
            return new HashMap();
        }
        HashMap hashMap = new HashMap();
        for (ICompilationUnit iCompilationUnit : iCompilationUnitArr) {
            IPath path = getProjectOrJar(iCompilationUnit).getPath();
            if (searchPattern.focus == null || IndexSelector.canSeeFocus(searchPattern, path) != 2) {
                hashMap.put(iCompilationUnit.getPath().toString(), new WorkingCopyDocument(iCompilationUnit, searchParticipant));
            }
        }
        return hashMap;
    }

    @Override
    public void accept(IBinaryType iBinaryType, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        this.lookupEnvironment.createBinaryTypeFrom(iBinaryType, packageBinding, accessRestriction);
    }

    public Parser basicParser() {
        if (this.basicParser == null) {
            Parser parser = new Parser(new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), this.options, new DefaultProblemFactory()), false);
            this.basicParser = parser;
            parser.reportOnlyOneSyntaxError = true;
        }
        return this.basicParser;
    }

    public BinaryTypeBinding cacheBinaryType(IType iType, IBinaryType iBinaryType) throws JavaModelException {
        IType declaringType = iType.getDeclaringType();
        if (declaringType != null) {
            cacheBinaryType(declaringType, null);
        }
        if (iBinaryType == null) {
            ClassFile classFile = (ClassFile) iType.getClassFile();
            try {
                iBinaryType = getBinaryInfo(classFile, classFile.resource());
            } catch (CoreException e10) {
                if (e10 instanceof JavaModelException) {
                    throw ((JavaModelException) e10);
                }
                throw new JavaModelException(e10);
            }
        }
        BinaryTypeBinding cacheBinaryType = this.lookupEnvironment.cacheBinaryType(iBinaryType, null);
        if (cacheBinaryType != null) {
            return cacheBinaryType;
        }
        ReferenceBinding cachedType = this.lookupEnvironment.getCachedType(CharOperation.splitOn('.', iType.getFullyQualifiedName().toCharArray()));
        return (cachedType == null || !(cachedType instanceof BinaryTypeBinding)) ? cacheBinaryType : (BinaryTypeBinding) cachedType;
    }

    public char[][][] computeSuperTypeNames(IType iType) {
        String fullyQualifiedName = iType.getFullyQualifiedName();
        int lastIndexOf = fullyQualifiedName.lastIndexOf(46);
        char[] charArray = lastIndexOf == -1 ? CharOperation.NO_CHAR : fullyQualifiedName.substring(0, lastIndexOf).toCharArray();
        char[] charArray2 = iType.getElementName().toCharArray();
        SearchPattern searchPattern = this.pattern;
        try {
            this.allSuperTypeNames = new SuperTypeNamesCollector(searchPattern, charArray2, charArray, new MatchLocator(searchPattern, this.requestor, this.scope, this.progressMonitor), iType, this.progressMonitor).collect();
        } catch (JavaModelException unused) {
        }
        return this.allSuperTypeNames;
    }

    public IMethod createBinaryMethodHandle(IType iType, char[] cArr, char[][] cArr2) {
        IBinaryMethod[] methods;
        IBinaryType classFileReader = classFileReader(iType);
        if (classFileReader != null && (methods = classFileReader.getMethods()) != null) {
            int length = cArr2 == null ? 0 : cArr2.length;
            for (IBinaryMethod iBinaryMethod : methods) {
                char[] charArray = iBinaryMethod.isConstructor() ? iType.getElementName().toCharArray() : iBinaryMethod.getSelector();
                if (CharOperation.equals(charArray, cArr)) {
                    char[] genericSignature = iBinaryMethod.getGenericSignature();
                    if (genericSignature == null) {
                        genericSignature = iBinaryMethod.getMethodDescriptor();
                    }
                    char[][] parameterTypes = Signature.getParameterTypes(genericSignature);
                    if (length == parameterTypes.length) {
                        if (cArr2 != null) {
                            for (int i10 = 0; i10 < length; i10++) {
                                char[] convertClassFileFormat = ClassFileMatchLocator.convertClassFileFormat(parameterTypes[i10]);
                                if (CharOperation.endsWith(Signature.toCharArray(Signature.getTypeErasure(convertClassFileFormat)), CharOperation.replaceOnCopy(cArr2[i10], '$', '.'))) {
                                    parameterTypes[i10] = convertClassFileFormat;
                                }
                            }
                        }
                        return (IMethod) createMethodHandle(iType, new String(charArray), CharOperation.toStrings(parameterTypes));
                    }
                }
            }
        }
        return null;
    }

    public IJavaElement createHandle(LambdaExpression lambdaExpression, IJavaElement iJavaElement) {
        IMethod method = LambdaFactory.createLambdaExpression((JavaElement) iJavaElement, lambdaExpression).getMethod();
        this.methodHandles.add(method);
        return method;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0046, code lost:
    
        if (r7.isValidBinding() == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
    
        if ((r7.tagBits & 131072) != 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0054, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0056, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0033, code lost:
    
        r7 = new org.eclipse.jdt.internal.core.hierarchy.HierarchyResolver(r6.lookupEnvironment, null);
        r6.hierarchyResolver = r7;
        r7 = r7.setFocusType(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0040, code lost:
    
        if (r7 == null) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean createHierarchyResolver(IType iType, PossibleMatch[] possibleMatchArr) {
        char[][] splitOn = CharOperation.splitOn('.', iType.getFullyQualifiedName().toCharArray());
        int length = possibleMatchArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                if (iType.isBinary()) {
                    try {
                        cacheBinaryType(iType, null);
                    } catch (JavaModelException unused) {
                        return false;
                    }
                } else {
                    accept((org.eclipse.jdt.internal.compiler.env.ICompilationUnit) iType.getCompilationUnit(), (AccessRestriction) null);
                }
            } else {
                if (CharOperation.equals(possibleMatchArr[i10].compoundName, splitOn)) {
                    break;
                }
                i10++;
            }
        }
    }

    public IJavaElement createImportHandle(ImportReference importReference) {
        char[] concatWith = CharOperation.concatWith(importReference.getImportName(), '.');
        if ((importReference.bits & 131072) != 0) {
            concatWith = CharOperation.concat(concatWith, ".*".toCharArray());
        }
        Openable openable = this.currentPossibleMatch.openable;
        if (openable instanceof CompilationUnit) {
            return ((CompilationUnit) openable).getImport(new String(concatWith));
        }
        if (openable instanceof ModularClassFile) {
            return openable;
        }
        IType type = ((ClassFile) openable).getType();
        String elementName = type.getElementName();
        int lastIndexOf = elementName.lastIndexOf(36);
        return lastIndexOf == -1 ? type : createTypeHandle(elementName.substring(0, lastIndexOf));
    }

    public IJavaElement createPackageDeclarationHandle(CompilationUnitDeclaration compilationUnitDeclaration) {
        if (compilationUnitDeclaration.isPackageInfo()) {
            char[] concatWith = CharOperation.concatWith(compilationUnitDeclaration.currentPackage.getImportName(), '.');
            Openable openable = this.currentPossibleMatch.openable;
            if (openable instanceof CompilationUnit) {
                return ((CompilationUnit) openable).getPackageDeclaration(new String(concatWith));
            }
        }
        return createTypeHandle(new String(compilationUnitDeclaration.getMainTypeName()));
    }

    public IType createTypeHandle(String str) {
        Openable openable = this.currentPossibleMatch.openable;
        if (openable instanceof CompilationUnit) {
            return ((CompilationUnit) openable).getType(str);
        }
        IType type = ((ClassFile) openable).getType();
        String typeQualifiedName = type.getTypeQualifiedName();
        if (str.equals(typeQualifiedName)) {
            return type;
        }
        if (str.length() == 0) {
            str = typeQualifiedName;
        }
        return type.getPackageFragment().getOrdinaryClassFile(String.valueOf(str) + ".class").getType();
    }

    public boolean encloses(IJavaElement iJavaElement) {
        if (iJavaElement == null) {
            return false;
        }
        IJavaSearchScope iJavaSearchScope = this.scope;
        return iJavaSearchScope instanceof HierarchyScope ? ((HierarchyScope) iJavaSearchScope).encloses(iJavaElement, this.progressMonitor) : iJavaSearchScope.encloses(iJavaElement);
    }

    public IBinaryType getBinaryInfo(ClassFile classFile, IResource iResource) throws CoreException {
        ClassFileReader newClassFileReader;
        ZipFile zipFile;
        BinaryType binaryType = (BinaryType) classFile.getType();
        if (classFile.isOpen()) {
            return (IBinaryType) binaryType.getElementInfo();
        }
        try {
            PackageFragment packageFragment = (PackageFragment) classFile.getParent();
            PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) packageFragment.getParent();
            if (packageFragmentRoot.isArchive()) {
                String concatWith = Util.concatWith(packageFragment.names, classFile.getElementName(), '/');
                try {
                    zipFile = ((JarPackageFragmentRoot) packageFragmentRoot).getJar();
                    try {
                        newClassFileReader = ClassFileReader.read(zipFile, concatWith);
                        JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                    } catch (Throwable th2) {
                        th = th2;
                        JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    zipFile = null;
                }
            } else {
                newClassFileReader = Util.newClassFileReader(iResource);
            }
            if (newClassFileReader != null) {
                return newClassFileReader;
            }
            throw binaryType.newNotPresentException();
        } catch (IOException e10) {
            throw new JavaModelException(e10, IJavaModelStatusConstants.IO_EXCEPTION);
        } catch (ClassFormatException unused) {
            return null;
        }
    }

    public IType getFocusType() {
        IJavaSearchScope iJavaSearchScope = this.scope;
        if (iJavaSearchScope instanceof HierarchyScope) {
            return ((HierarchyScope) iJavaSearchScope).focusType;
        }
        return null;
    }

    public MethodBinding getMethodBinding(MethodPattern methodPattern) {
        IType iType;
        IType iType2;
        ClassScope classScope;
        CompilationUnitDeclaration referenceCompilationUnit;
        AbstractMethodDeclaration findMethod;
        MethodBinding methodBinding;
        this.unitScopeTypeBinding = null;
        MethodBinding methodBinding0 = getMethodBinding0(methodPattern);
        if (methodBinding0 != null) {
            return methodBinding0;
        }
        IJavaElement iJavaElement = methodPattern.focus;
        if (iJavaElement instanceof SourceMethod) {
            if (PatternLocator.qualifiedPattern(methodPattern.declaringSimpleName, methodPattern.declaringQualification) != null) {
                IType iType3 = methodPattern.declaringType;
                IType declaringType = iType3.getDeclaringType();
                while (true) {
                    IType iType4 = declaringType;
                    iType2 = iType3;
                    iType3 = iType4;
                    if (iType3 == null) {
                        break;
                    }
                    declaringType = iType3.getDeclaringType();
                }
                char[] charArray = iType2.getFullyQualifiedName().toCharArray();
                TypeBinding type = getType(charArray, charArray);
                if ((type instanceof SourceTypeBinding) && (classScope = ((SourceTypeBinding) type).scope) != null && (referenceCompilationUnit = classScope.referenceCompilationUnit()) != null && (findMethod = new ASTNodeFinder(referenceCompilationUnit).findMethod((IMethod) methodPattern.focus)) != null && (methodBinding = findMethod.binding) != null && methodBinding.isValidBinding()) {
                    this.bindings.put(methodPattern, findMethod.binding);
                    return findMethod.binding;
                }
            }
        } else if ((iJavaElement instanceof BinaryMethod) && (methodPattern.declaringType instanceof BinaryType) && (this.unitScopeTypeBinding instanceof ProblemReferenceBinding) && PatternLocator.qualifiedPattern(methodPattern.declaringSimpleName, methodPattern.declaringQualification) != null) {
            IType iType5 = methodPattern.declaringType;
            IType declaringType2 = iType5.getDeclaringType();
            while (true) {
                IType iType6 = declaringType2;
                iType = iType5;
                iType5 = iType6;
                if (iType5 == null) {
                    break;
                }
                declaringType2 = iType5.getDeclaringType();
            }
            iType.getFullyQualifiedName().toCharArray();
            TypeBinding typeBinding = this.unitScopeTypeBinding;
            if (typeBinding instanceof ProblemReferenceBinding) {
                ProblemReferenceBinding problemReferenceBinding = (ProblemReferenceBinding) typeBinding;
                TypeBinding closestReferenceMatch = problemReferenceBinding.problemId() == 2 ? problemReferenceBinding.closestReferenceMatch() : null;
                if (closestReferenceMatch != null) {
                    return getMethodBinding(methodPattern, closestReferenceMatch);
                }
                return null;
            }
        }
        return null;
    }

    public void getMethodBodies(CompilationUnitDeclaration compilationUnitDeclaration, MatchingNodeSet matchingNodeSet) {
        if (compilationUnitDeclaration.ignoreMethodBodies) {
            compilationUnitDeclaration.ignoreFurtherInvestigation = true;
            return;
        }
        Scanner scanner = this.parser.scanner;
        int[] iArr = scanner.lineEnds;
        int i10 = scanner.linePtr;
        try {
            CompilationResult compilationResult = compilationUnitDeclaration.compilationResult;
            scanner.setSource(compilationResult);
            if (this.parser.javadocParser.checkDocComment) {
                this.parser.javadocParser.scanner.setSource(compilationResult.compilationUnit.getContents());
            }
            MatchLocatorParser matchLocatorParser = this.parser;
            matchLocatorParser.nodeSet = matchingNodeSet;
            matchLocatorParser.parseBodies(compilationUnitDeclaration);
            MatchLocatorParser matchLocatorParser2 = this.parser;
            matchLocatorParser2.nodeSet = null;
            Scanner scanner2 = matchLocatorParser2.scanner;
            scanner2.lineEnds = iArr;
            scanner2.linePtr = i10;
        } catch (Throwable th2) {
            MatchLocatorParser matchLocatorParser3 = this.parser;
            matchLocatorParser3.nodeSet = null;
            Scanner scanner3 = matchLocatorParser3.scanner;
            scanner3.lineEnds = iArr;
            scanner3.linePtr = i10;
            throw th2;
        }
    }

    public SearchParticipant getParticipant() {
        return this.currentPossibleMatch.document.getParticipant();
    }

    public TypeBinding getType(Object obj, char[] cArr) {
        if (this.unitScope == null || cArr == null || cArr.length == 0) {
            return null;
        }
        Binding binding = (Binding) this.bindings.get(obj);
        if (binding != null) {
            if ((binding instanceof TypeBinding) && binding.isValidBinding()) {
                return (TypeBinding) binding;
            }
            return null;
        }
        char[][] splitOn = CharOperation.splitOn('.', cArr);
        TypeBinding type = this.unitScope.getType(splitOn, splitOn.length);
        this.unitScopeTypeBinding = type;
        if (type == null || !type.isValidBinding()) {
            type = this.lookupEnvironment.getType(splitOn, this.unitScope.module());
        }
        this.bindings.put(obj, type);
        if (type == null || !type.isValidBinding()) {
            return null;
        }
        return type;
    }

    public boolean hasAlreadyDefinedType(CompilationUnitDeclaration compilationUnitDeclaration) {
        CompilationResult compilationResult = compilationUnitDeclaration.compilationResult;
        if (compilationResult == null) {
            return false;
        }
        for (int i10 = 0; i10 < compilationResult.problemCount; i10++) {
            if (compilationResult.problems[i10].getID() == 16777539) {
                return true;
            }
        }
        return false;
    }

    public void initialize(JavaProject javaProject, int i10) throws JavaModelException {
        IJavaProject javaProject2;
        INameEnvironment iNameEnvironment = this.nameEnvironment;
        if (iNameEnvironment != null && i10 != 1) {
            iNameEnvironment.cleanup();
            this.unitScope = null;
        }
        SearchableEnvironment newSearchableNameEnvironment = javaProject.newSearchableNameEnvironment(this.workingCopies);
        ArrayList arrayList = new ArrayList();
        arrayList.add(javaProject);
        IJavaElement iJavaElement = this.pattern.focus;
        if (iJavaElement != null && (javaProject2 = iJavaElement.getJavaProject()) != javaProject) {
            arrayList.add(javaProject2);
        }
        this.nameEnvironment = IndexBasedJavaSearchEnvironment.create(arrayList, this.workingCopies);
        Map<String, String> options = javaProject.getOptions(true);
        options.put("org.eclipse.jdt.core.compiler.taskTags", org.eclipse.jdt.internal.compiler.util.Util.EMPTY_STRING);
        this.options = new CompilerOptions(options);
        ProblemReporter problemReporter = new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), this.options, new DefaultProblemFactory());
        LookupEnvironment lookupEnvironment = new LookupEnvironment(this, this.options, problemReporter, this.nameEnvironment);
        this.lookupEnvironment = lookupEnvironment;
        lookupEnvironment.mayTolerateMissingType = true;
        this.parser = MatchLocatorParser.createParser(problemReporter, this);
        this.bindings = new SimpleLookupTable();
        this.basicParser = null;
        this.nameLookup = newSearchableNameEnvironment.nameLookup;
        this.numberOfMatches = 0;
        this.matchesToProcess = new PossibleMatch[i10];
        this.lookupEnvironment.addResolutionListener(this.patternLocator);
    }

    public void locateMatches(JavaProject javaProject, PossibleMatch[] possibleMatchArr, int i10, int i11) throws CoreException {
        PrintStream printStream;
        String bind;
        initialize(javaProject, i11);
        boolean z10 = this.pattern.mustResolve;
        this.patternLocator.mayBeGeneric = this.options.sourceLevel >= ClassFileConstants.JDK1_5;
        int i12 = i11 + i10;
        boolean z11 = z10;
        boolean z12 = z11;
        while (i10 < i12) {
            try {
                PossibleMatch possibleMatch = possibleMatchArr[i10];
                if (!skipMatch(javaProject, possibleMatch)) {
                    try {
                        if (!parseAndBuildBindings(possibleMatch, z10)) {
                            if (possibleMatch.hasSimilarMatch()) {
                                possibleMatchArr[i10] = possibleMatch.getSimilarMatch();
                                i10--;
                            }
                            if (possibleMatch.nodeSet.mustResolve) {
                            }
                            possibleMatch.cleanUp();
                        } else {
                            if (!this.patternLocator.mayBeGeneric) {
                                possibleMatch.nodeSet.mustResolve = z10;
                            } else if (!z10 && !z11) {
                                z11 = possibleMatch.nodeSet.mustResolve;
                                z12 = z11;
                            }
                            if (!possibleMatch.nodeSet.mustResolve) {
                                IProgressMonitor iProgressMonitor = this.progressMonitor;
                                if (iProgressMonitor != null) {
                                    int i13 = this.progressWorked + 1;
                                    this.progressWorked = i13;
                                    int i14 = this.progressStep;
                                    if (i13 % i14 == 0) {
                                        iProgressMonitor.worked(i14);
                                    }
                                }
                                process(possibleMatch, z12);
                                int i15 = this.numberOfMatches;
                                if (i15 > 0 && this.matchesToProcess[i15 - 1] == possibleMatch) {
                                    this.numberOfMatches = i15 - 1;
                                }
                            }
                            if (possibleMatch.hasSimilarMatch()) {
                                possibleMatchArr[i10] = possibleMatch.getSimilarMatch();
                                i10--;
                            }
                            if (!possibleMatch.nodeSet.mustResolve) {
                                possibleMatch.cleanUp();
                            }
                        }
                    } finally {
                        if (possibleMatch.hasSimilarMatch()) {
                            possibleMatchArr[i10] = possibleMatch.getSimilarMatch();
                        }
                        if (!possibleMatch.nodeSet.mustResolve) {
                            possibleMatch.cleanUp();
                        }
                    }
                }
                i10++;
            } catch (AbortCompilation unused) {
                z12 = false;
            }
        }
        if (z11) {
            this.lookupEnvironment.completeTypeBindings();
        }
        IType focusType = getFocusType();
        if (focusType == null) {
            this.hierarchyResolver = null;
        } else if (!createHierarchyResolver(focusType, possibleMatchArr) && computeSuperTypeNames(focusType) == null) {
            return;
        }
        if (z11) {
            for (int i16 = 0; i16 < this.numberOfMatches; i16++) {
                IProgressMonitor iProgressMonitor2 = this.progressMonitor;
                if (iProgressMonitor2 != null && iProgressMonitor2.isCanceled()) {
                    throw new OperationCanceledException();
                }
                PossibleMatch[] possibleMatchArr2 = this.matchesToProcess;
                PossibleMatch possibleMatch2 = possibleMatchArr2[i16];
                possibleMatchArr2[i16] = null;
                try {
                    process(possibleMatch2, z12);
                    IProgressMonitor iProgressMonitor3 = this.progressMonitor;
                    if (iProgressMonitor3 != null) {
                        int i17 = this.progressWorked + 1;
                        this.progressWorked = i17;
                        int i18 = this.progressStep;
                        if (i17 % i18 == 0) {
                            iProgressMonitor3.worked(i18);
                        }
                    }
                    if (this.options.verbose) {
                        System.out.println(Messages.bind(Messages.compilation_done, (Object[]) new String[]{String.valueOf(i16 + 1), String.valueOf(this.numberOfMatches), new String(possibleMatch2.parsedUnit.getFileName())}));
                    }
                    possibleMatch2.cleanUp();
                } catch (JavaModelException unused2) {
                    if (this.progressMonitor != null) {
                        int i19 = this.progressWorked + 1;
                        this.progressWorked = i19;
                        int i20 = this.progressStep;
                        if (i19 % i20 == 0) {
                            this.progressMonitor.worked(i20);
                        }
                    }
                    if (this.options.verbose) {
                        printStream = System.out;
                        bind = Messages.bind(Messages.compilation_done, (Object[]) new String[]{String.valueOf(i16 + 1), String.valueOf(this.numberOfMatches), new String(possibleMatch2.parsedUnit.getFileName())});
                        printStream.println(bind);
                    }
                    possibleMatch2.cleanUp();
                    z12 = false;
                } catch (AbortCompilation unused3) {
                    if (this.progressMonitor != null) {
                        int i21 = this.progressWorked + 1;
                        this.progressWorked = i21;
                        int i22 = this.progressStep;
                        if (i21 % i22 == 0) {
                            this.progressMonitor.worked(i22);
                        }
                    }
                    if (this.options.verbose) {
                        printStream = System.out;
                        bind = Messages.bind(Messages.compilation_done, (Object[]) new String[]{String.valueOf(i16 + 1), String.valueOf(this.numberOfMatches), new String(possibleMatch2.parsedUnit.getFileName())});
                        printStream.println(bind);
                    }
                    possibleMatch2.cleanUp();
                    z12 = false;
                } catch (Throwable th2) {
                    if (this.progressMonitor != null) {
                        int i23 = this.progressWorked + 1;
                        this.progressWorked = i23;
                        int i24 = this.progressStep;
                        if (i23 % i24 == 0) {
                            this.progressMonitor.worked(i24);
                        }
                    }
                    if (this.options.verbose) {
                        System.out.println(Messages.bind(Messages.compilation_done, (Object[]) new String[]{String.valueOf(i16 + 1), String.valueOf(this.numberOfMatches), new String(possibleMatch2.parsedUnit.getFileName())}));
                    }
                    possibleMatch2.cleanUp();
                    throw th2;
                }
            }
        }
    }

    public void locatePackageDeclarations(SearchParticipant searchParticipant, IJavaProject[] iJavaProjectArr) throws CoreException {
        locatePackageDeclarations(this.pattern, searchParticipant, iJavaProjectArr);
    }

    public IType lookupType(ReferenceBinding referenceBinding) {
        IType createTypeHandle;
        if (referenceBinding == null || !referenceBinding.isValidBinding()) {
            return null;
        }
        char[] qualifiedPackageName = referenceBinding.qualifiedPackageName();
        IPackageFragment[] findPackageFragments = this.nameLookup.findPackageFragments((qualifiedPackageName == null || qualifiedPackageName.length == 0) ? "" : new String(qualifiedPackageName), false);
        char[] qualifiedSourceName = referenceBinding.qualifiedSourceName();
        String str = new String(qualifiedSourceName);
        int i10 = referenceBinding.isAnnotationType() ? 16 : referenceBinding.isEnum() ? 8 : referenceBinding.isInterface() ? 4 : referenceBinding.isClass() ? 2 : 0;
        if (findPackageFragments != null) {
            for (IPackageFragment iPackageFragment : findPackageFragments) {
                IType findType = this.nameLookup.findType(str, iPackageFragment, false, i10, false, true);
                if (findType != null) {
                    return findType;
                }
            }
        }
        char[][] splitOn = CharOperation.splitOn('.', qualifiedSourceName);
        int length = splitOn.length;
        if (length == 0 || (createTypeHandle = createTypeHandle(new String(splitOn[0]))) == null) {
            return null;
        }
        for (int i11 = 1; i11 < length; i11++) {
            createTypeHandle = createTypeHandle.getType(new String(splitOn[i11]));
            if (createTypeHandle == null) {
                return null;
            }
        }
        if (createTypeHandle.exists()) {
            return createTypeHandle;
        }
        return null;
    }

    public SearchMatch newDeclarationMatch(IJavaElement iJavaElement, Binding binding, int i10, int i11, int i12) {
        return newDeclarationMatch(iJavaElement, binding, i10, i11, i12, getParticipant(), this.currentPossibleMatch.resource);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FieldReferenceMatch newFieldReferenceMatch(IJavaElement iJavaElement, IJavaElement iJavaElement2, Binding binding, int i10, int i11, int i12, ASTNode aSTNode) {
        boolean z10;
        boolean z11;
        int i13 = aSTNode.bits;
        boolean z12 = (65536 & i13) != 0;
        boolean z13 = z12 || (i13 & 8192) == 0;
        boolean z14 = z12 || (i13 & 8192) != 0;
        if (z14 && (aSTNode instanceof QualifiedNameReference)) {
            char[][] cArr = ((QualifiedNameReference) aSTNode).tokens;
            char[] cArr2 = cArr[cArr.length - 1];
            SearchPattern searchPattern = this.pattern;
            if (searchPattern instanceof OrPattern) {
                SearchPattern[] searchPatternArr = ((OrPattern) searchPattern).patterns;
                for (SearchPattern searchPattern2 : searchPatternArr) {
                    if (!this.patternLocator.matchesName(((VariablePattern) searchPattern2).name, cArr2)) {
                        z14 = false;
                        z13 = true;
                    }
                }
            } else if (!this.patternLocator.matchesName(((VariablePattern) searchPattern).name, cArr2)) {
                z10 = false;
                z11 = true;
                FieldReferenceMatch fieldReferenceMatch = new FieldReferenceMatch(binding == null ? ((JavaElement) iJavaElement).resolved(binding) : iJavaElement, i10, i11, i12, z11, z10, (32768 & i13) == 0, getParticipant(), this.currentPossibleMatch.resource);
                fieldReferenceMatch.setLocalElement(iJavaElement2);
                return fieldReferenceMatch;
            }
        }
        z10 = z14;
        z11 = z13;
        if ((32768 & i13) == 0) {
        }
        FieldReferenceMatch fieldReferenceMatch2 = new FieldReferenceMatch(binding == null ? ((JavaElement) iJavaElement).resolved(binding) : iJavaElement, i10, i11, i12, z11, z10, (32768 & i13) == 0, getParticipant(), this.currentPossibleMatch.resource);
        fieldReferenceMatch2.setLocalElement(iJavaElement2);
        return fieldReferenceMatch2;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SearchMatch newLocalVariableReferenceMatch(IJavaElement iJavaElement, int i10, int i11, int i12, ASTNode aSTNode) {
        boolean z10;
        boolean z11;
        int i13 = aSTNode.bits;
        boolean z12 = (65536 & i13) != 0;
        boolean z13 = z12 || (i13 & 8192) == 0;
        boolean z14 = z12 || (i13 & 8192) != 0;
        if (z14 && (aSTNode instanceof QualifiedNameReference)) {
            char[][] cArr = ((QualifiedNameReference) aSTNode).tokens;
            char[] cArr2 = cArr[cArr.length - 1];
            SearchPattern searchPattern = this.pattern;
            if (searchPattern instanceof OrPattern) {
                SearchPattern[] searchPatternArr = ((OrPattern) searchPattern).patterns;
                for (SearchPattern searchPattern2 : searchPatternArr) {
                    if (!this.patternLocator.matchesName(((VariablePattern) searchPattern2).name, cArr2)) {
                        z14 = false;
                        z13 = true;
                    }
                }
            } else if (!this.patternLocator.matchesName(((VariablePattern) searchPattern).name, cArr2)) {
                z10 = false;
                z11 = true;
                return new LocalVariableReferenceMatch(iJavaElement, i10, i11, i12, z11, z10, (32768 & i13) == 0, getParticipant(), this.currentPossibleMatch.resource);
            }
        }
        z10 = z14;
        z11 = z13;
        return new LocalVariableReferenceMatch(iJavaElement, i10, i11, i12, z11, z10, (32768 & i13) == 0, getParticipant(), this.currentPossibleMatch.resource);
    }

    public MethodReferenceMatch newMethodReferenceMatch(IJavaElement iJavaElement, Binding binding, int i10, int i11, int i12, boolean z10, boolean z11, ASTNode aSTNode) {
        SearchParticipant participant = getParticipant();
        IResource iResource = this.currentPossibleMatch.resource;
        return new MethodReferenceMatch(binding != null ? ((JavaElement) iJavaElement).resolved(binding) : iJavaElement, i10, i11, i12, z10, z11, (i10 & 512) != 0, (aSTNode.bits & 32768) != 0, participant, iResource);
    }

    public ModuleReferenceMatch newModuleReferenceMatch(IJavaElement iJavaElement, Binding binding, int i10, int i11, int i12, ASTNode aSTNode) {
        SearchParticipant participant = getParticipant();
        IResource iResource = this.currentPossibleMatch.resource;
        boolean z10 = (aSTNode == null || (aSTNode.bits & 32768) == 0) ? false : true;
        if (binding != null) {
            iJavaElement = ((JavaElement) iJavaElement).resolved(binding);
        }
        return new ModuleReferenceMatch(iJavaElement, i10, i11, i12, z10, participant, iResource);
    }

    public PackageReferenceMatch newPackageReferenceMatch(IJavaElement iJavaElement, int i10, int i11, int i12, ASTNode aSTNode) {
        return new PackageReferenceMatch(iJavaElement, i10, i11, i12, (aSTNode == null || (aSTNode.bits & 32768) == 0) ? false : true, getParticipant(), this.currentPossibleMatch.resource);
    }

    public SearchMatch newTypeParameterReferenceMatch(IJavaElement iJavaElement, int i10, int i11, int i12, ASTNode aSTNode) {
        return new TypeParameterReferenceMatch(iJavaElement, i10, i11, i12, (aSTNode.bits & 32768) != 0, getParticipant(), this.currentPossibleMatch.resource);
    }

    public TypeReferenceMatch newTypeReferenceMatch(IJavaElement iJavaElement, Binding binding, int i10, int i11, int i12, ASTNode aSTNode) {
        SearchParticipant participant = getParticipant();
        IResource iResource = this.currentPossibleMatch.resource;
        boolean z10 = (aSTNode == null || (aSTNode.bits & 32768) == 0) ? false : true;
        if (binding != null) {
            iJavaElement = ((JavaElement) iJavaElement).resolved(binding);
        }
        return new TypeReferenceMatch(iJavaElement, i10, i11, i12, z10, participant, iResource);
    }

    public boolean parseAndBuildBindings(PossibleMatch possibleMatch, boolean z10) throws CoreException {
        IProgressMonitor iProgressMonitor = this.progressMonitor;
        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        try {
            if (BasicSearchEngine.VERBOSE) {
                System.out.println("Parsing " + possibleMatch.openable.toStringWithAncestors());
            }
            this.parser.nodeSet = possibleMatch.nodeSet;
            CompilationUnitDeclaration dietParse = this.parser.dietParse(possibleMatch, new CompilationResult(possibleMatch, 1, 1, this.options.maxProblemsPerUnit));
            if (dietParse != null) {
                if (dietParse.isModuleInfo()) {
                    if (z10) {
                        this.lookupEnvironment.buildTypeBindings(dietParse, null);
                    }
                } else if (!dietParse.isEmpty()) {
                    if (z10) {
                        this.lookupEnvironment.buildTypeBindings(dietParse, null);
                    }
                    if (hasAlreadyDefinedType(dietParse)) {
                        this.parser.nodeSet = null;
                        return false;
                    }
                    getMethodBodies(dietParse, possibleMatch.nodeSet);
                    if (this.patternLocator.mayBeGeneric && !z10 && possibleMatch.nodeSet.mustResolve) {
                        this.lookupEnvironment.buildTypeBindings(dietParse, null);
                    }
                }
                possibleMatch.parsedUnit = dietParse;
                PossibleMatch[] possibleMatchArr = this.matchesToProcess;
                int length = possibleMatchArr.length;
                int i10 = this.numberOfMatches;
                if (i10 == length) {
                    PossibleMatch[] possibleMatchArr2 = new PossibleMatch[length == 0 ? 1 : length * 2];
                    this.matchesToProcess = possibleMatchArr2;
                    System.arraycopy(possibleMatchArr, 0, possibleMatchArr2, 0, i10);
                }
                PossibleMatch[] possibleMatchArr3 = this.matchesToProcess;
                int i11 = this.numberOfMatches;
                this.numberOfMatches = i11 + 1;
                possibleMatchArr3[i11] = possibleMatch;
            }
            this.parser.nodeSet = null;
            return true;
        } catch (Throwable th2) {
            this.parser.nodeSet = null;
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void process(PossibleMatch possibleMatch, boolean z10) throws CoreException {
        ModuleDeclaration moduleDeclaration;
        IBinaryType iBinaryType;
        this.currentPossibleMatch = possibleMatch;
        CompilationUnitDeclaration compilationUnitDeclaration = possibleMatch.parsedUnit;
        try {
            try {
                if (compilationUnitDeclaration.isEmpty()) {
                    Openable openable = this.currentPossibleMatch.openable;
                    if (openable instanceof ClassFile) {
                        ClassFile classFile = (ClassFile) openable;
                        try {
                            iBinaryType = getBinaryInfo(classFile, classFile.resource());
                        } catch (CoreException unused) {
                            iBinaryType = null;
                        }
                        if (iBinaryType != null) {
                            PatternLocator patternLocator = this.patternLocator;
                            boolean z11 = patternLocator.mayBeGeneric;
                            patternLocator.mayBeGeneric = false;
                            try {
                                new ClassFileMatchLocator().locateMatches(this, classFile, iBinaryType);
                                this.patternLocator.mayBeGeneric = z11;
                            } finally {
                            }
                        }
                    } else if ((openable instanceof ModularClassFile) && compilationUnitDeclaration.moduleDeclaration == null) {
                        PatternLocator patternLocator2 = this.patternLocator;
                        boolean z12 = patternLocator2.mayBeGeneric;
                        patternLocator2.mayBeGeneric = false;
                        try {
                            new ModularClassFileMatchLocator().locateMatches(this, (ModularClassFile) this.currentPossibleMatch.openable);
                            return;
                        } finally {
                        }
                    }
                    if (!compilationUnitDeclaration.isModuleInfo()) {
                        return;
                    }
                }
            } catch (AbortCompilation e10) {
                if (BasicSearchEngine.VERBOSE) {
                    System.out.println("AbortCompilation while resolving unit " + String.valueOf(compilationUnitDeclaration.getFileName()));
                    e10.printStackTrace();
                }
                reportMatching(compilationUnitDeclaration, false);
                if (!(e10 instanceof AbortCompilationUnit)) {
                    throw e10;
                }
            }
            if (hasAlreadyDefinedType(compilationUnitDeclaration)) {
                return;
            }
            boolean z13 = this.pattern.mustResolve || possibleMatch.nodeSet.mustResolve;
            if (z10 && z13) {
                if (compilationUnitDeclaration.types != null) {
                    if (BasicSearchEngine.VERBOSE) {
                        System.out.println("Resolving " + this.currentPossibleMatch.openable.toStringWithAncestors());
                    }
                    this.lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration;
                    reduceParseTree(compilationUnitDeclaration);
                    CompilationUnitScope compilationUnitScope = compilationUnitDeclaration.scope;
                    if (compilationUnitScope != null) {
                        compilationUnitScope.faultInTypes();
                    }
                    compilationUnitDeclaration.resolve();
                } else if (compilationUnitDeclaration.isPackageInfo()) {
                    if (BasicSearchEngine.VERBOSE) {
                        System.out.println("Resolving " + this.currentPossibleMatch.openable.toStringWithAncestors());
                    }
                    compilationUnitDeclaration.resolve();
                } else if (compilationUnitDeclaration.isModuleInfo()) {
                    if (BasicSearchEngine.VERBOSE) {
                        System.out.println("Resolving " + this.currentPossibleMatch.openable.toStringWithAncestors());
                    }
                    this.lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration;
                    CompilationUnitScope compilationUnitScope2 = compilationUnitDeclaration.scope;
                    if (compilationUnitScope2 != null && (moduleDeclaration = compilationUnitDeclaration.moduleDeclaration) != null) {
                        moduleDeclaration.resolveTypeDirectives(compilationUnitScope2);
                    }
                }
            }
            reportMatching(compilationUnitDeclaration, z13);
        } finally {
            this.lookupEnvironment.unitBeingCompleted = null;
            this.currentPossibleMatch = null;
        }
    }

    public void purgeMethodStatements(TypeDeclaration typeDeclaration, boolean z10) {
        boolean z11 = z10 && this.currentPossibleMatch.nodeSet.hasPossibleNodes(typeDeclaration.declarationSourceStart, typeDeclaration.declarationSourceEnd);
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration.methods;
        if (abstractMethodDeclarationArr != null) {
            if (z11) {
                for (AbstractMethodDeclaration abstractMethodDeclaration : abstractMethodDeclarationArr) {
                    if (!this.currentPossibleMatch.nodeSet.hasPossibleNodes(abstractMethodDeclaration.declarationSourceStart, abstractMethodDeclaration.declarationSourceEnd) && (this.sourceStartOfMethodToRetain != abstractMethodDeclaration.declarationSourceStart || this.sourceEndOfMethodToRetain != abstractMethodDeclaration.declarationSourceEnd)) {
                        abstractMethodDeclaration.statements = null;
                        abstractMethodDeclaration.javadoc = null;
                    }
                }
            } else {
                for (AbstractMethodDeclaration abstractMethodDeclaration2 : abstractMethodDeclarationArr) {
                    if (this.sourceStartOfMethodToRetain != abstractMethodDeclaration2.declarationSourceStart || this.sourceEndOfMethodToRetain != abstractMethodDeclaration2.declarationSourceEnd) {
                        abstractMethodDeclaration2.statements = null;
                        abstractMethodDeclaration2.javadoc = null;
                    }
                }
            }
        }
        TypeDeclaration[] typeDeclarationArr = typeDeclaration.memberTypes;
        if (typeDeclarationArr != null) {
            for (TypeDeclaration typeDeclaration2 : typeDeclarationArr) {
                purgeMethodStatements(typeDeclaration2, z11);
            }
        }
    }

    public void reduceParseTree(CompilationUnitDeclaration compilationUnitDeclaration) {
        for (TypeDeclaration typeDeclaration : compilationUnitDeclaration.types) {
            purgeMethodStatements(typeDeclaration, true);
        }
    }

    public void report(SearchMatch searchMatch) throws CoreException {
        long j10;
        IJavaElement[] otherElements;
        if (searchMatch == null) {
            if (BasicSearchEngine.VERBOSE) {
                System.out.println("Cannot report a null match!!!");
                return;
            }
            return;
        }
        if (filterEnum(searchMatch)) {
            if (BasicSearchEngine.VERBOSE) {
                System.out.println("Filtered package with name enum");
                return;
            }
            return;
        }
        if (BasicSearchEngine.VERBOSE) {
            j10 = System.currentTimeMillis();
            PrintStream printStream = System.out;
            printStream.println("Reporting match");
            printStream.println("\tResource: " + ((Object) searchMatch.getResource()));
            printStream.println("\tPositions: [offset=" + searchMatch.getOffset() + ", length=" + searchMatch.getLength() + "]");
            try {
                if (this.parser != null && searchMatch.getOffset() > 0 && searchMatch.getLength() > 0 && !(searchMatch.getElement() instanceof BinaryMember)) {
                    printStream.println("\tSelection: -->" + new String(this.parser.scanner.source, searchMatch.getOffset(), searchMatch.getLength()) + "<--");
                }
            } catch (Exception unused) {
            }
            try {
                JavaElement javaElement = (JavaElement) searchMatch.getElement();
                PrintStream printStream2 = System.out;
                printStream2.println("\tJava element: " + javaElement.toStringWithAncestors());
                if (!javaElement.exists()) {
                    printStream2.println("\t\tWARNING: this element does NOT exist!");
                }
            } catch (Exception unused2) {
            }
            if (searchMatch instanceof ReferenceMatch) {
                try {
                    ReferenceMatch referenceMatch = (ReferenceMatch) searchMatch;
                    JavaElement javaElement2 = (JavaElement) referenceMatch.getLocalElement();
                    if (javaElement2 != null) {
                        System.out.println("\tLocal element: " + javaElement2.toStringWithAncestors());
                    }
                    if ((searchMatch instanceof TypeReferenceMatch) && (otherElements = ((TypeReferenceMatch) referenceMatch).getOtherElements()) != null && (otherElements.length) > 0) {
                        System.out.println("\tOther elements:");
                        for (IJavaElement iJavaElement : otherElements) {
                            System.out.println("\t\t- " + ((JavaElement) iJavaElement).toStringWithAncestors());
                        }
                    }
                } catch (Exception unused3) {
                }
            }
            PrintStream printStream3 = System.out;
            printStream3.println(searchMatch.getAccuracy() == 0 ? "\tAccuracy: EXACT_MATCH" : "\tAccuracy: POTENTIAL_MATCH");
            printStream3.print("\tRule: ");
            if (searchMatch.isExact()) {
                printStream3.print("EXACT");
            } else if (searchMatch.isEquivalent()) {
                printStream3.print("EQUIVALENT");
            } else if (searchMatch.isErasure()) {
                printStream3.print("ERASURE");
            } else {
                printStream3.print("INVALID RULE");
            }
            if (searchMatch instanceof MethodReferenceMatch) {
                MethodReferenceMatch methodReferenceMatch = (MethodReferenceMatch) searchMatch;
                if (methodReferenceMatch.isSuperInvocation()) {
                    printStream3.print("+SUPER INVOCATION");
                }
                if (methodReferenceMatch.isImplicit()) {
                    printStream3.print("+IMPLICIT");
                }
                if (methodReferenceMatch.isSynthetic()) {
                    printStream3.print("+SYNTHETIC");
                }
            }
            printStream3.println("\n\tRaw: " + searchMatch.isRaw());
        } else {
            j10 = -1;
        }
        this.requestor.acceptSearchMatch(searchMatch);
        if (BasicSearchEngine.VERBOSE) {
            this.resultCollectorTime += System.currentTimeMillis() - j10;
        }
    }

    public void reportAccurateEnumConstructorReference(SearchMatch searchMatch, FieldDeclaration fieldDeclaration, AllocationExpression allocationExpression) throws CoreException {
        TypeDeclaration typeDeclaration;
        if (allocationExpression == null || allocationExpression.enumConstant == null) {
            report(searchMatch);
            return;
        }
        int offset = searchMatch.getOffset() + searchMatch.getLength();
        Expression[] expressionArr = allocationExpression.arguments;
        if (expressionArr != null && expressionArr.length > 0) {
            offset = expressionArr[expressionArr.length - 1].sourceEnd + 1;
        }
        int i10 = fieldDeclaration.declarationSourceEnd;
        if ((allocationExpression instanceof QualifiedAllocationExpression) && (typeDeclaration = ((QualifiedAllocationExpression) allocationExpression).anonymousType) != null) {
            i10 = typeDeclaration.sourceStart - 1;
        }
        Scanner scanner = this.parser.scanner;
        scanner.setSource(this.currentPossibleMatch.getContents());
        scanner.resetTo(offset, i10);
        try {
            for (int nextToken = scanner.getNextToken(); nextToken != 61; nextToken = scanner.getNextToken()) {
                if (nextToken == 25) {
                    i10 = scanner.getCurrentTokenEndPosition();
                }
            }
        } catch (InvalidInputException unused) {
        }
        searchMatch.setLength((i10 - searchMatch.getOffset()) + 1);
        report(searchMatch);
    }

    public void reportAccurateFieldReference(SearchMatch[] searchMatchArr, QualifiedNameReference qualifiedNameReference) throws CoreException {
        if (searchMatchArr == null) {
            return;
        }
        int length = searchMatchArr.length;
        int i10 = qualifiedNameReference.sourceStart;
        int i11 = qualifiedNameReference.sourceEnd;
        char[][] cArr = qualifiedNameReference.tokens;
        Scanner scanner = this.parser.scanner;
        scanner.setSource(this.currentPossibleMatch.getContents());
        scanner.resetTo(i10, i11);
        int i12 = (i11 - i10) + 1;
        int length2 = cArr.length;
        int i13 = -1;
        int i14 = -1;
        int i15 = 0;
        int i16 = 0;
        do {
            int i17 = scanner.currentPosition;
            try {
                i13 = scanner.getNextToken();
            } catch (InvalidInputException unused) {
            }
            if (i13 != 61) {
                char[] currentTokenSource = scanner.getCurrentTokenSource();
                boolean z10 = false;
                while (true) {
                    if (i15 >= length2) {
                        break;
                    }
                    int i18 = i15 + 1;
                    boolean matchesName = this.pattern.matchesName(cArr[i15], currentTokenSource);
                    if (matchesName) {
                        z10 = matchesName;
                        i15 = i18;
                        break;
                    } else {
                        z10 = matchesName;
                        i15 = i18;
                    }
                }
                if (z10) {
                    i14 = scanner.currentPosition - 1;
                } else {
                    i17 = -1;
                    i15 = 0;
                }
                try {
                    i13 = scanner.getNextToken();
                } catch (InvalidInputException unused2) {
                }
            } else {
                i17 = -1;
            }
            SearchMatch searchMatch = searchMatchArr[i16];
            if (searchMatch != null && searchMatch.getRule() != 0) {
                if (!encloses((IJavaElement) searchMatch.getElement())) {
                    return;
                }
                if (i17 != -1) {
                    searchMatch.setOffset(i17);
                    searchMatch.setLength((i14 - i17) + 1);
                    report(searchMatch);
                } else {
                    searchMatch.setOffset(i10);
                    searchMatch.setLength(i12);
                    report(searchMatch);
                }
                i15 = 0;
            }
            if (i16 < length - 1) {
                i16++;
            }
        } while (i13 != 61);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x006b, code lost:
    
        r0 = r0.getCurrentTokenStartPosition();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void reportAccurateParameterizedMethodReference(SearchMatch searchMatch, ASTNode aSTNode, TypeReference[] typeReferenceArr) throws CoreException {
        if (searchMatch.getRule() != 0 && encloses((IJavaElement) searchMatch.getElement())) {
            int offset = searchMatch.getOffset();
            if (typeReferenceArr != null && typeReferenceArr.length > 0) {
                SearchPattern searchPattern = this.pattern;
                if (!(searchPattern instanceof OrPattern ? ((OrPattern) searchPattern).isErasureMatch() : ((JavaSearchPattern) searchPattern).isErasureMatch())) {
                    Scanner scanner = this.parser.scanner;
                    scanner.setSource(this.currentPossibleMatch.getContents());
                    int i10 = typeReferenceArr[0].sourceStart;
                    int i11 = aSTNode.sourceEnd;
                    scanner.resetTo(i10, i11);
                    loop0: while (true) {
                        try {
                            char[] cArr = scanner.source;
                            int i12 = scanner.currentPosition;
                            if (cArr[i12] == '\n') {
                                scanner.resetTo(i12 + 1, i11);
                                while (!scanner.atEnd()) {
                                    if (scanner.getNextToken() == 11) {
                                        break loop0;
                                    }
                                }
                                i11 = i12 - 1;
                                scanner.currentPosition = i11;
                            } else {
                                int i13 = i12 - 1;
                                scanner.currentPosition = i13;
                                if (i13 == 0) {
                                    break;
                                }
                            }
                        } catch (InvalidInputException unused) {
                        }
                    }
                    offset = i10;
                }
            }
            searchMatch.setOffset(offset);
            searchMatch.setLength((aSTNode.sourceEnd - offset) + 1);
            report(searchMatch);
        }
    }

    public void reportAccurateParameterizedTypeReference(SearchMatch searchMatch, TypeReference typeReference, int i10, TypeReference[] typeReferenceArr) throws CoreException {
        int i11;
        if (searchMatch.getRule() != 0 && encloses((IJavaElement) searchMatch.getElement())) {
            int i12 = typeReference.sourceEnd;
            if (typeReferenceArr != null) {
                SearchPattern searchPattern = this.pattern;
                boolean isErasureMatch = searchPattern instanceof OrPattern ? ((OrPattern) searchPattern).isErasureMatch() : ((JavaSearchPattern) searchPattern).isErasureMatch();
                SearchPattern searchPattern2 = this.pattern;
                boolean hasSignatures = searchPattern2 instanceof OrPattern ? ((OrPattern) searchPattern2).hasSignatures() : ((JavaSearchPattern) searchPattern2).hasSignatures();
                if (!isErasureMatch && hasSignatures) {
                    Scanner scanner = this.parser.scanner;
                    scanner.setSource(this.currentPossibleMatch.getContents());
                    scanner.resetTo(i12, r6.length - 1);
                    int length = typeReferenceArr.length - 1;
                    while (true) {
                        if (length < 0) {
                            i11 = 0;
                            break;
                        }
                        TypeReference typeReference2 = typeReferenceArr[length];
                        if (typeReference2 != null) {
                            long findLastTypeArgumentInfo = findLastTypeArgumentInfo(typeReference2);
                            scanner.resetTo(((int) findLastTypeArgumentInfo) + 1, scanner.eofPosition - 1);
                            i11 = ((int) (findLastTypeArgumentInfo >>> 32)) + 1;
                            break;
                        }
                        length--;
                    }
                    int i13 = i12;
                    while (true) {
                        int i14 = i11 - 1;
                        if (i11 <= 0) {
                            break;
                        }
                        while (true) {
                            if (!scanner.atEnd()) {
                                if (scanner.getNextChar() == 62) {
                                    i13 = scanner.currentPosition - 1;
                                    break;
                                }
                            }
                        }
                        i11 = i14;
                    }
                    i12 = i13;
                } else if ((typeReference instanceof QualifiedTypeReference) && i10 >= 0) {
                    i12 = (int) ((QualifiedTypeReference) typeReference).sourcePositions[i10];
                } else if (typeReference instanceof ArrayTypeReference) {
                    i12 = ((ArrayTypeReference) typeReference).originalSourceEnd;
                }
            }
            searchMatch.setLength((i12 - searchMatch.getOffset()) + 1);
            report(searchMatch);
        }
    }

    public void reportAccurateTypeReference(SearchMatch searchMatch, ASTNode aSTNode, char[] cArr) throws CoreException {
        if (searchMatch.getRule() != 0 && encloses((IJavaElement) searchMatch.getElement())) {
            int i10 = aSTNode.sourceStart;
            int i11 = aSTNode.sourceEnd;
            if (cArr != null) {
                Scanner scanner = this.parser.scanner;
                scanner.setSource(this.currentPossibleMatch.getContents());
                scanner.resetTo(i10, i11);
                int i12 = -1;
                do {
                    int i13 = scanner.currentPosition;
                    try {
                        i12 = scanner.getNextToken();
                    } catch (InvalidInputException unused) {
                    }
                    if (i12 == 22 && this.pattern.matchesName(cArr, scanner.getCurrentTokenSource())) {
                        int i14 = scanner.currentPosition - i13;
                        searchMatch.setOffset(i13);
                        searchMatch.setLength(i14);
                        report(searchMatch);
                        return;
                    }
                } while (i12 != 61);
            }
            searchMatch.setOffset(i10);
            searchMatch.setLength((i11 - i10) + 1);
            report(searchMatch);
        }
    }

    public void reportBinaryMemberDeclaration(IResource iResource, IMember iMember, Binding binding, IBinaryType iBinaryType, int i10) throws CoreException {
        BinaryType binaryType;
        String sourceFileName;
        SourceMapper sourceMapper;
        char[] findSource;
        ClassFile classFile = (ClassFile) iMember.getClassFile();
        ISourceRange nameRange = classFile.isOpen() ? iMember.getNameRange() : SourceMapper.UNKNOWN_RANGE;
        if (nameRange.getOffset() == -1 && (sourceFileName = (binaryType = (BinaryType) classFile.getType()).sourceFileName(iBinaryType)) != null && (sourceMapper = classFile.getSourceMapper()) != null && (findSource = sourceMapper.findSource(binaryType, sourceFileName)) != null) {
            nameRange = sourceMapper.mapSource(binaryType, findSource, iBinaryType, iMember);
        }
        if (iResource == null) {
            iResource = this.currentPossibleMatch.resource;
        }
        report(newDeclarationMatch(iMember, binding, i10, nameRange.getOffset(), nameRange.getLength(), getParticipant(), iResource));
    }

    public void reportMatching(LambdaExpression lambdaExpression, IJavaElement iJavaElement, int i10, MatchingNodeSet matchingNodeSet, boolean z10) throws CoreException {
        IJavaElement iJavaElement2;
        int i11;
        if (i10 > -1) {
            iJavaElement2 = createHandle(lambdaExpression, iJavaElement);
            if (iJavaElement2 != null) {
                int i12 = lambdaExpression.sourceStart;
                if (encloses(iJavaElement2)) {
                    SearchMatch newDeclarationMatch = this.patternLocator.newDeclarationMatch(lambdaExpression, iJavaElement2, null, i10, (lambdaExpression.arrowPosition() + 1) - i12, this);
                    if (newDeclarationMatch != null) {
                        report(newDeclarationMatch);
                    }
                }
            }
        } else {
            iJavaElement2 = null;
        }
        if (iJavaElement2 == null) {
            iJavaElement2 = createHandle(lambdaExpression, iJavaElement);
        }
        ASTNode[] matchingNodes = z10 ? matchingNodeSet.matchingNodes(lambdaExpression.sourceStart, lambdaExpression.sourceEnd) : null;
        boolean z11 = (this.matchContainer & 4) != 0 && encloses(iJavaElement2);
        MemberDeclarationVisitor memberDeclarationVisitor = new MemberDeclarationVisitor(iJavaElement2, z11 ? matchingNodes : null, matchingNodeSet, this, z10);
        Argument[] argumentArr = lambdaExpression.arguments;
        if (argumentArr != null) {
            int length = argumentArr.length;
            for (int i13 = 0; i13 < length; i13++) {
                lambdaExpression.arguments[i13].traverse(memberDeclarationVisitor, (BlockScope) null);
            }
        }
        Statement statement = lambdaExpression.body;
        if (statement != null) {
            statement.traverse(memberDeclarationVisitor, null);
        }
        if (matchingNodes != null) {
            int length2 = matchingNodes.length;
            int i14 = 0;
            while (i14 < length2) {
                Integer num = (Integer) matchingNodeSet.matchingNodes.removeKey(matchingNodes[i14]);
                if (!z11 || num == null) {
                    i11 = i14;
                } else {
                    i11 = i14;
                    this.patternLocator.matchReportReference(matchingNodes[i14], iJavaElement2, memberDeclarationVisitor.getLocalElement(i14), memberDeclarationVisitor.getOtherElements(i14), lambdaExpression.binding, num.intValue(), this);
                }
                i14 = i11 + 1;
            }
        }
    }

    public void reportMatchingSuper(TypeReference typeReference, IJavaElement iJavaElement, Binding binding, MatchingNodeSet matchingNodeSet, boolean z10) throws CoreException {
        Integer num;
        ASTNode[] matchingNodes = ((typeReference instanceof ParameterizedSingleTypeReference) || (typeReference instanceof ParameterizedQualifiedTypeReference)) ? matchingNodeSet.matchingNodes(typeReference.sourceStart, (int) findLastTypeArgumentInfo(typeReference)) : null;
        if (matchingNodes == null) {
            if (encloses(iJavaElement) && (num = (Integer) matchingNodeSet.matchingNodes.removeKey(typeReference)) != null && z10) {
                this.patternLocator.matchReportReference(typeReference, iJavaElement, null, null, binding, num.intValue(), this);
                return;
            }
            return;
        }
        int i10 = 0;
        if ((this.matchContainer & 2) == 0) {
            int length = matchingNodes.length;
            while (i10 < length) {
                matchingNodeSet.matchingNodes.removeKey(matchingNodes[i10]);
                i10++;
            }
            return;
        }
        if (encloses(iJavaElement)) {
            int length2 = matchingNodes.length;
            while (i10 < length2) {
                ASTNode aSTNode = matchingNodes[i10];
                this.patternLocator.matchReportReference(aSTNode, iJavaElement, null, null, binding, ((Integer) matchingNodeSet.matchingNodes.removeKey(aSTNode)).intValue(), this);
                i10++;
            }
        }
    }

    public boolean typeInHierarchy(ReferenceBinding referenceBinding) {
        HierarchyResolver hierarchyResolver = this.hierarchyResolver;
        if (hierarchyResolver == null || hierarchyResolver.subOrSuperOfFocus(referenceBinding)) {
            return true;
        }
        char[][][] cArr = this.allSuperTypeNames;
        if (cArr != null) {
            char[][] cArr2 = referenceBinding.compoundName;
            int length = cArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (CharOperation.equals(cArr2, this.allSuperTypeNames[i10])) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public void accept(org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit, AccessRestriction accessRestriction) {
        CompilationResult compilationResult = new CompilationResult(iCompilationUnit, 1, 1, this.options.maxProblemsPerUnit);
        try {
            CompilationUnitDeclaration dietParse = basicParser().dietParse(iCompilationUnit, compilationResult);
            this.lookupEnvironment.buildTypeBindings(dietParse, accessRestriction);
            this.lookupEnvironment.completeTypeBindings(dietParse, true);
        } catch (AbortCompilationUnit e10) {
            if (compilationResult.compilationUnit != iCompilationUnit) {
                throw e10;
            }
        }
        if (!BasicSearchEngine.VERBOSE || compilationResult.problemCount <= 0) {
            return;
        }
        System.out.println(compilationResult);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v5, types: [int] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [int] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v8 */
    public void locatePackageDeclarations(SearchPattern searchPattern, SearchParticipant searchParticipant, IJavaProject[] iJavaProjectArr) throws CoreException {
        int i10;
        boolean z10;
        IPackageFragment[] iPackageFragmentArr;
        int i11;
        int i12;
        SimpleSet simpleSet;
        IProgressMonitor iProgressMonitor = this.progressMonitor;
        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        boolean z11 = false;
        if (searchPattern instanceof OrPattern) {
            for (SearchPattern searchPattern2 : ((OrPattern) searchPattern).patterns) {
                locatePackageDeclarations(searchPattern2, searchParticipant, iJavaProjectArr);
            }
            return;
        }
        if (searchPattern instanceof PackageDeclarationPattern) {
            IJavaElement iJavaElement = searchPattern.focus;
            if (iJavaElement != null) {
                if (encloses(iJavaElement)) {
                    report(new PackageDeclarationMatch(iJavaElement.getAncestor(4), 0, -1, -1, searchParticipant, iJavaElement.getResource()));
                    return;
                }
                return;
            }
            PackageDeclarationPattern packageDeclarationPattern = (PackageDeclarationPattern) searchPattern;
            boolean z12 = this.scope == JavaModelManager.getJavaModelManager().getWorkspaceScope();
            IPath[] enclosingProjectsAndJars = z12 ? null : this.scope.enclosingProjectsAndJars();
            int length = z12 ? 0 : enclosingProjectsAndJars.length;
            SimpleSet simpleSet2 = new SimpleSet();
            int length2 = iJavaProjectArr.length;
            int i13 = 0;
            while (i13 < length2) {
                IJavaProject iJavaProject = iJavaProjectArr[i13];
                IProgressMonitor iProgressMonitor2 = this.progressMonitor;
                if (iProgressMonitor2 != null) {
                    if (!iProgressMonitor2.isCanceled()) {
                        int i14 = this.progressWorked + 1;
                        this.progressWorked = i14;
                        int i15 = this.progressStep;
                        if (i14 % i15 == 0) {
                            this.progressMonitor.worked(i15);
                        }
                    } else {
                        throw new OperationCanceledException();
                    }
                }
                if (!z12) {
                    for (?? r62 = z11; r62 < length; r62++) {
                        if (!iJavaProject.getPath().equals(enclosingProjectsAndJars[r62])) {
                        }
                    }
                    i13++;
                }
                NameLookup newNameLookup = ((JavaProject) iJavaProjectArr[i13]).newNameLookup(this.workingCopies);
                this.nameLookup = newNameLookup;
                IPackageFragment[] findPackageFragments = newNameLookup.findPackageFragments(new String(packageDeclarationPattern.pkgName), z11, true);
                ?? r72 = z11;
                ?? r82 = findPackageFragments == null ? z11 : findPackageFragments.length;
                while (r72 < r82) {
                    IPackageFragment iPackageFragment = findPackageFragments[r72];
                    if (simpleSet2.addIfNotIncluded(iPackageFragment) != null && encloses(iPackageFragment)) {
                        IProject resource = iPackageFragment.getResource();
                        if (resource == null) {
                            resource = iJavaProject.getProject();
                        }
                        try {
                            if (encloses(iPackageFragment)) {
                                i10 = r72;
                                z10 = r82;
                                iPackageFragmentArr = findPackageFragments;
                                i11 = i13;
                                i12 = length2;
                                simpleSet = simpleSet2;
                                report(new PackageDeclarationMatch(iPackageFragment, 0, -1, -1, searchParticipant, resource));
                                i13 = i11;
                                length2 = i12;
                                findPackageFragments = iPackageFragmentArr;
                                r82 = z10;
                                simpleSet2 = simpleSet;
                                z11 = false;
                                r72 = i10 + 1;
                            }
                        } catch (JavaModelException e10) {
                            throw e10;
                        } catch (CoreException e11) {
                            throw new JavaModelException(e11);
                        }
                    }
                    i10 = r72;
                    z10 = r82;
                    iPackageFragmentArr = findPackageFragments;
                    i11 = i13;
                    i12 = length2;
                    simpleSet = simpleSet2;
                    i13 = i11;
                    length2 = i12;
                    findPackageFragments = iPackageFragmentArr;
                    r82 = z10;
                    simpleSet2 = simpleSet;
                    z11 = false;
                    r72 = i10 + 1;
                }
                i13++;
            }
        }
    }

    private Map<Integer, List<String>> getSplitNames(MethodBinding methodBinding) {
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        int length = typeBindingArr == null ? 0 : typeBindingArr.length;
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 < length; i10++) {
            hashMap.put(Integer.valueOf(i10), getInverseFullName(typeBindingArr[i10].qualifiedSourceName(), null));
        }
        return hashMap;
    }

    public IJavaElement createHandle(AbstractMethodDeclaration abstractMethodDeclaration, IJavaElement iJavaElement) {
        boolean z10;
        char[] cArr;
        if (!(iJavaElement instanceof IType)) {
            return iJavaElement;
        }
        IType iType = (IType) iJavaElement;
        Argument[] argumentArr = abstractMethodDeclaration.arguments;
        int length = argumentArr == null ? 0 : argumentArr.length;
        if (iType.isBinary()) {
            IBinaryType classFileReader = classFileReader(iType);
            if (classFileReader != null) {
                if (classFileReader.isMember() && abstractMethodDeclaration.isConstructor() && !Flags.isStatic(classFileReader.getModifiers())) {
                    length++;
                    z10 = true;
                } else {
                    z10 = false;
                }
                char[][] cArr2 = new char[length];
                for (int i10 = 0; i10 < length; i10++) {
                    if (i10 == 0 && z10) {
                        cArr = iType.getDeclaringType().getFullyQualifiedName().toCharArray();
                    } else if (argumentArr != null) {
                        TypeReference typeReference = argumentArr[z10 ? i10 - 1 : i10].type;
                        char[] concatWith = CharOperation.concatWith(typeReference.getTypeName(), '.');
                        int dimensions = typeReference.dimensions();
                        for (int i11 = 0; i11 < dimensions; i11++) {
                            concatWith = CharOperation.concat(concatWith, new char[]{'[', JavaElement.JEM_TYPE_PARAMETER});
                        }
                        cArr = concatWith;
                    } else {
                        cArr = null;
                    }
                    if (cArr == null) {
                        return null;
                    }
                    cArr2[i10] = cArr;
                }
                IMethod createBinaryMethodHandle = createBinaryMethodHandle(iType, abstractMethodDeclaration.selector, cArr2);
                if (createBinaryMethodHandle == null) {
                    for (PossibleMatch similarMatch = this.currentPossibleMatch.getSimilarMatch(); similarMatch != null; similarMatch = similarMatch.getSimilarMatch()) {
                        createBinaryMethodHandle = createBinaryMethodHandle(((ClassFile) similarMatch.openable).getType(), abstractMethodDeclaration.selector, cArr2);
                        if (createBinaryMethodHandle != null) {
                            return createBinaryMethodHandle;
                        }
                    }
                }
                return createBinaryMethodHandle;
            }
            if (BasicSearchEngine.VERBOSE) {
                System.out.println("Not able to createHandle for the method " + CharOperation.charToString(abstractMethodDeclaration.selector) + " May miss some results");
            }
            return null;
        }
        String[] strArr = new String[length];
        if (argumentArr != null) {
            for (int i12 = 0; i12 < length; i12++) {
                strArr[i12] = Signature.createTypeSignature(CharOperation.concatWith(argumentArr[i12].type.getParameterizedTypeName(), '.'), false);
            }
        }
        return createMethodHandle(iType, new String(abstractMethodDeclaration.selector), strArr);
    }

    public SearchMatch newDeclarationMatch(IJavaElement iJavaElement, Binding binding, int i10, int i11, int i12, SearchParticipant searchParticipant, IResource iResource) {
        int elementType = iJavaElement.getElementType();
        if (elementType == 4) {
            return new PackageDeclarationMatch(iJavaElement, i10, i11, i12, searchParticipant, iResource);
        }
        if (elementType == 11) {
            return new PackageDeclarationMatch(iJavaElement, i10, i11, i12, searchParticipant, iResource);
        }
        if (elementType == 17) {
            ModuleDeclarationMatch moduleDeclarationMatch = new ModuleDeclarationMatch(binding == null ? iJavaElement : ((JavaElement) iJavaElement).resolved(binding), i10, i11, i12, searchParticipant, iResource);
            this.matchBinding.put(moduleDeclarationMatch, binding);
            return moduleDeclarationMatch;
        }
        if (elementType == 7) {
            return new TypeDeclarationMatch(binding == null ? iJavaElement : ((JavaElement) iJavaElement).resolved(binding), i10, i11, i12, searchParticipant, iResource);
        }
        if (elementType == 8) {
            return new FieldDeclarationMatch(binding == null ? iJavaElement : ((JavaElement) iJavaElement).resolved(binding), i10, i11, i12, searchParticipant, iResource);
        }
        if (elementType == 9) {
            return new MethodDeclarationMatch(binding == null ? iJavaElement : ((JavaElement) iJavaElement).resolved(binding), i10, i11, i12, searchParticipant, iResource);
        }
        if (elementType == 14) {
            return new LocalVariableDeclarationMatch(iJavaElement, i10, i11, i12, searchParticipant, iResource);
        }
        if (elementType != 15) {
            return null;
        }
        return new TypeParameterDeclarationMatch(iJavaElement, i10, i11, i12, searchParticipant, iResource);
    }

    public ModuleReferenceMatch newModuleReferenceMatch(IJavaElement iJavaElement, Binding binding, int i10, ASTNode aSTNode) {
        int i11 = aSTNode.sourceStart;
        return newModuleReferenceMatch(iJavaElement, binding, i10, i11, (aSTNode.sourceEnd - i11) + 1, aSTNode);
    }

    public TypeReferenceMatch newTypeReferenceMatch(IJavaElement iJavaElement, Binding binding, int i10, ASTNode aSTNode) {
        int i11 = aSTNode.sourceStart;
        return newTypeReferenceMatch(iJavaElement, binding, i10, i11, (aSTNode.sourceEnd - i11) + 1, aSTNode);
    }

    @Override
    public void accept(ISourceType[] iSourceTypeArr, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        ISourceType iSourceType = iSourceTypeArr[0];
        while (iSourceType.getEnclosingType() != null) {
            iSourceType = iSourceType.getEnclosingType();
        }
        if (iSourceType instanceof SourceTypeElementInfo) {
            accept((org.eclipse.jdt.internal.compiler.env.ICompilationUnit) ((SourceTypeElementInfo) iSourceType).getHandle().getCompilationUnit(), accessRestriction);
            return;
        }
        CompilationUnitDeclaration buildCompilationUnit = SourceTypeConverter.buildCompilationUnit(iSourceTypeArr, 15, this.lookupEnvironment.problemReporter, new CompilationResult(iSourceType.getFileName(), 1, 1, 0));
        if (buildCompilationUnit != null) {
            this.lookupEnvironment.buildTypeBindings(buildCompilationUnit, accessRestriction);
            this.lookupEnvironment.completeTypeBindings(buildCompilationUnit, true);
        }
    }

    public void reportMatching(AbstractMethodDeclaration abstractMethodDeclaration, TypeDeclaration typeDeclaration, IJavaElement iJavaElement, int i10, boolean z10, MatchingNodeSet matchingNodeSet) throws CoreException {
        IJavaElement iJavaElement2;
        ASTNode[] matchingNodes;
        int i11;
        int i12;
        MemberDeclarationVisitor memberDeclarationVisitor;
        SearchMatch newDeclarationMatch;
        if (i10 > -1) {
            iJavaElement2 = createHandle(abstractMethodDeclaration, iJavaElement);
            if (iJavaElement2 != null) {
                Scanner scanner = this.parser.scanner;
                int i13 = abstractMethodDeclaration.sourceStart;
                scanner.setSource(this.currentPossibleMatch.getContents());
                scanner.resetTo(i13, abstractMethodDeclaration.sourceEnd);
                try {
                    scanner.getNextToken();
                } catch (InvalidInputException unused) {
                }
                if (encloses(iJavaElement2)) {
                    if (abstractMethodDeclaration.isDefaultConstructor()) {
                        newDeclarationMatch = this.patternLocator.newDeclarationMatch(typeDeclaration, iJavaElement, typeDeclaration.binding, i10, (typeDeclaration.sourceEnd - typeDeclaration.sourceStart) + 1, this);
                    } else {
                        newDeclarationMatch = this.patternLocator.newDeclarationMatch(abstractMethodDeclaration, iJavaElement2, abstractMethodDeclaration.binding, i10, scanner.currentPosition - i13, this);
                    }
                    if (newDeclarationMatch != null) {
                        report(newDeclarationMatch);
                    }
                }
            }
        } else {
            iJavaElement2 = null;
        }
        if ((abstractMethodDeclaration.bits & 2) != 0) {
            if (iJavaElement2 == null) {
                iJavaElement2 = createHandle(abstractMethodDeclaration, iJavaElement);
            }
            if (iJavaElement2 != null) {
                ASTNode[] matchingNodes2 = z10 ? matchingNodeSet.matchingNodes(abstractMethodDeclaration.declarationSourceStart, abstractMethodDeclaration.declarationSourceEnd) : null;
                boolean z11 = (this.matchContainer & 4) != 0 && encloses(iJavaElement2);
                MemberDeclarationVisitor memberDeclarationVisitor2 = new MemberDeclarationVisitor(iJavaElement2, z11 ? matchingNodes2 : null, matchingNodeSet, this, z10);
                try {
                    abstractMethodDeclaration.traverse(memberDeclarationVisitor2, (ClassScope) null);
                    if (matchingNodes2 != null) {
                        int length = matchingNodes2.length;
                        int i14 = 0;
                        while (i14 < length) {
                            Integer num = (Integer) matchingNodeSet.matchingNodes.removeKey(matchingNodes2[i14]);
                            if (!z11 || num == null) {
                                i11 = i14;
                                i12 = length;
                                memberDeclarationVisitor = memberDeclarationVisitor2;
                            } else {
                                i11 = i14;
                                i12 = length;
                                memberDeclarationVisitor = memberDeclarationVisitor2;
                                this.patternLocator.matchReportReference(matchingNodes2[i14], iJavaElement2, memberDeclarationVisitor2.getLocalElement(i14), memberDeclarationVisitor2.getOtherElements(i14), abstractMethodDeclaration.binding, num.intValue(), this);
                            }
                            i14 = i11 + 1;
                            length = i12;
                            memberDeclarationVisitor2 = memberDeclarationVisitor;
                        }
                    }
                } catch (WrappedCoreException e10) {
                    throw e10.coreException;
                }
            }
        }
        TypeParameter[] typeParameters = abstractMethodDeclaration.typeParameters();
        if (typeParameters != null) {
            if (iJavaElement2 == null) {
                iJavaElement2 = createHandle(abstractMethodDeclaration, iJavaElement);
            }
            if (iJavaElement2 != null) {
                reportMatching(typeParameters, iJavaElement2, iJavaElement, abstractMethodDeclaration.binding, matchingNodeSet);
            }
        }
        if (abstractMethodDeclaration.annotations != null) {
            if (iJavaElement2 == null) {
                iJavaElement2 = createHandle(abstractMethodDeclaration, iJavaElement);
            }
            if (iJavaElement2 != null) {
                reportMatching(abstractMethodDeclaration.annotations, iJavaElement2, (IJavaElement[]) null, (Binding) abstractMethodDeclaration.binding, matchingNodeSet, true, true);
            }
        }
        if (!z10 || (matchingNodes = matchingNodeSet.matchingNodes(abstractMethodDeclaration.declarationSourceStart, abstractMethodDeclaration.declarationSourceEnd)) == null) {
            return;
        }
        if ((this.matchContainer & 4) != 0) {
            if (iJavaElement2 == null) {
                iJavaElement2 = createHandle(abstractMethodDeclaration, iJavaElement);
            }
            if (encloses(iJavaElement2)) {
                if (this.pattern.mustResolve) {
                    MemberDeclarationVisitor memberDeclarationVisitor3 = new MemberDeclarationVisitor(iJavaElement2, matchingNodes, matchingNodeSet, this, z10);
                    abstractMethodDeclaration.traverse(memberDeclarationVisitor3, (ClassScope) null);
                    int length2 = matchingNodes.length;
                    for (int i15 = 0; i15 < length2; i15++) {
                        Integer num2 = (Integer) matchingNodeSet.matchingNodes.removeKey(matchingNodes[i15]);
                        if (num2 != null) {
                            this.patternLocator.matchReportReference(matchingNodes[i15], iJavaElement2, memberDeclarationVisitor3.getLocalElement(i15), memberDeclarationVisitor3.getOtherElements(i15), abstractMethodDeclaration.binding, num2.intValue(), this);
                        }
                    }
                    return;
                }
                for (ASTNode aSTNode : matchingNodes) {
                    Integer num3 = (Integer) matchingNodeSet.matchingNodes.removeKey(aSTNode);
                    if (num3 != null) {
                        this.patternLocator.matchReportReference(aSTNode, iJavaElement2, null, null, abstractMethodDeclaration.binding, num3.intValue(), this);
                    }
                }
                return;
            }
        }
        for (ASTNode aSTNode2 : matchingNodes) {
            matchingNodeSet.matchingNodes.removeKey(aSTNode2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009b A[EDGE_INSN: B:40:0x009b->B:41:0x009b BREAK  A[LOOP:1: B:19:0x0043->B:47:0x0092], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0092 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private MethodBinding getMethodBinding(MethodPattern methodPattern, TypeBinding typeBinding) {
        boolean z10;
        boolean z11;
        int i10;
        MatchLocator matchLocator = this;
        MethodPattern methodPattern2 = methodPattern;
        char[][] cArr = methodPattern2.parameterSimpleNames;
        if (cArr == null) {
            return null;
        }
        int length = cArr.length;
        ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding;
        MethodBinding[] methods = referenceBinding.getMethods(methodPattern2.selector);
        int length2 = methods.length;
        TypeVariableBinding[] typeVariables = referenceBinding.typeVariables();
        int length3 = typeVariables == null ? 0 : typeVariables.length;
        ArrayList arrayList = new ArrayList(length2);
        int i11 = 0;
        while (i11 < length2) {
            MethodBinding methodBinding = methods[i11];
            TypeBinding[] typeBindingArr = methodBinding.parameters;
            int length4 = typeBindingArr == null ? 0 : typeBindingArr.length;
            TypeVariableBinding[] typeVariableBindingArr = methodBinding.typeVariables;
            int length5 = typeVariableBindingArr == null ? 0 : typeVariableBindingArr.length;
            if (typeBindingArr == null || length4 != length) {
                z10 = false;
            } else {
                int i12 = 0;
                z10 = false;
                while (i12 < length4) {
                    z10 = true;
                    if (!matchLocator.matchParams(methodPattern2, i12, typeBindingArr[i12])) {
                        if (typeVariables != null) {
                            int i13 = 0;
                            z11 = false;
                            while (i13 < length3) {
                                if (CharOperation.equals(typeVariables[i13].sourceName, cArr[i12])) {
                                    i13++;
                                    z11 = true;
                                }
                            }
                            if (!z11 && typeVariableBindingArr != null) {
                                i10 = 0;
                                while (i10 < length5) {
                                    if (!CharOperation.equals(typeVariableBindingArr[i10].sourceName, cArr[i12])) {
                                        z10 = false;
                                        break;
                                    }
                                    i10++;
                                    z11 = true;
                                }
                            }
                            z10 = z11;
                            if (z10) {
                                break;
                            }
                        }
                        z11 = false;
                        if (!z11) {
                            i10 = 0;
                            while (i10 < length5) {
                            }
                        }
                        z10 = z11;
                        if (z10) {
                        }
                    }
                    i12++;
                    matchLocator = this;
                    methodPattern2 = methodPattern;
                }
            }
            if (z10) {
                arrayList.add(methods[i11]);
            }
            i11++;
            matchLocator = this;
            methodPattern2 = methodPattern;
        }
        return matchLocator.getMostApplicableMethod(arrayList, methodPattern2);
    }

    public IJavaElement createHandle(FieldDeclaration fieldDeclaration, TypeDeclaration typeDeclaration, IJavaElement iJavaElement) {
        if (!(iJavaElement instanceof IType)) {
            return iJavaElement;
        }
        IType iType = (IType) iJavaElement;
        int kind = fieldDeclaration.getKind();
        if (kind != 1 && kind != 3) {
            if (iType.isBinary()) {
                return iType;
            }
            FieldDeclaration[] fieldDeclarationArr = typeDeclaration.fields;
            int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                if (fieldDeclarationArr[i11].getKind() == 2) {
                    i10++;
                    if (fieldDeclarationArr[i11].equals(fieldDeclaration)) {
                        break;
                    }
                }
            }
            return iType.getInitializer(i10);
        }
        return iType.getField(new String(fieldDeclaration.name));
    }

    public IJavaElement createHandle(AbstractVariableDeclaration abstractVariableDeclaration, IJavaElement iJavaElement) {
        boolean z10;
        int kind = abstractVariableDeclaration.getKind();
        if (kind == 4) {
            z10 = false;
        } else {
            if (kind != 5) {
                if (kind != 6) {
                    return null;
                }
                return new org.eclipse.jdt.internal.core.TypeParameter((JavaElement) iJavaElement, new String(abstractVariableDeclaration.name));
            }
            z10 = true;
        }
        boolean z11 = z10;
        if (abstractVariableDeclaration.type.resolvedType != null) {
            return new LocalVariable((JavaElement) iJavaElement, new String(abstractVariableDeclaration.name), abstractVariableDeclaration.declarationSourceStart, abstractVariableDeclaration.declarationSourceEnd, abstractVariableDeclaration.sourceStart, abstractVariableDeclaration.sourceEnd, new String(abstractVariableDeclaration.type.resolvedType.signature()), abstractVariableDeclaration.annotations, abstractVariableDeclaration.modifiers, z11, abstractVariableDeclaration.type.getAnnotationsOnDimensions());
        }
        return null;
    }

    public IJavaElement createHandle(Annotation annotation, IAnnotatable iAnnotatable) {
        if (iAnnotatable == null) {
            return null;
        }
        String str = new String(annotation.type.getTypeName()[r9.length - 1]);
        try {
            IAnnotation[] annotations = iAnnotatable.getAnnotations();
            int length = annotations == null ? 0 : annotations.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (annotations[i10].getElementName().equals(str)) {
                    return annotations[i10];
                }
            }
            if (iAnnotatable instanceof LocalVariable) {
                IAnnotation[][] iAnnotationArr = ((LocalVariable) iAnnotatable).annotationsOnDimensions;
                int length2 = iAnnotationArr == null ? 0 : iAnnotationArr.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    IAnnotation[] iAnnotationArr2 = iAnnotationArr[i11];
                    int length3 = iAnnotationArr2.length;
                    for (int i12 = 0; i12 < length3; i12++) {
                        if (iAnnotationArr2[i12].getElementName().equals(str)) {
                            return iAnnotationArr2[i12];
                        }
                    }
                }
            }
        } catch (JavaModelException unused) {
        }
        return null;
    }

    public void reportMatching(Annotation[] annotationArr, IJavaElement iJavaElement, IJavaElement[] iJavaElementArr, Binding binding, MatchingNodeSet matchingNodeSet, boolean z10, boolean z11) throws CoreException {
        int i10;
        IJavaElement[] iJavaElementArr2;
        boolean z12;
        int i11;
        int i12;
        ASTNode[] aSTNodeArr;
        boolean z13;
        IJavaElement iJavaElement2;
        int i13;
        int i14;
        MemberValuePair[] memberValuePairArr;
        boolean z14;
        IJavaElement[] iJavaElementArr3;
        IJavaElement iJavaElement3;
        IJavaElement iJavaElement4;
        if (annotationArr == null) {
            return;
        }
        for (Annotation annotation : annotationArr) {
            int length = iJavaElementArr == null ? 0 : iJavaElementArr.length;
            TypeReference typeReference = annotation.type;
            Integer num = (Integer) matchingNodeSet.matchingNodes.removeKey(typeReference);
            IJavaElement iJavaElement5 = null;
            if (num != null && z11 && z10) {
                IJavaElement createHandle = createHandle(annotation, (IAnnotatable) iJavaElement);
                if (length > 0) {
                    IJavaElement[] iJavaElementArr4 = new IJavaElement[length];
                    for (int i15 = 0; i15 < length; i15++) {
                        iJavaElementArr4[i15] = createHandle(annotation, (IAnnotatable) iJavaElementArr[i15]);
                    }
                    iJavaElementArr2 = iJavaElementArr4;
                } else {
                    iJavaElementArr2 = null;
                }
                i10 = length;
                this.patternLocator.matchReportReference(typeReference, iJavaElement, createHandle, iJavaElementArr2, binding, num.intValue(), this);
                z12 = true;
                iJavaElement5 = createHandle;
            } else {
                i10 = length;
                iJavaElementArr2 = null;
                z12 = false;
            }
            MemberValuePair[] memberValuePairs = annotation.memberValuePairs();
            int length2 = memberValuePairs.length;
            int i16 = 0;
            while (i16 < length2) {
                MemberValuePair memberValuePair = memberValuePairs[i16];
                Integer num2 = (Integer) matchingNodeSet.matchingNodes.removeKey(memberValuePair);
                if (num2 == null || !z11) {
                    i13 = i16;
                    i14 = length2;
                    memberValuePairArr = memberValuePairs;
                } else {
                    MemberValuePair memberValuePair2 = annotation instanceof SingleMemberAnnotation ? annotation : memberValuePair;
                    if (z12) {
                        i13 = i16;
                        z14 = z12;
                        iJavaElementArr3 = iJavaElementArr2;
                        iJavaElement3 = iJavaElement5;
                    } else {
                        IJavaElement createHandle2 = createHandle(annotation, (IAnnotatable) iJavaElement);
                        if (i10 > 0) {
                            IJavaElement[] iJavaElementArr5 = new IJavaElement[i10];
                            iJavaElement4 = createHandle2;
                            int i17 = 0;
                            while (i17 < i10) {
                                iJavaElementArr5[i17] = createHandle(annotation, (IAnnotatable) iJavaElementArr[i17]);
                                i17++;
                                i16 = i16;
                            }
                            iJavaElementArr2 = iJavaElementArr5;
                        } else {
                            iJavaElement4 = createHandle2;
                        }
                        i13 = i16;
                        iJavaElementArr3 = iJavaElementArr2;
                        iJavaElement3 = iJavaElement4;
                        z14 = true;
                    }
                    i14 = length2;
                    memberValuePairArr = memberValuePairs;
                    this.patternLocator.matchReportReference(memberValuePair2, iJavaElement, iJavaElement3, iJavaElementArr3, memberValuePair.binding, num2.intValue(), this);
                    z12 = z14;
                    iJavaElement5 = iJavaElement3;
                    iJavaElementArr2 = iJavaElementArr3;
                }
                i16 = i13 + 1;
                memberValuePairs = memberValuePairArr;
                length2 = i14;
            }
            ASTNode[] matchingNodes = matchingNodeSet.matchingNodes(annotation.sourceStart, annotation.declarationSourceEnd);
            if (matchingNodes != null) {
                if (z10) {
                    int length3 = matchingNodes.length;
                    int i18 = 0;
                    while (i18 < length3) {
                        ASTNode aSTNode = matchingNodes[i18];
                        Integer num3 = (Integer) matchingNodeSet.matchingNodes.removeKey(aSTNode);
                        if (z11) {
                            if (z12) {
                                z13 = z12;
                                iJavaElement2 = iJavaElement5;
                            } else {
                                IJavaElement createHandle3 = createHandle(annotation, (IAnnotatable) iJavaElement);
                                if (i10 > 0) {
                                    IJavaElement[] iJavaElementArr6 = new IJavaElement[i10];
                                    int i19 = 0;
                                    while (i19 < i10) {
                                        iJavaElementArr6[i19] = createHandle(annotation, (IAnnotatable) iJavaElementArr[i19]);
                                        i19++;
                                        createHandle3 = createHandle3;
                                    }
                                    iJavaElementArr2 = iJavaElementArr6;
                                }
                                iJavaElement2 = createHandle3;
                                z13 = true;
                            }
                            i11 = i18;
                            i12 = length3;
                            aSTNodeArr = matchingNodes;
                            this.patternLocator.matchReportReference(aSTNode, iJavaElement, iJavaElement2, iJavaElementArr2, binding, num3.intValue(), this);
                            z12 = z13;
                            iJavaElement5 = iJavaElement2;
                        } else {
                            i11 = i18;
                            i12 = length3;
                            aSTNodeArr = matchingNodes;
                        }
                        i18 = i11 + 1;
                        matchingNodes = aSTNodeArr;
                        length3 = i12;
                    }
                } else {
                    for (ASTNode aSTNode2 : matchingNodes) {
                        matchingNodeSet.matchingNodes.removeKey(aSTNode2);
                    }
                }
            }
        }
    }

    public void locateMatches(JavaProject javaProject, PossibleMatchSet possibleMatchSet, int i10) throws CoreException {
        PossibleMatch[] possibleMatches = possibleMatchSet.getPossibleMatches(javaProject.getPackageFragmentRoots());
        int length = possibleMatches.length;
        IProgressMonitor iProgressMonitor = this.progressMonitor;
        if (iProgressMonitor != null && i10 > length) {
            int i11 = i10 - length;
            this.progressWorked += i11;
            iProgressMonitor.worked(i11);
        }
        int i12 = 0;
        while (i12 < length) {
            int min = Math.min(MAX_AT_ONCE, length - i12);
            locateMatches(javaProject, possibleMatches, i12, min);
            i12 += min;
        }
        this.patternLocator.clear();
    }

    private void reportMatching(Annotation[][] annotationArr, IJavaElement iJavaElement, Binding binding, MatchingNodeSet matchingNodeSet, boolean z10) throws CoreException {
        if (annotationArr != null) {
            for (Annotation[] annotationArr2 : annotationArr) {
                if (annotationArr2 != null) {
                    reportMatching(annotationArr2, iJavaElement, (IJavaElement[]) null, binding, matchingNodeSet, z10, encloses(iJavaElement));
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2, types: [org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope, org.eclipse.jdt.internal.compiler.util.SimpleLookupTable] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v6 */
    public void locateMatches(SearchDocument[] searchDocumentArr) throws CoreException {
        int i10;
        IJavaProject[] iJavaProjectArr;
        Openable createOpenable;
        IJavaElement iJavaElement;
        int i11;
        String str;
        if (this.patternLocator == null) {
            return;
        }
        int length = searchDocumentArr.length;
        int i12 = 0;
        if (BasicSearchEngine.VERBOSE) {
            System.out.println("Locating matches in documents [");
            for (Object[] objArr : searchDocumentArr) {
                System.out.println("\t" + ((Object) objArr));
            }
            System.out.println("]");
        }
        JavaProject javaProject = null;
        if (this.searchPackageDeclaration) {
            IJavaProject[] javaProjects = JavaModelManager.getJavaModelManager().getJavaModel().getJavaProjects();
            i10 = javaProjects.length + length;
            iJavaProjectArr = javaProjects;
        } else {
            i10 = length;
            iJavaProjectArr = null;
        }
        int i13 = 1;
        int min = i10 < 1000 ? Math.min(Math.max((i10 / 200) + 1, 2), 4) : (i10 / 1000) * 5;
        this.progressStep = i10 < min ? 1 : i10 / min;
        this.progressWorked = 0;
        ArrayList arrayList = new ArrayList();
        int i14 = 0;
        while (i14 < length) {
            int i15 = i12;
            JavaProject javaProject2 = javaProject;
            Object[] objArr2 = searchDocumentArr[i14];
            if (objArr2 instanceof WorkingCopyDocument) {
                arrayList.add(((WorkingCopyDocument) objArr2).workingCopy);
            }
            i14++;
            i12 = i15;
            javaProject = javaProject2;
            i13 = 1;
        }
        ICompilationUnit[] iCompilationUnitArr = new ICompilationUnit[arrayList.size()];
        this.workingCopies = iCompilationUnitArr;
        arrayList.toArray(iCompilationUnitArr);
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        this.bindings = new SimpleLookupTable();
        try {
            javaModelManager.cacheZipFiles(this);
            if (this.handleFactory == null) {
                this.handleFactory = new HandleFactory();
            }
            IProgressMonitor iProgressMonitor = this.progressMonitor;
            if (iProgressMonitor != null) {
                iProgressMonitor.beginTask("", searchDocumentArr.length);
            }
            this.patternLocator.initializePolymorphicSearch(this);
            PossibleMatchSet possibleMatchSet = new PossibleMatchSet();
            Util.sort(searchDocumentArr, new Util.Comparer() {
                @Override
                public int compare(Object obj, Object obj2) {
                    return ((SearchDocument) obj).getPath().compareTo(((SearchDocument) obj2).getPath());
                }
            });
            int i16 = i12;
            int i17 = i16;
            JavaProject javaProject3 = javaProject;
            SearchParticipant searchParticipant = javaProject3;
            SearchParticipant searchParticipant2 = searchParticipant;
            ?? r10 = javaProject;
            while (i17 < length) {
                IProgressMonitor iProgressMonitor2 = this.progressMonitor;
                if (iProgressMonitor2 != null && iProgressMonitor2.isCanceled()) {
                    throw new OperationCanceledException();
                }
                SearchDocument searchDocument = searchDocumentArr[i17];
                if (searchParticipant == null) {
                    searchParticipant = searchDocument.getParticipant();
                }
                SearchParticipant searchParticipant3 = searchParticipant;
                searchDocumentArr[i17] = r10;
                String path = searchDocument.getPath();
                if (i17 > 0 && path.equals(searchParticipant2)) {
                    IProgressMonitor iProgressMonitor3 = this.progressMonitor;
                    if (iProgressMonitor3 != null) {
                        int i18 = this.progressWorked + i13;
                        this.progressWorked = i18;
                        int i19 = this.progressStep;
                        if (i18 % i19 == 0) {
                            iProgressMonitor3.worked(i19);
                        }
                    }
                    i16++;
                } else {
                    if (searchDocument instanceof WorkingCopyDocument) {
                        iJavaElement = ((WorkingCopyDocument) searchDocument).workingCopy;
                        createOpenable = (Openable) iJavaElement;
                    } else {
                        createOpenable = this.handleFactory.createOpenable(path, this.scope);
                        iJavaElement = r10;
                    }
                    if (createOpenable == null) {
                        IProgressMonitor iProgressMonitor4 = this.progressMonitor;
                        if (iProgressMonitor4 != null) {
                            int i20 = this.progressWorked + i13;
                            this.progressWorked = i20;
                            int i21 = this.progressStep;
                            if (i20 % i21 == 0) {
                                iProgressMonitor4.worked(i21);
                            }
                        }
                        i16++;
                        searchParticipant2 = path;
                    } else {
                        Openable closerOpenable = getCloserOpenable(createOpenable, path);
                        JavaProject javaProject4 = (JavaProject) closerOpenable.getJavaProject();
                        IResource resource = iJavaElement != null ? iJavaElement.getResource() : closerOpenable.getResource();
                        if (resource == null) {
                            resource = javaProject4.getProject();
                        }
                        IResource iResource = resource;
                        if (javaProject4.equals(javaProject3)) {
                            javaProject4 = javaProject3;
                        } else if (javaProject3 != null) {
                            try {
                                locateMatches(javaProject3, possibleMatchSet, i17 - i16);
                                i16 = i17;
                            } catch (JavaModelException unused) {
                            }
                            possibleMatchSet.reset();
                        }
                        int i22 = i16;
                        PossibleMatch possibleMatch = new PossibleMatch(this, iResource, closerOpenable, searchDocument, this.pattern.mustResolve);
                        possibleMatchSet.add(possibleMatch);
                        if (path.endsWith(TypeConstants.AUTOMATIC_MODULE_NAME)) {
                            IPath fullPath = iResource.getFullPath();
                            if (path.contains(fullPath.lastSegment())) {
                                str = JavaModelManager.getLocalFile(fullPath).toPath().toAbsolutePath().toString();
                                i11 = 0;
                            } else {
                                i11 = 0;
                                str = path.split(Pattern.quote("|"))[0];
                            }
                            possibleMatch.autoModuleName = new String(AutomaticModuleNaming.determineAutomaticModuleName(str));
                        } else {
                            i11 = 0;
                        }
                        searchParticipant2 = path;
                        javaProject3 = javaProject4;
                        i16 = i22;
                        i17++;
                        i12 = i11;
                        searchParticipant = searchParticipant3;
                        r10 = 0;
                        i13 = 1;
                    }
                }
                i11 = i12;
                i17++;
                i12 = i11;
                searchParticipant = searchParticipant3;
                r10 = 0;
                i13 = 1;
            }
            if (javaProject3 != null) {
                try {
                    locateMatches(javaProject3, possibleMatchSet, length - i16);
                } catch (JavaModelException unused2) {
                }
            }
            if (this.searchPackageDeclaration) {
                locatePackageDeclarations(searchParticipant, iJavaProjectArr);
            }
            IProgressMonitor iProgressMonitor5 = this.progressMonitor;
            if (iProgressMonitor5 != null) {
                iProgressMonitor5.done();
            }
            INameEnvironment iNameEnvironment = this.nameEnvironment;
            if (iNameEnvironment != null) {
                iNameEnvironment.cleanup();
            }
            this.unitScope = r10;
            javaModelManager.flushZipFiles(this);
            this.bindings = r10;
        } catch (Throwable th2) {
            IProgressMonitor iProgressMonitor6 = this.progressMonitor;
            if (iProgressMonitor6 != null) {
                iProgressMonitor6.done();
            }
            INameEnvironment iNameEnvironment2 = this.nameEnvironment;
            if (iNameEnvironment2 != null) {
                iNameEnvironment2.cleanup();
            }
            this.unitScope = null;
            javaModelManager.flushZipFiles(this);
            this.bindings = null;
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v5 */
    public void reportMatching(CompilationUnitDeclaration compilationUnitDeclaration, boolean z10) throws CoreException {
        IJavaElement createPackageDeclarationHandle;
        ASTNode[] matchingNodes;
        int i10;
        Binding binding;
        MatchingNodeSet matchingNodeSet = this.currentPossibleMatch.nodeSet;
        PatternLocator patternLocator = this.patternLocator;
        boolean z11 = patternLocator.mustResolve;
        boolean z12 = true;
        if (matchingNodeSet.mustResolve) {
            patternLocator.mustResolve = true;
        }
        ?? r12 = 0;
        if (BasicSearchEngine.VERBOSE) {
            PrintStream printStream = System.out;
            printStream.println("Report matching: ");
            SimpleLookupTable simpleLookupTable = matchingNodeSet.matchingNodes;
            printStream.print("\t- node set: accurate=" + (simpleLookupTable == null ? 0 : simpleLookupTable.elementSize));
            SimpleSet simpleSet = matchingNodeSet.possibleMatchingNodesSet;
            printStream.println(", possible=" + (simpleSet == null ? 0 : simpleSet.elementSize));
            printStream.print("\t- must resolve: " + z10);
            printStream.print(" (locator: " + this.patternLocator.mustResolve);
            printStream.println(", nodeSet: " + matchingNodeSet.mustResolve + ')');
            StringBuilder sb2 = new StringBuilder("\t- fine grain flags=");
            sb2.append(JavaSearchPattern.getFineGrainFlagString(this.patternLocator.fineGrain()));
            printStream.println(sb2.toString());
        }
        if (z10) {
            this.unitScope = compilationUnitDeclaration.scope.compilationUnitScope();
            Object[] objArr = matchingNodeSet.possibleMatchingNodesSet.values;
            int length = objArr.length;
            int i11 = 0;
            while (i11 < length) {
                ASTNode aSTNode = (ASTNode) objArr[i11];
                if (aSTNode != null) {
                    if (aSTNode instanceof ImportReference) {
                        if (this.hierarchyResolver == null) {
                            ImportReference importReference = (ImportReference) aSTNode;
                            int i12 = importReference.bits;
                            boolean z13 = (262144 & i12) != 0 ? z12 : r12;
                            if ((i12 & 131072) == 0 && !z13) {
                                binding = this.unitScope.getImport(importReference.tokens, r12, importReference.isStatic());
                            } else {
                                CompilationUnitScope compilationUnitScope = this.unitScope;
                                char[][] cArr = importReference.tokens;
                                binding = compilationUnitScope.getImport(CharOperation.subarray(cArr, (int) r12, cArr.length), true, importReference.isStatic());
                            }
                            if (z13) {
                                matchingNodeSet.addMatch(aSTNode, this.patternLocator.resolveLevel(binding));
                            } else {
                                this.patternLocator.matchLevelAndReportImportRef(importReference, binding, this);
                            }
                        }
                    } else {
                        matchingNodeSet.addMatch(aSTNode, this.patternLocator.resolveLevel(aSTNode));
                    }
                }
                i11++;
                z12 = true;
                r12 = 0;
            }
            matchingNodeSet.possibleMatchingNodesSet = new SimpleSet(3);
            if (BasicSearchEngine.VERBOSE) {
                SimpleLookupTable simpleLookupTable2 = matchingNodeSet.matchingNodes;
                int i13 = simpleLookupTable2 == null ? r12 : simpleLookupTable2.elementSize;
                PrintStream printStream2 = System.out;
                printStream2.print("\t- node set: accurate=" + i13);
                SimpleSet simpleSet2 = matchingNodeSet.possibleMatchingNodesSet;
                printStream2.println(", possible=" + (simpleSet2 == null ? r12 : simpleSet2.elementSize));
            }
        } else {
            this.unitScope = null;
        }
        if (matchingNodeSet.matchingNodes.elementSize == 0) {
            return;
        }
        this.methodHandles = new HashSet();
        boolean z14 = (this.matchContainer & 1) != 0;
        Javadoc javadoc = compilationUnitDeclaration.javadoc;
        if (javadoc != null && (matchingNodes = matchingNodeSet.matchingNodes(javadoc.sourceStart, javadoc.sourceEnd)) != null) {
            if (z14) {
                IJavaElement createPackageDeclarationHandle2 = createPackageDeclarationHandle(compilationUnitDeclaration);
                int length2 = matchingNodes.length;
                int i14 = 0;
                while (i14 < length2) {
                    ASTNode aSTNode2 = matchingNodes[i14];
                    Integer num = (Integer) matchingNodeSet.matchingNodes.removeKey(aSTNode2);
                    if (encloses(createPackageDeclarationHandle2)) {
                        i10 = i14;
                        this.patternLocator.matchReportReference(aSTNode2, createPackageDeclarationHandle2, null, null, null, num.intValue(), this);
                    } else {
                        i10 = i14;
                    }
                    i14 = i10 + 1;
                }
            } else {
                for (ASTNode aSTNode3 : matchingNodes) {
                    matchingNodeSet.matchingNodes.removeKey(aSTNode3);
                }
            }
        }
        if (z14) {
            ImportReference importReference2 = compilationUnitDeclaration.currentPackage;
            if (importReference2 != null && importReference2.annotations != null && (createPackageDeclarationHandle = createPackageDeclarationHandle(compilationUnitDeclaration)) != null) {
                reportMatching(importReference2.annotations, createPackageDeclarationHandle, (IJavaElement[]) null, (Binding) null, matchingNodeSet, true, encloses(createPackageDeclarationHandle));
            }
            ImportReference[] importReferenceArr = compilationUnitDeclaration.imports;
            if (importReferenceArr != null) {
                for (ImportReference importReference3 : importReferenceArr) {
                    Integer num2 = (Integer) matchingNodeSet.matchingNodes.removeKey(importReference3);
                    if (num2 != null) {
                        this.patternLocator.matchReportImportRef(importReference3, null, createImportHandle(importReference3), num2.intValue(), this);
                    }
                }
            }
        }
        TypeDeclaration[] typeDeclarationArr = compilationUnitDeclaration.types;
        if (typeDeclarationArr != null) {
            for (TypeDeclaration typeDeclaration : typeDeclarationArr) {
                SimpleLookupTable simpleLookupTable3 = matchingNodeSet.matchingNodes;
                if (simpleLookupTable3.elementSize == 0) {
                    return;
                }
                Integer num3 = (Integer) simpleLookupTable3.removeKey(typeDeclaration);
                int intValue = (num3 == null || !z14) ? -1 : num3.intValue();
                this.inTypeOccurrencesCounts = new HashtableOfIntValues();
                reportMatching(typeDeclaration, (IJavaElement) null, intValue, matchingNodeSet, 1);
            }
        } else {
            ModuleDeclaration moduleDeclaration = compilationUnitDeclaration.moduleDeclaration;
            if (moduleDeclaration != null) {
                Integer num4 = (Integer) matchingNodeSet.matchingNodes.removeKey(moduleDeclaration);
                reportMatching(moduleDeclaration, (IJavaElement) null, (num4 == null || !z14) ? -1 : num4.intValue(), matchingNodeSet, 1);
            }
        }
        this.methodHandles = null;
        this.bindings.removeKey(this.pattern);
        this.patternLocator.mustResolve = z11;
    }

    public void reportMatching(FieldDeclaration fieldDeclaration, FieldDeclaration[] fieldDeclarationArr, TypeDeclaration typeDeclaration, IJavaElement iJavaElement, int i10, boolean z10, MatchingNodeSet matchingNodeSet) throws CoreException {
        IJavaElement iJavaElement2;
        IJavaElement[] iJavaElementArr;
        QualifiedAllocationExpression qualifiedAllocationExpression;
        ASTNode[] matchingNodes;
        int i11;
        int i12;
        MemberDeclarationVisitor memberDeclarationVisitor;
        IJavaElement iJavaElement3;
        QualifiedAllocationExpression qualifiedAllocationExpression2;
        if (i10 > -1) {
            iJavaElement2 = createHandle(fieldDeclaration, typeDeclaration, iJavaElement);
            if (encloses(iJavaElement2)) {
                int i13 = fieldDeclaration.sourceStart;
                SearchMatch newDeclarationMatch = newDeclarationMatch(iJavaElement2, fieldDeclaration.binding, i10, i13, (fieldDeclaration.sourceEnd - i13) + 1);
                Expression expression = fieldDeclaration.initialization;
                if (expression instanceof AllocationExpression) {
                    reportAccurateEnumConstructorReference(newDeclarationMatch, fieldDeclaration, (AllocationExpression) expression);
                } else {
                    report(newDeclarationMatch);
                }
            }
        } else {
            iJavaElement2 = null;
        }
        if ((fieldDeclaration.bits & 2) != 0) {
            if (iJavaElement2 == null) {
                iJavaElement2 = createHandle(fieldDeclaration, typeDeclaration, iJavaElement);
            }
            int i14 = fieldDeclaration.endPart2Position;
            if (i14 == 0) {
                i14 = fieldDeclaration.declarationSourceEnd;
            }
            ASTNode[] matchingNodes2 = z10 ? matchingNodeSet.matchingNodes(fieldDeclaration.sourceStart, i14) : null;
            boolean z11 = (this.matchContainer & 8) != 0 && encloses(iJavaElement2);
            ASTNode[] aSTNodeArr = matchingNodes2;
            MemberDeclarationVisitor memberDeclarationVisitor2 = new MemberDeclarationVisitor(iJavaElement2, z11 ? matchingNodes2 : null, matchingNodeSet, this, z10);
            try {
                fieldDeclaration.traverse((ASTVisitor) memberDeclarationVisitor2, (MethodScope) null);
                if (aSTNodeArr != null) {
                    int length = aSTNodeArr.length;
                    int i15 = 0;
                    while (i15 < length) {
                        ASTNode aSTNode = aSTNodeArr[i15];
                        Integer num = (Integer) matchingNodeSet.matchingNodes.removeKey(aSTNode);
                        if (!z11 || num == null) {
                            i11 = i15;
                            i12 = length;
                            memberDeclarationVisitor = memberDeclarationVisitor2;
                            iJavaElement3 = iJavaElement2;
                        } else {
                            i11 = i15;
                            i12 = length;
                            memberDeclarationVisitor = memberDeclarationVisitor2;
                            iJavaElement3 = iJavaElement2;
                            this.patternLocator.matchReportReference((!(aSTNode instanceof TypeDeclaration) || (qualifiedAllocationExpression2 = ((TypeDeclaration) aSTNode).allocation) == null || qualifiedAllocationExpression2.enumConstant == null) ? aSTNode : fieldDeclaration, iJavaElement2, memberDeclarationVisitor2.getLocalElement(i15), memberDeclarationVisitor2.getOtherElements(i15), fieldDeclaration.binding, num.intValue(), this);
                        }
                        i15 = i11 + 1;
                        memberDeclarationVisitor2 = memberDeclarationVisitor;
                        length = i12;
                        iJavaElement2 = iJavaElement3;
                    }
                }
                iJavaElement2 = iJavaElement2;
            } catch (WrappedCoreException e10) {
                throw e10.coreException;
            }
        }
        if (fieldDeclaration.annotations != null) {
            if (iJavaElement2 == null) {
                iJavaElement2 = createHandle(fieldDeclaration, typeDeclaration, iJavaElement);
            }
            IJavaElement iJavaElement4 = iJavaElement2;
            iJavaElementArr = fieldDeclarationArr != null ? createHandles(fieldDeclarationArr, typeDeclaration, iJavaElement) : null;
            reportMatching(fieldDeclaration.annotations, iJavaElement4, iJavaElementArr, (Binding) fieldDeclaration.binding, matchingNodeSet, true, true);
            iJavaElement2 = iJavaElement4;
        } else {
            iJavaElementArr = null;
        }
        if (z10) {
            int i16 = fieldDeclaration.endPart1Position;
            if (i16 != 0 && (matchingNodes = matchingNodeSet.matchingNodes(fieldDeclaration.declarationSourceStart, i16)) != null) {
                if ((this.matchContainer & 8) == 0) {
                    for (ASTNode aSTNode2 : matchingNodes) {
                        matchingNodeSet.matchingNodes.removeKey(aSTNode2);
                    }
                } else {
                    if (iJavaElement2 == null) {
                        iJavaElement2 = createHandle(fieldDeclaration, typeDeclaration, iJavaElement);
                    }
                    if (encloses(iJavaElement2)) {
                        int i17 = 0;
                        for (int length2 = matchingNodes.length; i17 < length2; length2 = length2) {
                            ASTNode aSTNode3 = matchingNodes[i17];
                            Integer num2 = (Integer) matchingNodeSet.matchingNodes.removeKey(aSTNode3);
                            if (fieldDeclarationArr != null && iJavaElementArr == null) {
                                iJavaElementArr = createHandles(fieldDeclarationArr, typeDeclaration, iJavaElement);
                            }
                            this.patternLocator.matchReportReference(aSTNode3, iJavaElement2, null, iJavaElementArr, fieldDeclaration.binding, num2.intValue(), this);
                            i17++;
                            iJavaElement2 = iJavaElement2;
                        }
                    }
                    iJavaElement2 = iJavaElement2;
                }
            }
            int i18 = fieldDeclaration.endPart2Position;
            if (i18 == 0) {
                i18 = fieldDeclaration.declarationSourceEnd;
            }
            ASTNode[] matchingNodes3 = matchingNodeSet.matchingNodes(fieldDeclaration.sourceStart, i18);
            if (matchingNodes3 != null) {
                if ((this.matchContainer & 8) == 0) {
                    for (ASTNode aSTNode4 : matchingNodes3) {
                        matchingNodeSet.matchingNodes.removeKey(aSTNode4);
                    }
                    return;
                }
                if (iJavaElement2 == null) {
                    iJavaElement2 = createHandle(fieldDeclaration, typeDeclaration, iJavaElement);
                }
                IJavaElement iJavaElement5 = iJavaElement2;
                if (encloses(iJavaElement5)) {
                    MemberDeclarationVisitor memberDeclarationVisitor3 = new MemberDeclarationVisitor(iJavaElement5, matchingNodes3, matchingNodeSet, this, z10);
                    fieldDeclaration.traverse((ASTVisitor) memberDeclarationVisitor3, (MethodScope) null);
                    int length3 = matchingNodes3.length;
                    for (int i19 = 0; i19 < length3; i19++) {
                        ASTNode aSTNode5 = matchingNodes3[i19];
                        Integer num3 = (Integer) matchingNodeSet.matchingNodes.removeKey(aSTNode5);
                        if (num3 != null) {
                            this.patternLocator.matchReportReference((!(aSTNode5 instanceof TypeDeclaration) || (qualifiedAllocationExpression = ((TypeDeclaration) aSTNode5).allocation) == null || qualifiedAllocationExpression.enumConstant == null) ? aSTNode5 : fieldDeclaration, iJavaElement5, memberDeclarationVisitor3.getLocalElement(i19), memberDeclarationVisitor3.getOtherElements(i19), fieldDeclaration.binding, num3.intValue(), this);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void reportMatching(ModuleDeclaration moduleDeclaration, IJavaElement iJavaElement, int i10, MatchingNodeSet matchingNodeSet, int i11) throws CoreException {
        IModuleDescription iModuleDescription;
        PossibleMatch possibleMatch = this.currentPossibleMatch;
        if (possibleMatch.autoModuleName != null && i10 > -1) {
            reportMatchingAutoModule(moduleDeclaration, iJavaElement, i10);
            return;
        }
        IAdaptable iAdaptable = possibleMatch.openable;
        if (iAdaptable instanceof ITypeRoot) {
            try {
                iModuleDescription = ((ITypeRoot) iAdaptable).getModule();
            } catch (JavaModelException unused) {
            }
            if (iModuleDescription != null) {
                return;
            }
            reportMatching(moduleDeclaration.annotations, (IJavaElement) iModuleDescription, (IJavaElement[]) null, (Binding) moduleDeclaration.binding, matchingNodeSet, true, true);
            if (i10 > -1) {
                report(this.patternLocator.newDeclarationMatch(moduleDeclaration, iModuleDescription, moduleDeclaration.binding, i10, moduleDeclaration.moduleName.length, this));
            }
            reportMatching(moduleDeclaration.requires, moduleDeclaration, matchingNodeSet, iModuleDescription);
            reportMatching(moduleDeclaration.exports, matchingNodeSet, iModuleDescription);
            reportMatching(moduleDeclaration.opens, matchingNodeSet, iModuleDescription);
            reportMatching(moduleDeclaration.services, moduleDeclaration, matchingNodeSet, iModuleDescription);
            reportMatching(moduleDeclaration.uses, moduleDeclaration, matchingNodeSet, iModuleDescription);
            return;
        }
        iModuleDescription = null;
        if (iModuleDescription != null) {
        }
    }

    private void reportMatching(RequiresStatement[] requiresStatementArr, ModuleDeclaration moduleDeclaration, MatchingNodeSet matchingNodeSet, IModuleDescription iModuleDescription) {
        if (requiresStatementArr == null || requiresStatementArr.length == 0) {
            return;
        }
        try {
            for (RequiresStatement requiresStatement : requiresStatementArr) {
                Integer num = (Integer) matchingNodeSet.matchingNodes.removeKey(requiresStatement.module);
                if (num != null) {
                    this.patternLocator.matchReportReference(requiresStatement.module, iModuleDescription, requiresStatement.resolvedBinding, num.intValue(), this);
                }
            }
        } catch (CoreException unused) {
        }
    }

    private void reportMatching(PackageVisibilityStatement[] packageVisibilityStatementArr, MatchingNodeSet matchingNodeSet, IModuleDescription iModuleDescription) throws JavaModelException, CoreException {
        if (packageVisibilityStatementArr == null || packageVisibilityStatementArr.length <= 0) {
            return;
        }
        for (PackageVisibilityStatement packageVisibilityStatement : packageVisibilityStatementArr) {
            ImportReference importReference = packageVisibilityStatement.pkgRef;
            Integer num = (Integer) matchingNodeSet.matchingNodes.removeKey(importReference);
            if (num != null) {
                CompilationUnitScope compilationUnitScope = this.unitScope;
                char[][] cArr = importReference.tokens;
                this.patternLocator.matchReportImportRef(importReference, compilationUnitScope.getImport(CharOperation.subarray(cArr, 0, cArr.length), true, false), iModuleDescription, num.intValue(), this);
            }
            ModuleReference[] moduleReferenceArr = packageVisibilityStatement.targets;
            if (moduleReferenceArr != null && moduleReferenceArr.length != 0) {
                for (ModuleReference moduleReference : moduleReferenceArr) {
                    Integer num2 = (Integer) matchingNodeSet.matchingNodes.removeKey(moduleReference);
                    if (num2 != null) {
                        this.patternLocator.matchReportReference(moduleReference, iModuleDescription, moduleReference.resolve(this.unitScope), num2.intValue(), this);
                    }
                }
            }
        }
    }

    private void reportMatching(ProvidesStatement[] providesStatementArr, ModuleDeclaration moduleDeclaration, MatchingNodeSet matchingNodeSet, IModuleDescription iModuleDescription) throws JavaModelException, CoreException {
        int i10;
        int i11;
        Integer num;
        Integer num2;
        if (providesStatementArr == null || providesStatementArr.length <= 0) {
            return;
        }
        for (ProvidesStatement providesStatement : providesStatementArr) {
            TypeReference typeReference = providesStatement.serviceInterface;
            if (typeReference != null && (num2 = (Integer) matchingNodeSet.matchingNodes.removeKey(typeReference)) != null) {
                this.patternLocator.matchReportReference(typeReference, iModuleDescription, null, null, moduleDeclaration.binding, num2.intValue(), this);
            }
            TypeReference[] typeReferenceArr = providesStatement.implementations;
            int length = typeReferenceArr.length;
            int i12 = 0;
            while (i12 < length) {
                TypeReference typeReference2 = typeReferenceArr[i12];
                if (typeReference2 == null || (num = (Integer) matchingNodeSet.matchingNodes.removeKey(typeReference2)) == null) {
                    i10 = i12;
                    i11 = length;
                } else {
                    i10 = i12;
                    i11 = length;
                    this.patternLocator.matchReportReference(typeReference2, iModuleDescription, null, null, moduleDeclaration.binding, num.intValue(), this);
                }
                i12 = i10 + 1;
                length = i11;
            }
        }
    }

    private void reportMatching(UsesStatement[] usesStatementArr, ModuleDeclaration moduleDeclaration, MatchingNodeSet matchingNodeSet, IModuleDescription iModuleDescription) {
        Integer num;
        if (usesStatementArr == null || usesStatementArr.length <= 0) {
            return;
        }
        try {
            for (UsesStatement usesStatement : usesStatementArr) {
                TypeReference typeReference = usesStatement.serviceInterface;
                if (typeReference != null && (num = (Integer) matchingNodeSet.matchingNodes.removeKey(typeReference)) != null) {
                    this.patternLocator.matchReportReference(typeReference, iModuleDescription, null, null, moduleDeclaration.binding, num.intValue(), this);
                }
            }
        } catch (CoreException e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:196:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x00b9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void reportMatching(TypeDeclaration typeDeclaration, IJavaElement iJavaElement, int i10, MatchingNodeSet matchingNodeSet, int i11) throws CoreException {
        IJavaElement iJavaElement2;
        IType type;
        int i12;
        int i13;
        Annotation[][] annotationArr;
        int i14;
        TypeReference[] typeReferenceArr;
        int i15;
        int i16;
        TypeReference typeReference;
        int i17;
        int i18;
        FieldDeclaration[] fieldDeclarationArr;
        Integer num;
        ASTNode[] matchingNodes;
        int i19;
        int i20;
        ASTNode[] aSTNodeArr;
        if (iJavaElement == null) {
            type = createTypeHandle(new String(typeDeclaration.name));
        } else if (iJavaElement instanceof IType) {
            type = ((IType) iJavaElement).getType(new String(typeDeclaration.name));
        } else {
            if (!(iJavaElement instanceof IMember)) {
                iJavaElement2 = iJavaElement;
                if (iJavaElement2 != null) {
                    return;
                }
                boolean encloses = encloses(iJavaElement2);
                if (i10 > -1 && encloses) {
                    report(this.patternLocator.newDeclarationMatch(typeDeclaration, iJavaElement2, typeDeclaration.binding, i10, (typeDeclaration.sourceEnd - typeDeclaration.sourceStart) + 1, this));
                }
                boolean z10 = (this.matchContainer & 2) != 0;
                TypeParameter[] typeParameterArr = typeDeclaration.typeParameters;
                if (typeParameterArr != null) {
                    reportMatching(typeParameterArr, iJavaElement2, iJavaElement, typeDeclaration.binding, matchingNodeSet);
                }
                Annotation[] annotationArr2 = typeDeclaration.annotations;
                if (annotationArr2 != null) {
                    reportMatching(annotationArr2, iJavaElement2, (IJavaElement[]) null, typeDeclaration.binding, matchingNodeSet, z10, encloses);
                }
                if (typeDeclaration.javadoc != null && (matchingNodes = matchingNodeSet.matchingNodes(typeDeclaration.declarationSourceStart, typeDeclaration.sourceStart)) != null) {
                    if (z10) {
                        int length = matchingNodes.length;
                        int i21 = 0;
                        while (i21 < length) {
                            ASTNode aSTNode = matchingNodes[i21];
                            Integer num2 = (Integer) matchingNodeSet.matchingNodes.removeKey(aSTNode);
                            if (encloses) {
                                i19 = i21;
                                i20 = length;
                                aSTNodeArr = matchingNodes;
                                this.patternLocator.matchReportReference(aSTNode, iJavaElement2, null, null, typeDeclaration.binding, num2.intValue(), this);
                            } else {
                                i19 = i21;
                                i20 = length;
                                aSTNodeArr = matchingNodes;
                            }
                            i21 = i19 + 1;
                            matchingNodes = aSTNodeArr;
                            length = i20;
                        }
                    } else {
                        for (ASTNode aSTNode2 : matchingNodes) {
                            matchingNodeSet.matchingNodes.removeKey(aSTNode2);
                        }
                    }
                }
                if ((typeDeclaration.bits & 512) != 0) {
                    TypeReference typeReference2 = typeDeclaration.allocation.type;
                    if (typeReference2 != null && (num = (Integer) matchingNodeSet.matchingNodes.removeKey(typeReference2)) != null && z10) {
                        this.patternLocator.matchReportReference(typeReference2, iJavaElement2, null, null, typeDeclaration.binding, num.intValue(), this);
                    }
                } else {
                    TypeReference typeReference3 = typeDeclaration.superclass;
                    if (typeReference3 != null) {
                        reportMatchingSuper(typeReference3, iJavaElement2, typeDeclaration.binding, matchingNodeSet, z10);
                        Annotation[][] annotationArr3 = typeReference3.annotations;
                        int length2 = annotationArr3 == null ? 0 : annotationArr3.length;
                        int i22 = 0;
                        while (i22 < length2) {
                            Annotation[] annotationArr4 = typeReference3.annotations[i22];
                            if (annotationArr4 == null) {
                                i15 = i22;
                                i16 = length2;
                                typeReference = typeReference3;
                            } else {
                                i15 = i22;
                                i16 = length2;
                                typeReference = typeReference3;
                                reportMatching(annotationArr4, iJavaElement2, (IJavaElement[]) null, typeDeclaration.binding, matchingNodeSet, z10, encloses);
                            }
                            i22 = i15 + 1;
                            length2 = i16;
                            typeReference3 = typeReference;
                        }
                    }
                    TypeReference[] typeReferenceArr2 = typeDeclaration.superInterfaces;
                    if (typeReferenceArr2 != null) {
                        int length3 = typeReferenceArr2.length;
                        int i23 = 0;
                        while (i23 < length3) {
                            int i24 = i23;
                            reportMatchingSuper(typeReferenceArr2[i23], iJavaElement2, typeDeclaration.binding, matchingNodeSet, z10);
                            TypeReference typeReference4 = typeDeclaration.superInterfaces[i24];
                            Annotation[][] annotationArr5 = typeReference4 != null ? typeReference4.annotations : null;
                            if (annotationArr5 != null) {
                                int length4 = annotationArr5.length;
                                int i25 = 0;
                                while (i25 < length4) {
                                    Annotation[] annotationArr6 = annotationArr5[i25];
                                    if (annotationArr6 == null) {
                                        i12 = i25;
                                        i13 = length4;
                                        annotationArr = annotationArr5;
                                        i14 = length3;
                                        typeReferenceArr = typeReferenceArr2;
                                    } else {
                                        i12 = i25;
                                        i13 = length4;
                                        annotationArr = annotationArr5;
                                        i14 = length3;
                                        typeReferenceArr = typeReferenceArr2;
                                        reportMatching(annotationArr6, iJavaElement2, (IJavaElement[]) null, typeDeclaration.binding, matchingNodeSet, z10, encloses);
                                    }
                                    i25 = i12 + 1;
                                    length4 = i13;
                                    annotationArr5 = annotationArr;
                                    length3 = i14;
                                    typeReferenceArr2 = typeReferenceArr;
                                }
                            }
                            i23 = i24 + 1;
                            length3 = length3;
                            typeReferenceArr2 = typeReferenceArr2;
                        }
                    }
                }
                SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
                boolean z11 = sourceTypeBinding == null || typeInHierarchy(sourceTypeBinding);
                boolean z12 = z10 && z11;
                FieldDeclaration[] fieldDeclarationArr2 = typeDeclaration.fields;
                if (fieldDeclarationArr2 != null) {
                    if (matchingNodeSet.matchingNodes.elementSize == 0) {
                        return;
                    }
                    int length5 = fieldDeclarationArr2.length;
                    FieldDeclaration[] fieldDeclarationArr3 = null;
                    int i26 = -1;
                    int i27 = 0;
                    while (i27 < length5) {
                        FieldDeclaration fieldDeclaration = fieldDeclarationArr2[i27];
                        int i28 = fieldDeclaration.endPart2Position;
                        boolean z13 = i28 == 0 || fieldDeclaration.declarationEnd == i28;
                        int i29 = (z13 || i26 != -1) ? i26 : i27;
                        if (i29 >= 0) {
                            if (i27 > i29) {
                                if (fieldDeclarationArr3 == null) {
                                    fieldDeclarationArr3 = new FieldDeclaration[length5 - i27];
                                }
                                fieldDeclarationArr3[(i27 - 1) - i29] = fieldDeclaration;
                            }
                            if (z13) {
                                while (i29 <= i27) {
                                    Integer num3 = (Integer) matchingNodeSet.matchingNodes.removeKey(fieldDeclarationArr2[i29]);
                                    reportMatching(fieldDeclarationArr2[i29], fieldDeclarationArr3, typeDeclaration, iJavaElement2, (num3 == null || !z12) ? -1 : num3.intValue(), z11, matchingNodeSet);
                                    i29++;
                                    length5 = length5;
                                    i27 = i27;
                                    fieldDeclarationArr2 = fieldDeclarationArr2;
                                }
                                i17 = i27;
                                i18 = length5;
                                fieldDeclarationArr = fieldDeclarationArr2;
                                fieldDeclarationArr3 = null;
                                i26 = -1;
                            } else {
                                i17 = i27;
                                i18 = length5;
                                fieldDeclarationArr = fieldDeclarationArr2;
                                i26 = i29;
                            }
                        } else {
                            i17 = i27;
                            i18 = length5;
                            fieldDeclarationArr = fieldDeclarationArr2;
                            Integer num4 = (Integer) matchingNodeSet.matchingNodes.removeKey(fieldDeclaration);
                            reportMatching(fieldDeclaration, (FieldDeclaration[]) null, typeDeclaration, iJavaElement2, (num4 == null || !z12) ? -1 : num4.intValue(), z11, matchingNodeSet);
                            i26 = i29;
                        }
                        i27 = i17 + 1;
                        length5 = i18;
                        fieldDeclarationArr2 = fieldDeclarationArr;
                    }
                }
                AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration.methods;
                if (abstractMethodDeclarationArr != null) {
                    if (matchingNodeSet.matchingNodes.elementSize == 0) {
                        return;
                    }
                    for (AbstractMethodDeclaration abstractMethodDeclaration : abstractMethodDeclarationArr) {
                        Integer num5 = (Integer) matchingNodeSet.matchingNodes.removeKey(abstractMethodDeclaration);
                        reportMatching(abstractMethodDeclaration, typeDeclaration, iJavaElement2, (num5 == null || !z12) ? -1 : num5.intValue(), z11, matchingNodeSet);
                    }
                }
                TypeDeclaration[] typeDeclarationArr = typeDeclaration.memberTypes;
                if (typeDeclarationArr != null) {
                    for (TypeDeclaration typeDeclaration2 : typeDeclarationArr) {
                        SimpleLookupTable simpleLookupTable = matchingNodeSet.matchingNodes;
                        if (simpleLookupTable.elementSize == 0) {
                            return;
                        }
                        Integer num6 = (Integer) simpleLookupTable.removeKey(typeDeclaration2);
                        reportMatching(typeDeclaration2, iJavaElement2, (num6 == null || !z12) ? -1 : num6.intValue(), matchingNodeSet, 1);
                    }
                    return;
                }
                return;
            }
            IMember iMember = (IMember) iJavaElement;
            if (iMember.isBinary()) {
                IOpenable openable = iJavaElement.getOpenable();
                if (openable instanceof ClassFile) {
                    BinaryType binaryType = (BinaryType) ((ClassFile) openable).getType();
                    String oSString = binaryType.getPath().toOSString();
                    if ((typeDeclaration.bits & 512) != 0 && oSString != null && (oSString.endsWith("jar") || oSString.endsWith(".class"))) {
                        type = binaryType.getPackageFragment().getOrdinaryClassFile(String.valueOf(binaryType.getTypeQualifiedName()) + "$" + Integer.toString(i11) + ".class").getType();
                        if (type == null) {
                            type = ((IOrdinaryClassFile) this.currentPossibleMatch.openable).getType();
                        }
                    }
                }
                type = null;
                if (type == null) {
                }
            } else {
                type = iMember.getType(new String(typeDeclaration.name), i11);
            }
        }
        iJavaElement2 = type;
        if (iJavaElement2 != null) {
        }
    }

    public void reportMatching(TypeParameter[] typeParameterArr, IJavaElement iJavaElement, IJavaElement iJavaElement2, Binding binding, MatchingNodeSet matchingNodeSet) throws CoreException {
        int i10;
        TypeReference typeReference;
        ParameterizedSingleTypeReference parameterizedSingleTypeReference;
        TypeReference[] typeReferenceArr;
        TypeReference typeReference2;
        int i11;
        int i12;
        ParameterizedSingleTypeReference parameterizedSingleTypeReference2;
        TypeReference typeReference3;
        ParameterizedSingleTypeReference parameterizedSingleTypeReference3;
        TypeReference[] typeReferenceArr2;
        int i13;
        ParameterizedSingleTypeReference parameterizedSingleTypeReference4;
        TypeReference typeReference4;
        TypeParameter[] typeParameterArr2 = typeParameterArr;
        if (typeParameterArr2 == null) {
            return;
        }
        int length = typeParameterArr2.length;
        int i14 = 0;
        while (i14 < length) {
            TypeParameter typeParameter = typeParameterArr2[i14];
            if (typeParameter != null) {
                Integer num = (Integer) matchingNodeSet.matchingNodes.removeKey(typeParameter);
                if (num != null && num.intValue() > -1 && encloses(iJavaElement)) {
                    report(this.patternLocator.newDeclarationMatch(typeParameter, iJavaElement, binding, num.intValue(), (typeParameter.sourceEnd - typeParameter.sourceStart) + 1, this));
                }
                boolean z10 = (this.matchContainer & 15) != 0;
                Annotation[] annotationArr = typeParameter.annotations;
                if (annotationArr != null) {
                    reportMatching(annotationArr, iJavaElement, (IJavaElement[]) null, typeParameter.binding, matchingNodeSet, z10, encloses(iJavaElement));
                }
                TypeReference typeReference5 = typeParameter.type;
                if (typeReference5 != null) {
                    reportMatching(typeReference5.annotations, iJavaElement, typeParameter.binding, matchingNodeSet, z10);
                    Integer num2 = (Integer) matchingNodeSet.matchingNodes.removeKey(typeParameter.type);
                    if (num2 != null) {
                        this.patternLocator.matchReportReference(typeParameter.type, iJavaElement, createHandle(typeParameter, iJavaElement), null, binding, num2.intValue(), this);
                    }
                    TypeReference typeReference6 = typeParameter.type;
                    if ((typeReference6 instanceof ParameterizedSingleTypeReference) && (typeReferenceArr2 = (parameterizedSingleTypeReference3 = (ParameterizedSingleTypeReference) typeReference6).typeArguments) != null) {
                        int i15 = 0;
                        for (int length2 = typeReferenceArr2.length; i15 < length2; length2 = i13) {
                            TypeReference typeReference7 = parameterizedSingleTypeReference3.typeArguments[i15];
                            int i16 = i15;
                            reportMatching(typeReference7.annotations, iJavaElement, typeReference7.resolvedType, matchingNodeSet, z10);
                            Integer num3 = (Integer) matchingNodeSet.matchingNodes.removeKey(typeReference7);
                            if (num3 != null) {
                                i13 = length2;
                                parameterizedSingleTypeReference4 = parameterizedSingleTypeReference3;
                                this.patternLocator.matchReportReference(typeReference7, iJavaElement, createHandle(typeParameter, iJavaElement), null, binding, num3.intValue(), this);
                            } else {
                                i13 = length2;
                                parameterizedSingleTypeReference4 = parameterizedSingleTypeReference3;
                            }
                            if ((typeReference7 instanceof Wildcard) && (typeReference4 = ((Wildcard) typeReference7).bound) != null) {
                                reportMatching(typeReference4.annotations, iJavaElement, typeReference4.resolvedType, matchingNodeSet, z10);
                                Integer num4 = (Integer) matchingNodeSet.matchingNodes.removeKey(typeReference4);
                                if (num4 != null) {
                                    this.patternLocator.matchReportReference(typeReference4, iJavaElement, createHandle(typeParameter, iJavaElement), null, binding, num4.intValue(), this);
                                }
                            }
                            i15 = i16 + 1;
                            parameterizedSingleTypeReference3 = parameterizedSingleTypeReference4;
                        }
                    }
                }
                TypeReference[] typeReferenceArr3 = typeParameter.bounds;
                if (typeReferenceArr3 != null) {
                    int length3 = typeReferenceArr3.length;
                    for (int i17 = 0; i17 < length3; i17 = i10 + 1) {
                        TypeReference typeReference8 = typeParameter.bounds[i17];
                        Annotation[][] annotationArr2 = typeReference8.annotations;
                        if (annotationArr2 != null) {
                            reportMatching(annotationArr2, iJavaElement, binding, matchingNodeSet, z10);
                        }
                        Integer num5 = (Integer) matchingNodeSet.matchingNodes.removeKey(typeReference8);
                        if (num5 != null) {
                            i10 = i17;
                            this.patternLocator.matchReportReference(typeReference8, iJavaElement, createHandle(typeParameter, iJavaElement), null, binding, num5.intValue(), this);
                            typeReference = typeReference8;
                        } else {
                            i10 = i17;
                            typeReference = typeReference8;
                        }
                        if ((typeReference instanceof ParameterizedSingleTypeReference) && (typeReferenceArr = (parameterizedSingleTypeReference = (ParameterizedSingleTypeReference) typeReference).typeArguments) != null) {
                            int i18 = 0;
                            for (int length4 = typeReferenceArr.length; i18 < length4; length4 = i12) {
                                TypeReference typeReference9 = parameterizedSingleTypeReference.typeArguments[i18];
                                Annotation[][] annotationArr3 = typeReference9.annotations;
                                if (annotationArr3 != null) {
                                    typeReference2 = typeReference9;
                                    i11 = i18;
                                    reportMatching(annotationArr3, iJavaElement, binding, matchingNodeSet, z10);
                                } else {
                                    typeReference2 = typeReference9;
                                    i11 = i18;
                                }
                                Integer num6 = (Integer) matchingNodeSet.matchingNodes.removeKey(typeReference2);
                                if (num6 != null) {
                                    i12 = length4;
                                    parameterizedSingleTypeReference2 = parameterizedSingleTypeReference;
                                    this.patternLocator.matchReportReference(typeReference2, iJavaElement, createHandle(typeParameter, iJavaElement), null, binding, num6.intValue(), this);
                                } else {
                                    i12 = length4;
                                    parameterizedSingleTypeReference2 = parameterizedSingleTypeReference;
                                }
                                if ((typeReference2 instanceof Wildcard) && (typeReference3 = ((Wildcard) typeReference2).bound) != null) {
                                    Annotation[][] annotationArr4 = typeReference3.annotations;
                                    if (annotationArr4 != null) {
                                        reportMatching(annotationArr4, iJavaElement, binding, matchingNodeSet, z10);
                                    }
                                    Integer num7 = (Integer) matchingNodeSet.matchingNodes.removeKey(typeReference3);
                                    if (num7 != null) {
                                        this.patternLocator.matchReportReference(typeReference3, iJavaElement, createHandle(typeParameter, iJavaElement), null, binding, num7.intValue(), this);
                                    }
                                }
                                i18 = i11 + 1;
                                parameterizedSingleTypeReference = parameterizedSingleTypeReference2;
                            }
                        }
                    }
                }
            }
            i14++;
            typeParameterArr2 = typeParameterArr;
        }
    }
}
