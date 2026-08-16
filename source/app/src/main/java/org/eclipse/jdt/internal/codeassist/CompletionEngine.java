package org.eclipse.jdt.internal.codeassist;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.function.Predicate;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.CompletionProposal;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeHierarchy;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.core.search.SearchRequestor;
import org.eclipse.jdt.internal.codeassist.MissingTypesGuesser;
import org.eclipse.jdt.internal.codeassist.UnresolvedReferenceNameFinder;
import org.eclipse.jdt.internal.codeassist.complete.AssistNodeParentAnnotationArrayInitializer;
import org.eclipse.jdt.internal.codeassist.complete.CompletionJavadoc;
import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeDetector;
import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnAnnotationOfType;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnArgumentName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnBranchStatementLabel;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnClassLiteralAccess;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnExplicitConstructorCall;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnFieldName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnFieldType;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnImportReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadoc;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocAllocationExpression;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocFieldReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocMessageSend;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocParamNameReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocSingleTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocTag;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocTypeParamReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnKeyword;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnKeyword3;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnKeywordModuleDeclaration;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnKeywordModuleInfo;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnLocalName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMarkerAnnotationName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMemberAccess;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMemberValueName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMessageSend;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMessageSendName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMethodName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMethodReturnType;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnModuleDeclaration;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnModuleReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnPackageReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnPackageVisibilityReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnProvidesImplementationsQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnProvidesImplementationsSingleTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnProvidesInterfacesQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnProvidesInterfacesSingleTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnQualifiedAllocationExpression;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnQualifiedNameReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnReferenceExpressionName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnSingleNameReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnSingleTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnStringLiteral;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnUsesQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnUsesSingleTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionParser;
import org.eclipse.jdt.internal.codeassist.complete.CompletionScanner;
import org.eclipse.jdt.internal.codeassist.complete.InvalidCursorLocation;
import org.eclipse.jdt.internal.codeassist.impl.AssistOptions;
import org.eclipse.jdt.internal.codeassist.impl.AssistParser;
import org.eclipse.jdt.internal.codeassist.impl.Engine;
import org.eclipse.jdt.internal.codeassist.impl.Keywords;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnModuleReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnPackageVisibilityReference;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ArrayReference;
import org.eclipse.jdt.internal.compiler.ast.AssertStatement;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.BinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConditionalExpression;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ExpressionContext;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.ForStatement;
import org.eclipse.jdt.internal.compiler.ast.IfStatement;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.JavadocImplicitTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.NormalAnnotation;
import org.eclipse.jdt.internal.compiler.ast.OpensStatement;
import org.eclipse.jdt.internal.compiler.ast.OperatorExpression;
import org.eclipse.jdt.internal.compiler.ast.PackageVisibilityStatement;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ProvidesStatement;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.RequiresStatement;
import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.ast.SwitchStatement;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.TryStatement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UnaryExpression;
import org.eclipse.jdt.internal.compiler.ast.UnionTypeReference;
import org.eclipse.jdt.internal.compiler.ast.UsesStatement;
import org.eclipse.jdt.internal.compiler.ast.WhileStatement;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ImportBinding;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import org.eclipse.jdt.internal.compiler.parser.JavadocTagConstants;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.parser.SourceTypeConverter;
import org.eclipse.jdt.internal.compiler.parser.TerminalTokens;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.compiler.util.SimpleSetOfCharArray;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.BasicCompilationUnit;
import org.eclipse.jdt.internal.core.BinaryTypeConverter;
import org.eclipse.jdt.internal.core.INamingRequestor;
import org.eclipse.jdt.internal.core.InternalNamingConventions;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementRequestor;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.ModuleSourcePathManager;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.SourceMethod;
import org.eclipse.jdt.internal.core.SourceMethodElementInfo;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.search.matching.IndexBasedJavaSearchEnvironment;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;
import w2.C15883c;

public final class CompletionEngine extends Engine implements ISearchRequestor, TypeConstants, TerminalTokens, RelevanceConstants, SuffixConstants {
    private static final char[] ARG0;
    private static final char[] ARG1;
    private static final char[] ARG2;
    private static final char[] ARG3;
    private static final char[][] ARGS1;
    private static final char[][] ARGS2;
    private static final char[][] ARGS3;
    private static final char[][] ARGS4;
    static final BaseTypeBinding[] BASE_TYPES;
    static final int BASE_TYPES_LENGTH;
    static final int BASE_TYPES_WITHOUT_VOID_LENGTH;
    static final char[][] BASE_TYPE_NAMES;
    static final char[][] BASE_TYPE_NAMES_WITHOUT_VOID;
    private static final int CHECK_CANCEL_FREQUENCY = 50;
    private static final char[] CLASS;
    public static boolean DEBUG = false;
    private static final char[] DEFAULT_CONSTRUCTOR_SIGNATURE;
    private static final char[] DOT;
    private static final char[] ERROR_PATTERN;
    private static final char[] EXCEPTION_PATTERN;
    private static final char[] EXTENDS;
    static InvocationSite FakeInvocationSite = null;
    private static final char[] IMPORT;
    private static final char[] IMPORT_END;
    private static final char[] INT;
    private static final char[] INT_SIGNATURE;
    private static final char[] JAVA_LANG_NAME;
    private static final char[] JAVA_LANG_OBJECT_SIGNATURE;
    private static final int NONE = 0;
    public static final boolean NO_TYPE_COMPLETION_ON_EMPTY_TOKEN = false;
    private static final char[] ON_DEMAND;
    public static boolean PERF = false;
    private static final char[] SEMICOLON;
    private static final char[] STATIC;
    private static final int SUBTYPE = 2;
    private static final char[] SUPER;
    private static final int SUPERTYPE = 1;
    static final char[] THIS;
    static final char[] THROWS;
    private static final char[] VALUE;
    private static final char[] VARARGS;
    private static final char[] VOID;
    static final char[] classField;
    static final char[] cloneMethod;
    static final char[] lengthField;
    private ObjectVector acceptedConstructors;
    private ObjectVector acceptedTypes;
    int actualCompletionPosition;
    boolean assistNodeCanBeSingleMemberAnnotation;
    int assistNodeInJavadoc;
    boolean assistNodeIsAnnotation;
    boolean assistNodeIsClass;
    boolean assistNodeIsConstructor;
    boolean assistNodeIsEnum;
    boolean assistNodeIsException;
    boolean assistNodeIsExtendedType;
    boolean assistNodeIsInsideCase;
    boolean assistNodeIsInterface;
    boolean assistNodeIsInterfaceExcludingAnnotation;
    boolean assistNodeIsString;
    boolean assistNodeIsSuperType;
    char[] completionToken;
    String complianceLevel;
    int endPosition;
    TypeBinding[] expectedTypes;
    int expectedTypesFilter;
    int expectedTypesPtr;
    ImportBinding[] favoriteReferenceBindings;
    char[] fileName;
    Binding[] forbbidenBindings;
    int forbbidenBindingsPtr;
    private int foundConstructorsCount;
    private int foundTypesCount;
    boolean hasComputedExpectedArrayTypes;
    boolean hasExpectedArrayTypes;
    boolean hasJavaLangObjectAsExpectedType;
    boolean insideQualifiedReference;
    SimpleSetOfCharArray invalidPackageNames;
    IJavaProject javaProject;
    int javadocTagPosition;
    HashtableOfObject knownModules;
    HashtableOfObject knownPkgs;
    HashtableOfObject knownTypes;
    ModuleDeclaration moduleDeclaration;
    IProgressMonitor monitor;
    private INameEnvironment noCacheNameEnvironment;
    boolean noProposal;
    int offset;
    public int openedBinaryTypes;
    WorkingCopyOwner owner;
    CompletionParser parser;
    CategorizedProblem problem;
    CompletionProblemFactory problemFactory;
    ProblemReporter problemReporter;
    char[] qualifiedCompletionToken;
    CompletionRequestor requestor;
    boolean resolvingImports;
    boolean resolvingStaticImports;
    boolean skipDefaultPackage;
    char[] source;
    String sourceLevel;
    int startPosition;
    long targetedElement;
    int tokenEnd;
    int tokenStart;
    public HashtableOfObject typeCache;
    ITypeRoot typeRoot;
    Binding[] uninterestingBindings;
    int uninterestingBindingsFilter;
    int uninterestingBindingsPtr;
    SimpleSetOfCharArray validPackageNames;
    private static final char[] KNOWN_TYPE_WITH_UNKNOWN_CONSTRUCTORS = new char[0];
    private static final char[] KNOWN_TYPE_WITH_KNOWN_CONSTRUCTORS = new char[0];
    private static final char[] ARG = "arg".toCharArray();

    public class C1ImplSearchRequestor extends SearchRequestor {
        LinkedHashSet<String> filter;
        String prefix;
        public List<IType> types = new ArrayList();

        public C1ImplSearchRequestor(char[] cArr, LinkedHashSet<String> linkedHashSet) {
            this.prefix = cArr == CharOperation.ALL_PREFIX ? null : new String(cArr);
            this.filter = linkedHashSet;
        }

        @Override
        public void acceptSearchMatch(SearchMatch searchMatch) throws CoreException {
            IJavaElement iJavaElement = (IJavaElement) searchMatch.getElement();
            if (iJavaElement.getElementType() == 7) {
                IType iType = (IType) iJavaElement;
                if (this.prefix != null) {
                    String elementName = iType.getPackageFragment().getElementName();
                    String concat = elementName != null ? elementName.concat(".").concat(iType.getElementName()) : iType.getElementName();
                    if (this.filter.contains(concat)) {
                        return;
                    }
                    if (!concat.startsWith(this.prefix) && !iType.getElementName().startsWith(this.prefix)) {
                        return;
                    }
                }
                this.types.add(iType);
            }
        }
    }

    public static class AcceptedConstructor {
        public int accessibility;
        public int extraFlags;
        public int modifiers;
        public char[] packageName;
        public int parameterCount;
        public char[][] parameterNames;
        public char[][] parameterTypes;
        public char[] signature;
        public char[] simpleTypeName;
        public int typeModifiers;
        public boolean proposeType = false;
        public boolean proposeConstructor = false;
        public char[] fullyQualifiedName = null;
        public boolean mustBeQualified = false;

        public AcceptedConstructor(int i10, char[] cArr, int i11, char[] cArr2, char[][] cArr3, char[][] cArr4, int i12, char[] cArr5, int i13, int i14) {
            this.modifiers = i10;
            this.simpleTypeName = cArr;
            this.parameterCount = i11;
            this.signature = cArr2;
            this.parameterTypes = cArr3;
            this.parameterNames = cArr4;
            this.typeModifiers = i12;
            this.packageName = cArr5;
            this.extraFlags = i13;
            this.accessibility = i14;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
            stringBuffer.append(this.packageName);
            stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            stringBuffer.append(this.simpleTypeName);
            stringBuffer.append(JavaElement.JEM_ANNOTATION);
            return stringBuffer.toString();
        }
    }

    public static class AcceptedType {
        public int accessibility;
        public char[][] enclosingTypeNames;
        public int modifiers;
        public char[] packageName;
        public char[] simpleTypeName;
        public boolean mustBeQualified = false;
        public char[] fullyQualifiedName = null;
        public char[] qualifiedTypeName = null;

        public AcceptedType(char[] cArr, char[] cArr2, char[][] cArr3, int i10, int i11) {
            this.packageName = cArr;
            this.simpleTypeName = cArr2;
            this.enclosingTypeNames = cArr3;
            this.modifiers = i10;
            this.accessibility = i11;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
            stringBuffer.append(this.packageName);
            stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            stringBuffer.append(this.simpleTypeName);
            stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            stringBuffer.append(CharOperation.concatWith(this.enclosingTypeNames, '.'));
            stringBuffer.append(JavaElement.JEM_ANNOTATION);
            return stringBuffer.toString();
        }
    }

    static {
        char[] charArray = "arg0".toCharArray();
        ARG0 = charArray;
        char[] charArray2 = "arg1".toCharArray();
        ARG1 = charArray2;
        char[] charArray3 = "arg2".toCharArray();
        ARG2 = charArray3;
        char[] charArray4 = "arg3".toCharArray();
        ARG3 = charArray4;
        ARGS1 = new char[][]{charArray};
        ARGS2 = new char[][]{charArray, charArray2};
        ARGS3 = new char[][]{charArray, charArray2, charArray3};
        ARGS4 = new char[][]{charArray, charArray2, charArray3, charArray4};
        ERROR_PATTERN = "*error*".toCharArray();
        EXCEPTION_PATTERN = "*exception*".toCharArray();
        SEMICOLON = new char[]{';'};
        CLASS = "Class".toCharArray();
        VOID = "void".toCharArray();
        INT = "int".toCharArray();
        INT_SIGNATURE = new char[]{'I'};
        VALUE = "value".toCharArray();
        EXTENDS = "extends".toCharArray();
        SUPER = "super".toCharArray();
        DEFAULT_CONSTRUCTOR_SIGNATURE = "()V".toCharArray();
        DOT = ".".toCharArray();
        VARARGS = "...".toCharArray();
        IMPORT = "import".toCharArray();
        STATIC = "static".toCharArray();
        ON_DEMAND = ".*".toCharArray();
        IMPORT_END = ";\n".toCharArray();
        char[][] cArr = TypeConstants.JAVA_LANG;
        JAVA_LANG_OBJECT_SIGNATURE = createTypeSignature(CharOperation.concatWith(cArr, '.'), TypeConstants.OBJECT);
        JAVA_LANG_NAME = CharOperation.concatWith(cArr, '.');
        BaseTypeBinding[] baseTypeBindingArr = {TypeBinding.BOOLEAN, TypeBinding.BYTE, TypeBinding.CHAR, TypeBinding.DOUBLE, TypeBinding.FLOAT, TypeBinding.INT, TypeBinding.LONG, TypeBinding.SHORT, TypeBinding.VOID};
        BASE_TYPES = baseTypeBindingArr;
        int length = baseTypeBindingArr.length;
        BASE_TYPES_LENGTH = length;
        BASE_TYPE_NAMES = new char[length];
        int length2 = baseTypeBindingArr.length - 1;
        BASE_TYPES_WITHOUT_VOID_LENGTH = length2;
        BASE_TYPE_NAMES_WITHOUT_VOID = new char[length2];
        for (int i10 = 0; i10 < BASE_TYPES_LENGTH; i10++) {
            BASE_TYPE_NAMES[i10] = BASE_TYPES[i10].simpleName;
        }
        for (int i11 = 0; i11 < BASE_TYPES_WITHOUT_VOID_LENGTH; i11++) {
            BASE_TYPE_NAMES_WITHOUT_VOID[i11] = BASE_TYPES[i11].simpleName;
        }
        classField = "class".toCharArray();
        lengthField = "length".toCharArray();
        cloneMethod = "clone".toCharArray();
        THIS = "this".toCharArray();
        THROWS = "throws".toCharArray();
        FakeInvocationSite = new InvocationSite() {
            @Override
            public void acceptPotentiallyCompatibleMethods(MethodBinding[] methodBindingArr) {
            }

            @Override
            public boolean checkingPotentialCompatibility() {
                return false;
            }

            @Override
            public InferenceContext18 freshInferenceContext(Scope scope) {
                return null;
            }

            @Override
            public TypeBinding[] genericTypeArguments() {
                return null;
            }

            @Override
            public ExpressionContext getExpressionContext() {
                return ExpressionContext.VANILLA_CONTEXT;
            }

            @Override
            public TypeBinding invocationTargetType() {
                return null;
            }

            @Override
            public boolean isQualifiedSuper() {
                return false;
            }

            @Override
            public boolean isSuperAccess() {
                return false;
            }

            @Override
            public boolean isTypeAccess() {
                return false;
            }

            @Override
            public boolean receiverIsImplicitThis() {
                return false;
            }

            @Override
            public void setActualReceiverType(ReferenceBinding referenceBinding) {
            }

            @Override
            public void setDepth(int i12) {
            }

            @Override
            public void setFieldIndex(int i12) {
            }

            @Override
            public int sourceEnd() {
                return 0;
            }

            @Override
            public int sourceStart() {
                return 0;
            }
        };
    }

    public CompletionEngine(SearchableEnvironment searchableEnvironment, CompletionRequestor completionRequestor, Map map, IJavaProject iJavaProject, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) {
        super(map);
        this.expectedTypesPtr = -1;
        this.expectedTypes = new TypeBinding[1];
        this.hasJavaLangObjectAsExpectedType = false;
        this.hasExpectedArrayTypes = false;
        this.hasComputedExpectedArrayTypes = false;
        this.uninterestingBindingsPtr = -1;
        this.uninterestingBindings = new Binding[1];
        this.forbbidenBindingsPtr = -1;
        this.forbbidenBindings = new Binding[1];
        this.assistNodeInJavadoc = 0;
        this.assistNodeCanBeSingleMemberAnnotation = false;
        this.assistNodeIsInsideCase = false;
        this.assistNodeIsString = false;
        this.skipDefaultPackage = false;
        this.resolvingImports = false;
        this.resolvingStaticImports = false;
        this.insideQualifiedReference = false;
        this.noProposal = true;
        this.problem = null;
        this.fileName = null;
        this.validPackageNames = new SimpleSetOfCharArray(10);
        this.invalidPackageNames = new SimpleSetOfCharArray(1);
        this.knownModules = new HashtableOfObject(10);
        this.knownPkgs = new HashtableOfObject(10);
        this.knownTypes = new HashtableOfObject(10);
        this.javaProject = iJavaProject;
        this.requestor = completionRequestor;
        this.nameEnvironment = searchableEnvironment;
        this.typeCache = new HashtableOfObject(5);
        this.openedBinaryTypes = 0;
        this.sourceLevel = iJavaProject.getOption("org.eclipse.jdt.core.compiler.source", true);
        this.complianceLevel = iJavaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true);
        this.problemFactory = new CompletionProblemFactory(Locale.getDefault());
        this.problemReporter = new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), this.compilerOptions, this.problemFactory);
        this.lookupEnvironment = new LookupEnvironment(this, this.compilerOptions, this.problemReporter, searchableEnvironment);
        this.parser = new CompletionParser(this.problemReporter, this.requestor.isExtendedContextRequired(), iProgressMonitor);
        this.owner = workingCopyOwner;
        this.monitor = iProgressMonitor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01d2 A[Catch: all -> 0x00a2, TryCatch #0 {all -> 0x00a2, blocks: (B:167:0x0022, B:170:0x002e, B:172:0x003b, B:174:0x003f, B:177:0x0049, B:190:0x007e, B:192:0x0082, B:193:0x00aa, B:195:0x00ae, B:197:0x00b6, B:202:0x0123, B:205:0x0104, B:179:0x004e, B:182:0x005c, B:184:0x0062, B:211:0x007c, B:213:0x010f, B:12:0x0131, B:14:0x0135, B:15:0x0138, B:17:0x015b, B:20:0x0170, B:22:0x017c, B:29:0x0197, B:31:0x019d, B:33:0x01a1, B:38:0x01c6, B:40:0x01d2, B:42:0x01d9, B:75:0x01dd, B:78:0x01e7, B:97:0x0272, B:119:0x02e4, B:121:0x02f6, B:123:0x02fc, B:99:0x0279, B:102:0x0289, B:104:0x028f, B:106:0x0295, B:109:0x0299, B:114:0x02a0, B:112:0x02a4, B:125:0x02a7, B:128:0x02b0, B:130:0x02b5, B:133:0x02c5, B:135:0x02cb, B:137:0x02d1, B:140:0x02d5, B:142:0x02db, B:144:0x02df, B:44:0x0312, B:49:0x033a, B:51:0x0353, B:53:0x0359, B:151:0x01ab, B:153:0x01af, B:154:0x01b2, B:156:0x01ba, B:158:0x01be, B:163:0x018c), top: B:11:0x0131 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0312 A[Catch: all -> 0x00a2, TryCatch #0 {all -> 0x00a2, blocks: (B:167:0x0022, B:170:0x002e, B:172:0x003b, B:174:0x003f, B:177:0x0049, B:190:0x007e, B:192:0x0082, B:193:0x00aa, B:195:0x00ae, B:197:0x00b6, B:202:0x0123, B:205:0x0104, B:179:0x004e, B:182:0x005c, B:184:0x0062, B:211:0x007c, B:213:0x010f, B:12:0x0131, B:14:0x0135, B:15:0x0138, B:17:0x015b, B:20:0x0170, B:22:0x017c, B:29:0x0197, B:31:0x019d, B:33:0x01a1, B:38:0x01c6, B:40:0x01d2, B:42:0x01d9, B:75:0x01dd, B:78:0x01e7, B:97:0x0272, B:119:0x02e4, B:121:0x02f6, B:123:0x02fc, B:99:0x0279, B:102:0x0289, B:104:0x028f, B:106:0x0295, B:109:0x0299, B:114:0x02a0, B:112:0x02a4, B:125:0x02a7, B:128:0x02b0, B:130:0x02b5, B:133:0x02c5, B:135:0x02cb, B:137:0x02d1, B:140:0x02d5, B:142:0x02db, B:144:0x02df, B:44:0x0312, B:49:0x033a, B:51:0x0353, B:53:0x0359, B:151:0x01ab, B:153:0x01af, B:154:0x01b2, B:156:0x01ba, B:158:0x01be, B:163:0x018c), top: B:11:0x0131 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x025d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void acceptConstructors(Scope scope) {
        int size;
        char c10;
        ObjectVector objectVector;
        boolean z10;
        ObjectVector objectVector2;
        CompletionEngine completionEngine;
        int i10;
        int i11;
        Object[] objArr;
        char[][] cArr;
        AcceptedConstructor acceptedConstructor;
        AcceptedConstructor acceptedConstructor2;
        int i12;
        int i13;
        char c11;
        boolean z11;
        int i14;
        boolean z12;
        boolean z13;
        int i15;
        int i16;
        boolean z14;
        HashtableOfObject hashtableOfObject;
        char[] cArr2;
        int i17;
        int i18;
        char[] cArr3;
        char[] cArr4;
        char[][] cArr5;
        char[][] cArr6;
        boolean z15;
        int i19;
        CompletionEngine completionEngine2 = this;
        Scope scope2 = scope;
        checkCancel();
        ObjectVector objectVector3 = completionEngine2.acceptedConstructors;
        if (objectVector3 == null || (size = objectVector3.size()) == 0) {
            return;
        }
        HashtableOfObject hashtableOfObject2 = new HashtableOfObject();
        int i20 = 0;
        while (true) {
            c10 = '.';
            objectVector = null;
            z10 = true;
            if (i20 >= size) {
                break;
            }
            try {
                if (i20 % 50 == 0) {
                    checkCancel();
                }
                AcceptedConstructor acceptedConstructor3 = (AcceptedConstructor) completionEngine2.acceptedConstructors.elementAt(i20);
                int i21 = acceptedConstructor3.typeModifiers;
                char[] cArr7 = acceptedConstructor3.packageName;
                char[] cArr8 = acceptedConstructor3.simpleTypeName;
                int i22 = acceptedConstructor3.modifiers;
                int i23 = acceptedConstructor3.parameterCount;
                char[] cArr9 = acceptedConstructor3.signature;
                char[][] cArr10 = acceptedConstructor3.parameterTypes;
                char[][] cArr11 = acceptedConstructor3.parameterNames;
                int i24 = acceptedConstructor3.extraFlags;
                int i25 = acceptedConstructor3.accessibility;
                if (hasArrayTypeAsExpectedSuperTypes() || (i24 & 1) != 0) {
                    i12 = i25;
                    i13 = i20;
                    c11 = '.';
                    z11 = true;
                } else {
                    i12 = i25;
                    i13 = i20;
                    z11 = false;
                    c11 = '.';
                }
                char[] concat = CharOperation.concat(cArr7, cArr8, c11);
                Object obj = completionEngine2.knownTypes.get(concat);
                if (obj != null) {
                    i14 = i24;
                    if (obj != KNOWN_TYPE_WITH_KNOWN_CONSTRUCTORS) {
                        z12 = false;
                    }
                    hashtableOfObject = hashtableOfObject2;
                    i16 = size;
                    completionEngine = completionEngine2;
                    i20 = i13 + 1;
                    completionEngine2 = completionEngine;
                    size = i16;
                    hashtableOfObject2 = hashtableOfObject;
                } else {
                    i14 = i24;
                    completionEngine2.knownTypes.put(concat, KNOWN_TYPE_WITH_UNKNOWN_CONSTRUCTORS);
                    z12 = z11;
                }
                if (completionEngine2.options.checkVisibility && (i22 & 1) == 0) {
                    if ((i22 & 2) != 0) {
                        if (!z12) {
                            hashtableOfObject = hashtableOfObject2;
                            i16 = size;
                            completionEngine = completionEngine2;
                            i20 = i13 + 1;
                            completionEngine2 = completionEngine;
                            size = i16;
                            hashtableOfObject2 = hashtableOfObject;
                        }
                        z13 = false;
                        acceptedConstructor3.fullyQualifiedName = concat;
                        acceptedConstructor3.proposeType = z12;
                        acceptedConstructor3.proposeConstructor = z13;
                        boolean z16 = z13;
                        if (!completionEngine2.importCachesInitialized) {
                            initializeImportCaches();
                        }
                        char[][] cArr12 = cArr11;
                        i15 = 0;
                        while (i15 < completionEngine2.importCacheCount) {
                            char[] cArr13 = cArr9;
                            int i26 = i23;
                            int i27 = i22;
                            char[] cArr14 = cArr7;
                            hashtableOfObject = hashtableOfObject2;
                            i16 = size;
                            char[][] cArr15 = cArr12;
                            char[][] cArr16 = cArr10;
                            char[] cArr17 = cArr8;
                            int i28 = i14;
                            boolean z17 = z16;
                            char[][] cArr18 = completionEngine2.importsCache[i15];
                            if (CharOperation.equals(cArr17, cArr18[0])) {
                                if (z12) {
                                    proposeType(cArr14, cArr17, i21, i12, cArr17, concat, !CharOperation.equals(concat, cArr18[1]), scope);
                                }
                                if (z17 && !Flags.isEnum(i21)) {
                                    boolean equals = CharOperation.equals(concat, cArr18[1]);
                                    boolean z18 = !equals;
                                    if (equals) {
                                        proposeConstructor(cArr17, i26, cArr13, cArr16, cArr15, i27, cArr14, i21, i12, cArr17, concat, z18, scope, i28);
                                        completionEngine = this;
                                    } else {
                                        try {
                                            acceptedConstructor3.mustBeQualified = true;
                                            completionEngine = this;
                                            try {
                                                completionEngine.proposeConstructor(acceptedConstructor3, scope2);
                                            } catch (Throwable th2) {
                                                th = th2;
                                                objectVector2 = null;
                                                completionEngine.acceptedTypes = objectVector2;
                                                throw th;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            completionEngine = this;
                                        }
                                    }
                                    i20 = i13 + 1;
                                    completionEngine2 = completionEngine;
                                    size = i16;
                                    hashtableOfObject2 = hashtableOfObject;
                                }
                                completionEngine = completionEngine2;
                                i20 = i13 + 1;
                                completionEngine2 = completionEngine;
                                size = i16;
                                hashtableOfObject2 = hashtableOfObject;
                            } else {
                                i15++;
                                cArr8 = cArr17;
                                cArr10 = cArr16;
                                cArr9 = cArr13;
                                i23 = i26;
                                i22 = i27;
                                size = i16;
                                cArr7 = cArr14;
                                hashtableOfObject2 = hashtableOfObject;
                                cArr12 = cArr15;
                                i14 = i28;
                                z16 = z17;
                            }
                        }
                        if (CharOperation.equals(completionEngine2.currentPackageName, cArr7)) {
                            if (z12) {
                                int i29 = i14;
                                z15 = z16;
                                i19 = i29;
                                cArr5 = cArr12;
                                cArr6 = cArr10;
                                cArr2 = cArr9;
                                i17 = i23;
                                i18 = i22;
                                cArr3 = cArr8;
                                cArr4 = cArr7;
                                proposeType(cArr7, cArr8, i21, i12, cArr8, concat, false, scope);
                            } else {
                                cArr2 = cArr9;
                                i17 = i23;
                                i18 = i22;
                                cArr3 = cArr8;
                                cArr4 = cArr7;
                                cArr5 = cArr12;
                                cArr6 = cArr10;
                                int i30 = i14;
                                z15 = z16;
                                i19 = i30;
                            }
                            if (z15) {
                                try {
                                    if (!Flags.isEnum(i21)) {
                                        char[] cArr19 = cArr3;
                                        HashtableOfObject hashtableOfObject3 = hashtableOfObject2;
                                        i16 = size;
                                        proposeConstructor(cArr3, i17, cArr2, cArr6, cArr5, i18, cArr4, i21, i12, cArr19, concat, false, scope, i19);
                                        completionEngine = this;
                                        hashtableOfObject = hashtableOfObject3;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    objectVector2 = null;
                                    completionEngine = this;
                                    completionEngine.acceptedTypes = objectVector2;
                                    throw th;
                                }
                            }
                            i16 = size;
                            completionEngine = this;
                            scope2 = scope;
                            hashtableOfObject = hashtableOfObject2;
                            i20 = i13 + 1;
                            completionEngine2 = completionEngine;
                            size = i16;
                            hashtableOfObject2 = hashtableOfObject;
                        } else {
                            char[] cArr20 = cArr7;
                            HashtableOfObject hashtableOfObject4 = hashtableOfObject2;
                            i16 = size;
                            boolean z19 = z16;
                            char[] cArr21 = cArr8;
                            try {
                                AcceptedConstructor acceptedConstructor4 = (AcceptedConstructor) hashtableOfObject4.get(cArr21);
                                if (acceptedConstructor4 == null) {
                                    char[] cArr22 = null;
                                    completionEngine2 = this;
                                    for (int i31 = 0; i31 < completionEngine2.onDemandImportCacheCount; i31++) {
                                        ImportBinding importBinding = completionEngine2.onDemandImportsCache[i31];
                                        char[] concatWith = CharOperation.concatWith(importBinding.compoundName, '.');
                                        if (cArr22 == null) {
                                            cArr22 = cArr20;
                                        }
                                        if (CharOperation.equals(cArr22, concatWith)) {
                                            if (!importBinding.isStatic()) {
                                                hashtableOfObject4.put(cArr21, acceptedConstructor3);
                                            } else if ((i21 & 8) != 0) {
                                                hashtableOfObject4.put(cArr21, acceptedConstructor3);
                                            }
                                            hashtableOfObject = hashtableOfObject4;
                                            completionEngine = completionEngine2;
                                        }
                                    }
                                } else {
                                    completionEngine2 = this;
                                    if (!acceptedConstructor4.mustBeQualified) {
                                        char[] cArr23 = null;
                                        for (int i32 = 0; i32 < completionEngine2.onDemandImportCacheCount; i32++) {
                                            ImportBinding importBinding2 = completionEngine2.onDemandImportsCache[i32];
                                            char[] concatWith2 = CharOperation.concatWith(importBinding2.compoundName, '.');
                                            if (cArr23 == null) {
                                                cArr23 = cArr20;
                                            }
                                            if (CharOperation.equals(cArr23, concatWith2)) {
                                                if (importBinding2.isStatic()) {
                                                    if ((i21 & 8) != 0) {
                                                        z14 = true;
                                                        acceptedConstructor4.mustBeQualified = true;
                                                        break;
                                                    }
                                                } else {
                                                    z14 = true;
                                                    acceptedConstructor4.mustBeQualified = true;
                                                    break;
                                                }
                                            }
                                        }
                                    }
                                }
                                z14 = true;
                                if (z12) {
                                    proposeType(cArr20, cArr21, i21, i12, cArr21, concat, true, scope);
                                }
                                if (!z19 || Flags.isEnum(i21)) {
                                    hashtableOfObject = hashtableOfObject4;
                                    scope2 = scope;
                                } else {
                                    acceptedConstructor3.mustBeQualified = z14;
                                    hashtableOfObject = hashtableOfObject4;
                                    scope2 = scope;
                                    completionEngine2.proposeConstructor(acceptedConstructor3, scope2);
                                }
                                completionEngine = completionEngine2;
                                i20 = i13 + 1;
                                completionEngine2 = completionEngine;
                                size = i16;
                                hashtableOfObject2 = hashtableOfObject;
                            } catch (Throwable th5) {
                                th = th5;
                                completionEngine2 = this;
                                completionEngine = completionEngine2;
                                objectVector2 = null;
                                completionEngine.acceptedTypes = objectVector2;
                                throw th;
                            }
                        }
                        scope2 = scope;
                        i20 = i13 + 1;
                        completionEngine2 = completionEngine;
                        size = i16;
                        hashtableOfObject2 = hashtableOfObject;
                    } else {
                        if (completionEngine2.currentPackageName == null) {
                            initializePackageCache();
                        }
                        if (!CharOperation.equals(cArr7, completionEngine2.currentPackageName) && ((i21 & 1024) == 0 || (i22 & 4) == 0)) {
                            if (!z12) {
                                hashtableOfObject = hashtableOfObject2;
                                i16 = size;
                                completionEngine = completionEngine2;
                                i20 = i13 + 1;
                                completionEngine2 = completionEngine;
                                size = i16;
                                hashtableOfObject2 = hashtableOfObject;
                            }
                            z13 = false;
                            acceptedConstructor3.fullyQualifiedName = concat;
                            acceptedConstructor3.proposeType = z12;
                            acceptedConstructor3.proposeConstructor = z13;
                            boolean z162 = z13;
                            if (!completionEngine2.importCachesInitialized) {
                            }
                            char[][] cArr122 = cArr11;
                            i15 = 0;
                            while (i15 < completionEngine2.importCacheCount) {
                            }
                            if (CharOperation.equals(completionEngine2.currentPackageName, cArr7)) {
                            }
                            scope2 = scope;
                            i20 = i13 + 1;
                            completionEngine2 = completionEngine;
                            size = i16;
                            hashtableOfObject2 = hashtableOfObject;
                        }
                    }
                }
                z13 = true;
                acceptedConstructor3.fullyQualifiedName = concat;
                acceptedConstructor3.proposeType = z12;
                acceptedConstructor3.proposeConstructor = z13;
                boolean z1622 = z13;
                if (!completionEngine2.importCachesInitialized) {
                }
                char[][] cArr1222 = cArr11;
                i15 = 0;
                while (i15 < completionEngine2.importCacheCount) {
                }
                if (CharOperation.equals(completionEngine2.currentPackageName, cArr7)) {
                }
                scope2 = scope;
                i20 = i13 + 1;
                completionEngine2 = completionEngine;
                size = i16;
                hashtableOfObject2 = hashtableOfObject;
            } catch (Throwable th6) {
                th = th6;
            }
        }
        char[][] cArr24 = hashtableOfObject2.keyTable;
        Object[] objArr2 = hashtableOfObject2.valueTable;
        int length = cArr24.length;
        int i33 = 0;
        while (i33 < length) {
            if (i33 % 50 == 0) {
                try {
                    checkCancel();
                } catch (Throwable th7) {
                    th = th7;
                    objectVector2 = objectVector;
                    completionEngine = completionEngine2;
                    completionEngine.acceptedTypes = objectVector2;
                    throw th;
                }
            }
            if (cArr24[i33] == null || (acceptedConstructor = (AcceptedConstructor) objArr2[i33]) == null) {
                i10 = i33;
            } else {
                ObjectVector objectVector4 = objectVector;
                int i34 = 0;
                while (true) {
                    if (i34 >= completionEngine2.onDemandImportCacheCount) {
                        break;
                    }
                    ImportBinding importBinding3 = completionEngine2.onDemandImportsCache[i34];
                    char[] concatWith3 = CharOperation.concatWith(importBinding3.compoundName, c10);
                    char[] cArr25 = objectVector4;
                    if (objectVector4 == null) {
                        cArr25 = acceptedConstructor.packageName;
                    }
                    if (CharOperation.equals(cArr25, concatWith3)) {
                        if (importBinding3.isStatic()) {
                            if ((acceptedConstructor.modifiers & 8) != 0) {
                                acceptedConstructor.mustBeQualified = z10;
                                break;
                            }
                        } else {
                            acceptedConstructor.mustBeQualified = z10;
                            break;
                        }
                    }
                    i34++;
                    acceptedConstructor = acceptedConstructor;
                    length = length;
                    i33 = i33;
                    objArr2 = objArr2;
                    cArr24 = cArr24;
                    z10 = true;
                    c10 = '.';
                    objectVector4 = cArr25;
                }
                if (acceptedConstructor.proposeType) {
                    char[] cArr26 = acceptedConstructor.packageName;
                    char[] cArr27 = acceptedConstructor.simpleTypeName;
                    acceptedConstructor2 = acceptedConstructor;
                    i10 = i33;
                    proposeType(cArr26, cArr27, acceptedConstructor.typeModifiers, acceptedConstructor.accessibility, cArr27, acceptedConstructor.fullyQualifiedName, acceptedConstructor.mustBeQualified, scope);
                } else {
                    acceptedConstructor2 = acceptedConstructor;
                    i10 = i33;
                }
                if (acceptedConstructor2.proposeConstructor && !Flags.isEnum(acceptedConstructor2.modifiers)) {
                    boolean z20 = acceptedConstructor2.mustBeQualified;
                    if (z20) {
                        i11 = length;
                        objArr = objArr2;
                        cArr = cArr24;
                        completionEngine2.proposeConstructor(acceptedConstructor2, scope2);
                    } else {
                        char[] cArr28 = acceptedConstructor2.simpleTypeName;
                        i11 = length;
                        objArr = objArr2;
                        cArr = cArr24;
                        proposeConstructor(cArr28, acceptedConstructor2.parameterCount, acceptedConstructor2.signature, acceptedConstructor2.parameterTypes, acceptedConstructor2.parameterNames, acceptedConstructor2.modifiers, acceptedConstructor2.packageName, acceptedConstructor2.typeModifiers, acceptedConstructor2.accessibility, cArr28, acceptedConstructor2.fullyQualifiedName, z20, scope, acceptedConstructor2.extraFlags);
                        completionEngine2 = this;
                    }
                    i33 = i10 + 1;
                    length = i11;
                    objArr2 = objArr;
                    cArr24 = cArr;
                    z10 = true;
                    objectVector = null;
                    c10 = '.';
                }
            }
            i11 = length;
            objArr = objArr2;
            cArr = cArr24;
            i33 = i10 + 1;
            length = i11;
            objArr2 = objArr;
            cArr24 = cArr;
            z10 = true;
            objectVector = null;
            c10 = '.';
        }
        completionEngine2.acceptedTypes = objectVector;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0093 A[Catch: all -> 0x00ad, TryCatch #0 {all -> 0x00ad, blocks: (B:12:0x0053, B:14:0x005a, B:21:0x007f, B:27:0x0093, B:29:0x009e, B:31:0x00a9, B:34:0x00b1, B:37:0x00b8, B:40:0x00c0, B:43:0x00c4, B:46:0x00c9, B:47:0x00e8, B:49:0x0110, B:50:0x00d3, B:51:0x00df, B:53:0x011b, B:55:0x011f, B:57:0x0123, B:68:0x0129, B:70:0x0142, B:73:0x014c, B:97:0x01e1, B:75:0x0156, B:78:0x016a, B:80:0x016d, B:82:0x0173, B:84:0x0179, B:86:0x017f, B:89:0x0183, B:92:0x018f, B:94:0x0197, B:98:0x019d, B:101:0x01a7, B:103:0x01ac, B:106:0x01bc, B:108:0x01bf, B:110:0x01c5, B:112:0x01cb, B:114:0x01d1, B:117:0x01d5, B:119:0x01db, B:121:0x01df, B:124:0x012c, B:126:0x0134, B:59:0x01ee, B:63:0x0201), top: B:11:0x0053 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void acceptTypes(Scope scope) {
        int size;
        AcceptedType acceptedType;
        ObjectVector objectVector;
        Throwable th2;
        char[] cArr;
        char[] cArr2;
        char[] concat;
        int i10;
        int i11;
        int i12;
        char[] concat2;
        int i13 = 1;
        checkCancel();
        ObjectVector objectVector2 = this.acceptedTypes;
        if (objectVector2 == null || (size = objectVector2.size()) == 0) {
            return;
        }
        HashtableOfObject hashtableOfObject = new HashtableOfObject();
        int i14 = 0;
        while (i14 < size) {
            try {
                if (i14 % 50 == 0) {
                    try {
                        checkCancel();
                    } catch (Throwable th3) {
                        th2 = th3;
                        objectVector = null;
                        this.acceptedTypes = objectVector;
                        throw th2;
                    }
                }
                AcceptedType acceptedType2 = (AcceptedType) this.acceptedTypes.elementAt(i14);
                char[] cArr3 = acceptedType2.packageName;
                char[] cArr4 = acceptedType2.simpleTypeName;
                char[][] cArr5 = acceptedType2.enclosingTypeNames;
                int i15 = acceptedType2.modifiers;
                int i16 = acceptedType2.accessibility;
                if (cArr5 != null && cArr5.length != 0) {
                    cArr2 = CharOperation.concatWith(cArr5, '.');
                    cArr = CharOperation.concat(cArr2, cArr4, '.');
                    concat = CharOperation.concat(cArr3, cArr, '.');
                    if (!this.knownTypes.containsKey(concat)) {
                        this.knownTypes.put(concat, KNOWN_TYPE_WITH_UNKNOWN_CONSTRUCTORS);
                        if (!this.resolvingImports) {
                            if (!this.importCachesInitialized) {
                                initializeImportCaches();
                            }
                            int i17 = 0;
                            while (i17 < this.importCacheCount) {
                                i10 = size;
                                i11 = i14;
                                if (CharOperation.equals(cArr, this.importsCache[i17][0])) {
                                    proposeType(cArr3, cArr4, i15, i16, cArr, concat, !CharOperation.equals(concat, r7[1]), scope);
                                    i12 = 1;
                                    break;
                                } else {
                                    i17++;
                                    i13 = 1;
                                    size = i10;
                                    i14 = i11;
                                }
                            }
                            if ((cArr5 == null || cArr5.length == 0) && CharOperation.equals(this.currentPackageName, cArr3)) {
                                proposeType(cArr3, cArr4, i15, i16, cArr, concat, false, scope);
                            } else {
                                AcceptedType acceptedType3 = (AcceptedType) hashtableOfObject.get(cArr4);
                                if (acceptedType3 == null) {
                                    int i18 = 0;
                                    char[] cArr6 = null;
                                    while (i18 < this.onDemandImportCacheCount) {
                                        ImportBinding importBinding = this.onDemandImportsCache[i18];
                                        i10 = size;
                                        i11 = i14;
                                        char[] concatWith = CharOperation.concatWith(importBinding.compoundName, '.');
                                        if (cArr6 == null) {
                                            cArr6 = (cArr5 == null || cArr5.length == 0) ? cArr3 : CharOperation.concat(cArr3, cArr2, '.');
                                        }
                                        if (CharOperation.equals(cArr6, concatWith)) {
                                            if (importBinding.isStatic()) {
                                                if ((i15 & 8) != 0) {
                                                    acceptedType2.qualifiedTypeName = cArr;
                                                    acceptedType2.fullyQualifiedName = concat;
                                                    hashtableOfObject.put(cArr4, acceptedType2);
                                                    break;
                                                }
                                            } else {
                                                acceptedType2.qualifiedTypeName = cArr;
                                                acceptedType2.fullyQualifiedName = concat;
                                                hashtableOfObject.put(cArr4, acceptedType2);
                                                break;
                                            }
                                        }
                                        i18++;
                                        size = i10;
                                        i14 = i11;
                                    }
                                    i10 = size;
                                    i11 = i14;
                                } else {
                                    i10 = size;
                                    i11 = i14;
                                    if (!acceptedType3.mustBeQualified) {
                                        int i19 = 0;
                                        char[] cArr7 = null;
                                        while (true) {
                                            if (i19 >= this.onDemandImportCacheCount) {
                                                break;
                                            }
                                            ImportBinding importBinding2 = this.onDemandImportsCache[i19];
                                            char[] concatWith2 = CharOperation.concatWith(importBinding2.compoundName, '.');
                                            if (cArr7 == null) {
                                                cArr7 = (cArr5 == null || cArr5.length == 0) ? cArr3 : CharOperation.concat(cArr3, cArr2, '.');
                                            }
                                            if (CharOperation.equals(cArr7, concatWith2)) {
                                                if (importBinding2.isStatic()) {
                                                    if ((i15 & 8) != 0) {
                                                        acceptedType3.mustBeQualified = true;
                                                        break;
                                                    }
                                                } else {
                                                    acceptedType3.mustBeQualified = true;
                                                    break;
                                                }
                                            }
                                            i19++;
                                        }
                                    }
                                }
                                proposeType(cArr3, cArr4, i15, i16, cArr, concat, true, scope);
                                i12 = 1;
                                i14 = i11 + 1;
                                i13 = i12;
                                size = i10;
                            }
                        } else if (this.compilerOptions.complianceLevel < ClassFileConstants.JDK1_4 || cArr3.length != 0) {
                            char[] cArr8 = this.insideQualifiedReference ? cArr4 : concat;
                            if (this.resolvingStaticImports) {
                                if (cArr5 != null && cArr5.length != 0) {
                                    if ((i15 & 8) != 0) {
                                        char[] cArr9 = new char[i13];
                                        cArr9[0] = ';';
                                        concat2 = CharOperation.concat(cArr8, cArr9);
                                    }
                                }
                                char[] cArr10 = new char[i13];
                                cArr10[0] = '.';
                                concat2 = CharOperation.concat(cArr8, cArr10);
                            } else {
                                char[] cArr11 = new char[i13];
                                cArr11[0] = ';';
                                concat2 = CharOperation.concat(cArr8, cArr11);
                            }
                            int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal(cArr3, concat) + computeRelevanceForRestrictions(i16) + computeRelevanceForCaseMatching(this.completionToken, cArr4);
                            this.noProposal = false;
                            if (!this.requestor.isIgnored(9)) {
                                createTypeProposal(cArr3, cArr, i15, i16, concat2, computeBaseRelevance);
                            }
                        }
                    }
                    i12 = i13;
                    i10 = size;
                    i11 = i14;
                    i14 = i11 + 1;
                    i13 = i12;
                    size = i10;
                }
                cArr = cArr4;
                cArr2 = null;
                concat = CharOperation.concat(cArr3, cArr, '.');
                if (!this.knownTypes.containsKey(concat)) {
                }
                i12 = i13;
                i10 = size;
                i11 = i14;
                i14 = i11 + 1;
                i13 = i12;
                size = i10;
            } catch (Throwable th4) {
                th2 = th4;
                objectVector = null;
                this.acceptedTypes = objectVector;
                throw th2;
            }
        }
        char[][] cArr12 = hashtableOfObject.keyTable;
        Object[] objArr = hashtableOfObject.valueTable;
        int length = cArr12.length;
        for (int i20 = 0; i20 < length; i20 += i13) {
            if (i20 % 50 == 0) {
                checkCancel();
            }
            if (cArr12[i20] != null && (acceptedType = (AcceptedType) objArr[i20]) != null) {
                proposeType(acceptedType.packageName, acceptedType.simpleTypeName, acceptedType.modifiers, acceptedType.accessibility, acceptedType.qualifiedTypeName, acceptedType.fullyQualifiedName, acceptedType.mustBeQualified, scope);
            }
        }
        this.acceptedTypes = null;
    }

    private void addExpectedType(TypeBinding typeBinding, Scope scope) {
        if (typeBinding == null || !typeBinding.isValidBinding() || typeBinding == TypeBinding.NULL) {
            return;
        }
        int i10 = 0;
        while (true) {
            int i11 = this.expectedTypesPtr;
            if (i10 > i11) {
                TypeBinding[] typeBindingArr = this.expectedTypes;
                int length = typeBindingArr.length;
                int i12 = i11 + 1;
                this.expectedTypesPtr = i12;
                if (i12 >= length) {
                    TypeBinding[] typeBindingArr2 = new TypeBinding[length * 2];
                    this.expectedTypes = typeBindingArr2;
                    System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, length);
                }
                this.expectedTypes[this.expectedTypesPtr] = typeBinding;
                if (TypeBinding.equalsEquals(typeBinding, scope.getJavaLangObject())) {
                    this.hasJavaLangObjectAsExpectedType = true;
                    return;
                }
                return;
            }
            if (TypeBinding.equalsEquals(this.expectedTypes[i10], typeBinding)) {
                return;
            } else {
                i10++;
            }
        }
    }

    private void addForbiddenBindings(Binding binding) {
        if (binding == null) {
            return;
        }
        Binding[] bindingArr = this.forbbidenBindings;
        int length = bindingArr.length;
        int i10 = this.forbbidenBindingsPtr + 1;
        this.forbbidenBindingsPtr = i10;
        if (i10 >= length) {
            Binding[] bindingArr2 = new Binding[length * 2];
            this.forbbidenBindings = bindingArr2;
            System.arraycopy(bindingArr, 0, bindingArr2, 0, length);
        }
        this.forbbidenBindings[this.forbbidenBindingsPtr] = binding;
    }

    private void addForbiddenBindingsForMemberTypes(TypeDeclaration typeDeclaration) {
        TypeDeclaration[] typeDeclarationArr = typeDeclaration.memberTypes;
        int length = typeDeclarationArr == null ? 0 : typeDeclarationArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            addForbiddenBindings(typeDeclarationArr[i10].binding);
            addForbiddenBindingsForMemberTypes(typeDeclarationArr[i10]);
        }
    }

    private void addUninterestingBindings(Binding binding) {
        if (binding == null) {
            return;
        }
        Binding[] bindingArr = this.uninterestingBindings;
        int length = bindingArr.length;
        int i10 = this.uninterestingBindingsPtr + 1;
        this.uninterestingBindingsPtr = i10;
        if (i10 >= length) {
            Binding[] bindingArr2 = new Binding[length * 2];
            this.uninterestingBindings = bindingArr2;
            System.arraycopy(bindingArr, 0, bindingArr2, 0, length);
        }
        this.uninterestingBindings[this.uninterestingBindingsPtr] = binding;
    }

    private final boolean areParametersCompatibleWith(TypeBinding[] typeBindingArr, TypeBinding[] typeBindingArr2, boolean z10) {
        int length = typeBindingArr.length;
        int length2 = typeBindingArr2.length;
        if (z10) {
            int i10 = length - 1;
            if (length == length2) {
                TypeBinding typeBinding = typeBindingArr[i10];
                TypeBinding typeBinding2 = typeBindingArr2[i10];
                if (TypeBinding.notEquals(typeBinding, typeBinding2) && !typeBinding2.isCompatibleWith(typeBinding)) {
                    return false;
                }
            } else if (length < length2) {
                TypeBinding elementsType = ((ArrayBinding) typeBindingArr[i10]).elementsType();
                for (int i11 = i10; i11 < length2; i11++) {
                    if (TypeBinding.notEquals(elementsType, typeBindingArr2[i11]) && !typeBindingArr2[i11].isCompatibleWith(elementsType)) {
                        return false;
                    }
                }
            } else if (i10 != length2) {
                return false;
            }
            length2 = i10;
        } else if (length != length2) {
            return false;
        }
        for (int i12 = 0; i12 < length2; i12++) {
            if (TypeBinding.notEquals(typeBindingArr[i12], typeBindingArr2[i12]) && !typeBindingArr2[i12].isCompatibleWith(typeBindingArr[i12])) {
                return false;
            }
        }
        return true;
    }

    private boolean assistNodeIsExtendedType(ASTNode aSTNode, ASTNode aSTNode2) {
        if (aSTNode2 == null) {
            return false;
        }
        if (aSTNode2 instanceof TypeDeclaration) {
            return ((TypeDeclaration) aSTNode2).superclass == aSTNode;
        }
        if (aSTNode2 instanceof TypeParameter) {
            return ((TypeParameter) aSTNode2).type == aSTNode;
        }
        if (aSTNode2 instanceof Wildcard) {
            Wildcard wildcard = (Wildcard) aSTNode2;
            if (wildcard.bound == aSTNode && wildcard.kind == 1) {
                return true;
            }
        }
        return false;
    }

    private boolean assistNodeIsInsideCase(ASTNode aSTNode, ASTNode aSTNode2) {
        if (aSTNode2 instanceof SwitchStatement) {
            SwitchStatement switchStatement = (SwitchStatement) aSTNode2;
            CaseStatement[] caseStatementArr = switchStatement.cases;
            int i10 = switchStatement.caseCount;
            for (int i11 = 0; i11 < i10; i11++) {
                if (new CompletionNodeDetector(aSTNode, caseStatementArr[i11]).containsCompletionNode()) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean assistNodeIsInterfaceExcludingAnnotation(ASTNode aSTNode, ASTNode aSTNode2) {
        if (aSTNode2 != null && (aSTNode2 instanceof TypeDeclaration)) {
            TypeReference[] typeReferenceArr = ((TypeDeclaration) aSTNode2).superInterfaces;
            int length = typeReferenceArr == null ? 0 : typeReferenceArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (typeReferenceArr[i10] == aSTNode) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void buildContext(ASTNode aSTNode, ASTNode aSTNode2, CompilationUnitDeclaration compilationUnitDeclaration, Binding binding, Scope scope) {
        InternalCompletionContext internalCompletionContext = new InternalCompletionContext();
        if (this.requestor.isExtendedContextRequired()) {
            internalCompletionContext.setExtendedData(this.typeRoot, compilationUnitDeclaration, this.lookupEnvironment, scope, aSTNode, aSTNode2, this.owner, this.parser);
        }
        int i10 = this.expectedTypesPtr;
        if (i10 > -1) {
            int i11 = i10 + 1;
            char[][] cArr = new char[i11];
            char[][] cArr2 = new char[i11];
            for (int i12 = 0; i12 < i11; i12++) {
                cArr[i12] = Engine.getSignature(this.expectedTypes[i12]);
                cArr2[i12] = this.expectedTypes[i12].computeUniqueKey();
            }
            internalCompletionContext.setExpectedTypesSignatures(cArr);
            internalCompletionContext.setExpectedTypesKeys(cArr2);
        }
        internalCompletionContext.setOffset((this.actualCompletionPosition + 1) - this.offset);
        boolean z10 = aSTNode instanceof CompletionOnJavadoc;
        if (z10) {
            int completionFlags = ((CompletionOnJavadoc) aSTNode).getCompletionFlags();
            this.assistNodeInJavadoc = completionFlags;
            internalCompletionContext.setJavadoc(completionFlags);
        }
        if (!z10) {
            CompletionScanner completionScanner = (CompletionScanner) this.parser.scanner;
            internalCompletionContext.setToken(completionScanner.completionIdentifier);
            int i13 = completionScanner.completedIdentifierStart;
            int i14 = this.offset;
            internalCompletionContext.setTokenRange(i13 - i14, completionScanner.completedIdentifierEnd - i14, completionScanner.endOfEmptyToken - i14);
        } else if (aSTNode instanceof CompletionOnJavadocTag) {
            CompletionOnJavadocTag completionOnJavadocTag = (CompletionOnJavadocTag) aSTNode;
            internalCompletionContext.setToken(CharOperation.concat(new char[]{'@'}, completionOnJavadocTag.token));
            int i15 = completionOnJavadocTag.tagSourceStart;
            int i16 = this.offset;
            internalCompletionContext.setTokenRange(i15 - i16, completionOnJavadocTag.tagSourceEnd - i16, ((CompletionScanner) this.parser.javadocParser.scanner).endOfEmptyToken - i16);
        } else {
            CompletionScanner completionScanner2 = (CompletionScanner) this.parser.javadocParser.scanner;
            internalCompletionContext.setToken(completionScanner2.completionIdentifier);
            int i17 = completionScanner2.completedIdentifierStart;
            int i18 = this.offset;
            internalCompletionContext.setTokenRange(i17 - i18, completionScanner2.completedIdentifierEnd - i18, completionScanner2.endOfEmptyToken - i18);
        }
        if (aSTNode instanceof CompletionOnStringLiteral) {
            internalCompletionContext.setTokenKind(2);
        } else {
            internalCompletionContext.setTokenKind(1);
        }
        buildTokenLocationContext(internalCompletionContext, scope, aSTNode, aSTNode2);
        if (DEBUG) {
            System.out.println(internalCompletionContext.toString());
        }
        this.requestor.acceptContext(internalCompletionContext);
    }

    private void buildTokenLocationContext(InternalCompletionContext internalCompletionContext, Scope scope, ASTNode aSTNode, ASTNode aSTNode2) {
        FieldDeclaration[] fieldDeclarationArr;
        if (scope == null || internalCompletionContext.isInJavadoc()) {
            return;
        }
        if (aSTNode instanceof CompletionOnFieldType) {
            CompletionOnFieldType completionOnFieldType = (CompletionOnFieldType) aSTNode;
            if (completionOnFieldType.isLocalVariable || completionOnFieldType.modifiers != 0) {
                return;
            }
            Annotation[] annotationArr = completionOnFieldType.annotations;
            if (annotationArr == null || annotationArr.length == 0) {
                internalCompletionContext.setTokenLocation(1);
                return;
            }
            return;
        }
        if (aSTNode instanceof CompletionOnMethodReturnType) {
            CompletionOnMethodReturnType completionOnMethodReturnType = (CompletionOnMethodReturnType) aSTNode;
            if (completionOnMethodReturnType.modifiers == 0) {
                Annotation[] annotationArr2 = completionOnMethodReturnType.annotations;
                if (annotationArr2 == null || annotationArr2.length == 0) {
                    internalCompletionContext.setTokenLocation(1);
                    return;
                }
                return;
            }
            return;
        }
        if (aSTNode instanceof CompletionOnSingleTypeReference) {
            if (((CompletionOnSingleTypeReference) aSTNode).isConstructorType) {
                internalCompletionContext.setTokenLocation(4);
                return;
            }
            return;
        }
        if (aSTNode instanceof CompletionOnQualifiedTypeReference) {
            if (((CompletionOnQualifiedTypeReference) aSTNode).isConstructorType) {
                internalCompletionContext.setTokenLocation(4);
                return;
            }
            return;
        }
        if ((aSTNode instanceof CompletionOnKeyword3) && ((CompletionOnKeyword3) aSTNode).afterTryOrCatch()) {
            internalCompletionContext.setTokenLocation(2);
            return;
        }
        ReferenceContext referenceContext = scope.referenceContext();
        if (referenceContext instanceof AbstractMethodDeclaration) {
            AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration) referenceContext;
            if (abstractMethodDeclaration.bodyStart > aSTNode.sourceStart || aSTNode.sourceEnd > abstractMethodDeclaration.bodyEnd || aSTNode2 != null || !(aSTNode instanceof CompletionOnSingleNameReference) || ((CompletionOnSingleNameReference) aSTNode).isPrecededByModifiers) {
                return;
            }
            internalCompletionContext.setTokenLocation(2);
            return;
        }
        if (referenceContext instanceof LambdaExpression) {
            LambdaExpression lambdaExpression = (LambdaExpression) referenceContext;
            if (lambdaExpression.body().sourceStart > aSTNode.sourceStart || aSTNode.sourceEnd > lambdaExpression.body().sourceEnd) {
                return;
            }
            if ((aSTNode2 == null || aSTNode2 == lambdaExpression) && (aSTNode instanceof CompletionOnSingleNameReference) && !((CompletionOnSingleNameReference) aSTNode).isPrecededByModifiers) {
                internalCompletionContext.setTokenLocation(2);
                return;
            }
            return;
        }
        if (!(referenceContext instanceof TypeDeclaration) || (fieldDeclarationArr = ((TypeDeclaration) referenceContext).fields) == null) {
            return;
        }
        for (FieldDeclaration fieldDeclaration : fieldDeclarationArr) {
            if (fieldDeclaration instanceof Initializer) {
                Initializer initializer = (Initializer) fieldDeclaration;
                int i10 = initializer.block.sourceStart;
                int i11 = aSTNode.sourceStart;
                if (i10 <= i11 && i11 < initializer.bodyEnd) {
                    if (aSTNode2 == null && (aSTNode instanceof CompletionOnSingleNameReference) && !((CompletionOnSingleNameReference) aSTNode).isPrecededByModifiers) {
                        internalCompletionContext.setTokenLocation(2);
                        return;
                    }
                    return;
                }
            }
        }
    }

    private boolean checkForCNF(TypeReference typeReference, CompilationUnitDeclaration compilationUnitDeclaration, boolean z10) {
        this.lookupEnvironment.buildTypeBindings(compilationUnitDeclaration, null);
        this.lookupEnvironment.completeTypeBindings(compilationUnitDeclaration, true);
        compilationUnitDeclaration.resolve();
        int i10 = typeReference.sourceStart;
        this.startPosition = i10;
        int i11 = typeReference.sourceEnd;
        if (i11 > i10) {
            i10 = i11;
        }
        this.endPosition = i10;
        CompilationUnitScope compilationUnitScope = compilationUnitDeclaration.scope;
        this.unitScope = compilationUnitScope;
        if (compilationUnitScope != null) {
            if (z10 && CharOperation.concatWithAll(typeReference.getTypeName(), '.').length == 0) {
                buildContext(typeReference, null, compilationUnitDeclaration, null, null);
                char[] cArr = {'*'};
                this.completionToken = cArr;
                findTypesAndPackages(cArr, this.unitScope, true, true, new ObjectVector());
                return true;
            }
            compilationUnitDeclaration.scope.faultInTypes();
        }
        return false;
    }

    private boolean complete(ASTNode aSTNode, ASTNode aSTNode2, ASTNode aSTNode3, CompilationUnitDeclaration compilationUnitDeclaration, Binding binding, Scope scope, boolean z10) {
        setSourceAndTokenRange(aSTNode.sourceStart, aSTNode.sourceEnd);
        Scope computeForbiddenBindings = computeForbiddenBindings(aSTNode, aSTNode2, scope);
        computeUninterestingBindings(aSTNode, aSTNode2, computeForbiddenBindings);
        if (aSTNode2 != null) {
            if (!isValidParent(aSTNode2, aSTNode, computeForbiddenBindings)) {
                return false;
            }
            computeExpectedTypes(aSTNode2, aSTNode, computeForbiddenBindings);
        }
        buildContext(aSTNode, aSTNode2, compilationUnitDeclaration, binding, computeForbiddenBindings);
        boolean z11 = aSTNode instanceof CompletionOnMemberAccess;
        if (z11 && (binding instanceof BaseTypeBinding)) {
            return true;
        }
        if (aSTNode instanceof CompletionOnFieldType) {
            completionOnFieldType(aSTNode, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnMethodReturnType) {
            completionOnMethodReturnType(aSTNode, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnSingleNameReference) {
            completionOnSingleNameReference(aSTNode, aSTNode2, computeForbiddenBindings, z10);
        } else if (aSTNode instanceof CompletionOnProvidesInterfacesQualifiedTypeReference) {
            completionOnProvidesInterfacesQualifiedTypeReference(aSTNode, aSTNode2, binding, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnProvidesInterfacesSingleTypeReference) {
            completionOnProvidesInterfacesSingleTypeReference(aSTNode, aSTNode2, binding, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnProvidesImplementationsQualifiedTypeReference) {
            completionOnProvidesImplementationsQualifiedTypeReference(aSTNode, aSTNode2, binding, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnProvidesImplementationsSingleTypeReference) {
            completionOnProvidesImplementationsSingleTypeReference(aSTNode, aSTNode2, binding, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnSingleTypeReference) {
            completionOnSingleTypeReference(aSTNode, aSTNode2, binding, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnQualifiedNameReference) {
            completionOnQualifiedNameReference(aSTNode, aSTNode3, binding, computeForbiddenBindings, z10);
        } else if (aSTNode instanceof CompletionOnQualifiedTypeReference) {
            completionOnQualifiedTypeReference(aSTNode, aSTNode2, binding, computeForbiddenBindings);
        } else if (z11) {
            completionOnMemberAccess(aSTNode, aSTNode3, binding, computeForbiddenBindings, z10);
        } else if (aSTNode instanceof CompletionOnMessageSend) {
            completionOnMessageSend(aSTNode, binding, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnExplicitConstructorCall) {
            completionOnExplicitConstructorCall(aSTNode, binding, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnQualifiedAllocationExpression) {
            completionOnQualifiedAllocationExpression(aSTNode, binding, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnClassLiteralAccess) {
            completionOnClassLiteralAccess(aSTNode, binding, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnMethodName) {
            completionOnMethodName(aSTNode, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnFieldName) {
            completionOnFieldName(aSTNode, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnLocalName) {
            completionOnLocalOrArgumentName(aSTNode, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnArgumentName) {
            completionOnLocalOrArgumentName(aSTNode, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnKeyword) {
            completionOnKeyword(aSTNode);
        } else if (aSTNode instanceof CompletionOnParameterizedQualifiedTypeReference) {
            completionOnParameterizedQualifiedTypeReference(aSTNode, aSTNode2, binding, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnMarkerAnnotationName) {
            completionOnMarkerAnnotationName(aSTNode, binding, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnMemberValueName) {
            completionOnMemberValueName(aSTNode, aSTNode2, computeForbiddenBindings, z10);
        } else if (aSTNode instanceof CompletionOnBranchStatementLabel) {
            completionOnBranchStatementLabel(aSTNode);
        } else if (aSTNode instanceof CompletionOnMessageSendName) {
            completionOnMessageSendName(aSTNode, binding, computeForbiddenBindings);
        } else if (aSTNode instanceof CompletionOnReferenceExpressionName) {
            completionOnReferenceExpressionName(aSTNode, binding, computeForbiddenBindings);
        } else if ((aSTNode.bits & 32768) != 0) {
            if (aSTNode instanceof CompletionOnJavadocSingleTypeReference) {
                completionOnJavadocSingleTypeReference(aSTNode, computeForbiddenBindings);
            } else if (aSTNode instanceof CompletionOnJavadocQualifiedTypeReference) {
                completionOnJavadocQualifiedTypeReference(aSTNode, binding, computeForbiddenBindings);
            } else if (aSTNode instanceof CompletionOnJavadocFieldReference) {
                completionOnJavadocFieldReference(aSTNode, computeForbiddenBindings);
            } else if (aSTNode instanceof CompletionOnJavadocMessageSend) {
                completionOnJavadocMessageSend(aSTNode, binding, computeForbiddenBindings);
            } else if (aSTNode instanceof CompletionOnJavadocAllocationExpression) {
                completionOnJavadocAllocationExpression(aSTNode, binding, computeForbiddenBindings);
            } else if (aSTNode instanceof CompletionOnJavadocParamNameReference) {
                completionOnJavadocParamNameReference(aSTNode);
            } else if (aSTNode instanceof CompletionOnJavadocTypeParamReference) {
                completionOnJavadocTypeParamReference(aSTNode);
            } else if (aSTNode instanceof CompletionOnJavadocTag) {
                completionOnJavadocTag(aSTNode);
            }
        }
        return true;
    }

    private boolean completeJavadocTagInModuleInfo(CompilationUnitDeclaration compilationUnitDeclaration) {
        if ((this.parser.assistNodeParent instanceof CompletionJavadoc) && compilationUnitDeclaration.isModuleInfo()) {
            try {
                this.lookupEnvironment.buildTypeBindings(compilationUnitDeclaration, null);
                ASTNode aSTNode = this.parser.assistNode;
                if (aSTNode instanceof CompletionOnJavadocTag) {
                    ((CompletionOnJavadocTag) aSTNode).filterPossibleTags(compilationUnitDeclaration.scope);
                }
                throw new CompletionNodeFound(this.parser.assistNode, (Binding) null, compilationUnitDeclaration.scope);
            } catch (CompletionNodeFound e10) {
                if (e10.astNode != null) {
                    if (DEBUG) {
                        PrintStream printStream = System.out;
                        printStream.print("COMPLETION - Completion node : ");
                        printStream.println(e10.astNode.toString());
                        if (this.parser.assistNodeParent != null) {
                            printStream.print("COMPLETION - Parent Node : ");
                            printStream.println(this.parser.assistNodeParent);
                        }
                    }
                    this.lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration;
                    ASTNode aSTNode2 = e10.astNode;
                    CompletionParser completionParser = this.parser;
                    return complete(aSTNode2, completionParser.assistNodeParent, completionParser.enclosingNode, compilationUnitDeclaration, e10.qualifiedBinding, e10.scope, e10.insideTypeAnnotation);
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x005d, code lost:
    
        continue;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean completeOnPackageVisibilityStatements(boolean z10, CompilationUnitDeclaration compilationUnitDeclaration, PackageVisibilityStatement[] packageVisibilityStatementArr) {
        try {
            this.skipDefaultPackage = true;
            boolean z11 = z10;
            for (OpensStatement opensStatement : packageVisibilityStatementArr) {
                if (opensStatement instanceof CompletionOnKeywordModuleInfo) {
                    processModuleKeywordCompletion(compilationUnitDeclaration, opensStatement, (CompletionOnKeyword) opensStatement);
                    return true;
                }
                if (opensStatement.pkgRef instanceof CompletionOnPackageVisibilityReference) {
                    buildContext(opensStatement, null, compilationUnitDeclaration, null, null);
                    if (!this.requestor.isIgnored(8)) {
                        findPackages((CompletionOnPackageVisibilityReference) opensStatement.pkgRef);
                    }
                    debugPrintf();
                    return true;
                }
                ModuleReference[] moduleReferenceArr = opensStatement.targets;
                if (moduleReferenceArr != 0) {
                    HashSet<String> hashSet = new HashSet<>();
                    for (SelectionOnModuleReference selectionOnModuleReference : moduleReferenceArr) {
                        if (selectionOnModuleReference == 0) {
                            break;
                        }
                        if (selectionOnModuleReference instanceof CompletionOnModuleReference) {
                            buildContext(selectionOnModuleReference, null, compilationUnitDeclaration, null, null);
                            if (!this.requestor.isIgnored(29)) {
                                findTargettedModules((CompletionOnModuleReference) selectionOnModuleReference, hashSet);
                            }
                            debugPrintf();
                            return true;
                        }
                        if (selectionOnModuleReference instanceof CompletionOnKeyword) {
                            processModuleKeywordCompletion(compilationUnitDeclaration, selectionOnModuleReference, (CompletionOnKeyword) selectionOnModuleReference);
                            z11 = true;
                        } else {
                            char[] cArr = selectionOnModuleReference.moduleName;
                            if (cArr != null || cArr == CharOperation.NO_CHAR) {
                                hashSet.add(new String(cArr));
                            }
                        }
                    }
                }
            }
            return z11;
        } finally {
            this.skipDefaultPackage = false;
        }
    }

    private void completionOnBranchStatementLabel(ASTNode aSTNode) {
        if (this.requestor.isIgnored(4)) {
            return;
        }
        CompletionOnBranchStatementLabel completionOnBranchStatementLabel = (CompletionOnBranchStatementLabel) aSTNode;
        char[] cArr = completionOnBranchStatementLabel.label;
        this.completionToken = cArr;
        findLabels(cArr, completionOnBranchStatementLabel.possibleLabels);
    }

    private void completionOnClassLiteralAccess(ASTNode aSTNode, Binding binding, Scope scope) {
        if (this.requestor.isIgnored(2)) {
            return;
        }
        CompletionOnClassLiteralAccess completionOnClassLiteralAccess = (CompletionOnClassLiteralAccess) aSTNode;
        setSourceAndTokenRange(completionOnClassLiteralAccess.classStart, completionOnClassLiteralAccess.sourceEnd);
        char[] cArr = completionOnClassLiteralAccess.completionIdentifier;
        this.completionToken = cArr;
        findClassField(cArr, (TypeBinding) binding, scope, null, null, null, false);
    }

    private void completionOnExplicitConstructorCall(ASTNode aSTNode, Binding binding, Scope scope) {
        if (this.requestor.isIgnored(6)) {
            return;
        }
        setSourceAndTokenRange(aSTNode.sourceStart, aSTNode.sourceEnd, false);
        CompletionOnExplicitConstructorCall completionOnExplicitConstructorCall = (CompletionOnExplicitConstructorCall) aSTNode;
        findConstructors((ReferenceBinding) binding, computeTypes(completionOnExplicitConstructorCall.arguments), scope, completionOnExplicitConstructorCall, false, null, null, null, false);
    }

    private void completionOnFieldName(ASTNode aSTNode, Scope scope) {
        if (this.requestor.isIgnored(10)) {
            return;
        }
        CompletionOnFieldName completionOnFieldName = (CompletionOnFieldName) aSTNode;
        FieldBinding[] fields = scope.enclosingSourceType().fields();
        char[][] cArr = new char[fields.length];
        for (int i10 = 0; i10 < fields.length; i10++) {
            cArr[i10] = fields[i10].name;
        }
        char[] cArr2 = completionOnFieldName.realName;
        this.completionToken = cArr2;
        int i11 = completionOnFieldName.modifiers;
        findVariableNames(cArr2, completionOnFieldName.type, cArr, null, (i11 & 8) == 0 ? 2 : (i11 & 16) == 0 ? 1 : 3);
    }

    private void completionOnFieldType(ASTNode aSTNode, Scope scope) {
        CompletionOnFieldType completionOnFieldType = (CompletionOnFieldType) aSTNode;
        CompletionOnSingleTypeReference completionOnSingleTypeReference = (CompletionOnSingleTypeReference) completionOnFieldType.type;
        this.completionToken = completionOnSingleTypeReference.token;
        setSourceAndTokenRange(completionOnSingleTypeReference.sourceStart, completionOnSingleTypeReference.sourceEnd);
        findTypesAndPackages(this.completionToken, scope, true, true, new ObjectVector());
        if (!this.requestor.isIgnored(3)) {
            findKeywordsForMember(this.completionToken, completionOnFieldType.modifiers, aSTNode);
        }
        if (completionOnFieldType.isLocalVariable || completionOnFieldType.modifiers != 0) {
            return;
        }
        SourceTypeBinding enclosingSourceType = scope.enclosingSourceType();
        if (enclosingSourceType.isAnnotationType()) {
            return;
        }
        if (!this.requestor.isIgnored(7)) {
            findMethodDeclarations(this.completionToken, enclosingSourceType, scope, new ObjectVector(), null, null, null, false);
        }
        if (this.requestor.isIgnored(11)) {
            return;
        }
        proposeNewMethod(this.completionToken, enclosingSourceType);
    }

    private void completionOnJavadocAllocationExpression(ASTNode aSTNode, Binding binding, Scope scope) {
        CompletionOnJavadocAllocationExpression completionOnJavadocAllocationExpression = (CompletionOnJavadocAllocationExpression) aSTNode;
        this.javadocTagPosition = completionOnJavadocAllocationExpression.tagSourceStart;
        int i10 = aSTNode.sourceStart;
        if (completionOnJavadocAllocationExpression.type.isThis()) {
            if (completionOnJavadocAllocationExpression.completeInText()) {
                i10 = completionOnJavadocAllocationExpression.separatorPosition;
            }
        } else if (completionOnJavadocAllocationExpression.completeInText()) {
            i10 = completionOnJavadocAllocationExpression.type.sourceStart;
        }
        setSourceAndTokenRange(i10, aSTNode.sourceEnd, false);
        TypeBinding[] computeTypes = computeTypes(completionOnJavadocAllocationExpression.arguments);
        ReferenceBinding referenceBinding = (ReferenceBinding) binding;
        if (this.requestor.isIgnored(6) || !referenceBinding.isClass()) {
            return;
        }
        findConstructors(referenceBinding, computeTypes, scope, completionOnJavadocAllocationExpression, false, null, null, null, false);
    }

    private void completionOnJavadocFieldReference(ASTNode aSTNode, Scope scope) {
        CompletionOnJavadocFieldReference completionOnJavadocFieldReference;
        CompletionEngine completionEngine;
        this.insideQualifiedReference = true;
        CompletionOnJavadocFieldReference completionOnJavadocFieldReference2 = (CompletionOnJavadocFieldReference) aSTNode;
        this.completionToken = completionOnJavadocFieldReference2.token;
        long j10 = completionOnJavadocFieldReference2.nameSourcePosition;
        this.javadocTagPosition = completionOnJavadocFieldReference2.tagSourceStart;
        TypeBinding typeBinding = completionOnJavadocFieldReference2.actualReceiverType;
        if (typeBinding == null || !typeBinding.isValidBinding()) {
            return;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) completionOnJavadocFieldReference2.actualReceiverType;
        int i10 = (int) (j10 >>> 32);
        if (completionOnJavadocFieldReference2.receiver.isThis()) {
            if (completionOnJavadocFieldReference2.completeInText()) {
                i10 = completionOnJavadocFieldReference2.separatorPosition;
            }
        } else if (completionOnJavadocFieldReference2.completeInText()) {
            i10 = completionOnJavadocFieldReference2.receiver.sourceStart;
        }
        setSourceAndTokenRange(i10, (int) j10);
        if (this.requestor.isIgnored(2) && this.requestor.isIgnored(14)) {
            completionOnJavadocFieldReference = completionOnJavadocFieldReference2;
            completionEngine = this;
        } else {
            completionOnJavadocFieldReference = completionOnJavadocFieldReference2;
            findFields(this.completionToken, referenceBinding, scope, new ObjectVector(), new ObjectVector(), false, completionOnJavadocFieldReference2, scope, false, true, null, null, null, false, null, -1, -1);
            completionEngine = this;
        }
        if (completionEngine.requestor.isIgnored(6) && completionEngine.requestor.isIgnored(15)) {
            return;
        }
        findMethods(completionEngine.completionToken, null, null, referenceBinding, scope, new ObjectVector(), false, false, completionOnJavadocFieldReference, scope, false, false, true, null, null, null, false, null, -1, -1);
        CompletionOnJavadocFieldReference completionOnJavadocFieldReference3 = completionOnJavadocFieldReference;
        TypeBinding typeBinding2 = completionOnJavadocFieldReference3.actualReceiverType;
        if (typeBinding2 instanceof ReferenceBinding) {
            ReferenceBinding referenceBinding2 = (ReferenceBinding) typeBinding2;
            char[] cArr = this.completionToken;
            if (cArr == null || CharOperation.prefixEquals(cArr, referenceBinding2.sourceName) || (this.options.camelCaseMatch && CharOperation.camelCaseMatch(this.completionToken, referenceBinding2.sourceName))) {
                findConstructors(referenceBinding2, null, scope, completionOnJavadocFieldReference3, false, null, null, null, false);
            }
        }
    }

    private void completionOnJavadocMessageSend(ASTNode aSTNode, Binding binding, Scope scope) {
        CompletionOnJavadocMessageSend completionOnJavadocMessageSend = (CompletionOnJavadocMessageSend) aSTNode;
        this.completionToken = completionOnJavadocMessageSend.selector;
        this.javadocTagPosition = completionOnJavadocMessageSend.tagSourceStart;
        int i10 = aSTNode.sourceStart;
        if (completionOnJavadocMessageSend.receiver.isThis()) {
            if (completionOnJavadocMessageSend.completeInText()) {
                i10 = completionOnJavadocMessageSend.separatorPosition;
            }
        } else if (completionOnJavadocMessageSend.completeInText()) {
            i10 = completionOnJavadocMessageSend.receiver.sourceStart;
        }
        setSourceAndTokenRange(i10, aSTNode.sourceEnd, false);
        if (binding == null) {
            if (this.requestor.isIgnored(6)) {
                return;
            }
            findImplicitMessageSends(this.completionToken, null, scope, completionOnJavadocMessageSend, scope, new ObjectVector());
        } else {
            if (this.requestor.isIgnored(6)) {
                return;
            }
            char[] cArr = this.completionToken;
            Expression expression = completionOnJavadocMessageSend.receiver;
            findMethods(cArr, null, null, (ReferenceBinding) ((ReferenceBinding) binding).capture(scope, expression.sourceStart, expression.sourceEnd), scope, new ObjectVector(), false, false, completionOnJavadocMessageSend, scope, false, completionOnJavadocMessageSend.receiver instanceof SuperReference, true, null, null, null, false, null, -1, -1);
        }
    }

    private void completionOnJavadocParamNameReference(ASTNode aSTNode) {
        if (this.requestor.isIgnored(18)) {
            return;
        }
        CompletionOnJavadocParamNameReference completionOnJavadocParamNameReference = (CompletionOnJavadocParamNameReference) aSTNode;
        setSourceAndTokenRange(completionOnJavadocParamNameReference.tagSourceStart, completionOnJavadocParamNameReference.tagSourceEnd);
        findJavadocParamNames(completionOnJavadocParamNameReference.token, completionOnJavadocParamNameReference.missingParams, false);
        findJavadocParamNames(completionOnJavadocParamNameReference.token, completionOnJavadocParamNameReference.missingTypeParams, true);
    }

    private void completionOnJavadocQualifiedTypeReference(ASTNode aSTNode, Binding binding, Scope scope) {
        this.insideQualifiedReference = true;
        CompletionOnJavadocQualifiedTypeReference completionOnJavadocQualifiedTypeReference = (CompletionOnJavadocQualifiedTypeReference) aSTNode;
        this.completionToken = completionOnJavadocQualifiedTypeReference.completionIdentifier;
        long j10 = completionOnJavadocQualifiedTypeReference.sourcePositions[completionOnJavadocQualifiedTypeReference.tokens.length];
        this.javadocTagPosition = completionOnJavadocQualifiedTypeReference.tagSourceStart;
        if (!(binding instanceof ReferenceBinding) || (binding instanceof TypeVariableBinding)) {
            if (binding instanceof PackageBinding) {
                int i10 = (int) j10;
                setSourceRange(aSTNode.sourceStart, i10);
                setTokenRange(completionOnJavadocQualifiedTypeReference.completeInText() ? completionOnJavadocQualifiedTypeReference.sourceStart : (int) (j10 >>> 32), i10);
                findTypesAndSubpackages(this.completionToken, (PackageBinding) binding, scope);
                return;
            }
            return;
        }
        if (this.requestor.isIgnored(9) && ((this.assistNodeInJavadoc & 4) == 0 || this.requestor.isIgnored(16))) {
            return;
        }
        setSourceAndTokenRange(completionOnJavadocQualifiedTypeReference.completeInText() ? completionOnJavadocQualifiedTypeReference.sourceStart : (int) (j10 >>> 32), (int) j10);
        findMemberTypes(this.completionToken, (ReferenceBinding) binding, scope, scope.enclosingSourceType(), false, false, new ObjectVector(), null, null, null, false);
    }

    private void completionOnJavadocSingleTypeReference(ASTNode aSTNode, Scope scope) {
        CompletionOnJavadocSingleTypeReference completionOnJavadocSingleTypeReference = (CompletionOnJavadocSingleTypeReference) aSTNode;
        this.completionToken = completionOnJavadocSingleTypeReference.token;
        this.javadocTagPosition = completionOnJavadocSingleTypeReference.tagSourceStart;
        setSourceAndTokenRange(completionOnJavadocSingleTypeReference.sourceStart, completionOnJavadocSingleTypeReference.sourceEnd);
        findTypesAndPackages(this.completionToken, scope, (this.assistNodeInJavadoc & 8) != 0, false, new ObjectVector());
    }

    private void completionOnJavadocTag(ASTNode aSTNode) {
        CompletionOnJavadocTag completionOnJavadocTag = (CompletionOnJavadocTag) aSTNode;
        setSourceAndTokenRange(completionOnJavadocTag.tagSourceStart, completionOnJavadocTag.sourceEnd);
        findJavadocBlockTags(completionOnJavadocTag);
        findJavadocInlineTags(completionOnJavadocTag);
    }

    private void completionOnJavadocTypeParamReference(ASTNode aSTNode) {
        if (this.requestor.isIgnored(18)) {
            return;
        }
        CompletionOnJavadocTypeParamReference completionOnJavadocTypeParamReference = (CompletionOnJavadocTypeParamReference) aSTNode;
        setSourceAndTokenRange(completionOnJavadocTypeParamReference.tagSourceStart, completionOnJavadocTypeParamReference.tagSourceEnd);
        findJavadocParamNames(completionOnJavadocTypeParamReference.token, completionOnJavadocTypeParamReference.missingParams, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void completionOnKeyword(ASTNode aSTNode) {
        if (this.requestor.isIgnored(3)) {
            return;
        }
        CompletionOnKeyword completionOnKeyword = (CompletionOnKeyword) aSTNode;
        findKeywords(completionOnKeyword.getToken(), completionOnKeyword.getPossibleKeywords(), false, false);
    }

    private void completionOnLocalOrArgumentName(ASTNode aSTNode, Scope scope) {
        if (this.requestor.isIgnored(10)) {
            return;
        }
        LocalDeclaration localDeclaration = (LocalDeclaration) aSTNode;
        int i10 = 5;
        if (localDeclaration instanceof CompletionOnLocalName) {
            this.completionToken = ((CompletionOnLocalName) localDeclaration).realName;
        } else {
            CompletionOnArgumentName completionOnArgumentName = (CompletionOnArgumentName) localDeclaration;
            this.completionToken = completionOnArgumentName.realName;
            if (!completionOnArgumentName.isCatchArgument) {
                i10 = 4;
            }
        }
        int i11 = i10;
        BlockScope blockScope = (BlockScope) scope;
        char[][] findVariableFromUnresolvedReference = findVariableFromUnresolvedReference(localDeclaration, blockScope, computeAlreadyDefinedName(blockScope, localDeclaration));
        LocalVariableBinding[] localVariableBindingArr = blockScope.locals;
        char[][] cArr = new char[localVariableBindingArr.length];
        int i12 = 0;
        for (LocalVariableBinding localVariableBinding : localVariableBindingArr) {
            if (localVariableBinding != null) {
                cArr[i12] = localVariableBinding.name;
                i12++;
            }
        }
        char[][] cArr2 = new char[i12];
        System.arraycopy(cArr, 0, cArr2, 0, i12);
        findVariableNames(this.completionToken, localDeclaration.type, cArr2, findVariableFromUnresolvedReference, i11);
    }

    private void completionOnMarkerAnnotationName(ASTNode aSTNode, Binding binding, Scope scope) {
        Scope scope2;
        CompletionOnMarkerAnnotationName completionOnMarkerAnnotationName = (CompletionOnMarkerAnnotationName) aSTNode;
        ReferenceContext referenceContext = scope.parent.referenceContext();
        CompletionOnAnnotationOfType completionOnAnnotationOfType = referenceContext instanceof CompletionOnAnnotationOfType ? (CompletionOnAnnotationOfType) referenceContext : new CompletionOnAnnotationOfType(CompletionParser.FAKE_TYPE_NAME, scope.referenceCompilationUnit().compilationResult, completionOnMarkerAnnotationName);
        if (completionOnAnnotationOfType.annotations[0] == completionOnMarkerAnnotationName && ((scope2 = scope.parent.parent) == null || !(scope2 instanceof MethodScope))) {
            this.targetedElement = computeTargetedElement(completionOnAnnotationOfType);
        }
        this.assistNodeIsAnnotation = true;
        TypeReference typeReference = completionOnMarkerAnnotationName.type;
        if (!(typeReference instanceof CompletionOnSingleTypeReference)) {
            if (typeReference instanceof CompletionOnQualifiedTypeReference) {
                this.insideQualifiedReference = true;
                CompletionOnQualifiedTypeReference completionOnQualifiedTypeReference = (CompletionOnQualifiedTypeReference) typeReference;
                this.completionToken = completionOnQualifiedTypeReference.completionIdentifier;
                long j10 = completionOnQualifiedTypeReference.sourcePositions[completionOnQualifiedTypeReference.tokens.length];
                if (!(binding instanceof PackageBinding)) {
                    setSourceAndTokenRange((int) (j10 >>> 32), (int) j10);
                    findMemberTypes(this.completionToken, (ReferenceBinding) binding, scope, scope.enclosingSourceType(), false, false, new ObjectVector(), null, null, null, false);
                    return;
                } else {
                    int i10 = (int) j10;
                    setSourceRange(aSTNode.sourceStart, i10);
                    setTokenRange((int) (j10 >>> 32), i10);
                    findTypesAndSubpackages(this.completionToken, (PackageBinding) binding, scope);
                    return;
                }
            }
            return;
        }
        CompletionOnSingleTypeReference completionOnSingleTypeReference = (CompletionOnSingleTypeReference) typeReference;
        this.completionToken = completionOnSingleTypeReference.token;
        setSourceAndTokenRange(completionOnSingleTypeReference.sourceStart, completionOnSingleTypeReference.sourceEnd);
        Scope scope3 = scope.parent.parent;
        if (scope3 != null && !(scope3 instanceof MethodScope) && !completionOnAnnotationOfType.isParameter) {
            char[] cArr = this.completionToken;
            int length = cArr.length;
            char[] cArr2 = Keywords.INTERFACE;
            if (length <= cArr2.length && CharOperation.prefixEquals(cArr, cArr2, false)) {
                int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForCaseMatching(this.completionToken, cArr2) + computeRelevanceForRestrictions(0) + 20;
                this.noProposal = false;
                if (!this.requestor.isIgnored(3)) {
                    InternalCompletionProposal createProposal = createProposal(3, this.actualCompletionPosition);
                    createProposal.setName(cArr2);
                    createProposal.setCompletion(cArr2);
                    int i11 = this.startPosition;
                    int i12 = this.offset;
                    createProposal.setReplaceRange(i11 - i12, this.endPosition - i12);
                    int i13 = this.tokenStart;
                    int i14 = this.offset;
                    createProposal.setTokenRange(i13 - i14, this.tokenEnd - i14);
                    createProposal.setRelevance(computeBaseRelevance);
                    this.requestor.accept(createProposal);
                    if (DEBUG) {
                        printDebug(createProposal);
                    }
                }
            }
        }
        findTypesAndPackages(this.completionToken, scope, false, false, new ObjectVector());
    }

    private void completionOnMemberAccess(ASTNode aSTNode, ASTNode aSTNode2, Binding binding, Scope scope, boolean z10) {
        this.insideQualifiedReference = true;
        CompletionOnMemberAccess completionOnMemberAccess = (CompletionOnMemberAccess) aSTNode;
        long j10 = completionOnMemberAccess.nameSourcePosition;
        setSourceAndTokenRange((int) (j10 >>> 32), (int) j10);
        this.completionToken = completionOnMemberAccess.token;
        if (binding.problemId() == 1) {
            if (this.assistNodeInJavadoc == 0) {
                if (this.requestor.isAllowingRequiredProposals(2, 9) || this.requestor.isAllowingRequiredProposals(6, 9)) {
                    ProblemMethodBinding problemMethodBinding = (ProblemMethodBinding) binding;
                    findFieldsAndMethodsFromMissingReturnType(problemMethodBinding.selector, problemMethodBinding.parameters, scope, completionOnMemberAccess, z10);
                    return;
                }
                return;
            }
            return;
        }
        if (completionOnMemberAccess.isInsideAnnotation) {
            return;
        }
        if (!this.requestor.isIgnored(3) && !completionOnMemberAccess.isSuperAccess()) {
            findKeywords(this.completionToken, new char[][]{Keywords.NEW}, false, false);
        }
        ObjectVector objectVector = new ObjectVector();
        ObjectVector objectVector2 = new ObjectVector();
        Expression expression = completionOnMemberAccess.receiver;
        boolean z11 = expression instanceof SuperReference;
        findFieldsAndMethods(this.completionToken, ((TypeBinding) binding).capture(scope, expression.sourceStart, expression.sourceEnd), scope, objectVector, objectVector2, completionOnMemberAccess, scope, false, z11, null, null, null, false, null, -1, -1);
        if (z11) {
            return;
        }
        checkCancel();
        findFieldsAndMethodsFromCastedReceiver(aSTNode2, binding, scope, objectVector, objectVector2, completionOnMemberAccess, scope, completionOnMemberAccess.receiver);
    }

    private void completionOnMemberValueName(ASTNode aSTNode, ASTNode aSTNode2, Scope scope, boolean z10) {
        CompletionOnMemberValueName completionOnMemberValueName = (CompletionOnMemberValueName) aSTNode;
        Annotation annotation = (Annotation) aSTNode2;
        this.completionToken = completionOnMemberValueName.name;
        ReferenceBinding referenceBinding = (ReferenceBinding) annotation.resolvedType;
        if (referenceBinding == null || !referenceBinding.isAnnotationType()) {
            return;
        }
        if (!this.requestor.isIgnored(13)) {
            findAnnotationAttributes(this.completionToken, annotation.memberValuePairs(), referenceBinding);
        }
        if (this.assistNodeCanBeSingleMemberAnnotation) {
            if (this.expectedTypesPtr > -1 && this.expectedTypes[0].isAnnotationType()) {
                findTypesAndPackages(this.completionToken, scope, false, false, new ObjectVector());
                return;
            }
            if (this.expectedTypesPtr > -1) {
                this.assistNodeIsEnum = true;
                int i10 = 0;
                while (true) {
                    if (i10 > this.expectedTypesPtr) {
                        break;
                    }
                    if (!this.expectedTypes[i10].isEnum()) {
                        this.assistNodeIsEnum = false;
                        break;
                    }
                    i10++;
                }
            }
            if ((scope instanceof BlockScope) && !this.requestor.isIgnored(5)) {
                BlockScope blockScope = (BlockScope) scope;
                findUnresolvedReference(completionOnMemberValueName.sourceStart, completionOnMemberValueName.sourceEnd, blockScope, computeAlreadyDefinedName(blockScope, FakeInvocationSite));
            }
            findVariablesAndMethods(this.completionToken, scope, FakeInvocationSite, scope, z10, true);
            findTypesAndPackages(this.completionToken, scope, false, false, new ObjectVector());
        }
    }

    private void completionOnMessageSend(ASTNode aSTNode, Binding binding, Scope scope) {
        setSourceAndTokenRange(aSTNode.sourceStart, aSTNode.sourceEnd, false);
        CompletionOnMessageSend completionOnMessageSend = (CompletionOnMessageSend) aSTNode;
        TypeBinding[] computeTypes = computeTypes(completionOnMessageSend.arguments);
        this.completionToken = completionOnMessageSend.selector;
        if (binding != null) {
            if (this.requestor.isIgnored(6)) {
                return;
            }
            char[] cArr = this.completionToken;
            Expression expression = completionOnMessageSend.receiver;
            findMethods(cArr, null, computeTypes, (ReferenceBinding) ((ReferenceBinding) binding).capture(scope, expression.sourceStart, expression.sourceEnd), scope, new ObjectVector(), false, true, completionOnMessageSend, scope, false, completionOnMessageSend.receiver instanceof SuperReference, false, null, null, null, false, null, -1, -1);
            return;
        }
        if (this.requestor.isIgnored(6)) {
            return;
        }
        ObjectVector objectVector = new ObjectVector();
        findImplicitMessageSends(this.completionToken, computeTypes, scope, completionOnMessageSend, scope, objectVector);
        checkCancel();
        findLocalMethodsFromStaticImports(this.completionToken, scope, (InvocationSite) completionOnMessageSend, scope, true, objectVector, true);
    }

    private void completionOnMessageSendName(ASTNode aSTNode, Binding binding, Scope scope) {
        TypeBinding[] computeTypesIfCorrect;
        if (this.requestor.isIgnored(6)) {
            return;
        }
        CompletionOnMessageSendName completionOnMessageSendName = (CompletionOnMessageSendName) aSTNode;
        boolean z10 = true;
        this.insideQualifiedReference = true;
        this.completionToken = completionOnMessageSendName.selector;
        Expression expression = completionOnMessageSendName.receiver;
        if (expression instanceof NameReference) {
            z10 = ((NameReference) expression).isTypeReference();
        } else if ((expression instanceof MessageSend) || (expression instanceof FieldReference) || expression.isThis()) {
            z10 = false;
        }
        boolean z11 = z10;
        TypeBinding typeBinding = (TypeBinding) binding;
        if (typeBinding == null || !(typeBinding instanceof ReferenceBinding) || (computeTypesIfCorrect = computeTypesIfCorrect(completionOnMessageSendName.typeArguments)) == null) {
            return;
        }
        char[] cArr = this.completionToken;
        Expression expression2 = completionOnMessageSendName.receiver;
        findMethods(cArr, computeTypesIfCorrect, null, (ReferenceBinding) typeBinding.capture(scope, expression2.sourceStart, expression2.sourceEnd), scope, new ObjectVector(), z11, false, completionOnMessageSendName, scope, false, false, false, null, null, null, false, null, -1, -1);
    }

    private void completionOnMethodName(ASTNode aSTNode, Scope scope) {
        if (this.requestor.isIgnored(10)) {
            return;
        }
        CompletionOnMethodName completionOnMethodName = (CompletionOnMethodName) aSTNode;
        setSourceAndTokenRange(completionOnMethodName.sourceStart, completionOnMethodName.selectorEnd);
        FieldBinding[] fields = scope.enclosingSourceType().fields();
        char[][] cArr = new char[fields.length];
        for (int i10 = 0; i10 < fields.length; i10++) {
            cArr[i10] = fields[i10].name;
        }
        char[] cArr2 = completionOnMethodName.selector;
        this.completionToken = cArr2;
        int i11 = completionOnMethodName.modifiers;
        findVariableNames(cArr2, completionOnMethodName.returnType, cArr, null, (i11 & 8) == 0 ? 2 : (i11 & 16) == 0 ? 1 : 3);
    }

    private void completionOnMethodReturnType(ASTNode aSTNode, Scope scope) {
        CompletionOnMethodReturnType completionOnMethodReturnType = (CompletionOnMethodReturnType) aSTNode;
        CompletionOnSingleTypeReference completionOnSingleTypeReference = (CompletionOnSingleTypeReference) completionOnMethodReturnType.returnType;
        this.completionToken = completionOnSingleTypeReference.token;
        setSourceAndTokenRange(completionOnSingleTypeReference.sourceStart, completionOnSingleTypeReference.sourceEnd);
        findTypesAndPackages(this.completionToken, scope.parent, true, true, new ObjectVector());
        if (!this.requestor.isIgnored(3)) {
            findKeywordsForMember(this.completionToken, completionOnMethodReturnType.modifiers, null);
        }
        if (completionOnMethodReturnType.modifiers != 0 || scope.enclosingSourceType().isAnnotationType()) {
            return;
        }
        if (!this.requestor.isIgnored(7)) {
            findMethodDeclarations(this.completionToken, scope.enclosingSourceType(), scope, new ObjectVector(), null, null, null, false);
        }
        if (this.requestor.isIgnored(11)) {
            return;
        }
        proposeNewMethod(this.completionToken, scope.enclosingSourceType());
    }

    private void completionOnParameterizedQualifiedTypeReference(ASTNode aSTNode, ASTNode aSTNode2, Binding binding, Scope scope) {
        if (this.requestor.isIgnored(9)) {
            return;
        }
        CompletionOnParameterizedQualifiedTypeReference completionOnParameterizedQualifiedTypeReference = (CompletionOnParameterizedQualifiedTypeReference) aSTNode;
        this.insideQualifiedReference = true;
        this.assistNodeIsClass = completionOnParameterizedQualifiedTypeReference.isClass();
        this.assistNodeIsException = completionOnParameterizedQualifiedTypeReference.isException();
        this.assistNodeIsInterface = completionOnParameterizedQualifiedTypeReference.isInterface();
        this.assistNodeIsSuperType = completionOnParameterizedQualifiedTypeReference.isSuperType();
        this.assistNodeIsExtendedType = assistNodeIsExtendedType(aSTNode, aSTNode2);
        this.assistNodeIsInterfaceExcludingAnnotation = assistNodeIsInterfaceExcludingAnnotation(aSTNode, aSTNode2);
        this.completionToken = completionOnParameterizedQualifiedTypeReference.completionIdentifier;
        long j10 = completionOnParameterizedQualifiedTypeReference.sourcePositions[completionOnParameterizedQualifiedTypeReference.tokens.length];
        setSourceAndTokenRange((int) (j10 >>> 32), (int) j10);
        if (binding.problemId() != 1) {
            ReferenceBinding referenceBinding = (ReferenceBinding) binding;
            if ((referenceBinding.tagBits & 128) == 0) {
                ObjectVector objectVector = new ObjectVector();
                if (this.assistNodeIsException && (aSTNode2 instanceof TryStatement)) {
                    findExceptionFromTryStatement(this.completionToken, referenceBinding, scope.enclosingSourceType(), (BlockScope) scope, objectVector);
                }
                checkCancel();
                findMemberTypes(this.completionToken, referenceBinding, scope, scope.enclosingSourceType(), false, false, objectVector, null, null, null, false);
                return;
            }
        }
        if (this.assistNodeInJavadoc == 0 && this.requestor.isAllowingRequiredProposals(9, 9) && completionOnParameterizedQualifiedTypeReference.tokens.length == 1) {
            findMemberTypesFromMissingType(completionOnParameterizedQualifiedTypeReference, completionOnParameterizedQualifiedTypeReference.sourcePositions[0], scope);
        }
    }

    private void completionOnProvidesImplementationsQualifiedTypeReference(ASTNode aSTNode, ASTNode aSTNode2, Binding binding, Scope scope) {
        findImplementations((ProvidesStatement) this.parser.enclosingNode, (TypeReference) aSTNode);
    }

    private void completionOnProvidesImplementationsSingleTypeReference(ASTNode aSTNode, ASTNode aSTNode2, Binding binding, Scope scope) {
        findImplementations((ProvidesStatement) this.parser.enclosingNode, (TypeReference) aSTNode);
    }

    private void completionOnProvidesInterfacesQualifiedTypeReference(ASTNode aSTNode, ASTNode aSTNode2, Binding binding, Scope scope) {
        completionOnQualifiedTypeReference(aSTNode, aSTNode2, binding, scope);
    }

    private void completionOnProvidesInterfacesSingleTypeReference(ASTNode aSTNode, ASTNode aSTNode2, Binding binding, Scope scope) {
        completionOnSingleTypeReference(aSTNode, aSTNode2, binding, scope);
    }

    private void completionOnQualifiedAllocationExpression(ASTNode aSTNode, Binding binding, Scope scope) {
        setSourceAndTokenRange(aSTNode.sourceStart, aSTNode.sourceEnd, false);
        CompletionOnQualifiedAllocationExpression completionOnQualifiedAllocationExpression = (CompletionOnQualifiedAllocationExpression) aSTNode;
        TypeBinding[] computeTypes = computeTypes(completionOnQualifiedAllocationExpression.arguments);
        ReferenceBinding referenceBinding = (ReferenceBinding) binding;
        if (referenceBinding.problemId() == 1) {
            findConstructorsFromMissingType(completionOnQualifiedAllocationExpression.type, computeTypes, scope, completionOnQualifiedAllocationExpression);
            return;
        }
        if (!this.requestor.isIgnored(6) && referenceBinding.isClass() && !referenceBinding.isAbstract()) {
            findConstructors(referenceBinding, computeTypes, scope, completionOnQualifiedAllocationExpression, false, null, null, null, false);
        }
        checkCancel();
        if (this.requestor.isIgnored(1) || referenceBinding.isFinal() || referenceBinding.isEnum()) {
            return;
        }
        findAnonymousType(referenceBinding, computeTypes, scope, completionOnQualifiedAllocationExpression, null, null, null, false);
    }

    private void completionOnQualifiedNameReference(ASTNode aSTNode, ASTNode aSTNode2, Binding binding, Scope scope, boolean z10) {
        this.insideQualifiedReference = true;
        CompletionOnQualifiedNameReference completionOnQualifiedNameReference = (CompletionOnQualifiedNameReference) aSTNode;
        this.completionToken = completionOnQualifiedNameReference.completionIdentifier;
        long[] jArr = completionOnQualifiedNameReference.sourcePositions;
        long j10 = jArr[jArr.length - 1];
        if (binding.problemId() == 1) {
            setSourceAndTokenRange((int) (j10 >>> 32), (int) j10);
            if (this.assistNodeInJavadoc == 0 && (this.requestor.isAllowingRequiredProposals(2, 9) || this.requestor.isAllowingRequiredProposals(6, 9) || this.requestor.isAllowingRequiredProposals(9, 9))) {
                char[][] cArr = completionOnQualifiedNameReference.tokens;
                if (cArr.length == 1 && !findFieldsAndMethodsFromMissingFieldType(cArr[0], scope, completionOnQualifiedNameReference, z10)) {
                    checkCancel();
                    findMembersFromMissingType(completionOnQualifiedNameReference.tokens[0], completionOnQualifiedNameReference.sourcePositions[0], null, scope, completionOnQualifiedNameReference, completionOnQualifiedNameReference.isInsideAnnotationAttribute);
                }
            }
            return;
        }
        if (!(binding instanceof VariableBinding)) {
            if ((binding instanceof ReferenceBinding) && !(binding instanceof TypeVariableBinding)) {
                boolean z11 = completionOnQualifiedNameReference.isInsideAnnotationAttribute;
                setSourceAndTokenRange((int) (j10 >>> 32), (int) j10);
                findMembers(this.completionToken, (ReferenceBinding) binding, scope, completionOnQualifiedNameReference, z11, null, null, null, false);
                return;
            }
            if (binding instanceof PackageBinding) {
                int i10 = (int) j10;
                setSourceRange(aSTNode.sourceStart, i10);
                setTokenRange((int) (j10 >>> 32), i10);
                findTypesAndSubpackages(this.completionToken, (PackageBinding) binding, scope);
                return;
            }
            return;
        }
        setSourceAndTokenRange((int) (j10 >>> 32), (int) j10);
        TypeBinding typeBinding = ((VariableBinding) binding).type;
        if (typeBinding != null && (typeBinding.tagBits & 128) == 0) {
            ObjectVector objectVector = new ObjectVector();
            ObjectVector objectVector2 = new ObjectVector();
            findFieldsAndMethods(this.completionToken, typeBinding.capture(scope, completionOnQualifiedNameReference.sourceStart, completionOnQualifiedNameReference.sourceEnd), scope, objectVector, objectVector2, completionOnQualifiedNameReference, scope, false, false, null, null, null, false, null, -1, -1);
            checkCancel();
            findFieldsAndMethodsFromCastedReceiver(aSTNode2, binding, scope, objectVector, objectVector2, completionOnQualifiedNameReference, scope, completionOnQualifiedNameReference);
            return;
        }
        if (this.assistNodeInJavadoc == 0) {
            if (this.requestor.isAllowingRequiredProposals(2, 9) || this.requestor.isAllowingRequiredProposals(6, 9)) {
                boolean isIgnored = this.requestor.isIgnored(2);
                boolean isIgnored2 = this.requestor.isIgnored(6);
                if (isIgnored && isIgnored2) {
                    return;
                }
                char[][] cArr2 = completionOnQualifiedNameReference.tokens;
                if (cArr2.length == 1) {
                    if (!(binding instanceof LocalVariableBinding)) {
                        findFieldsAndMethodsFromMissingFieldType(cArr2[0], scope, completionOnQualifiedNameReference, z10);
                    } else {
                        LocalVariableBinding localVariableBinding = (LocalVariableBinding) binding;
                        findFieldsAndMethodsFromMissingType(localVariableBinding.declaration.type, localVariableBinding.declaringScope, completionOnQualifiedNameReference, scope);
                    }
                }
            }
        }
    }

    private void completionOnQualifiedTypeReference(ASTNode aSTNode, ASTNode aSTNode2, Binding binding, Scope scope) {
        this.insideQualifiedReference = true;
        CompletionOnQualifiedTypeReference completionOnQualifiedTypeReference = (CompletionOnQualifiedTypeReference) aSTNode;
        this.assistNodeIsClass = completionOnQualifiedTypeReference.isClass();
        this.assistNodeIsException = completionOnQualifiedTypeReference.isException();
        this.assistNodeIsInterface = completionOnQualifiedTypeReference.isInterface();
        this.assistNodeIsConstructor = completionOnQualifiedTypeReference.isConstructorType;
        this.assistNodeIsSuperType = completionOnQualifiedTypeReference.isSuperType();
        this.assistNodeIsExtendedType = assistNodeIsExtendedType(aSTNode, aSTNode2);
        this.assistNodeIsInterfaceExcludingAnnotation = assistNodeIsInterfaceExcludingAnnotation(aSTNode, aSTNode2);
        this.completionToken = completionOnQualifiedTypeReference.completionIdentifier;
        long j10 = completionOnQualifiedTypeReference.sourcePositions[completionOnQualifiedTypeReference.tokens.length];
        if (binding.problemId() == 1) {
            setSourceAndTokenRange((int) (j10 >>> 32), (int) j10);
            if (this.assistNodeInJavadoc == 0 && this.requestor.isAllowingRequiredProposals(9, 9)) {
                char[][] cArr = completionOnQualifiedTypeReference.tokens;
                if (cArr.length == 1) {
                    findMemberTypesFromMissingType(cArr[0], completionOnQualifiedTypeReference.sourcePositions[0], scope);
                    return;
                }
                return;
            }
            return;
        }
        if (!(binding instanceof ReferenceBinding) || (binding instanceof TypeVariableBinding)) {
            if (binding instanceof PackageBinding) {
                int i10 = (int) j10;
                setSourceRange(aSTNode.sourceStart, i10);
                setTokenRange((int) (j10 >>> 32), i10);
                findTypesAndSubpackages(this.completionToken, (PackageBinding) binding, scope);
                return;
            }
            return;
        }
        if (this.requestor.isIgnored(9)) {
            return;
        }
        setSourceAndTokenRange((int) (j10 >>> 32), (int) j10);
        ObjectVector objectVector = new ObjectVector();
        if (this.assistNodeIsException && (aSTNode2 instanceof TryStatement)) {
            findExceptionFromTryStatement(this.completionToken, (ReferenceBinding) binding, scope.enclosingSourceType(), (BlockScope) scope, objectVector);
        }
        checkCancel();
        findMemberTypes(this.completionToken, (ReferenceBinding) binding, scope, scope.enclosingSourceType(), false, false, objectVector, null, null, null, false);
    }

    private void completionOnReferenceExpressionName(ASTNode aSTNode, Binding binding, Scope scope) {
        if (this.requestor.isIgnored(12)) {
            return;
        }
        CompletionOnReferenceExpressionName completionOnReferenceExpressionName = (CompletionOnReferenceExpressionName) aSTNode;
        this.insideQualifiedReference = true;
        this.completionToken = completionOnReferenceExpressionName.selector;
        TypeBinding typeBinding = (TypeBinding) binding;
        if (typeBinding == null || !(typeBinding instanceof ReferenceBinding)) {
            return;
        }
        setSourceAndTokenRange(completionOnReferenceExpressionName.nameSourceStart, completionOnReferenceExpressionName.sourceEnd);
        if (!typeBinding.isInterface() && !this.requestor.isIgnored(3)) {
            this.assistNodeIsConstructor = true;
            findKeywords(this.completionToken, new char[][]{Keywords.NEW}, false, false);
        }
        findMethods(this.completionToken, completionOnReferenceExpressionName.resolvedTypeArguments, null, (ReferenceBinding) typeBinding.capture(scope, completionOnReferenceExpressionName.sourceStart, completionOnReferenceExpressionName.sourceEnd), scope, new ObjectVector(), false, false, completionOnReferenceExpressionName, scope, false, false, false, null, null, null, false, null, -1, -1);
    }

    private void completionOnSingleNameReference(ASTNode aSTNode, ASTNode aSTNode2, Scope scope, boolean z10) {
        TypeBinding typeBinding;
        CompletionOnSingleNameReference completionOnSingleNameReference = (CompletionOnSingleNameReference) aSTNode;
        this.completionToken = completionOnSingleNameReference.token;
        SwitchStatement switchStatement = aSTNode2 instanceof SwitchStatement ? (SwitchStatement) aSTNode2 : null;
        if (switchStatement != null && (typeBinding = switchStatement.expression.resolvedType) != null && typeBinding.isEnum()) {
            if (this.requestor.isIgnored(2)) {
                return;
            }
            this.assistNodeIsEnum = true;
            findEnumConstantsFromSwithStatement(this.completionToken, (SwitchStatement) aSTNode2);
            return;
        }
        if (this.expectedTypesPtr > -1 && this.expectedTypes[0].isAnnotationType()) {
            findTypesAndPackages(this.completionToken, scope, false, false, new ObjectVector());
            if (!(scope instanceof BlockScope) || this.requestor.isIgnored(5)) {
                return;
            }
            findVariablesAndMethods(this.completionToken, scope, completionOnSingleNameReference, scope, z10, completionOnSingleNameReference.isInsideAnnotationAttribute);
            return;
        }
        if (this.expectedTypesPtr > -1) {
            this.assistNodeIsEnum = true;
            int i10 = 0;
            while (true) {
                if (i10 > this.expectedTypesPtr) {
                    break;
                }
                if (!this.expectedTypes[i10].isEnum()) {
                    this.assistNodeIsEnum = false;
                    break;
                }
                i10++;
            }
        }
        if ((scope instanceof BlockScope) && !this.requestor.isIgnored(5)) {
            BlockScope blockScope = (BlockScope) scope;
            findUnresolvedReference(completionOnSingleNameReference.sourceStart, completionOnSingleNameReference.sourceEnd, blockScope, computeAlreadyDefinedName(blockScope, completionOnSingleNameReference));
        }
        checkCancel();
        findVariablesAndMethods(this.completionToken, scope, completionOnSingleNameReference, scope, z10, completionOnSingleNameReference.isInsideAnnotationAttribute);
        checkCancel();
        findTypesAndPackages(this.completionToken, scope, true, false, new ObjectVector());
        if (!this.requestor.isIgnored(3)) {
            char[] cArr = this.completionToken;
            if (cArr == null || cArr.length == 0) {
                findTrueOrFalseKeywords(completionOnSingleNameReference.possibleKeywords);
            } else {
                findKeywords(cArr, completionOnSingleNameReference.possibleKeywords, false, false);
            }
        }
        if (!completionOnSingleNameReference.canBeExplicitConstructor || this.requestor.isIgnored(6)) {
            return;
        }
        char[] cArr2 = this.completionToken;
        char[] cArr3 = Keywords.THIS;
        if (CharOperation.prefixEquals(cArr2, cArr3, false)) {
            findExplicitConstructors(cArr3, scope.enclosingSourceType(), (MethodScope) scope, completionOnSingleNameReference);
            return;
        }
        char[] cArr4 = this.completionToken;
        char[] cArr5 = Keywords.SUPER;
        if (CharOperation.prefixEquals(cArr4, cArr5, false)) {
            findExplicitConstructors(cArr5, scope.enclosingSourceType().superclass(), (MethodScope) scope, completionOnSingleNameReference);
        }
    }

    private void completionOnSingleTypeReference(ASTNode aSTNode, ASTNode aSTNode2, Binding binding, Scope scope) {
        CompletionOnSingleTypeReference completionOnSingleTypeReference = (CompletionOnSingleTypeReference) aSTNode;
        this.completionToken = completionOnSingleTypeReference.token;
        this.assistNodeIsClass = completionOnSingleTypeReference.isClass();
        this.assistNodeIsException = completionOnSingleTypeReference.isException();
        this.assistNodeIsInterface = completionOnSingleTypeReference.isInterface();
        this.assistNodeIsConstructor = completionOnSingleTypeReference.isConstructorType;
        this.assistNodeIsSuperType = completionOnSingleTypeReference.isSuperType();
        this.assistNodeIsExtendedType = assistNodeIsExtendedType(aSTNode, aSTNode2);
        this.assistNodeIsInterfaceExcludingAnnotation = assistNodeIsInterfaceExcludingAnnotation(aSTNode, aSTNode2);
        if (binding != null) {
            if (this.requestor.isIgnored(9)) {
                return;
            }
            findMemberTypes(this.completionToken, (ReferenceBinding) binding, scope, scope.enclosingSourceType(), false, false, false, false, !this.assistNodeIsConstructor, null, new ObjectVector(), null, null, null, false);
        } else if (this.completionToken.length == 0 && ((aSTNode2 instanceof ParameterizedSingleTypeReference) || (aSTNode2 instanceof ParameterizedQualifiedTypeReference))) {
            int i10 = aSTNode.sourceStart;
            setSourceAndTokenRange(i10, i10 - 1, false);
            findParameterizedType((TypeReference) aSTNode2, scope);
        } else {
            ObjectVector objectVector = new ObjectVector();
            if (this.assistNodeIsException && (aSTNode2 instanceof TryStatement)) {
                findExceptionFromTryStatement(this.completionToken, null, scope.enclosingSourceType(), (BlockScope) scope, objectVector);
            }
            checkCancel();
            findTypesAndPackages(this.completionToken, scope, this.assistNodeIsConstructor, false, objectVector);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [org.eclipse.jdt.internal.compiler.lookup.BlockScope] */
    /* JADX WARN: Type inference failed for: r11v2, types: [org.eclipse.jdt.internal.compiler.lookup.Scope] */
    private char[][] computeAlreadyDefinedName(BlockScope blockScope, InvocationSite invocationSite) {
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        ClassScope classScope = blockScope;
        while (true) {
            int i10 = classScope.kind;
            if (i10 != 1) {
                if (i10 == 2) {
                    MethodScope methodScope = (MethodScope) classScope;
                    z10 |= methodScope.isConstructorCall | methodScope.isStatic;
                } else {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            break;
                        }
                    } else {
                        ClassScope classScope2 = classScope;
                        SourceTypeBinding sourceTypeBinding = classScope2.referenceContext.binding;
                        computeAlreadyDefinedName(sourceTypeBinding, classScope2, z10, invocationSite, arrayList);
                        z10 |= sourceTypeBinding.isStatic();
                    }
                    classScope = classScope.parent;
                }
            }
            BlockScope blockScope2 = (BlockScope) classScope;
            int length = blockScope2.locals.length;
            for (int i11 = 0; i11 < length; i11++) {
                LocalVariableBinding localVariableBinding = blockScope2.locals[i11];
                if (localVariableBinding == null) {
                    break;
                }
                if (!localVariableBinding.isSecret()) {
                    arrayList.add(localVariableBinding.name);
                }
            }
            classScope = classScope.parent;
        }
        return arrayList.size() == 0 ? CharOperation.NO_CHAR_CHAR : (char[][]) arrayList.toArray(new char[arrayList.size()]);
    }

    private void computeExpectedTypes(ASTNode aSTNode, ASTNode aSTNode2, Scope scope) {
        AbstractMethodDeclaration referenceMethod;
        MethodBinding methodBinding;
        TypeBinding[] typeBindingArr;
        TypeBinding typeBinding;
        MethodBinding[] availableMethods;
        MethodBinding[] availableMethods2;
        boolean z10;
        TypeVariableBinding[] typeVariables;
        this.expectedTypesFilter = 2;
        this.hasJavaLangObjectAsExpectedType = false;
        if ((aSTNode instanceof AbstractVariableDeclaration) && !(aSTNode instanceof TypeParameter)) {
            AbstractVariableDeclaration abstractVariableDeclaration = (AbstractVariableDeclaration) aSTNode;
            TypeBinding typeBinding2 = abstractVariableDeclaration.type.resolvedType;
            if (typeBinding2 != null) {
                if (abstractVariableDeclaration.initialization instanceof ArrayInitializer) {
                    addExpectedType(typeBinding2.leafComponentType(), scope);
                } else {
                    addExpectedType(typeBinding2, scope);
                }
            }
        } else if (aSTNode instanceof Assignment) {
            TypeBinding typeBinding3 = ((Assignment) aSTNode).lhs.resolvedType;
            if (typeBinding3 != null) {
                addExpectedType(typeBinding3, scope);
            }
        } else {
            if (aSTNode instanceof ReturnStatement) {
                if (scope.methodScope().referenceContext instanceof AbstractMethodDeclaration) {
                    MethodBinding methodBinding2 = ((AbstractMethodDeclaration) scope.methodScope().referenceContext).binding;
                    r4 = methodBinding2 != null ? methodBinding2.returnType : null;
                    if (r4 != null) {
                        addExpectedType(r4, scope);
                    }
                } else if (scope.methodScope().referenceContext instanceof LambdaExpression) {
                    MethodBinding methodBinding3 = ((LambdaExpression) scope.methodScope().referenceContext).getMethodBinding();
                    r4 = methodBinding3 != null ? methodBinding3.returnType : null;
                    if (r4 != null) {
                        addExpectedType(r4, scope);
                    }
                }
            } else if (aSTNode instanceof CastExpression) {
                TypeBinding typeBinding4 = ((CastExpression) aSTNode).type.resolvedType;
                if (typeBinding4 != null) {
                    addExpectedType(typeBinding4, scope);
                    this.expectedTypesFilter = 3;
                }
            } else if (aSTNode instanceof MessageSend) {
                MessageSend messageSend = (MessageSend) aSTNode;
                if (messageSend.actualReceiverType instanceof ReferenceBinding) {
                    boolean isTypeReference = messageSend.receiver.isTypeReference();
                    for (ReferenceBinding referenceBinding = (ReferenceBinding) r0; referenceBinding != null; referenceBinding = referenceBinding.superclass()) {
                        ReferenceBinding referenceBinding2 = referenceBinding;
                        computeExpectedTypesForMessageSend(referenceBinding2, messageSend.selector, messageSend.arguments, (ReferenceBinding) messageSend.actualReceiverType, scope, messageSend, isTypeReference);
                        computeExpectedTypesForMessageSendForInterface(referenceBinding2, messageSend.selector, messageSend.arguments, (ReferenceBinding) messageSend.actualReceiverType, scope, messageSend, isTypeReference);
                    }
                }
            } else if (aSTNode instanceof AllocationExpression) {
                AllocationExpression allocationExpression = (AllocationExpression) aSTNode;
                ReferenceBinding referenceBinding3 = (ReferenceBinding) allocationExpression.type.resolvedType;
                if (referenceBinding3 != null) {
                    computeExpectedTypesForAllocationExpression(referenceBinding3, allocationExpression.arguments, scope, allocationExpression);
                }
            } else if (aSTNode instanceof OperatorExpression) {
                int i10 = (aSTNode.bits & ASTNode.OperatorMASK) >> 6;
                if (!(aSTNode instanceof ConditionalExpression)) {
                    if (aSTNode instanceof InstanceOfExpression) {
                        TypeBinding typeBinding5 = ((InstanceOfExpression) aSTNode).expression.resolvedType;
                        if (typeBinding5 != null) {
                            addExpectedType(typeBinding5, scope);
                            this.expectedTypesFilter = 3;
                        }
                    } else if (aSTNode instanceof BinaryExpression) {
                        BinaryExpression binaryExpression = (BinaryExpression) aSTNode;
                        if (i10 == 0 || i10 == 1 || i10 == 8) {
                            addExpectedType(TypeBinding.BOOLEAN, scope);
                        } else if (i10 == 14) {
                            addExpectedType(TypeBinding.SHORT, scope);
                            addExpectedType(TypeBinding.INT, scope);
                            addExpectedType(TypeBinding.LONG, scope);
                            addExpectedType(TypeBinding.FLOAT, scope);
                            addExpectedType(TypeBinding.DOUBLE, scope);
                            addExpectedType(TypeBinding.CHAR, scope);
                            addExpectedType(TypeBinding.BYTE, scope);
                            addExpectedType(scope.getJavaLangString(), scope);
                        } else if (i10 == 18 || i10 == 29) {
                            TypeBinding typeBinding6 = binaryExpression.left.resolvedType;
                            if (typeBinding6 != null) {
                                addExpectedType(typeBinding6, scope);
                                this.expectedTypesFilter = 3;
                            }
                        } else {
                            addExpectedType(TypeBinding.SHORT, scope);
                            addExpectedType(TypeBinding.INT, scope);
                            addExpectedType(TypeBinding.LONG, scope);
                            addExpectedType(TypeBinding.FLOAT, scope);
                            addExpectedType(TypeBinding.DOUBLE, scope);
                            addExpectedType(TypeBinding.CHAR, scope);
                            addExpectedType(TypeBinding.BYTE, scope);
                        }
                        if (i10 == 4) {
                            Expression expression = binaryExpression.left;
                            if (expression instanceof SingleNameReference) {
                                SingleNameReference singleNameReference = (SingleNameReference) expression;
                                Binding binding = scope.getBinding(singleNameReference.token, 7, singleNameReference, false);
                                if ((binding instanceof ReferenceBinding) && (typeVariables = ((ReferenceBinding) binding).typeVariables()) != null && typeVariables.length > 0) {
                                    addExpectedType(typeVariables[0].firstBound, scope);
                                }
                            }
                        }
                    } else if (aSTNode instanceof UnaryExpression) {
                        if (i10 != 32 && i10 != 33) {
                            switch (i10) {
                                case 11:
                                    addExpectedType(TypeBinding.BOOLEAN, scope);
                                    break;
                                case 12:
                                    addExpectedType(TypeBinding.SHORT, scope);
                                    addExpectedType(TypeBinding.INT, scope);
                                    addExpectedType(TypeBinding.LONG, scope);
                                    addExpectedType(TypeBinding.CHAR, scope);
                                    addExpectedType(TypeBinding.BYTE, scope);
                                    break;
                            }
                        }
                        addExpectedType(TypeBinding.SHORT, scope);
                        addExpectedType(TypeBinding.INT, scope);
                        addExpectedType(TypeBinding.LONG, scope);
                        addExpectedType(TypeBinding.FLOAT, scope);
                        addExpectedType(TypeBinding.DOUBLE, scope);
                        addExpectedType(TypeBinding.CHAR, scope);
                        addExpectedType(TypeBinding.BYTE, scope);
                    }
                }
            } else if (aSTNode instanceof ArrayReference) {
                addExpectedType(TypeBinding.SHORT, scope);
                addExpectedType(TypeBinding.INT, scope);
                addExpectedType(TypeBinding.LONG, scope);
            } else if (aSTNode instanceof ParameterizedSingleTypeReference) {
                ParameterizedSingleTypeReference parameterizedSingleTypeReference = (ParameterizedSingleTypeReference) aSTNode;
                ASTNode aSTNode3 = this.parser.enclosingNode;
                if ((aSTNode3 instanceof AbstractVariableDeclaration) || (aSTNode3 instanceof ReturnStatement)) {
                    if (aSTNode3 instanceof AbstractVariableDeclaration) {
                        Expression expression2 = ((AbstractVariableDeclaration) aSTNode3).initialization;
                        if (expression2 != null) {
                            r4 = expression2.expectedType();
                        }
                    } else {
                        Expression expression3 = ((ReturnStatement) aSTNode3).expression;
                        if (expression3 != null) {
                            r4 = expression3.expectedType();
                        }
                    }
                    addExpectedType(r4, scope);
                } else {
                    TypeVariableBinding[] typeVariables2 = ((ReferenceBinding) parameterizedSingleTypeReference.resolvedType).typeVariables();
                    TypeReference[] typeReferenceArr = parameterizedSingleTypeReference.typeArguments;
                    int length = typeReferenceArr == null ? 0 : typeReferenceArr.length;
                    if (typeVariables2 != null && typeVariables2.length >= length) {
                        int i11 = length - 1;
                        while (i11 > -1 && parameterizedSingleTypeReference.typeArguments[i11] != aSTNode2) {
                            i11--;
                        }
                        TypeBinding typeBinding7 = typeVariables2[i11].firstBound;
                        if (typeBinding7 == null) {
                            typeBinding7 = scope.getJavaLangObject();
                        }
                        addExpectedType(typeBinding7, scope);
                    }
                }
            } else if (aSTNode instanceof ParameterizedQualifiedTypeReference) {
                ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = (ParameterizedQualifiedTypeReference) aSTNode;
                TypeReference[][] typeReferenceArr2 = parameterizedQualifiedTypeReference.typeArguments;
                ASTNode aSTNode4 = this.parser.enclosingNode;
                if ((aSTNode4 instanceof AbstractVariableDeclaration) || (aSTNode4 instanceof ReturnStatement)) {
                    if (aSTNode4 instanceof AbstractVariableDeclaration) {
                        Expression expression4 = ((AbstractVariableDeclaration) aSTNode4).initialization;
                        if (expression4 != null) {
                            r4 = expression4.expectedType();
                        }
                    } else {
                        Expression expression5 = ((ReturnStatement) aSTNode4).expression;
                        if (expression5 != null) {
                            r4 = expression5.expectedType();
                        }
                    }
                    addExpectedType(r4, scope);
                } else {
                    TypeVariableBinding[] typeVariables3 = ((ReferenceBinding) parameterizedQualifiedTypeReference.resolvedType).typeVariables();
                    if (typeVariables3 != null) {
                        int length2 = typeReferenceArr2 == null ? 0 : typeReferenceArr2.length;
                        int i12 = 0;
                        while (true) {
                            if (i12 >= length2) {
                                break;
                            }
                            TypeReference[] typeReferenceArr3 = typeReferenceArr2[i12];
                            int length3 = typeReferenceArr3 == null ? 0 : typeReferenceArr3.length;
                            for (int i13 = 0; i13 < length3; i13++) {
                                if (typeReferenceArr2[i12][i13] == aSTNode2 && typeVariables3.length > i13) {
                                    TypeBinding typeBinding8 = typeVariables3[i13].firstBound;
                                    if (typeBinding8 == null) {
                                        typeBinding8 = scope.getJavaLangObject();
                                    }
                                    addExpectedType(typeBinding8, scope);
                                }
                            }
                            i12++;
                        }
                    }
                }
            } else if (aSTNode instanceof MemberValuePair) {
                MethodBinding methodBinding4 = ((MemberValuePair) aSTNode).binding;
                if (methodBinding4 != null) {
                    addExpectedType(methodBinding4.returnType.leafComponentType(), scope);
                }
            } else if (aSTNode instanceof NormalAnnotation) {
                NormalAnnotation normalAnnotation = (NormalAnnotation) aSTNode;
                MemberValuePair[] memberValuePairs = normalAnnotation.memberValuePairs();
                if (memberValuePairs == null || memberValuePairs.length == 0) {
                    TypeBinding typeBinding9 = normalAnnotation.resolvedType;
                    if ((typeBinding9 instanceof ReferenceBinding) && (availableMethods2 = ((ReferenceBinding) typeBinding9).availableMethods()) != null && availableMethods2.length > 0 && CharOperation.equals(availableMethods2[0].selector, VALUE)) {
                        int i14 = 1;
                        while (true) {
                            if (i14 >= availableMethods2.length) {
                                z10 = true;
                                break;
                            } else {
                                if ((availableMethods2[i14].modifiers & 131072) == 0) {
                                    z10 = false;
                                    break;
                                }
                                i14++;
                            }
                        }
                        if (z10) {
                            this.assistNodeCanBeSingleMemberAnnotation = z10;
                            addExpectedType(availableMethods2[0].returnType.leafComponentType(), scope);
                        }
                    }
                }
            } else if (aSTNode instanceof AssistNodeParentAnnotationArrayInitializer) {
                AssistNodeParentAnnotationArrayInitializer assistNodeParentAnnotationArrayInitializer = (AssistNodeParentAnnotationArrayInitializer) aSTNode;
                TypeBinding typeBinding10 = assistNodeParentAnnotationArrayInitializer.type.resolvedType;
                if ((typeBinding10 instanceof ReferenceBinding) && (availableMethods = ((ReferenceBinding) typeBinding10).availableMethods()) != null) {
                    int length4 = availableMethods.length;
                    int i15 = 0;
                    while (true) {
                        if (i15 >= length4) {
                            break;
                        }
                        MethodBinding methodBinding5 = availableMethods[i15];
                        if (CharOperation.equals(methodBinding5.selector, assistNodeParentAnnotationArrayInitializer.name)) {
                            addExpectedType(methodBinding5.returnType.leafComponentType(), scope);
                            break;
                        }
                        i15++;
                    }
                }
            } else if (aSTNode instanceof TryStatement) {
                if (aSTNode2 instanceof CompletionOnSingleTypeReference ? ((CompletionOnSingleTypeReference) aSTNode2).isException() : aSTNode2 instanceof CompletionOnQualifiedTypeReference ? ((CompletionOnQualifiedTypeReference) aSTNode2).isException() : aSTNode2 instanceof CompletionOnParameterizedQualifiedTypeReference ? ((CompletionOnParameterizedQualifiedTypeReference) aSTNode2).isException() : false) {
                    ThrownExceptionFinder thrownExceptionFinder = new ThrownExceptionFinder();
                    thrownExceptionFinder.processThrownExceptions((TryStatement) aSTNode, (BlockScope) scope);
                    TypeBinding[] thrownUncaughtExceptions = thrownExceptionFinder.getThrownUncaughtExceptions();
                    ReferenceBinding[] alreadyCaughtExceptions = thrownExceptionFinder.getAlreadyCaughtExceptions();
                    Binding[] discouragedExceptions = thrownExceptionFinder.getDiscouragedExceptions();
                    if (thrownUncaughtExceptions != null && thrownUncaughtExceptions.length > 0) {
                        for (TypeBinding typeBinding11 : thrownUncaughtExceptions) {
                            addExpectedType(typeBinding11, scope);
                        }
                        this.expectedTypesFilter = 1;
                    }
                    if (alreadyCaughtExceptions != null && alreadyCaughtExceptions.length > 0) {
                        for (int i16 = 0; i16 < alreadyCaughtExceptions.length; i16++) {
                            addForbiddenBindings(alreadyCaughtExceptions[i16]);
                            this.knownTypes.put(CharOperation.concat(alreadyCaughtExceptions[i16].qualifiedPackageName(), alreadyCaughtExceptions[i16].qualifiedSourceName(), '.'), KNOWN_TYPE_WITH_KNOWN_CONSTRUCTORS);
                        }
                    }
                    if (discouragedExceptions != null && discouragedExceptions.length > 0) {
                        for (Binding binding2 : discouragedExceptions) {
                            addUninterestingBindings(binding2);
                        }
                    }
                }
            } else if (aSTNode instanceof SwitchStatement) {
                boolean assistNodeIsInsideCase = assistNodeIsInsideCase(aSTNode2, aSTNode);
                this.assistNodeIsInsideCase = assistNodeIsInsideCase;
                Expression expression6 = ((SwitchStatement) aSTNode).expression;
                if (expression6 != null && (typeBinding = expression6.resolvedType) != null) {
                    if (assistNodeIsInsideCase && typeBinding.f102482id == 11 && this.compilerOptions.complianceLevel >= ClassFileConstants.JDK1_7) {
                        this.assistNodeIsString = true;
                    }
                    addExpectedType(typeBinding, scope);
                }
            } else if (aSTNode instanceof WhileStatement) {
                addExpectedType(TypeBinding.BOOLEAN, scope);
            } else if (aSTNode instanceof IfStatement) {
                addExpectedType(TypeBinding.BOOLEAN, scope);
            } else if (aSTNode instanceof AssertStatement) {
                if (((AssertStatement) aSTNode).assertExpression == aSTNode2) {
                    addExpectedType(TypeBinding.BOOLEAN, scope);
                }
            } else if (aSTNode instanceof ForStatement) {
                addExpectedType(TypeBinding.BOOLEAN, scope);
            } else if ((aSTNode instanceof Javadoc) && scope.kind == 2 && (referenceMethod = ((MethodScope) scope).referenceMethod()) != null && (methodBinding = referenceMethod.binding) != null && (typeBindingArr = methodBinding.thrownExceptions) != null) {
                for (TypeBinding typeBinding12 : typeBindingArr) {
                    addExpectedType(typeBinding12, scope);
                }
            }
        }
        int i17 = this.expectedTypesPtr;
        int i18 = i17 + 1;
        TypeBinding[] typeBindingArr2 = this.expectedTypes;
        if (i18 != typeBindingArr2.length) {
            TypeBinding[] typeBindingArr3 = new TypeBinding[i17 + 1];
            this.expectedTypes = typeBindingArr3;
            System.arraycopy(typeBindingArr2, 0, typeBindingArr3, 0, i17 + 1);
        }
    }

    private void computeExpectedTypesForAllocationExpression(ReferenceBinding referenceBinding, Expression[] expressionArr, Scope scope, InvocationSite invocationSite) {
        int i10;
        for (MethodBinding methodBinding : referenceBinding.availableMethods()) {
            if (methodBinding.isConstructor() && !methodBinding.isSynthetic() && (!this.options.checkVisibility || methodBinding.canBeSeenBy(invocationSite, scope))) {
                TypeBinding[] typeBindingArr = methodBinding.parameters;
                if (typeBindingArr.length >= expressionArr.length) {
                    int length = expressionArr.length - 1;
                    while (true) {
                        if (i10 < length) {
                            TypeBinding typeBinding = expressionArr[i10].resolvedType;
                            i10 = (typeBinding == null || typeBinding.isCompatibleWith(typeBindingArr[i10])) ? i10 + 1 : 0;
                        } else {
                            TypeBinding typeBinding2 = methodBinding.parameters[expressionArr.length - 1];
                            if (typeBinding2 != null) {
                                addExpectedType(typeBinding2, scope);
                            }
                        }
                    }
                }
            }
        }
    }

    private void computeExpectedTypesForMessageSend(ReferenceBinding referenceBinding, char[] cArr, Expression[] expressionArr, ReferenceBinding referenceBinding2, Scope scope, InvocationSite invocationSite, boolean z10) {
        int i10;
        for (MethodBinding methodBinding : referenceBinding.availableMethods()) {
            if (!methodBinding.isSynthetic() && !methodBinding.isDefaultAbstract() && !methodBinding.isConstructor() && ((!z10 || methodBinding.isStatic()) && ((!this.options.checkVisibility || methodBinding.canBeSeenBy(referenceBinding2, invocationSite, scope)) && CharOperation.equals(methodBinding.selector, cArr)))) {
                TypeBinding[] typeBindingArr = methodBinding.parameters;
                if (typeBindingArr.length >= expressionArr.length) {
                    int length = expressionArr.length - 1;
                    while (true) {
                        if (i10 < length) {
                            TypeBinding typeBinding = expressionArr[i10].resolvedType;
                            i10 = (typeBinding == null || typeBinding.erasure().isCompatibleWith(typeBindingArr[i10].erasure())) ? i10 + 1 : 0;
                        } else {
                            TypeBinding typeBinding2 = methodBinding.parameters[expressionArr.length - 1];
                            if (typeBinding2 != null) {
                                addExpectedType(typeBinding2, scope);
                            }
                        }
                    }
                }
            }
        }
    }

    private void computeExpectedTypesForMessageSendForInterface(ReferenceBinding referenceBinding, char[] cArr, Expression[] expressionArr, ReferenceBinding referenceBinding2, Scope scope, InvocationSite invocationSite, boolean z10) {
        ReferenceBinding[] referenceBindingArr;
        ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
        if (superInterfaces != Binding.NO_SUPERINTERFACES) {
            int length = superInterfaces.length;
            for (int i10 = 0; i10 < length; i10++) {
                ReferenceBinding referenceBinding3 = superInterfaces[i10];
                computeExpectedTypesForMessageSend(referenceBinding3, cArr, expressionArr, referenceBinding2, scope, invocationSite, z10);
                ReferenceBinding[] superInterfaces2 = referenceBinding3.superInterfaces();
                if (superInterfaces2 != Binding.NO_SUPERINTERFACES) {
                    int length2 = length + superInterfaces2.length;
                    if (length2 >= superInterfaces.length) {
                        referenceBindingArr = new ReferenceBinding[length2 + 5];
                        System.arraycopy(superInterfaces, 0, referenceBindingArr, 0, length);
                    } else {
                        referenceBindingArr = superInterfaces;
                    }
                    int i11 = length;
                    for (ReferenceBinding referenceBinding4 : superInterfaces2) {
                        int i12 = 0;
                        while (true) {
                            if (i12 >= i11) {
                                referenceBindingArr[i11] = referenceBinding4;
                                i11++;
                                break;
                            } else if (TypeBinding.equalsEquals(referenceBinding4, referenceBindingArr[i12])) {
                                break;
                            } else {
                                i12++;
                            }
                        }
                    }
                    superInterfaces = referenceBindingArr;
                    length = i11;
                }
            }
        }
    }

    private Scope computeForbiddenBindings(ASTNode aSTNode, ASTNode aSTNode2, Scope scope) {
        if (scope instanceof ClassScope) {
            TypeDeclaration typeDeclaration = ((ClassScope) scope).referenceContext;
            if (typeDeclaration.superclass == aSTNode) {
                addForbiddenBindings(typeDeclaration.binding);
                addForbiddenBindingsForMemberTypes(typeDeclaration);
                return scope.parent;
            }
            TypeReference[] typeReferenceArr = typeDeclaration.superInterfaces;
            int length = typeReferenceArr == null ? 0 : typeReferenceArr.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    i10 = -1;
                    break;
                }
                if (typeReferenceArr[i10] == aSTNode) {
                    addForbiddenBindings(typeDeclaration.binding);
                    addForbiddenBindingsForMemberTypes(typeDeclaration);
                    break;
                }
                i10++;
            }
            if (i10 >= 0) {
                for (int i11 = 0; i11 < i10; i11++) {
                    addForbiddenBindings(typeReferenceArr[i11].resolvedType);
                }
                return scope.parent;
            }
        }
        return scope;
    }

    private char[] computePrefix(SourceTypeBinding sourceTypeBinding, SourceTypeBinding sourceTypeBinding2, boolean z10) {
        StringBuffer stringBuffer = new StringBuffer(10);
        if (z10) {
            stringBuffer.append(sourceTypeBinding.sourceName());
        } else if (TypeBinding.equalsEquals(sourceTypeBinding, sourceTypeBinding2)) {
            stringBuffer.append(THIS);
        } else if (!sourceTypeBinding.isNestedType()) {
            stringBuffer.append(sourceTypeBinding.sourceName());
            stringBuffer.append('.');
            stringBuffer.append(THIS);
        } else if (!sourceTypeBinding.isAnonymousType()) {
            stringBuffer.append(sourceTypeBinding.sourceName());
            stringBuffer.append('.');
            stringBuffer.append(THIS);
        }
        return stringBuffer.toString().toCharArray();
    }

    private int computeRelevanceForAnnotation() {
        return this.assistNodeIsAnnotation ? 20 : 0;
    }

    private int computeRelevanceForAnnotationTarget(TypeBinding typeBinding) {
        if (!this.assistNodeIsAnnotation || (this.targetedElement & TagBits.AnnotationTargetMASK) == 0) {
            return 0;
        }
        long annotationTagBits = typeBinding.getAnnotationTagBits() & TagBits.AnnotationTargetMASK;
        return (annotationTagBits == 0 || (annotationTagBits & this.targetedElement) != 0) ? 5 : 0;
    }

    private int computeRelevanceForClass() {
        return this.assistNodeIsClass ? 20 : 0;
    }

    private int computeRelevanceForConstructor() {
        return this.assistNodeIsConstructor ? 3 : 0;
    }

    private int computeRelevanceForEnum() {
        return this.assistNodeIsEnum ? 20 : 0;
    }

    private int computeRelevanceForEnumConstant(TypeBinding typeBinding) {
        if (this.assistNodeIsEnum && typeBinding != null && this.expectedTypes != null) {
            for (int i10 = 0; i10 <= this.expectedTypesPtr; i10++) {
                if (typeBinding.isEnum() && TypeBinding.equalsEquals(typeBinding, this.expectedTypes[i10])) {
                    return 25;
                }
            }
        }
        return 0;
    }

    private int computeRelevanceForException() {
        return this.assistNodeIsException ? 20 : 0;
    }

    private int computeRelevanceForExpectingType(char[] cArr, char[] cArr2) {
        if (this.expectedTypes != null) {
            for (int i10 = 0; i10 <= this.expectedTypesPtr; i10++) {
                if (CharOperation.equals(this.expectedTypes[i10].qualifiedPackageName(), cArr) && CharOperation.equals(this.expectedTypes[i10].qualifiedSourceName(), cArr2)) {
                    return 30;
                }
            }
            if (this.hasJavaLangObjectAsExpectedType) {
                return 20;
            }
        }
        return 0;
    }

    private int computeRelevanceForFinal(boolean z10, boolean z11) {
        return (z10 && z11) ? 3 : 0;
    }

    private int computeRelevanceForInheritance(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
        return TypeBinding.equalsEquals(referenceBinding, referenceBinding2) ? 2 : 0;
    }

    private int computeRelevanceForInterface() {
        return this.assistNodeIsInterface ? 20 : 0;
    }

    private int computeRelevanceForMissingElements(boolean z10) {
        return !z10 ? 1 : 0;
    }

    private int computeRelevanceForStatic(boolean z10, boolean z11) {
        return (!this.insideQualifiedReference || z10 || z11) ? 0 : 11;
    }

    private int computeRelevanceForSuper(MethodBinding methodBinding, Scope scope, InvocationSite invocationSite) {
        MethodBinding methodBinding2;
        if (!(invocationSite instanceof CompletionOnMemberAccess) || !((CompletionOnMemberAccess) invocationSite).isSuperAccess() || this.parser.assistNodeParent != null) {
            return 0;
        }
        ReferenceContext referenceContext = scope.referenceContext();
        if ((referenceContext instanceof AbstractMethodDeclaration) && (methodBinding2 = ((AbstractMethodDeclaration) referenceContext).binding) != null && CharOperation.equals(methodBinding2.selector, methodBinding.selector)) {
            return methodBinding2.areParameterErasuresEqual(methodBinding) ? 7 : 4;
        }
        return 0;
    }

    private long computeTargetedElement(CompletionOnAnnotationOfType completionOnAnnotationOfType) {
        ASTNode aSTNode = completionOnAnnotationOfType.potentialAnnotatedNode;
        if (aSTNode instanceof TypeDeclaration) {
            return TypeDeclaration.kind(((TypeDeclaration) aSTNode).modifiers) == 4 ? 9011666020728832L : 9007267974217728L;
        }
        if (aSTNode instanceof FieldDeclaration) {
            return completionOnAnnotationOfType.isParameter ? 549755813888L : 137438953472L;
        }
        if (aSTNode instanceof MethodDeclaration) {
            return 274877906944L;
        }
        if (aSTNode instanceof Argument) {
            return 549755813888L;
        }
        if (aSTNode instanceof ConstructorDeclaration) {
            return 1099511627776L;
        }
        if (aSTNode instanceof LocalDeclaration) {
            return 2199023255552L;
        }
        return aSTNode instanceof ImportReference ? 8796093022208L : 0L;
    }

    private TypeBinding[] computeTypes(Expression[] expressionArr) {
        if (expressionArr == null) {
            return null;
        }
        int length = expressionArr.length;
        TypeBinding[] typeBindingArr = new TypeBinding[length];
        while (true) {
            length--;
            if (length < 0) {
                return typeBindingArr;
            }
            typeBindingArr[length] = expressionArr[length].resolvedType;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001c, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private TypeBinding[] computeTypesIfCorrect(Expression[] expressionArr) {
        if (expressionArr == null) {
            return null;
        }
        int length = expressionArr.length;
        TypeBinding[] typeBindingArr = new TypeBinding[length];
        while (true) {
            length--;
            if (length < 0) {
                return typeBindingArr;
            }
            TypeBinding typeBinding = expressionArr[length].resolvedType;
            if (typeBinding == null || !typeBinding.isValidBinding()) {
                break;
            }
            typeBindingArr[length] = typeBinding;
        }
    }

    private void computeUninterestingBindings(ASTNode aSTNode, ASTNode aSTNode2, Scope scope) {
        this.uninterestingBindingsFilter = 0;
        if (aSTNode2 instanceof LocalDeclaration) {
            addUninterestingBindings(((LocalDeclaration) aSTNode2).binding);
            return;
        }
        if (aSTNode2 instanceof FieldDeclaration) {
            addUninterestingBindings(((FieldDeclaration) aSTNode2).binding);
            return;
        }
        if (aSTNode2 instanceof TryStatement) {
            if (aSTNode instanceof CompletionOnSingleTypeReference ? ((CompletionOnSingleTypeReference) aSTNode).isException() : aSTNode instanceof CompletionOnQualifiedTypeReference ? ((CompletionOnQualifiedTypeReference) aSTNode).isException() : aSTNode instanceof CompletionOnParameterizedQualifiedTypeReference ? ((CompletionOnParameterizedQualifiedTypeReference) aSTNode).isException() : false) {
                this.uninterestingBindingsFilter |= 2;
                for (Argument argument : ((TryStatement) aSTNode2).catchArguments) {
                    if ((argument.type instanceof UnionTypeReference) && new CompletionNodeDetector(aSTNode, argument).containsCompletionNode()) {
                        this.uninterestingBindingsFilter |= 1;
                        return;
                    }
                }
            }
        }
    }

    public static char[] createBindingKey(char[] cArr, char[] cArr2) {
        char[] createTypeSignature = createTypeSignature(cArr, cArr2);
        CharOperation.replace(createTypeSignature, '.', '/');
        return createTypeSignature;
    }

    public static char[][] createDefaultParameterNames(int i10) {
        if (i10 == 0) {
            return new char[i10];
        }
        if (i10 == 1) {
            return ARGS1;
        }
        if (i10 == 2) {
            return ARGS2;
        }
        if (i10 == 3) {
            return ARGS3;
        }
        if (i10 == 4) {
            return ARGS4;
        }
        char[][] cArr = new char[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            cArr[i11] = CharOperation.concat(ARG, String.valueOf(i11).toCharArray());
        }
        return cArr;
    }

    private char[] createImportCharArray(char[] cArr, boolean z10, boolean z11) {
        char[] cArr2 = IMPORT;
        if (z10) {
            cArr2 = CharOperation.concat(cArr2, STATIC, C15883c.f126249O);
        }
        char[] concat = CharOperation.concat(cArr2, cArr, C15883c.f126249O);
        if (z11) {
            concat = CharOperation.concat(concat, ON_DEMAND);
        }
        return CharOperation.concat(concat, IMPORT_END);
    }

    private void createMethod(MethodBinding methodBinding, char[][] cArr, char[][] cArr2, char[][] cArr3, Scope scope, StringBuffer stringBuffer) {
        int i10 = methodBinding.modifiers & (-1281);
        if (i10 != 0) {
            ASTNode.printModifiers(i10, stringBuffer);
        }
        TypeVariableBinding[] typeVariableBindingArr = methodBinding.typeVariables;
        if (typeVariableBindingArr != null && typeVariableBindingArr.length != 0) {
            stringBuffer.append('<');
            for (int i11 = 0; i11 < typeVariableBindingArr.length; i11++) {
                if (i11 != 0) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                    stringBuffer.append(C15883c.f126249O);
                }
                createTypeVariable(typeVariableBindingArr[i11], scope, stringBuffer);
            }
            stringBuffer.append('>');
            stringBuffer.append(C15883c.f126249O);
        }
        createType(methodBinding.returnType, scope, stringBuffer);
        stringBuffer.append(C15883c.f126249O);
        stringBuffer.append(methodBinding.selector);
        stringBuffer.append('(');
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        int length = typeBindingArr.length;
        for (int i12 = 0; i12 < length; i12++) {
            if (i12 != 0) {
                stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                stringBuffer.append(C15883c.f126249O);
            }
            createType(typeBindingArr[i12], scope, stringBuffer);
            stringBuffer.append(C15883c.f126249O);
            if (cArr3 != null) {
                stringBuffer.append(cArr3[i12]);
            } else {
                stringBuffer.append(JavaElement.JEM_PACKAGEDECLARATION);
            }
        }
        stringBuffer.append(')');
        ReferenceBinding[] referenceBindingArr = methodBinding.thrownExceptions;
        if (referenceBindingArr == null || referenceBindingArr.length <= 0) {
            return;
        }
        stringBuffer.append(C15883c.f126249O);
        stringBuffer.append(THROWS);
        stringBuffer.append(C15883c.f126249O);
        for (int i13 = 0; i13 < referenceBindingArr.length; i13++) {
            if (i13 != 0) {
                stringBuffer.append(C15883c.f126249O);
                stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            createType(referenceBindingArr[i13], scope, stringBuffer);
        }
    }

    public static char[] createMethodSignature(char[][] cArr, char[][] cArr2, char[] cArr3) {
        int length = cArr2.length;
        char[][] cArr4 = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr4[i10] = Signature.createCharArrayTypeSignature(CharOperation.concat(cArr[i10], CharOperation.replaceOnCopy(cArr2[i10], '.', '$'), '.'), true);
        }
        return Signature.createMethodSignature(cArr4, cArr3);
    }

    public static char[] createNonGenericTypeSignature(char[] cArr, char[] cArr2) {
        return Signature.createCharArrayTypeSignature(CharOperation.concat(cArr, CharOperation.replaceOnCopy(cArr2, '.', '$'), '.'), true);
    }

    private CompletionProposal createRequiredTypeProposal(Binding binding, int i10, int i11, int i12) {
        if (!(binding instanceof ReferenceBinding)) {
            if (!(binding instanceof PackageBinding)) {
                return null;
            }
            char[] concatWith = CharOperation.concatWith(((PackageBinding) binding).compoundName, '.');
            InternalCompletionProposal createProposal = createProposal(8, this.actualCompletionPosition);
            createProposal.setDeclarationSignature(concatWith);
            createProposal.setPackageName(concatWith);
            createProposal.setCompletion(concatWith);
            int i13 = this.offset;
            createProposal.setReplaceRange(i10 - i13, i11 - i13);
            int i14 = this.offset;
            createProposal.setTokenRange(i10 - i14, i11 - i14);
            createProposal.setRelevance(i12);
            return createProposal;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) binding;
        char[] qualifiedPackageName = referenceBinding.qualifiedPackageName();
        char[] qualifiedSourceName = referenceBinding.qualifiedSourceName();
        char[] concat = CharOperation.concat(qualifiedPackageName, qualifiedSourceName, '.');
        InternalCompletionProposal createProposal2 = createProposal(9, this.actualCompletionPosition);
        createProposal2.nameLookup = this.nameEnvironment.nameLookup;
        createProposal2.completionEngine = this;
        createProposal2.setDeclarationSignature(qualifiedPackageName);
        createProposal2.setSignature(getRequiredTypeSignature(referenceBinding));
        createProposal2.setPackageName(qualifiedPackageName);
        createProposal2.setTypeName(qualifiedSourceName);
        createProposal2.setCompletion(concat);
        createProposal2.setFlags(referenceBinding.modifiers);
        int i15 = this.offset;
        createProposal2.setReplaceRange(i10 - i15, i11 - i15);
        int i16 = this.offset;
        createProposal2.setTokenRange(i10 - i16, i11 - i16);
        createProposal2.setRelevance(i12);
        return createProposal2;
    }

    private void createType(TypeBinding typeBinding, Scope scope, StringBuffer stringBuffer) {
        int kind = typeBinding.kind();
        int i10 = 0;
        if (kind == 68) {
            createType(typeBinding.leafComponentType(), scope, stringBuffer);
            int dimensions = typeBinding.dimensions();
            while (i10 < dimensions) {
                stringBuffer.append('[');
                stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
                i10++;
            }
            return;
        }
        if (kind == 132) {
            stringBuffer.append(typeBinding.sourceName());
            return;
        }
        if (kind == 260) {
            ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) typeBinding;
            if (typeBinding.isMemberType()) {
                createType(parameterizedTypeBinding.enclosingType(), scope, stringBuffer);
                stringBuffer.append('.');
                stringBuffer.append(parameterizedTypeBinding.sourceName);
            } else {
                stringBuffer.append(CharOperation.concatWith(parameterizedTypeBinding.genericType().compoundName, '.'));
            }
            if (parameterizedTypeBinding.arguments != null) {
                stringBuffer.append('<');
                int length = parameterizedTypeBinding.arguments.length;
                while (i10 < length) {
                    if (i10 != 0) {
                        stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                    }
                    createType(parameterizedTypeBinding.arguments[i10], scope, stringBuffer);
                    i10++;
                }
                stringBuffer.append('>');
                return;
            }
            return;
        }
        if (kind != 516 && kind != 8196) {
            char[] qualifiedPackageName = typeBinding.qualifiedPackageName();
            char[] qualifiedSourceName = typeBinding.qualifiedSourceName();
            if (mustQualifyType((ReferenceBinding) typeBinding, qualifiedPackageName, scope)) {
                stringBuffer.append(CharOperation.concat(qualifiedPackageName, qualifiedSourceName, '.'));
                return;
            } else {
                stringBuffer.append(typeBinding.sourceName());
                return;
            }
        }
        WildcardBinding wildcardBinding = (WildcardBinding) typeBinding;
        stringBuffer.append('?');
        int i11 = wildcardBinding.boundKind;
        if (i11 != 1) {
            if (i11 != 2) {
                return;
            }
            stringBuffer.append(C15883c.f126249O);
            stringBuffer.append(SUPER);
            stringBuffer.append(C15883c.f126249O);
            createType(wildcardBinding.bound, scope, stringBuffer);
            return;
        }
        stringBuffer.append(C15883c.f126249O);
        stringBuffer.append(EXTENDS);
        stringBuffer.append(C15883c.f126249O);
        createType(wildcardBinding.bound, scope, stringBuffer);
        TypeBinding[] typeBindingArr = wildcardBinding.otherBounds;
        if (typeBindingArr != null) {
            int length2 = typeBindingArr.length;
            while (i10 < length2) {
                stringBuffer.append(C15883c.f126249O);
                stringBuffer.append('&');
                stringBuffer.append(C15883c.f126249O);
                createType(wildcardBinding.otherBounds[i10], scope, stringBuffer);
                i10++;
            }
        }
    }

    private void createTypeParameterProposal(TypeParameter typeParameter, int i10) {
        char[] cArr = typeParameter.name;
        if (!this.requestor.isIgnored(9)) {
            InternalCompletionProposal internalCompletionProposal = (InternalCompletionProposal) CompletionProposal.create(9, this.actualCompletionPosition - this.offset);
            internalCompletionProposal.nameLookup = this.nameEnvironment.nameLookup;
            internalCompletionProposal.completionEngine = this;
            internalCompletionProposal.setSignature(Engine.getSignature(typeParameter.binding));
            internalCompletionProposal.setTypeName(cArr);
            internalCompletionProposal.setCompletion(cArr);
            internalCompletionProposal.setFlags(typeParameter.modifiers);
            int i11 = this.startPosition;
            int i12 = this.offset;
            internalCompletionProposal.setReplaceRange(i11 - i12, this.endPosition - i12);
            int i13 = this.tokenStart;
            int i14 = this.offset;
            internalCompletionProposal.setTokenRange(i13 - i14, this.tokenEnd - i14);
            internalCompletionProposal.setRelevance(i10);
            this.requestor.accept(internalCompletionProposal);
            if (DEBUG) {
                printDebug(internalCompletionProposal);
            }
        }
        if ((this.assistNodeInJavadoc & 4) == 0 || this.requestor.isIgnored(16)) {
            return;
        }
        char[] inlineTagCompletion = inlineTagCompletion(cArr, JavadocTagConstants.TAG_LINK);
        InternalCompletionProposal internalCompletionProposal2 = (InternalCompletionProposal) CompletionProposal.create(16, this.actualCompletionPosition - this.offset);
        internalCompletionProposal2.nameLookup = this.nameEnvironment.nameLookup;
        internalCompletionProposal2.completionEngine = this;
        internalCompletionProposal2.setSignature(Engine.getSignature(typeParameter.binding));
        internalCompletionProposal2.setTypeName(inlineTagCompletion);
        internalCompletionProposal2.setCompletion(inlineTagCompletion);
        internalCompletionProposal2.setFlags(typeParameter.modifiers);
        int i15 = this.startPosition;
        int i16 = this.offset;
        internalCompletionProposal2.setReplaceRange(i15 - i16, this.endPosition - i16);
        int i17 = this.tokenStart;
        int i18 = this.offset;
        internalCompletionProposal2.setTokenRange(i17 - i18, this.tokenEnd - i18);
        internalCompletionProposal2.setRelevance(i10 + 31);
        this.requestor.accept(internalCompletionProposal2);
        if (DEBUG) {
            printDebug(internalCompletionProposal2);
        }
    }

    private void createTypeProposal(char[] cArr, char[] cArr2, int i10, int i11, char[] cArr3, int i12) {
        if (!this.requestor.isIgnored(9) && (this.assistNodeInJavadoc & 16) == 0) {
            InternalCompletionProposal internalCompletionProposal = (InternalCompletionProposal) CompletionProposal.create(9, this.actualCompletionPosition - this.offset);
            internalCompletionProposal.nameLookup = this.nameEnvironment.nameLookup;
            internalCompletionProposal.completionEngine = this;
            internalCompletionProposal.setDeclarationSignature(cArr);
            internalCompletionProposal.setSignature(createNonGenericTypeSignature(cArr, cArr2));
            internalCompletionProposal.setPackageName(cArr);
            internalCompletionProposal.setTypeName(cArr2);
            internalCompletionProposal.setCompletion(cArr3);
            internalCompletionProposal.setFlags(i10);
            int i13 = this.startPosition;
            int i14 = this.offset;
            internalCompletionProposal.setReplaceRange(i13 - i14, this.endPosition - i14);
            int i15 = this.tokenStart;
            int i16 = this.offset;
            internalCompletionProposal.setTokenRange(i15 - i16, this.tokenEnd - i16);
            internalCompletionProposal.setRelevance(i12);
            internalCompletionProposal.setAccessibility(i11);
            this.requestor.accept(internalCompletionProposal);
            if (DEBUG) {
                printDebug(internalCompletionProposal);
            }
        }
        if ((this.assistNodeInJavadoc & 4) == 0 || this.requestor.isIgnored(16)) {
            return;
        }
        char[] inlineTagCompletion = inlineTagCompletion(cArr3, JavadocTagConstants.TAG_LINK);
        InternalCompletionProposal internalCompletionProposal2 = (InternalCompletionProposal) CompletionProposal.create(16, this.actualCompletionPosition - this.offset);
        internalCompletionProposal2.nameLookup = this.nameEnvironment.nameLookup;
        internalCompletionProposal2.completionEngine = this;
        internalCompletionProposal2.setDeclarationSignature(cArr);
        internalCompletionProposal2.setSignature(createNonGenericTypeSignature(cArr, cArr2));
        internalCompletionProposal2.setPackageName(cArr);
        internalCompletionProposal2.setTypeName(cArr2);
        internalCompletionProposal2.setCompletion(inlineTagCompletion);
        internalCompletionProposal2.setFlags(i10);
        int i17 = (this.assistNodeInJavadoc & 32) != 0 ? this.javadocTagPosition : this.startPosition;
        int i18 = this.offset;
        internalCompletionProposal2.setReplaceRange(i17 - i18, this.endPosition - i18);
        int i19 = this.tokenStart;
        int i20 = this.offset;
        internalCompletionProposal2.setTokenRange(i19 - i20, this.tokenEnd - i20);
        internalCompletionProposal2.setRelevance(i12 + 31);
        internalCompletionProposal2.setAccessibility(i11);
        this.requestor.accept(internalCompletionProposal2);
        if (DEBUG) {
            printDebug(internalCompletionProposal2);
        }
    }

    public static char[] createTypeSignature(char[] cArr, char[] cArr2) {
        int length = cArr2.length;
        char[] cArr3 = new char[length];
        int i10 = 0;
        System.arraycopy(cArr2, 0, cArr3, 0, cArr2.length);
        for (int i11 = length - 1; i11 >= 0; i11--) {
            char c10 = cArr3[i11];
            if (c10 != '.') {
                if (c10 == '<') {
                    i10--;
                } else if (c10 == '>') {
                    i10++;
                }
            } else if (i10 == 0 && cArr3[i11 - 1] != '>') {
                cArr3[i11] = '$';
            }
        }
        return Signature.createCharArrayTypeSignature(CharOperation.concat(cArr, cArr3, '.'), true);
    }

    private void createTypeVariable(TypeVariableBinding typeVariableBinding, Scope scope, StringBuffer stringBuffer) {
        stringBuffer.append(typeVariableBinding.sourceName);
        ReferenceBinding referenceBinding = typeVariableBinding.superclass;
        if (referenceBinding != null && TypeBinding.equalsEquals(typeVariableBinding.firstBound, referenceBinding)) {
            stringBuffer.append(C15883c.f126249O);
            stringBuffer.append(EXTENDS);
            stringBuffer.append(C15883c.f126249O);
            createType(typeVariableBinding.superclass, scope, stringBuffer);
        }
        ReferenceBinding[] referenceBindingArr = typeVariableBinding.superInterfaces;
        if (referenceBindingArr == null || referenceBindingArr == Binding.NO_SUPERINTERFACES) {
            return;
        }
        if (TypeBinding.notEquals(typeVariableBinding.firstBound, typeVariableBinding.superclass)) {
            stringBuffer.append(C15883c.f126249O);
            stringBuffer.append(EXTENDS);
            stringBuffer.append(C15883c.f126249O);
        }
        int length = typeVariableBinding.superInterfaces.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 > 0 || TypeBinding.equalsEquals(typeVariableBinding.firstBound, typeVariableBinding.superclass)) {
                stringBuffer.append(C15883c.f126249O);
                stringBuffer.append(EXTENDS);
                stringBuffer.append(C15883c.f126249O);
            }
            createType(typeVariableBinding.superInterfaces[i10], scope, stringBuffer);
        }
    }

    private void createVargsType(TypeBinding typeBinding, Scope scope, StringBuffer stringBuffer) {
        if (!typeBinding.isArrayType()) {
            createType(typeBinding, scope, stringBuffer);
            return;
        }
        createType(typeBinding.leafComponentType(), scope, stringBuffer);
        int dimensions = typeBinding.dimensions() - 1;
        for (int i10 = 0; i10 < dimensions; i10++) {
            stringBuffer.append('[');
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        stringBuffer.append(VARARGS);
    }

    private void debugPrintf() {
        CategorizedProblem categorizedProblem;
        if (!this.noProposal || (categorizedProblem = this.problem) == null) {
            return;
        }
        this.requestor.completionFailure(categorizedProblem);
        if (DEBUG) {
            printDebug(this.problem);
        }
    }

    private void findAnnotationAttributes(char[] cArr, MemberValuePair[] memberValuePairArr, ReferenceBinding referenceBinding) {
        for (MethodBinding methodBinding : referenceBinding.availableMethods()) {
            if (!isFailedMatch(cArr, methodBinding.selector)) {
                int length = memberValuePairArr == null ? 0 : memberValuePairArr.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal(methodBinding) + computeRelevanceForCaseMatching(cArr, methodBinding.selector) + computeRelevanceForQualification(false) + computeRelevanceForRestrictions(0);
                        this.noProposal = false;
                        if (!this.requestor.isIgnored(13)) {
                            InternalCompletionProposal createProposal = createProposal(13, this.actualCompletionPosition);
                            createProposal.setDeclarationSignature(Engine.getSignature(methodBinding.declaringClass));
                            createProposal.setSignature(Engine.getSignature(methodBinding.returnType));
                            createProposal.setName(methodBinding.selector);
                            char[] cArr2 = methodBinding.selector;
                            if (JavaCore.INSERT.equals(this.javaProject.getOption(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_ASSIGNMENT_OPERATOR, true))) {
                                cArr2 = CharOperation.concat(cArr2, new char[]{C15883c.f126249O});
                            }
                            char[] concat = CharOperation.concat(cArr2, new char[]{'='});
                            if (JavaCore.INSERT.equals(this.javaProject.getOption(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_ASSIGNMENT_OPERATOR, true))) {
                                concat = CharOperation.concat(concat, new char[]{C15883c.f126249O});
                            }
                            createProposal.setCompletion(concat);
                            createProposal.setFlags(methodBinding.modifiers);
                            int i11 = this.startPosition;
                            int i12 = this.offset;
                            createProposal.setReplaceRange(i11 - i12, this.endPosition - i12);
                            int i13 = this.tokenStart;
                            int i14 = this.offset;
                            createProposal.setTokenRange(i13 - i14, this.tokenEnd - i14);
                            createProposal.setRelevance(computeBaseRelevance);
                            this.requestor.accept(createProposal);
                            if (DEBUG) {
                                printDebug(createProposal);
                            }
                        }
                    } else if (CharOperation.equals(methodBinding.selector, memberValuePairArr[i10].name, false)) {
                        break;
                    } else {
                        i10++;
                    }
                }
            }
        }
    }

    private void findClassField(char[] cArr, TypeBinding typeBinding, Scope scope, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z10) {
        if (cArr == null) {
            return;
        }
        int length = cArr.length;
        char[] cArr2 = classField;
        if (length <= cArr2.length) {
            if (CharOperation.prefixEquals(cArr, cArr2, false)) {
                int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForCaseMatching(cArr, cArr2) + computeRelevanceForExpectingType(scope.getJavaLangClass()) + computeRelevanceForRestrictions(0) + 2;
                if (bindingArr != null) {
                    computeBaseRelevance += computeRelevanceForMissingElements(z10);
                }
                this.noProposal = false;
                if (isIgnored(2, bindingArr != null)) {
                    return;
                }
                InternalCompletionProposal createProposal = createProposal(2, this.actualCompletionPosition);
                char[][] cArr3 = TypeConstants.JAVA_LANG;
                char[] concatWith = CharOperation.concatWith(cArr3, '.');
                char[] cArr4 = CLASS;
                char[] createNonGenericTypeSignature = createNonGenericTypeSignature(concatWith, cArr4);
                if (this.compilerOptions.sourceLevel > ClassFileConstants.JDK1_4) {
                    char[] typeSignature = Engine.getTypeSignature(typeBinding);
                    int length2 = createNonGenericTypeSignature.length;
                    int length3 = typeSignature.length;
                    int i10 = length2 + length3;
                    char[] cArr5 = new char[i10 + 2];
                    int i11 = length2 - 1;
                    System.arraycopy(createNonGenericTypeSignature, 0, cArr5, 0, i11);
                    cArr5[i11] = '<';
                    System.arraycopy(typeSignature, 0, cArr5, length2, length3);
                    cArr5[i10] = '>';
                    cArr5[i10 + 1] = ';';
                    createNonGenericTypeSignature = cArr5;
                }
                createProposal.setSignature(createNonGenericTypeSignature);
                createProposal.setPackageName(CharOperation.concatWith(cArr3, '.'));
                createProposal.setTypeName(cArr4);
                createProposal.setName(cArr2);
                if (bindingArr != null) {
                    CompletionProposal[] completionProposalArr = new CompletionProposal[bindingArr.length];
                    for (int i12 = 0; i12 < bindingArr.length; i12++) {
                        completionProposalArr[i12] = createRequiredTypeProposal(bindingArr[i12], iArr[i12], iArr2[i12], computeBaseRelevance);
                    }
                    createProposal.setRequiredProposals(completionProposalArr);
                }
                createProposal.setCompletion(classField);
                createProposal.setFlags(9);
                int i13 = this.startPosition;
                int i14 = this.offset;
                createProposal.setReplaceRange(i13 - i14, this.endPosition - i14);
                int i15 = this.tokenStart;
                int i16 = this.offset;
                createProposal.setTokenRange(i15 - i16, this.tokenEnd - i16);
                createProposal.setRelevance(computeBaseRelevance);
                this.requestor.accept(createProposal);
                if (DEBUG) {
                    printDebug(createProposal);
                }
            }
        }
    }

    private void findConstructorsFromMissingType(TypeReference typeReference, final TypeBinding[] typeBindingArr, final Scope scope, final InvocationSite invocationSite) {
        new MissingTypesGuesser(this).guess(typeReference, scope, new MissingTypesGuesser.GuessedTypeRequestor() {
            @Override
            public void accept(TypeBinding typeBinding, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z10) {
                if (typeBinding instanceof ReferenceBinding) {
                    ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding;
                    if (!CompletionEngine.this.isIgnored(6, bindingArr != null) && referenceBinding.isClass() && !referenceBinding.isAbstract()) {
                        CompletionEngine.this.findConstructors(referenceBinding, typeBindingArr, scope, invocationSite, false, bindingArr, iArr, iArr2, z10);
                    }
                    CompletionEngine.this.checkCancel();
                    if (CompletionEngine.this.isIgnored(1, bindingArr != null) || referenceBinding.isFinal() || referenceBinding.isEnum()) {
                        return;
                    }
                    CompletionEngine.this.findAnonymousType(referenceBinding, typeBindingArr, scope, invocationSite, bindingArr, iArr, iArr2, z10);
                }
            }
        });
    }

    private void findConstructorsOrAnonymousTypes(ReferenceBinding referenceBinding, Scope scope, InvocationSite invocationSite, boolean z10, int i10) {
        if (!isIgnored(26, 9) && referenceBinding.isClass() && !referenceBinding.isAbstract()) {
            findConstructors(referenceBinding, null, scope, invocationSite, false, null, null, null, false, false, z10, i10);
        }
        if (isIgnored(27, 9) || referenceBinding.isFinal()) {
            return;
        }
        if (referenceBinding.isInterface() || (referenceBinding.isClass() && referenceBinding.isAbstract())) {
            findAnonymousType(referenceBinding, null, scope, invocationSite, null, null, null, false, false, z10, i10);
        }
    }

    private char[][] findEnclosingTypeNames(Scope scope) {
        TypeParameter[] typeParameters;
        char[][] cArr = new char[10];
        int i10 = 0;
        while (scope != null) {
            int i11 = scope.kind;
            if (i11 == 2) {
                ReferenceContext referenceContext = ((MethodScope) scope).referenceContext;
                if ((referenceContext instanceof AbstractMethodDeclaration) && (typeParameters = ((AbstractMethodDeclaration) referenceContext).typeParameters()) != null) {
                    int i12 = 0;
                    while (i12 < typeParameters.length) {
                        TypeParameter typeParameter = typeParameters[i12];
                        if (i10 == cArr.length) {
                            char[][] cArr2 = new char[i10 * 2];
                            System.arraycopy(cArr, 0, cArr2, 0, i10);
                            cArr = cArr2;
                        }
                        cArr[i10] = typeParameter.name;
                        i12++;
                        i10++;
                    }
                }
            } else if (i11 == 3) {
                TypeDeclaration typeDeclaration = ((ClassScope) scope).referenceContext;
                if (i10 == cArr.length) {
                    char[][] cArr3 = new char[i10 * 2];
                    System.arraycopy(cArr, 0, cArr3, 0, i10);
                    cArr = cArr3;
                }
                int i13 = i10 + 1;
                cArr[i10] = typeDeclaration.name;
                TypeParameter[] typeParameterArr = typeDeclaration.typeParameters;
                if (typeParameterArr != null) {
                    int i14 = 0;
                    while (i14 < typeParameterArr.length) {
                        TypeParameter typeParameter2 = typeParameterArr[i14];
                        if (i13 == cArr.length) {
                            char[][] cArr4 = new char[i13 * 2];
                            System.arraycopy(cArr, 0, cArr4, 0, i13);
                            cArr = cArr4;
                        }
                        cArr[i13] = typeParameter2.name;
                        i14++;
                        i13++;
                    }
                }
                i10 = i13;
            }
            scope = scope.parent;
        }
        if (i10 == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        char[][] cArr5 = new char[i10];
        System.arraycopy(cArr, 0, cArr5, 0, i10);
        return cArr5;
    }

    private void findEnumConstants(char[] cArr, ReferenceBinding referenceBinding, Scope scope, ObjectVector objectVector, char[][] cArr2, int i10, boolean z10) {
        boolean z11;
        boolean z12 = false;
        FieldBinding[] fields = referenceBinding.fields();
        int length = cArr.length;
        int length2 = fields.length;
        while (true) {
            length2--;
            if (length2 < 0) {
                return;
            }
            FieldBinding fieldBinding = fields[length2];
            if (!fieldBinding.isSynthetic() && (fieldBinding.modifiers & 16384) != 0) {
                char[] cArr3 = fieldBinding.name;
                if (length <= cArr3.length && !isFailedMatch(cArr, cArr3)) {
                    char[] cArr4 = fieldBinding.name;
                    int i11 = z12 ? 1 : 0;
                    while (true) {
                        if (i11 >= i10) {
                            int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal(fieldBinding) + computeRelevanceForCaseMatching(cArr, fieldBinding.name) + computeRelevanceForExpectingType(fieldBinding.type) + computeRelevanceForEnumConstant(fieldBinding.type) + computeRelevanceForQualification(z10) + computeRelevanceForRestrictions(z12 ? 1 : 0);
                            this.noProposal = z12;
                            if (z10) {
                                TypeBinding type = scope.getType(fieldBinding.type.sourceName());
                                boolean z13 = (type == null || !type.isValidBinding()) ? true : z12 ? 1 : 0;
                                char[] concat = CharOperation.concat(fieldBinding.type.sourceName(), fieldBinding.name, '.');
                                if (z13) {
                                    if (!isIgnored(2, 23)) {
                                        int i12 = this.unitScope.referenceContext.types[z12 ? 1 : 0].declarationSourceStart;
                                        ReferenceBinding referenceBinding2 = (ReferenceBinding) fieldBinding.type;
                                        InternalCompletionProposal createProposal = createProposal(2, this.actualCompletionPosition);
                                        createProposal.setBinding(fieldBinding);
                                        createProposal.setDeclarationSignature(Engine.getSignature(fieldBinding.declaringClass));
                                        createProposal.setSignature(Engine.getSignature(fieldBinding.type));
                                        createProposal.setDeclarationPackageName(fieldBinding.declaringClass.qualifiedPackageName());
                                        createProposal.setDeclarationTypeName(fieldBinding.declaringClass.qualifiedSourceName());
                                        createProposal.setPackageName(fieldBinding.type.qualifiedPackageName());
                                        createProposal.setTypeName(fieldBinding.type.qualifiedSourceName());
                                        createProposal.setName(fieldBinding.name);
                                        createProposal.setCompletion(concat);
                                        createProposal.setFlags(fieldBinding.modifiers);
                                        int i13 = this.startPosition;
                                        int i14 = this.offset;
                                        createProposal.setReplaceRange(i13 - i14, this.endPosition - i14);
                                        int i15 = this.tokenStart;
                                        int i16 = this.offset;
                                        createProposal.setTokenRange(i15 - i16, this.tokenEnd - i16);
                                        createProposal.setRelevance(computeBaseRelevance);
                                        char[] createImportCharArray = createImportCharArray(CharOperation.concatWith(referenceBinding2.compoundName, '.'), false, false);
                                        InternalCompletionProposal createProposal2 = createProposal(23, this.actualCompletionPosition);
                                        createProposal2.nameLookup = this.nameEnvironment.nameLookup;
                                        createProposal2.completionEngine = this;
                                        char[] qualifiedPackageName = referenceBinding2.qualifiedPackageName();
                                        createProposal2.setDeclarationSignature(qualifiedPackageName);
                                        createProposal2.setSignature(Engine.getSignature(referenceBinding2));
                                        createProposal2.setPackageName(qualifiedPackageName);
                                        createProposal2.setTypeName(referenceBinding2.qualifiedSourceName());
                                        createProposal2.setCompletion(createImportCharArray);
                                        createProposal2.setFlags(referenceBinding2.modifiers);
                                        z11 = false;
                                        createProposal2.setAdditionalFlags(0);
                                        int i17 = this.offset;
                                        createProposal2.setReplaceRange(i12 - i17, i12 - i17);
                                        int i18 = this.offset;
                                        createProposal2.setTokenRange(i12 - i18, i12 - i18);
                                        createProposal2.setRelevance(computeBaseRelevance);
                                        createProposal.setRequiredProposals(new CompletionProposal[]{createProposal2});
                                        this.requestor.accept(createProposal);
                                        if (DEBUG) {
                                            printDebug(createProposal);
                                        }
                                    }
                                } else if (!this.requestor.isIgnored(2)) {
                                    InternalCompletionProposal createProposal3 = createProposal(2, this.actualCompletionPosition);
                                    createProposal3.setDeclarationSignature(Engine.getSignature(fieldBinding.declaringClass));
                                    createProposal3.setSignature(Engine.getSignature(fieldBinding.type));
                                    createProposal3.setDeclarationPackageName(fieldBinding.declaringClass.qualifiedPackageName());
                                    createProposal3.setDeclarationTypeName(fieldBinding.declaringClass.qualifiedSourceName());
                                    createProposal3.setPackageName(fieldBinding.type.qualifiedPackageName());
                                    createProposal3.setTypeName(fieldBinding.type.qualifiedSourceName());
                                    createProposal3.setName(fieldBinding.name);
                                    createProposal3.setCompletion(concat);
                                    createProposal3.setFlags(fieldBinding.modifiers);
                                    int i19 = this.startPosition;
                                    int i20 = this.offset;
                                    createProposal3.setReplaceRange(i19 - i20, this.endPosition - i20);
                                    int i21 = this.tokenStart;
                                    int i22 = this.offset;
                                    createProposal3.setTokenRange(i21 - i22, this.tokenEnd - i22);
                                    createProposal3.setRelevance(computeBaseRelevance);
                                    this.requestor.accept(createProposal3);
                                    if (DEBUG) {
                                        printDebug(createProposal3);
                                    }
                                }
                            } else if (!this.requestor.isIgnored(2)) {
                                InternalCompletionProposal createProposal4 = createProposal(2, this.actualCompletionPosition);
                                createProposal4.setBinding(fieldBinding);
                                createProposal4.setDeclarationSignature(Engine.getSignature(fieldBinding.declaringClass));
                                createProposal4.setSignature(Engine.getSignature(fieldBinding.type));
                                createProposal4.setDeclarationPackageName(fieldBinding.declaringClass.qualifiedPackageName());
                                createProposal4.setDeclarationTypeName(fieldBinding.declaringClass.qualifiedSourceName());
                                createProposal4.setPackageName(fieldBinding.type.qualifiedPackageName());
                                createProposal4.setTypeName(fieldBinding.type.qualifiedSourceName());
                                createProposal4.setName(fieldBinding.name);
                                createProposal4.setCompletion(cArr4);
                                createProposal4.setFlags(fieldBinding.modifiers);
                                int i23 = this.startPosition;
                                int i24 = this.offset;
                                createProposal4.setReplaceRange(i23 - i24, this.endPosition - i24);
                                int i25 = this.tokenStart;
                                int i26 = this.offset;
                                createProposal4.setTokenRange(i25 - i26, this.tokenEnd - i26);
                                createProposal4.setRelevance(computeBaseRelevance);
                                this.requestor.accept(createProposal4);
                                if (DEBUG) {
                                    printDebug(createProposal4);
                                }
                            }
                        } else {
                            z11 = z12 ? 1 : 0;
                            if (CharOperation.equals(cArr2[i11], cArr4)) {
                                break;
                            }
                            i11++;
                            z12 = z11;
                        }
                    }
                    z12 = z11;
                }
            }
            z11 = z12;
            z12 = z11;
        }
    }

    private void findEnumConstantsFromExpectedTypes(char[] cArr, Scope scope, ObjectVector objectVector) {
        int i10 = this.expectedTypesPtr + 1;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.expectedTypes[i11].isEnum()) {
                findEnumConstants(cArr, (ReferenceBinding) this.expectedTypes[i11], scope, objectVector, CharOperation.NO_CHAR_CHAR, 0, true);
            }
        }
    }

    private void findEnumConstantsFromSwithStatement(char[] cArr, SwitchStatement switchStatement) {
        TypeBinding typeBinding;
        TypeBinding typeBinding2 = switchStatement.expression.resolvedType;
        if (typeBinding2 == null || !typeBinding2.isEnum()) {
            return;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding2;
        CaseStatement[] caseStatementArr = switchStatement.cases;
        char[][] cArr2 = new char[switchStatement.caseCount];
        int i10 = 0;
        for (int i11 = 0; i11 < switchStatement.caseCount; i11++) {
            Expression expression = caseStatementArr[i11].constantExpression;
            if ((expression instanceof SingleNameReference) && (typeBinding = expression.resolvedType) != null && typeBinding.isEnum()) {
                cArr2[i10] = ((SingleNameReference) caseStatementArr[i11].constantExpression).token;
                i10++;
            }
        }
        findEnumConstants(cArr, referenceBinding, null, new ObjectVector(), cArr2, i10, false);
    }

    private void findExceptionFromTryStatement(char[] cArr, ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2, SourceTypeBinding sourceTypeBinding, BlockScope blockScope, ObjectVector objectVector, boolean z10) {
        Scope scope;
        char[] cArr2;
        CompilationUnitScope compilationUnitScope;
        if (z10) {
            ReferenceBinding javaLangThrowable = blockScope.getJavaLangThrowable();
            if (TypeBinding.notEquals(referenceBinding, javaLangThrowable)) {
                for (ReferenceBinding superclass = referenceBinding.superclass(); superclass != null && TypeBinding.notEquals(superclass, javaLangThrowable); superclass = superclass.superclass()) {
                    findExceptionFromTryStatement(cArr, superclass, referenceBinding2, sourceTypeBinding, blockScope, objectVector, false);
                }
            }
        }
        int length = cArr.length;
        char[] cArr3 = referenceBinding.sourceName;
        if (length > cArr3.length || isFailedMatch(cArr, cArr3)) {
            return;
        }
        if (this.options.checkDeprecation && referenceBinding.isViewedAsDeprecated()) {
            scope = blockScope;
            if (!scope.isDefinedInSameUnit(referenceBinding)) {
                return;
            }
        } else {
            scope = blockScope;
        }
        if (this.options.checkVisibility) {
            if (sourceTypeBinding != null) {
                if (referenceBinding2 != null) {
                    if (!referenceBinding.canBeSeenBy(referenceBinding2, sourceTypeBinding)) {
                        return;
                    }
                } else if (!referenceBinding.canBeSeenBy(referenceBinding, sourceTypeBinding)) {
                    return;
                }
            } else if (!referenceBinding.canBeSeenBy(this.unitScope.fPackage)) {
                return;
            }
        }
        if (isForbidden(referenceBinding)) {
            return;
        }
        int i10 = objectVector.size;
        while (true) {
            i10--;
            boolean z11 = true;
            if (i10 < 0) {
                objectVector.add(referenceBinding);
                char[] sourceName = referenceBinding.sourceName();
                if (this.insideQualifiedReference) {
                    cArr2 = sourceName;
                    z11 = false;
                } else {
                    char[] qualifiedPackageName = referenceBinding.qualifiedPackageName();
                    char[] sourceName2 = referenceBinding.sourceName();
                    char[] qualifiedSourceName = referenceBinding.enclosingType() != null ? referenceBinding.enclosingType().qualifiedSourceName() : null;
                    loop2: while (true) {
                        if (scope == null) {
                            break;
                        }
                        int i11 = scope.kind;
                        if (i11 == 1 || i11 == 2) {
                            BlockScope blockScope2 = (BlockScope) scope;
                            int i12 = blockScope2.subscopeCount;
                            for (int i13 = 0; i13 < i12; i13++) {
                                Scope scope2 = blockScope2.subscopes[i13];
                                if ((scope2 instanceof ClassScope) && TypeBinding.equalsEquals(((ClassScope) scope2).referenceContext.binding, referenceBinding)) {
                                    break loop2;
                                }
                            }
                            scope = scope.parent;
                        } else if (i11 == 3) {
                            ReferenceBinding[] memberTypes = ((ClassScope) scope).referenceContext.binding.memberTypes();
                            if (memberTypes != null) {
                                for (ReferenceBinding referenceBinding3 : memberTypes) {
                                    if (TypeBinding.equalsEquals(referenceBinding3, referenceBinding)) {
                                        break loop2;
                                    }
                                }
                            } else {
                                continue;
                            }
                            scope = scope.parent;
                        } else if (i11 == 4) {
                            SourceTypeBinding[] sourceTypeBindingArr = ((CompilationUnitScope) scope).topLevelTypes;
                            if (sourceTypeBindingArr != null) {
                                for (SourceTypeBinding sourceTypeBinding2 : sourceTypeBindingArr) {
                                    if (!TypeBinding.equalsEquals(sourceTypeBinding2, referenceBinding)) {
                                    }
                                }
                            }
                        } else {
                            scope = scope.parent;
                        }
                    }
                    z11 = false;
                    if (!z11 || !mustQualifyType(qualifiedPackageName, sourceName2, qualifiedSourceName, referenceBinding.modifiers)) {
                        z11 = false;
                    } else if ((qualifiedPackageName == null || qualifiedPackageName.length == 0) && (compilationUnitScope = this.unitScope) != null && compilationUnitScope.fPackage.compoundName != CharOperation.NO_CHAR_CHAR) {
                        return;
                    }
                    cArr2 = z11 ? CharOperation.concat(qualifiedPackageName, CharOperation.concat(qualifiedSourceName, sourceName2, '.'), '.') : sourceName;
                }
                int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal(referenceBinding) + computeRelevanceForCaseMatching(cArr, referenceBinding.sourceName) + computeRelevanceForExpectingType(referenceBinding) + computeRelevanceForRestrictions(0);
                if (!this.insideQualifiedReference) {
                    computeBaseRelevance += computeRelevanceForQualification(z11);
                }
                int computeRelevanceForClass = computeBaseRelevance + computeRelevanceForClass() + computeRelevanceForException();
                this.noProposal = false;
                if (this.requestor.isIgnored(9)) {
                    return;
                }
                createTypeProposal(referenceBinding, referenceBinding.qualifiedSourceName(), 0, cArr2, computeRelevanceForClass, null, null, null, false);
                return;
            }
            ReferenceBinding referenceBinding4 = (ReferenceBinding) objectVector.elementAt(i10);
            if (TypeBinding.equalsEquals(referenceBinding, referenceBinding4)) {
                return;
            }
            if (CharOperation.equals(referenceBinding.sourceName, referenceBinding4.sourceName, true)) {
                if (referenceBinding.enclosingType().isSuperclassOf(referenceBinding4.enclosingType())) {
                    return;
                }
                if (referenceBinding4.enclosingType().isInterface() && referenceBinding.enclosingType().implementsInterface(referenceBinding4.enclosingType(), true)) {
                    return;
                }
                if (referenceBinding.enclosingType().isInterface() && referenceBinding4.enclosingType().implementsInterface(referenceBinding.enclosingType(), true)) {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x002b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findExplicitConstructors(char[] cArr, ReferenceBinding referenceBinding, MethodScope methodScope, InvocationSite invocationSite) {
        char[] concat;
        MethodBinding methodBinding = ((ConstructorDeclaration) methodScope.referenceContext).binding;
        MethodBinding[] availableMethods = referenceBinding.availableMethods();
        if (availableMethods == null) {
            return;
        }
        int length = availableMethods.length;
        while (true) {
            length--;
            if (length < 0) {
                return;
            }
            MethodBinding methodBinding2 = availableMethods[length];
            if (methodBinding2 != methodBinding && methodBinding2.isConstructor() && !methodBinding2.isSynthetic() && (!this.options.checkDeprecation || !methodBinding2.isViewedAsDeprecated() || methodScope.isDefinedInSameUnit(methodBinding2.declaringClass))) {
                if (this.options.checkVisibility && !methodBinding2.canBeSeenBy(invocationSite, methodScope)) {
                }
                TypeBinding[] typeBindingArr = methodBinding2.parameters;
                int length2 = typeBindingArr.length;
                char[][] cArr2 = new char[length2];
                char[][] cArr3 = new char[length2];
                for (int i10 = 0; i10 < length2; i10++) {
                    TypeBinding typeBinding = typeBindingArr[i10];
                    cArr2[i10] = typeBinding.qualifiedPackageName();
                    cArr3[i10] = typeBinding.qualifiedSourceName();
                }
                char[][] findMethodParameterNames = findMethodParameterNames(methodBinding2, cArr3);
                char[] cArr4 = CharOperation.NO_CHAR;
                char[] cArr5 = this.source;
                if (cArr5 != null) {
                    int length3 = cArr5.length;
                    int i11 = this.endPosition;
                    if (length3 > i11 && cArr5[i11] == '(') {
                        concat = cArr;
                        int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForCaseMatching(this.completionToken, cArr) + computeRelevanceForRestrictions(0);
                        this.noProposal = false;
                        if (this.requestor.isIgnored(6)) {
                            InternalCompletionProposal createProposal = createProposal(6, this.actualCompletionPosition);
                            createProposal.setBinding(methodBinding2);
                            createProposal.setDeclarationSignature(Engine.getSignature(referenceBinding));
                            createProposal.setSignature(Engine.getSignature(methodBinding2));
                            MethodBinding original = methodBinding2.original();
                            if (original != methodBinding2) {
                                createProposal.setOriginalSignature(Engine.getSignature(original));
                            }
                            createProposal.setDeclarationPackageName(referenceBinding.qualifiedPackageName());
                            createProposal.setDeclarationTypeName(referenceBinding.qualifiedSourceName());
                            createProposal.setParameterPackageNames(cArr2);
                            createProposal.setParameterTypeNames(cArr3);
                            createProposal.setName(cArr);
                            createProposal.setIsContructor(true);
                            createProposal.setCompletion(concat);
                            createProposal.setFlags(methodBinding2.modifiers);
                            int i12 = this.startPosition;
                            int i13 = this.offset;
                            createProposal.setReplaceRange(i12 - i13, this.endPosition - i13);
                            int i14 = this.tokenStart;
                            int i15 = this.offset;
                            createProposal.setTokenRange(i14 - i15, this.tokenEnd - i15);
                            createProposal.setRelevance(computeBaseRelevance);
                            if (findMethodParameterNames != null) {
                                createProposal.setParameterNames(findMethodParameterNames);
                            }
                            this.requestor.accept(createProposal);
                            if (DEBUG) {
                                printDebug(createProposal);
                            }
                        }
                    }
                }
                concat = CharOperation.concat(cArr, new char[]{'(', ')'});
                int computeBaseRelevance2 = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForCaseMatching(this.completionToken, cArr) + computeRelevanceForRestrictions(0);
                this.noProposal = false;
                if (this.requestor.isIgnored(6)) {
                }
            }
        }
    }

    private void findFields(char[] cArr, FieldBinding[] fieldBindingArr, Scope scope, ObjectVector objectVector, ObjectVector objectVector2, boolean z10, ReferenceBinding referenceBinding, InvocationSite invocationSite, Scope scope2, boolean z11, boolean z12, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z13, char[] cArr2, int i10, int i11) {
        int i12;
        boolean z14;
        int i13;
        boolean z15;
        boolean z16;
        boolean z17;
        TypeBinding typeBinding;
        Expression expression;
        int i14;
        char[] cArr3 = cArr;
        FieldBinding[] fieldBindingArr2 = fieldBindingArr;
        Scope scope3 = scope;
        ObjectVector objectVector3 = objectVector2;
        boolean z18 = z10;
        InvocationSite invocationSite2 = invocationSite;
        char[] cArr4 = cArr2;
        ObjectVector objectVector4 = new ObjectVector();
        int length = fieldBindingArr2.length;
        while (true) {
            int i15 = length - 1;
            if (i15 < 0) {
                i12 = -1;
                z14 = false;
                break;
            }
            FieldBinding fieldBinding = fieldBindingArr2[i15];
            FieldDeclaration sourceField = fieldBinding.sourceField();
            ASTNode aSTNode = this.parser.assistNode;
            if (sourceField != null && sourceField.initialization != null && aSTNode != null) {
                if (CharOperation.equals(this.fileName, fieldBinding.declaringClass.getFileName()) && (i14 = (expression = sourceField.initialization).sourceEnd) > 0) {
                    if (expression.sourceStart <= aSTNode.sourceStart && aSTNode.sourceEnd <= i14) {
                        i12 = fieldBinding.f102483id;
                        z14 = fieldBinding.isStatic();
                        break;
                    }
                } else if (new CompletionNodeDetector(aSTNode, sourceField.initialization).containsCompletionNode()) {
                    i12 = fieldBinding.f102483id;
                    z14 = fieldBinding.isStatic();
                    break;
                }
            }
            cArr3 = cArr;
            fieldBindingArr2 = fieldBindingArr;
            scope3 = scope;
            objectVector3 = objectVector2;
            z18 = z10;
            invocationSite2 = invocationSite;
            cArr4 = cArr2;
            length = i15;
        }
        int length2 = cArr3.length;
        int length3 = fieldBindingArr2.length;
        while (true) {
            length3--;
            if (length3 < 0) {
                objectVector.addAll(objectVector4);
                return;
            }
            FieldBinding fieldBinding2 = fieldBindingArr2[length3];
            if ((i12 < 0 || fieldBinding2.f102483id < i12 || this.assistNodeInJavadoc != 0 || (fieldBinding2.isStatic() && !z14)) && !fieldBinding2.isSynthetic() && (!z18 || fieldBinding2.isStatic())) {
                char[] cArr5 = fieldBinding2.name;
                i13 = i12;
                if (length2 <= cArr5.length && !isFailedMatch(cArr3, cArr5) && ((!this.options.checkDeprecation || !fieldBinding2.isViewedAsDeprecated() || scope3.isDefinedInSameUnit(fieldBinding2.declaringClass)) && ((!this.options.checkVisibility || fieldBinding2.canBeSeenBy(referenceBinding, invocationSite2, scope3)) && (!this.assistNodeIsInsideCase || (fieldBinding2.isFinal() && (!this.assistNodeIsString ? (fieldBinding2.type instanceof BaseTypeBinding) : (typeBinding = fieldBinding2.type) != null && typeBinding.f102482id == 11)))))) {
                    int i16 = objectVector.size;
                    int i17 = -1;
                    boolean z19 = false;
                    while (true) {
                        i16 += i17;
                        if (i16 < 0) {
                            int i18 = objectVector3.size;
                            while (true) {
                                int i19 = i18 + i17;
                                if (i19 < 0) {
                                    z15 = z19;
                                    break;
                                }
                                if (CharOperation.equals(fieldBinding2.name, ((LocalVariableBinding) objectVector3.elementAt(i19)).name, true)) {
                                    SourceTypeBinding enclosingSourceType = scope.enclosingSourceType();
                                    if ((!enclosingSourceType.isAnonymousType() || !TypeBinding.notEquals(enclosingSourceType, scope2.enclosingSourceType())) && z12) {
                                        z15 = true;
                                    }
                                } else {
                                    cArr3 = cArr;
                                    objectVector3 = objectVector2;
                                    z18 = z10;
                                    invocationSite2 = invocationSite;
                                    cArr4 = cArr2;
                                    i18 = i19;
                                    i17 = -1;
                                }
                            }
                            objectVector4.add(new Object[]{fieldBinding2, referenceBinding});
                            char[] cArr6 = fieldBinding2.name;
                            if (z15 || this.options.forceImplicitQualification) {
                                z16 = z14;
                                cArr6 = CharOperation.concat(computePrefix(scope.enclosingSourceType(), scope2.enclosingSourceType(), fieldBinding2.isStatic()), cArr6, '.');
                            } else {
                                z16 = z14;
                            }
                            if (cArr4 != null) {
                                cArr6 = CharOperation.concat(cArr4, cArr6);
                            }
                            if (this.assistNodeInJavadoc > 0 && (invocationSite2 instanceof CompletionOnJavadocFieldReference)) {
                                CompletionOnJavadocFieldReference completionOnJavadocFieldReference = (CompletionOnJavadocFieldReference) invocationSite2;
                                if (completionOnJavadocFieldReference.receiver.isThis()) {
                                    if (completionOnJavadocFieldReference.completeInText()) {
                                        cArr6 = CharOperation.concat(new char[]{JavaElement.JEM_IMPORTDECLARATION}, fieldBinding2.name);
                                    }
                                } else if (completionOnJavadocFieldReference.completeInText()) {
                                    Expression expression2 = completionOnJavadocFieldReference.receiver;
                                    if (expression2 instanceof JavadocSingleTypeReference) {
                                        cArr6 = CharOperation.concat(((JavadocSingleTypeReference) expression2).token, fieldBinding2.name, JavaElement.JEM_IMPORTDECLARATION);
                                    } else if (expression2 instanceof JavadocQualifiedTypeReference) {
                                        cArr6 = CharOperation.concat(CharOperation.concatWith(((JavadocQualifiedTypeReference) expression2).tokens, '.'), fieldBinding2.name, JavaElement.JEM_IMPORTDECLARATION);
                                    }
                                }
                            }
                            int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal(fieldBinding2) + computeRelevanceForCaseMatching(cArr3, fieldBinding2.name) + computeRelevanceForExpectingType(fieldBinding2.type) + computeRelevanceForEnumConstant(fieldBinding2.type) + computeRelevanceForStatic(z18, fieldBinding2.isStatic()) + computeRelevanceForFinal(this.assistNodeIsInsideCase, fieldBinding2.isFinal()) + computeRelevanceForQualification(z15) + computeRelevanceForRestrictions(0);
                            if (z18 && this.insideQualifiedReference) {
                                computeBaseRelevance += computeRelevanceForInheritance(referenceBinding, fieldBinding2.declaringClass);
                            }
                            if (bindingArr != null) {
                                computeBaseRelevance += computeRelevanceForMissingElements(z13);
                            }
                            this.noProposal = false;
                            if (cArr4 == null) {
                                if (!isIgnored(2, bindingArr != null) && (this.assistNodeInJavadoc & 16) == 0) {
                                    InternalCompletionProposal createProposal = createProposal(2, this.actualCompletionPosition);
                                    createProposal.setBinding(fieldBinding2);
                                    createProposal.setDeclarationSignature(Engine.getSignature(fieldBinding2.declaringClass));
                                    createProposal.setSignature(Engine.getSignature(fieldBinding2.type));
                                    createProposal.setDeclarationPackageName(fieldBinding2.declaringClass.qualifiedPackageName());
                                    createProposal.setDeclarationTypeName(fieldBinding2.declaringClass.qualifiedSourceName());
                                    createProposal.setPackageName(fieldBinding2.type.qualifiedPackageName());
                                    createProposal.setTypeName(fieldBinding2.type.qualifiedSourceName());
                                    createProposal.setName(fieldBinding2.name);
                                    if (bindingArr != null) {
                                        CompletionProposal[] completionProposalArr = new CompletionProposal[bindingArr.length];
                                        for (int i20 = 0; i20 < bindingArr.length; i20++) {
                                            completionProposalArr[i20] = createRequiredTypeProposal(bindingArr[i20], iArr[i20], iArr2[i20], computeBaseRelevance);
                                        }
                                        createProposal.setRequiredProposals(completionProposalArr);
                                    }
                                    createProposal.setCompletion(cArr6);
                                    createProposal.setFlags(fieldBinding2.modifiers);
                                    int i21 = this.startPosition;
                                    int i22 = this.offset;
                                    createProposal.setReplaceRange(i21 - i22, this.endPosition - i22);
                                    int i23 = this.tokenStart;
                                    int i24 = this.offset;
                                    createProposal.setTokenRange(i23 - i24, this.tokenEnd - i24);
                                    createProposal.setRelevance(computeBaseRelevance);
                                    this.requestor.accept(createProposal);
                                    if (DEBUG) {
                                        printDebug(createProposal);
                                    }
                                }
                                if ((this.assistNodeInJavadoc & 4) != 0 && !this.requestor.isIgnored(14)) {
                                    char[] inlineTagCompletion = inlineTagCompletion(cArr6, JavadocTagConstants.TAG_LINK);
                                    InternalCompletionProposal createProposal2 = createProposal(14, this.actualCompletionPosition);
                                    createProposal2.setBinding(fieldBinding2);
                                    createProposal2.setDeclarationSignature(Engine.getSignature(fieldBinding2.declaringClass));
                                    createProposal2.setSignature(Engine.getSignature(fieldBinding2.type));
                                    createProposal2.setDeclarationPackageName(fieldBinding2.declaringClass.qualifiedPackageName());
                                    createProposal2.setDeclarationTypeName(fieldBinding2.declaringClass.qualifiedSourceName());
                                    createProposal2.setPackageName(fieldBinding2.type.qualifiedPackageName());
                                    createProposal2.setTypeName(fieldBinding2.type.qualifiedSourceName());
                                    createProposal2.setName(fieldBinding2.name);
                                    createProposal2.setCompletion(inlineTagCompletion);
                                    createProposal2.setFlags(fieldBinding2.modifiers);
                                    int i25 = (this.assistNodeInJavadoc & 32) != 0 ? this.javadocTagPosition : this.startPosition;
                                    int i26 = this.offset;
                                    createProposal2.setReplaceRange(i25 - i26, this.endPosition - i26);
                                    int i27 = this.tokenStart;
                                    int i28 = this.offset;
                                    createProposal2.setTokenRange(i27 - i28, this.tokenEnd - i28);
                                    int i29 = computeBaseRelevance + 31;
                                    createProposal2.setRelevance(i29);
                                    this.requestor.accept(createProposal2);
                                    if (DEBUG) {
                                        printDebug(createProposal2);
                                    }
                                    if (fieldBinding2.isStatic() && !this.requestor.isIgnored(17)) {
                                        char[] inlineTagCompletion2 = inlineTagCompletion(cArr6, JavadocTagConstants.TAG_VALUE);
                                        InternalCompletionProposal createProposal3 = createProposal(17, this.actualCompletionPosition);
                                        createProposal3.setDeclarationSignature(Engine.getSignature(fieldBinding2.declaringClass));
                                        createProposal3.setSignature(Engine.getSignature(fieldBinding2.type));
                                        createProposal3.setDeclarationPackageName(fieldBinding2.declaringClass.qualifiedPackageName());
                                        createProposal3.setDeclarationTypeName(fieldBinding2.declaringClass.qualifiedSourceName());
                                        createProposal3.setPackageName(fieldBinding2.type.qualifiedPackageName());
                                        createProposal3.setTypeName(fieldBinding2.type.qualifiedSourceName());
                                        createProposal3.setName(fieldBinding2.name);
                                        createProposal3.setCompletion(inlineTagCompletion2);
                                        createProposal3.setFlags(fieldBinding2.modifiers);
                                        int i30 = this.offset;
                                        createProposal3.setReplaceRange(i25 - i30, this.endPosition - i30);
                                        int i31 = this.tokenStart;
                                        int i32 = this.offset;
                                        createProposal3.setTokenRange(i31 - i32, this.tokenEnd - i32);
                                        createProposal3.setRelevance(i29);
                                        this.requestor.accept(createProposal3);
                                        if (DEBUG) {
                                            printDebug(createProposal3);
                                        }
                                    }
                                }
                            } else if (!isIgnored(25, bindingArr != null)) {
                                InternalCompletionProposal createProposal4 = createProposal(25, this.actualCompletionPosition);
                                createProposal4.setBinding(fieldBinding2);
                                createProposal4.setDeclarationSignature(Engine.getSignature(fieldBinding2.declaringClass));
                                createProposal4.setSignature(Engine.getSignature(fieldBinding2.type));
                                createProposal4.setReceiverSignature(Engine.getSignature(referenceBinding));
                                createProposal4.setDeclarationPackageName(fieldBinding2.declaringClass.qualifiedPackageName());
                                createProposal4.setDeclarationTypeName(fieldBinding2.declaringClass.qualifiedSourceName());
                                createProposal4.setPackageName(fieldBinding2.type.qualifiedPackageName());
                                createProposal4.setTypeName(fieldBinding2.type.qualifiedSourceName());
                                createProposal4.setName(fieldBinding2.name);
                                if (bindingArr != null) {
                                    CompletionProposal[] completionProposalArr2 = new CompletionProposal[bindingArr.length];
                                    for (int i33 = 0; i33 < bindingArr.length; i33++) {
                                        completionProposalArr2[i33] = createRequiredTypeProposal(bindingArr[i33], iArr[i33], iArr2[i33], computeBaseRelevance);
                                    }
                                    createProposal4.setRequiredProposals(completionProposalArr2);
                                }
                                createProposal4.setCompletion(cArr6);
                                createProposal4.setFlags(fieldBinding2.modifiers);
                                int i34 = this.startPosition;
                                int i35 = this.offset;
                                createProposal4.setReplaceRange(i34 - i35, this.endPosition - i35);
                                int i36 = this.offset;
                                createProposal4.setReceiverRange(i10 - i36, i11 - i36);
                                int i37 = this.tokenStart;
                                int i38 = this.offset;
                                createProposal4.setTokenRange(i37 - i38, this.tokenEnd - i38);
                                createProposal4.setRelevance(computeBaseRelevance);
                                this.requestor.accept(createProposal4);
                                if (DEBUG) {
                                    printDebug(createProposal4);
                                }
                            }
                        } else {
                            z16 = z14;
                            Object[] objArr = (Object[]) objectVector.elementAt(i16);
                            FieldBinding fieldBinding3 = (FieldBinding) objArr[0];
                            ReferenceBinding referenceBinding2 = (ReferenceBinding) objArr[1];
                            if (fieldBinding2 != fieldBinding3 || !TypeBinding.equalsEquals(referenceBinding, referenceBinding2)) {
                                if (!CharOperation.equals(fieldBinding2.name, fieldBinding3.name, true)) {
                                    cArr3 = cArr;
                                    objectVector3 = objectVector2;
                                    z18 = z10;
                                    invocationSite2 = invocationSite;
                                    cArr4 = cArr2;
                                    z14 = z16;
                                    i17 = -1;
                                } else {
                                    if (fieldBinding2.declaringClass.isSuperclassOf(fieldBinding3.declaringClass)) {
                                        break;
                                    }
                                    if (fieldBinding3.declaringClass.isInterface()) {
                                        if (TypeBinding.equalsEquals(fieldBinding2.declaringClass, scope.getJavaLangObject())) {
                                            break;
                                        }
                                        z17 = true;
                                        if (fieldBinding2.declaringClass.implementsInterface(fieldBinding3.declaringClass, true)) {
                                            break;
                                        }
                                    } else {
                                        z17 = true;
                                    }
                                    if ((!fieldBinding2.declaringClass.isInterface() || !fieldBinding3.declaringClass.implementsInterface(fieldBinding2.declaringClass, z17)) && z12) {
                                        cArr3 = cArr;
                                        objectVector3 = objectVector2;
                                        z18 = z10;
                                        cArr4 = cArr2;
                                        z19 = z17;
                                        z14 = z16;
                                        i17 = -1;
                                        invocationSite2 = invocationSite;
                                    }
                                }
                            }
                        }
                    }
                }
                z16 = z14;
            } else {
                i13 = i12;
                z16 = z14;
            }
            cArr3 = cArr;
            fieldBindingArr2 = fieldBindingArr;
            scope3 = scope;
            objectVector3 = objectVector2;
            z18 = z10;
            invocationSite2 = invocationSite;
            cArr4 = cArr2;
            i12 = i13;
            z14 = z16;
        }
    }

    private void findFieldsAndMethodsFromCastedReceiver(ASTNode aSTNode, Binding binding, Scope scope, ObjectVector objectVector, ObjectVector objectVector2, InvocationSite invocationSite, Scope scope2, Expression expression) {
        InstanceOfExpression instanceOfExpression;
        TypeReference typeReference;
        TypeBinding typeBinding;
        char[][] cArr;
        int i10;
        int i11;
        CompletionEngine completionEngine;
        IfStatement ifStatement;
        char[] concat;
        CompletionEngine completionEngine2 = this;
        Binding binding2 = binding;
        Expression expression2 = expression;
        if (aSTNode == null || !(aSTNode instanceof IfStatement)) {
            return;
        }
        IfStatement ifStatement2 = (IfStatement) aSTNode;
        while (true) {
            Expression expression3 = ifStatement2.condition;
            if (!(expression3 instanceof InstanceOfExpression) || (typeBinding = (typeReference = (instanceOfExpression = (InstanceOfExpression) expression3).type).resolvedType) == null) {
                return;
            }
            boolean z10 = false;
            if (expression2 instanceof QualifiedNameReference) {
                QualifiedNameReference qualifiedNameReference = (QualifiedNameReference) expression2;
                cArr = qualifiedNameReference.tokens;
                if (cArr.length != 1) {
                    return;
                }
                long[] jArr = qualifiedNameReference.sourcePositions;
                int i12 = (int) (jArr[0] >>> 32);
                i10 = ((int) jArr[cArr.length - 1]) + 1;
                Expression expression4 = instanceOfExpression.expression;
                if ((expression4 instanceof SingleNameReference) && ((SingleNameReference) expression4).binding == binding2 && ((binding2 instanceof LocalVariableBinding) || (binding2 instanceof FieldBinding))) {
                    z10 = true;
                }
                if (expression4 instanceof FieldReference) {
                    FieldReference fieldReference = (FieldReference) expression4;
                    if ((fieldReference.receiver instanceof ThisReference) && (binding2 instanceof FieldBinding) && fieldReference.binding == binding2) {
                        z10 = true;
                    }
                }
                i11 = i12;
            } else {
                cArr = null;
                if (expression2 instanceof FieldReference) {
                    FieldReference fieldReference2 = (FieldReference) expression2;
                    int i13 = fieldReference2.sourceStart;
                    int i14 = fieldReference2.sourceEnd + 1;
                    if (fieldReference2.receiver instanceof ThisReference) {
                        cArr = new char[][]{THIS, fieldReference2.token};
                        Expression expression5 = instanceOfExpression.expression;
                        if ((expression5 instanceof SingleNameReference) && ((SingleNameReference) expression5).binding == fieldReference2.binding) {
                            z10 = true;
                        }
                        if (expression5 instanceof FieldReference) {
                            FieldReference fieldReference3 = (FieldReference) expression5;
                            if ((fieldReference3.receiver instanceof ThisReference) && fieldReference3.binding == fieldReference2.binding) {
                                z10 = true;
                            }
                        }
                    }
                    i11 = i13;
                    i10 = i14;
                } else {
                    i10 = -1;
                    i11 = -1;
                }
            }
            if (z10) {
                char[] concatWith = CharOperation.concatWith(typeReference.getTypeName(), '.');
                char[] cArr2 = completionEngine2.source;
                if (cArr2 != null) {
                    concat = CharOperation.concat(CharOperation.concat('(', CharOperation.concat(CharOperation.concat('(', concatWith, ')'), CharOperation.subarray(cArr2, i11, i10)), ')'), CharOperation.subarray(completionEngine2.source, i10, completionEngine2.startPosition));
                } else {
                    concat = CharOperation.concat(CharOperation.concat('(', CharOperation.concat(CharOperation.concat('(', concatWith, ')'), CharOperation.concatWith(cArr, '.')), ')'), DOT);
                }
                char[] cArr3 = concat;
                if (cArr3 == null) {
                    return;
                }
                int i15 = completionEngine2.startPosition;
                completionEngine2.startPosition = i11;
                completionEngine = this;
                completionEngine.findFieldsAndMethods(completionEngine2.completionToken, typeBinding, scope, objectVector, objectVector2, invocationSite, scope2, false, false, null, null, null, false, cArr3, i11, i10);
                completionEngine.startPosition = i15;
                ifStatement = ifStatement2;
            } else {
                completionEngine = completionEngine2;
                ifStatement = ifStatement2;
            }
            Statement statement = ifStatement.thenStatement;
            if (!(statement instanceof IfStatement)) {
                return;
            }
            ifStatement2 = (IfStatement) statement;
            binding2 = binding;
            expression2 = expression;
            completionEngine2 = completionEngine;
        }
    }

    private void findFieldsAndMethodsFromFavorites(char[] cArr, Scope scope, InvocationSite invocationSite, Scope scope2, ObjectVector objectVector, ObjectVector objectVector2, ObjectVector objectVector3) {
        MethodBinding[] methodBindingArr;
        ObjectVector objectVector4 = new ObjectVector();
        ImportBinding[] favoriteReferenceBindings = getFavoriteReferenceBindings(scope2);
        if (favoriteReferenceBindings != null && favoriteReferenceBindings.length > 0) {
            for (ImportBinding importBinding : favoriteReferenceBindings) {
                int kind = importBinding.resolvedImport.kind();
                if (kind == 1) {
                    FieldBinding fieldBinding = (FieldBinding) importBinding.resolvedImport;
                    findFieldsFromFavorites(cArr, new FieldBinding[]{fieldBinding}, scope, objectVector2, objectVector, fieldBinding.declaringClass, invocationSite, scope2);
                } else if (kind == 4) {
                    ReferenceBinding referenceBinding = (ReferenceBinding) importBinding.resolvedImport;
                    if (importBinding.onDemand) {
                        findFieldsFromFavorites(cArr, referenceBinding.availableFields(), scope, objectVector2, objectVector, referenceBinding, invocationSite, scope2);
                        findLocalMethodsFromFavorites(cArr, referenceBinding.availableMethods(), scope, objectVector3, objectVector4, referenceBinding, invocationSite, scope2);
                    }
                } else if (kind == 8) {
                    MethodBinding methodBinding = (MethodBinding) importBinding.resolvedImport;
                    MethodBinding[] availableMethods = methodBinding.declaringClass.availableMethods();
                    long binarySearch = ReferenceBinding.binarySearch(methodBinding.selector, availableMethods);
                    if (binarySearch >= 0) {
                        int i10 = (int) binarySearch;
                        int i11 = (((int) (binarySearch >> 32)) - i10) + 1;
                        methodBindingArr = new MethodBinding[i11];
                        System.arraycopy(availableMethods, i10, methodBindingArr, 0, i11);
                    } else {
                        methodBindingArr = Binding.NO_METHODS;
                    }
                    findLocalMethodsFromFavorites(cArr, methodBindingArr, scope, objectVector3, objectVector4, methodBinding.declaringClass, invocationSite, scope2);
                }
            }
        }
        objectVector3.addAll(objectVector4);
    }

    private boolean findFieldsAndMethodsFromMissingFieldType(char[] cArr, Scope scope, InvocationSite invocationSite, boolean z10) {
        TypeBinding typeBinding;
        Scope scope2 = scope;
        while (true) {
            int i10 = scope2.kind;
            if (i10 == 3) {
                ClassScope classScope = (ClassScope) scope2;
                if (!z10) {
                    FieldDeclaration[] fieldDeclarationArr = classScope.referenceContext.fields;
                    int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
                    for (int i11 = 0; i11 < length; i11++) {
                        FieldDeclaration fieldDeclaration = fieldDeclarationArr[i11];
                        if (CharOperation.equals(fieldDeclaration.name, cArr)) {
                            FieldBinding fieldBinding = fieldDeclaration.binding;
                            if (fieldBinding != null && (typeBinding = fieldBinding.type) != null && (typeBinding.tagBits & 128) == 0) {
                                return false;
                            }
                            findFieldsAndMethodsFromMissingType(fieldDeclaration.type, scope2, invocationSite, scope);
                            return true;
                        }
                    }
                }
                z10 = false;
            } else if (i10 == 4) {
                return false;
            }
            scope2 = scope2.parent;
        }
    }

    private void findFieldsAndMethodsFromMissingReturnType(char[] cArr, TypeBinding[] typeBindingArr, Scope scope, InvocationSite invocationSite, boolean z10) {
        MethodDeclaration methodDeclaration;
        MethodBinding methodBinding;
        TypeBinding[] typeBindingArr2;
        TypeBinding typeBinding;
        boolean z11 = z10;
        Scope scope2 = scope;
        while (true) {
            int i10 = scope2.kind;
            if (i10 == 3) {
                ClassScope classScope = (ClassScope) scope2;
                if (!z11) {
                    AbstractMethodDeclaration[] abstractMethodDeclarationArr = classScope.referenceContext.methods;
                    int length = abstractMethodDeclarationArr == null ? 0 : abstractMethodDeclarationArr.length;
                    for (int i11 = 0; i11 < length; i11++) {
                        AbstractMethodDeclaration abstractMethodDeclaration = abstractMethodDeclarationArr[i11];
                        if ((abstractMethodDeclaration instanceof MethodDeclaration) && CharOperation.equals(abstractMethodDeclaration.selector, cArr) && ((methodBinding = (methodDeclaration = (MethodDeclaration) abstractMethodDeclaration).binding) == null || (typeBinding = methodBinding.returnType) == null || (typeBinding.tagBits & 128) != 0)) {
                            Argument[] argumentArr = methodDeclaration.arguments;
                            int length2 = argumentArr == null ? 0 : argumentArr.length;
                            int length3 = typeBindingArr == null ? 0 : typeBindingArr.length;
                            if (length2 != 0) {
                                if (methodBinding == null) {
                                    typeBindingArr2 = new TypeBinding[length2];
                                    for (int i12 = 0; i12 < length2; i12++) {
                                        TypeBinding typeBinding2 = argumentArr[i12].type.resolvedType;
                                        if (!typeBinding2.isValidBinding() && typeBinding2.closestMatch() != null) {
                                            typeBinding2 = typeBinding2.closestMatch();
                                        }
                                        typeBindingArr2[i12] = typeBinding2;
                                    }
                                } else {
                                    typeBindingArr2 = methodBinding.parameters;
                                }
                                if (areParametersCompatibleWith(typeBindingArr2, typeBindingArr, argumentArr[length2 - 1].isVarArgs())) {
                                    findFieldsAndMethodsFromMissingType(methodDeclaration.returnType, scope2, invocationSite, scope);
                                    return;
                                }
                            } else if (length3 == 0) {
                                findFieldsAndMethodsFromMissingType(methodDeclaration.returnType, scope2, invocationSite, scope);
                                return;
                            }
                        }
                    }
                }
                z11 = false;
            } else if (i10 == 4) {
                return;
            }
            scope2 = scope2.parent;
        }
    }

    private void findFieldsAndMethodsFromMissingType(TypeReference typeReference, final Scope scope, final InvocationSite invocationSite, final Scope scope2) {
        new MissingTypesGuesser(this).guess(typeReference, scope, new MissingTypesGuesser.GuessedTypeRequestor() {
            @Override
            public void accept(TypeBinding typeBinding, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z10) {
                CompletionEngine completionEngine = CompletionEngine.this;
                completionEngine.findFieldsAndMethods(completionEngine.completionToken, typeBinding, scope, new ObjectVector(), new ObjectVector(), invocationSite, scope2, false, false, bindingArr, iArr, iArr2, z10, null, -1, -1);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0105, code lost:
    
        if (org.eclipse.jdt.core.compiler.CharOperation.prefixEquals(r8, r3.selector, false) == false) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findFieldsAndMethodsFromStaticImports(char[] cArr, Scope scope, InvocationSite invocationSite, Scope scope2, boolean z10, boolean z11, ObjectVector objectVector, ObjectVector objectVector2, ObjectVector objectVector3, boolean z12, boolean z13) {
        int i10;
        boolean z14;
        ImportBinding[] importBindingArr;
        Binding binding;
        char[] cArr2;
        CompletionEngine completionEngine;
        Binding binding2;
        ImportBinding[] importBindingArr2 = scope.compilationUnitScope().imports;
        boolean z15 = false;
        int i11 = 0;
        while (i11 < importBindingArr2.length) {
            ImportBinding importBinding = importBindingArr2[i11];
            if (!importBinding.isValidBinding() || !importBinding.isStatic() || (binding = importBinding.resolvedImport) == null || !binding.isValidBinding()) {
                i10 = i11;
                z14 = z15;
                importBindingArr = importBindingArr2;
            } else if (!importBinding.onDemand) {
                i10 = i11;
                importBindingArr = importBindingArr2;
                if ((binding.kind() & 1) != 0) {
                    if (z12) {
                        FieldBinding fieldBinding = (FieldBinding) binding;
                        findFields(cArr, new FieldBinding[]{fieldBinding}, scope, objectVector2, objectVector, true, fieldBinding.declaringClass, invocationSite, scope2, true, false, null, null, null, false, null, -1, -1);
                    }
                } else if ((binding.kind() & 8) != 0 && z13 && !z11) {
                    MethodBinding methodBinding = (MethodBinding) binding;
                    if (z10) {
                        cArr2 = cArr;
                        if (CharOperation.equals(cArr2, methodBinding.selector)) {
                            z14 = false;
                            findLocalMethodsFromStaticImports(cArr, methodBinding.declaringClass.getMethods(methodBinding.selector), scope, z10, objectVector3, methodBinding.declaringClass, invocationSite);
                        }
                    } else {
                        cArr2 = cArr;
                    }
                    if (z10) {
                        z14 = false;
                        completionEngine = this;
                    } else {
                        z14 = false;
                        completionEngine = this;
                    }
                    if (completionEngine.options.camelCaseMatch) {
                        if (!CharOperation.camelCaseMatch(cArr2, methodBinding.selector)) {
                        }
                        findLocalMethodsFromStaticImports(cArr, methodBinding.declaringClass.getMethods(methodBinding.selector), scope, z10, objectVector3, methodBinding.declaringClass, invocationSite);
                    }
                }
                z14 = false;
            } else if ((binding.kind() & 4) != 0) {
                if (z12) {
                    binding2 = binding;
                    i10 = i11;
                    importBindingArr = importBindingArr2;
                    findFields(cArr, (ReferenceBinding) binding, scope, objectVector2, objectVector, true, invocationSite, scope2, true, false, null, null, null, false, null, -1, -1);
                } else {
                    binding2 = binding;
                    i10 = i11;
                    importBindingArr = importBindingArr2;
                }
                if (z13 && !z11) {
                    findMethods(cArr, null, null, (ReferenceBinding) binding2, scope, objectVector3, true, z10, invocationSite, scope2, true, false, false, null, null, null, false, null, -1, -1);
                }
                z14 = false;
            } else {
                i10 = i11;
                importBindingArr = importBindingArr2;
                z14 = z15;
            }
            i11 = i10 + 1;
            z15 = z14;
            importBindingArr2 = importBindingArr;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
    
        if (r12.canBeSeenBy(r25, r26, r22) == false) goto L9;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findFieldsFromFavorites(char[] cArr, FieldBinding[] fieldBindingArr, Scope scope, ObjectVector objectVector, ObjectVector objectVector2, ReferenceBinding referenceBinding, InvocationSite invocationSite, Scope scope2) {
        char[] cArr2;
        boolean z10;
        boolean z11;
        char[] cArr3 = cArr;
        boolean z12 = true;
        boolean z13 = false;
        char[] concatWith = CharOperation.concatWith(referenceBinding.compoundName, '.');
        int length = cArr3.length;
        int length2 = fieldBindingArr.length;
        while (true) {
            length2--;
            if (length2 < 0) {
                return;
            }
            FieldBinding fieldBinding = fieldBindingArr[length2];
            if (!fieldBinding.isSynthetic() && fieldBinding.isStatic()) {
                char[] cArr4 = fieldBinding.name;
                if (length <= cArr4.length && !isFailedMatch(cArr3, cArr4) && (!this.options.checkDeprecation || !fieldBinding.isViewedAsDeprecated() || scope.isDefinedInSameUnit(fieldBinding.declaringClass))) {
                    if (!this.options.checkVisibility) {
                    }
                    int i10 = objectVector.size;
                    ?? r72 = z13;
                    while (true) {
                        i10--;
                        if (i10 < 0) {
                            objectVector.add(new Object[]{fieldBinding, referenceBinding});
                            int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal(fieldBinding) + computeRelevanceForCaseMatching(cArr3, fieldBinding.name) + computeRelevanceForExpectingType(fieldBinding.type) + computeRelevanceForEnumConstant(fieldBinding.type) + computeRelevanceForStatic(z12, z12) + computeRelevanceForRestrictions(r72);
                            int i11 = this.unitScope.referenceContext.types[r72].declarationSourceStart;
                            this.noProposal = r72;
                            char[] cArr5 = concatWith;
                            if (this.compilerOptions.complianceLevel < ClassFileConstants.JDK1_5 || !this.options.suggestStaticImport) {
                                cArr2 = cArr5;
                                if (isIgnored(2, 23)) {
                                    z10 = true;
                                } else {
                                    char[] concat = CharOperation.concat(referenceBinding.sourceName, fieldBinding.name, '.');
                                    InternalCompletionProposal createProposal = createProposal(2, this.actualCompletionPosition);
                                    createProposal.setBinding(fieldBinding);
                                    createProposal.setDeclarationSignature(Engine.getSignature(fieldBinding.declaringClass));
                                    createProposal.setSignature(Engine.getSignature(fieldBinding.type));
                                    createProposal.setDeclarationPackageName(fieldBinding.declaringClass.qualifiedPackageName());
                                    createProposal.setDeclarationTypeName(fieldBinding.declaringClass.qualifiedSourceName());
                                    createProposal.setPackageName(fieldBinding.type.qualifiedPackageName());
                                    createProposal.setTypeName(fieldBinding.type.qualifiedSourceName());
                                    createProposal.setName(fieldBinding.name);
                                    createProposal.setCompletion(concat);
                                    createProposal.setFlags(fieldBinding.modifiers);
                                    int i12 = this.startPosition;
                                    int i13 = this.offset;
                                    createProposal.setReplaceRange(i12 - i13, this.endPosition - i13);
                                    int i14 = this.tokenStart;
                                    int i15 = this.offset;
                                    createProposal.setTokenRange(i14 - i15, this.tokenEnd - i15);
                                    createProposal.setRelevance(computeBaseRelevance);
                                    char[] createImportCharArray = createImportCharArray(cArr2, false, false);
                                    InternalCompletionProposal createProposal2 = createProposal(23, this.actualCompletionPosition);
                                    createProposal2.nameLookup = this.nameEnvironment.nameLookup;
                                    createProposal2.completionEngine = this;
                                    char[] qualifiedPackageName = referenceBinding.qualifiedPackageName();
                                    createProposal2.setDeclarationSignature(qualifiedPackageName);
                                    createProposal2.setSignature(Engine.getSignature(referenceBinding));
                                    createProposal2.setPackageName(qualifiedPackageName);
                                    createProposal2.setTypeName(referenceBinding.qualifiedSourceName());
                                    createProposal2.setCompletion(createImportCharArray);
                                    createProposal2.setFlags(referenceBinding.modifiers);
                                    createProposal2.setAdditionalFlags(0);
                                    int i16 = this.offset;
                                    createProposal2.setReplaceRange(i11 - i16, i11 - i16);
                                    int i17 = this.offset;
                                    createProposal2.setTokenRange(i11 - i17, i11 - i17);
                                    createProposal2.setRelevance(computeBaseRelevance);
                                    z10 = true;
                                    createProposal.setRequiredProposals(new CompletionProposal[]{createProposal2});
                                    this.requestor.accept(createProposal);
                                    if (DEBUG) {
                                        printDebug(createProposal);
                                    }
                                }
                                z11 = false;
                            } else {
                                if (isIgnored(2, 21)) {
                                    cArr2 = cArr5;
                                } else {
                                    char[] cArr6 = fieldBinding.name;
                                    InternalCompletionProposal createProposal3 = createProposal(2, this.actualCompletionPosition);
                                    createProposal3.setBinding(fieldBinding);
                                    createProposal3.setDeclarationSignature(Engine.getSignature(fieldBinding.declaringClass));
                                    createProposal3.setSignature(Engine.getSignature(fieldBinding.type));
                                    createProposal3.setDeclarationPackageName(fieldBinding.declaringClass.qualifiedPackageName());
                                    createProposal3.setDeclarationTypeName(fieldBinding.declaringClass.qualifiedSourceName());
                                    createProposal3.setPackageName(fieldBinding.type.qualifiedPackageName());
                                    createProposal3.setTypeName(fieldBinding.type.qualifiedSourceName());
                                    createProposal3.setName(fieldBinding.name);
                                    createProposal3.setCompletion(cArr6);
                                    createProposal3.setFlags(fieldBinding.modifiers);
                                    int i18 = this.startPosition;
                                    int i19 = this.offset;
                                    createProposal3.setReplaceRange(i18 - i19, this.endPosition - i19);
                                    int i20 = this.tokenStart;
                                    int i21 = this.offset;
                                    createProposal3.setTokenRange(i20 - i21, this.tokenEnd - i21);
                                    createProposal3.setRelevance(computeBaseRelevance);
                                    cArr2 = cArr5;
                                    char[] createImportCharArray2 = createImportCharArray(CharOperation.concat(cArr2, fieldBinding.name, '.'), true, false);
                                    InternalCompletionProposal createProposal4 = createProposal(21, this.actualCompletionPosition);
                                    createProposal4.setDeclarationSignature(Engine.getSignature(fieldBinding.declaringClass));
                                    createProposal4.setSignature(Engine.getSignature(fieldBinding.type));
                                    createProposal4.setDeclarationPackageName(fieldBinding.declaringClass.qualifiedPackageName());
                                    createProposal4.setDeclarationTypeName(fieldBinding.declaringClass.qualifiedSourceName());
                                    createProposal4.setPackageName(fieldBinding.type.qualifiedPackageName());
                                    createProposal4.setTypeName(fieldBinding.type.qualifiedSourceName());
                                    createProposal4.setName(fieldBinding.name);
                                    createProposal4.setCompletion(createImportCharArray2);
                                    createProposal4.setFlags(fieldBinding.modifiers);
                                    createProposal4.setAdditionalFlags(1);
                                    int i22 = this.offset;
                                    createProposal4.setReplaceRange(i11 - i22, i11 - i22);
                                    int i23 = this.offset;
                                    createProposal4.setTokenRange(i11 - i23, i11 - i23);
                                    createProposal4.setRelevance(computeBaseRelevance);
                                    createProposal3.setRequiredProposals(new CompletionProposal[]{createProposal4});
                                    this.requestor.accept(createProposal3);
                                    if (DEBUG) {
                                        printDebug(createProposal3);
                                    }
                                }
                                z11 = false;
                                z10 = true;
                            }
                        } else {
                            cArr2 = concatWith;
                            z10 = z12;
                            z11 = false;
                            if (fieldBinding == ((FieldBinding) ((Object[]) objectVector.elementAt(i10))[0])) {
                                break;
                            }
                            cArr3 = cArr;
                            r72 = 0;
                            z12 = z10;
                            concatWith = cArr2;
                        }
                    }
                    cArr3 = cArr;
                    z13 = z11;
                    z12 = z10;
                    concatWith = cArr2;
                }
            }
            cArr2 = concatWith;
            z10 = z12;
            z11 = z13 ? 1 : 0;
            cArr3 = cArr;
            z13 = z11;
            z12 = z10;
            concatWith = cArr2;
        }
    }

    private void findImplementations(ProvidesStatement providesStatement, TypeReference typeReference) {
        char[][] typeName = typeReference.getTypeName();
        char[] concatWithAll = CharOperation.concatWithAll(typeName, '.');
        if (concatWithAll.length == 0) {
            this.completionToken = CharOperation.ALL_PREFIX;
        } else if (typeReference instanceof CompletionOnProvidesImplementationsQualifiedTypeReference) {
            char[] cArr = ((CompletionOnQualifiedTypeReference) typeReference).completionIdentifier;
            if (cArr != null) {
                this.completionToken = CharOperation.concatAll(concatWithAll, cArr, '.');
            }
        } else {
            char[] cArr2 = typeName[typeName.length - 1];
            if (cArr2 != null && cArr2.length == 0) {
                cArr2 = CharOperation.concat(concatWithAll, new char[]{'.'});
            }
            this.completionToken = cArr2;
        }
        setSourceRange(typeReference.sourceStart, typeReference.sourceEnd);
        findImplementations(this.completionToken, this.unitScope, providesStatement, -1);
    }

    private void findImplicitMessageSends(char[] cArr, TypeBinding[] typeBindingArr, Scope scope, InvocationSite invocationSite, Scope scope2, ObjectVector objectVector) {
        Scope scope3;
        if (cArr == null) {
            return;
        }
        Scope scope4 = scope;
        boolean z10 = false;
        while (true) {
            int i10 = scope4.kind;
            if (i10 == 2) {
                scope3 = scope4;
                MethodScope methodScope = (MethodScope) scope3;
                z10 |= methodScope.isStatic | methodScope.isConstructorCall;
            } else if (i10 == 3) {
                ClassScope classScope = (ClassScope) scope4;
                ReferenceBinding referenceBinding = classScope.referenceContext.binding;
                findMethods(cArr, null, typeBindingArr, referenceBinding, classScope, objectVector, z10, true, invocationSite, scope2, true, false, true, null, null, null, false, null, -1, -1);
                z10 |= referenceBinding.isStatic();
                scope3 = scope4;
            } else if (i10 == 4) {
                return;
            } else {
                scope3 = scope4;
            }
            scope4 = scope3.parent;
        }
    }

    private void findImports(CompletionOnImportReference completionOnImportReference, boolean z10) {
        char[][] cArr = completionOnImportReference.tokens;
        char[] concatWith = CharOperation.concatWith(cArr, '.');
        if (concatWith.length == 0) {
            return;
        }
        char[] cArr2 = cArr[cArr.length - 1];
        if (cArr2 != null && cArr2.length == 0) {
            concatWith = CharOperation.concat(concatWith, new char[]{'.'});
        }
        char[] cArr3 = concatWith;
        this.resolvingImports = true;
        this.resolvingStaticImports = completionOnImportReference.isStatic();
        this.completionToken = cArr2;
        this.qualifiedCompletionToken = cArr3;
        if (!this.requestor.isIgnored(8)) {
            int i10 = this.startPosition;
            int i11 = this.endPosition;
            setSourceRange(completionOnImportReference.sourceStart, completionOnImportReference.declarationSourceEnd);
            try {
                this.nameEnvironment.findPackages(cArr3, this, this.javaProject.getAllPackageFragmentRoots(), true);
            } catch (JavaModelException unused) {
            }
            setSourceRange(i10, i11 - 1, false);
        }
        if (this.requestor.isIgnored(9)) {
            return;
        }
        this.foundTypesCount = 0;
        this.nameEnvironment.findTypes(cArr3, z10, this.options.camelCaseMatch, 0, this, this.monitor);
        acceptTypes(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0093 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0006 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findImportsOfMemberTypes(char[] cArr, ReferenceBinding referenceBinding, boolean z10) {
        int computeRelevanceForInterface;
        ReferenceBinding[] memberTypes = referenceBinding.memberTypes();
        int length = cArr.length;
        int length2 = memberTypes.length;
        while (true) {
            length2--;
            if (length2 < 0) {
                return;
            }
            ReferenceBinding referenceBinding2 = memberTypes[length2];
            if (!z10 || referenceBinding2.isStatic()) {
                char[] cArr2 = referenceBinding2.sourceName;
                if (length <= cArr2.length && !isFailedMatch(cArr, cArr2) && (!this.options.checkDeprecation || !referenceBinding2.isViewedAsDeprecated())) {
                    if (!this.options.checkVisibility || referenceBinding2.canBeSeenBy(this.unitScope.fPackage)) {
                        char[] concat = CharOperation.concat(referenceBinding2.sourceName, SEMICOLON);
                        int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForCaseMatching(cArr, referenceBinding2.sourceName) + computeRelevanceForRestrictions(0);
                        if (referenceBinding2.isClass()) {
                            computeRelevanceForInterface = computeRelevanceForClass();
                        } else if (referenceBinding2.isEnum()) {
                            computeRelevanceForInterface = computeRelevanceForEnum();
                        } else {
                            if (referenceBinding2.isInterface()) {
                                computeRelevanceForInterface = computeRelevanceForInterface();
                            }
                            int i10 = computeBaseRelevance;
                            this.noProposal = false;
                            if (this.requestor.isIgnored(9)) {
                                createTypeProposal(referenceBinding2, referenceBinding2.qualifiedSourceName(), 0, concat, i10, null, null, null, false);
                            }
                        }
                        computeBaseRelevance += computeRelevanceForInterface;
                        int i102 = computeBaseRelevance;
                        this.noProposal = false;
                        if (this.requestor.isIgnored(9)) {
                        }
                    }
                }
            }
        }
    }

    private void findImportsOfStaticFields(char[] cArr, ReferenceBinding referenceBinding) {
        FieldBinding[] availableFields = referenceBinding.availableFields();
        int length = cArr.length;
        int length2 = availableFields.length;
        while (true) {
            length2--;
            if (length2 < 0) {
                return;
            }
            FieldBinding fieldBinding = availableFields[length2];
            if (length <= fieldBinding.name.length && !fieldBinding.isSynthetic() && fieldBinding.isStatic() && !isFailedMatch(cArr, fieldBinding.name) && (!this.options.checkDeprecation || !fieldBinding.isViewedAsDeprecated())) {
                if (!this.options.checkVisibility || fieldBinding.canBeSeenBy(this.unitScope.fPackage)) {
                    char[] concat = CharOperation.concat(fieldBinding.name, SEMICOLON);
                    int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForCaseMatching(cArr, fieldBinding.name) + computeRelevanceForRestrictions(0);
                    this.noProposal = false;
                    if (!this.requestor.isIgnored(2)) {
                        InternalCompletionProposal createProposal = createProposal(2, this.actualCompletionPosition);
                        createProposal.setBinding(fieldBinding);
                        createProposal.setDeclarationSignature(Engine.getSignature(fieldBinding.declaringClass));
                        createProposal.setSignature(Engine.getSignature(fieldBinding.type));
                        createProposal.setDeclarationPackageName(fieldBinding.declaringClass.qualifiedPackageName());
                        createProposal.setDeclarationTypeName(fieldBinding.declaringClass.qualifiedSourceName());
                        createProposal.setPackageName(fieldBinding.type.qualifiedPackageName());
                        createProposal.setTypeName(fieldBinding.type.qualifiedSourceName());
                        createProposal.setName(fieldBinding.name);
                        createProposal.setCompletion(concat);
                        createProposal.setFlags(fieldBinding.modifiers);
                        int i10 = this.startPosition;
                        int i11 = this.offset;
                        createProposal.setReplaceRange(i10 - i11, this.endPosition - i11);
                        int i12 = this.tokenStart;
                        int i13 = this.offset;
                        createProposal.setTokenRange(i12 - i13, this.tokenEnd - i13);
                        createProposal.setRelevance(computeBaseRelevance);
                        this.requestor.accept(createProposal);
                        if (DEBUG) {
                            printDebug(createProposal);
                        }
                    }
                }
            }
        }
    }

    private void findImportsOfStaticMethods(char[] cArr, ReferenceBinding referenceBinding) {
        MethodBinding[] availableMethods = referenceBinding.availableMethods();
        int length = cArr.length;
        int length2 = availableMethods.length;
        while (true) {
            length2--;
            if (length2 < 0) {
                return;
            }
            MethodBinding methodBinding = availableMethods[length2];
            if (!methodBinding.isSynthetic() && !methodBinding.isDefaultAbstract() && !methodBinding.isConstructor() && methodBinding.isStatic() && (!this.options.checkDeprecation || !methodBinding.isViewedAsDeprecated())) {
                if (!this.options.checkVisibility || methodBinding.canBeSeenBy(this.unitScope.fPackage)) {
                    char[] cArr2 = methodBinding.selector;
                    if (length <= cArr2.length && !isFailedMatch(cArr, cArr2)) {
                        int length3 = methodBinding.parameters.length;
                        char[][] cArr3 = new char[length3];
                        char[][] cArr4 = new char[length3];
                        for (int i10 = 0; i10 < length3; i10++) {
                            TypeBinding typeBinding = methodBinding.original().parameters[i10];
                            cArr3[i10] = typeBinding.qualifiedPackageName();
                            cArr4[i10] = typeBinding.qualifiedSourceName();
                        }
                        char[][] findMethodParameterNames = findMethodParameterNames(methodBinding, cArr4);
                        char[] concat = CharOperation.concat(methodBinding.selector, SEMICOLON);
                        int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForCaseMatching(cArr, methodBinding.selector) + computeRelevanceForRestrictions(0);
                        this.noProposal = false;
                        if (!this.requestor.isIgnored(12)) {
                            InternalCompletionProposal createProposal = createProposal(12, this.actualCompletionPosition);
                            createProposal.setDeclarationSignature(Engine.getSignature(methodBinding.declaringClass));
                            createProposal.setSignature(Engine.getSignature(methodBinding));
                            createProposal.setDeclarationPackageName(methodBinding.declaringClass.qualifiedPackageName());
                            createProposal.setDeclarationTypeName(methodBinding.declaringClass.qualifiedSourceName());
                            createProposal.setParameterPackageNames(cArr3);
                            createProposal.setParameterTypeNames(cArr4);
                            createProposal.setPackageName(methodBinding.returnType.qualifiedPackageName());
                            createProposal.setTypeName(methodBinding.returnType.qualifiedSourceName());
                            createProposal.setName(methodBinding.selector);
                            createProposal.setCompletion(concat);
                            createProposal.setFlags(methodBinding.modifiers);
                            int i11 = this.startPosition;
                            int i12 = this.offset;
                            createProposal.setReplaceRange(i11 - i12, this.endPosition - i12);
                            int i13 = this.tokenStart;
                            int i14 = this.offset;
                            createProposal.setTokenRange(i13 - i14, this.tokenEnd - i14);
                            createProposal.setRelevance(computeBaseRelevance);
                            if (findMethodParameterNames != null) {
                                createProposal.setParameterNames(findMethodParameterNames);
                            }
                            this.requestor.accept(createProposal);
                            if (DEBUG) {
                                printDebug(createProposal);
                            }
                        }
                    }
                }
            }
        }
    }

    private void findInterfacesMethodDeclarations(char[] cArr, ReferenceBinding referenceBinding, ReferenceBinding[] referenceBindingArr, Scope scope, ObjectVector objectVector, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z10) {
        ReferenceBinding[] referenceBindingArr2;
        if (cArr == null || referenceBindingArr == Binding.NO_SUPERINTERFACES) {
            return;
        }
        ReferenceBinding[] referenceBindingArr3 = referenceBindingArr;
        int length = referenceBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            ReferenceBinding referenceBinding2 = referenceBindingArr3[i10];
            MethodBinding[] availableMethods = referenceBinding2.availableMethods();
            if (availableMethods != null) {
                findLocalMethodDeclarations(cArr, availableMethods, scope, objectVector, false, referenceBinding);
            }
            ReferenceBinding[] superInterfaces = referenceBinding2.superInterfaces();
            if (superInterfaces != null && superInterfaces != Binding.NO_SUPERINTERFACES) {
                int length2 = length + superInterfaces.length;
                if (length2 >= referenceBindingArr3.length) {
                    referenceBindingArr2 = new ReferenceBinding[length2 + 5];
                    System.arraycopy(referenceBindingArr3, 0, referenceBindingArr2, 0, length);
                } else {
                    referenceBindingArr2 = referenceBindingArr3;
                }
                int i11 = length;
                for (ReferenceBinding referenceBinding3 : superInterfaces) {
                    int i12 = 0;
                    while (true) {
                        if (i12 >= i11) {
                            referenceBindingArr2[i11] = referenceBinding3;
                            i11++;
                            break;
                        } else if (TypeBinding.equalsEquals(referenceBinding3, referenceBindingArr2[i12])) {
                            break;
                        } else {
                            i12++;
                        }
                    }
                }
                referenceBindingArr3 = referenceBindingArr2;
                length = i11;
            }
        }
    }

    private void findInterfacesMethods(char[] cArr, TypeBinding[] typeBindingArr, TypeBinding[] typeBindingArr2, ReferenceBinding referenceBinding, ReferenceBinding[] referenceBindingArr, Scope scope, ObjectVector objectVector, boolean z10, boolean z11, InvocationSite invocationSite, Scope scope2, boolean z12, boolean z13, boolean z14, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z15, char[] cArr2, int i10, int i11) {
        int i12;
        int i13;
        ReferenceBinding[] referenceBindingArr2;
        int i14;
        if (cArr == null || referenceBindingArr == Binding.NO_SUPERINTERFACES) {
            return;
        }
        ReferenceBinding[] referenceBindingArr3 = referenceBindingArr;
        int length = referenceBindingArr.length;
        int i15 = 0;
        while (i15 < length) {
            ReferenceBinding referenceBinding2 = referenceBindingArr3[i15];
            MethodBinding[] availableMethods = referenceBinding2.availableMethods();
            if (availableMethods != null) {
                i12 = i15;
                i13 = length;
                referenceBindingArr2 = referenceBindingArr3;
                findLocalMethods(cArr, typeBindingArr, typeBindingArr2, availableMethods, scope, objectVector, z10, z11, referenceBinding, invocationSite, scope2, z12, z13, z14, bindingArr, iArr, iArr2, z15, cArr2, i10, i11);
            } else {
                i12 = i15;
                i13 = length;
                referenceBindingArr2 = referenceBindingArr3;
            }
            ReferenceBinding[] superInterfaces = referenceBinding2.superInterfaces();
            if (superInterfaces == null || superInterfaces == Binding.NO_SUPERINTERFACES) {
                i14 = 0;
                length = i13;
                referenceBindingArr3 = referenceBindingArr2;
            } else {
                int length2 = superInterfaces.length;
                int i16 = i13;
                int i17 = i16 + length2;
                ReferenceBinding[] referenceBindingArr4 = referenceBindingArr2;
                if (i17 >= referenceBindingArr4.length) {
                    referenceBindingArr3 = new ReferenceBinding[i17 + 5];
                    i14 = 0;
                    System.arraycopy(referenceBindingArr4, 0, referenceBindingArr3, 0, i16);
                } else {
                    i14 = 0;
                    referenceBindingArr3 = referenceBindingArr4;
                }
                length = i16;
                for (int i18 = i14; i18 < length2; i18++) {
                    ReferenceBinding referenceBinding3 = superInterfaces[i18];
                    int i19 = i14;
                    while (true) {
                        if (i19 >= length) {
                            referenceBindingArr3[length] = referenceBinding3;
                            length++;
                            break;
                        } else if (TypeBinding.equalsEquals(referenceBinding3, referenceBindingArr3[i19])) {
                            break;
                        } else {
                            i19++;
                        }
                    }
                }
            }
            i15 = i12 + 1;
        }
    }

    private void findJavadocBlockTags(CompletionOnJavadocTag completionOnJavadocTag) {
        char[][] possibleBlockTags = completionOnJavadocTag.getPossibleBlockTags();
        if (possibleBlockTags == null) {
            return;
        }
        for (char[] cArr : possibleBlockTags) {
            int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForInterestingProposal() + computeRelevanceForRestrictions(0);
            this.noProposal = false;
            if (!this.requestor.isIgnored(19)) {
                InternalCompletionProposal createProposal = createProposal(19, this.actualCompletionPosition);
                createProposal.setName(cArr);
                int length = cArr.length;
                char[] cArr2 = new char[length + 1];
                cArr2[0] = '@';
                System.arraycopy(cArr, 0, cArr2, 1, length);
                createProposal.setCompletion(cArr2);
                int i10 = this.startPosition;
                int i11 = this.offset;
                createProposal.setReplaceRange(i10 - i11, this.endPosition - i11);
                int i12 = this.tokenStart;
                int i13 = this.offset;
                createProposal.setTokenRange(i12 - i13, this.tokenEnd - i13);
                createProposal.setRelevance(computeBaseRelevance);
                this.requestor.accept(createProposal);
                if (DEBUG) {
                    printDebug(createProposal);
                }
            }
        }
    }

    private void findJavadocInlineTags(CompletionOnJavadocTag completionOnJavadocTag) {
        char[][] possibleInlineTags = completionOnJavadocTag.getPossibleInlineTags();
        if (possibleInlineTags == null) {
            return;
        }
        for (char[] cArr : possibleInlineTags) {
            int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForInterestingProposal() + computeRelevanceForRestrictions(0);
            this.noProposal = false;
            if (!this.requestor.isIgnored(20)) {
                InternalCompletionProposal createProposal = createProposal(20, this.actualCompletionPosition);
                createProposal.setName(cArr);
                int length = cArr.length;
                char[] cArr2 = new char[length + 3];
                cArr2[0] = JavaElement.JEM_COMPILATIONUNIT;
                cArr2[1] = '@';
                System.arraycopy(cArr, 0, cArr2, 2, length);
                cArr2[length + 2] = JavaElement.JEM_ANNOTATION;
                createProposal.setCompletion(cArr2);
                int i10 = this.startPosition;
                int i11 = this.offset;
                createProposal.setReplaceRange(i10 - i11, this.endPosition - i11);
                int i12 = this.tokenStart;
                int i13 = this.offset;
                createProposal.setTokenRange(i12 - i13, this.tokenEnd - i13);
                createProposal.setRelevance(computeBaseRelevance);
                this.requestor.accept(createProposal);
                if (DEBUG) {
                    printDebug(createProposal);
                }
            }
        }
    }

    private void findJavadocParamNames(char[] cArr, char[][] cArr2, boolean z10) {
        if (cArr2 == null) {
            return;
        }
        int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForInterestingProposal() + computeRelevanceForRestrictions(0);
        if (!z10) {
            computeBaseRelevance += 5;
        }
        int length = computeBaseRelevance + cArr2.length;
        for (char[] cArr3 : cArr2) {
            if (cArr == null || CharOperation.prefixEquals(cArr, cArr3)) {
                this.noProposal = false;
                if (!this.requestor.isIgnored(18)) {
                    InternalCompletionProposal createProposal = createProposal(18, this.actualCompletionPosition);
                    createProposal.setName(cArr3);
                    if (z10) {
                        cArr3 = CharOperation.concat('<', cArr3, '>');
                    }
                    createProposal.setCompletion(cArr3);
                    int i10 = this.startPosition;
                    int i11 = this.offset;
                    createProposal.setReplaceRange(i10 - i11, this.endPosition - i11);
                    int i12 = this.tokenStart;
                    int i13 = this.offset;
                    createProposal.setTokenRange(i12 - i13, this.tokenEnd - i13);
                    length--;
                    createProposal.setRelevance(length);
                    this.requestor.accept(createProposal);
                    if (DEBUG) {
                        printDebug(createProposal);
                    }
                }
            }
        }
    }

    private void findKeywords(char[] cArr, char[][] cArr2, boolean z10, boolean z11) {
        if (cArr2 == null || cArr2.length == 0) {
            return;
        }
        int length = cArr.length;
        for (int i10 = 0; i10 < cArr2.length; i10++) {
            char[] cArr3 = cArr2[i10];
            if (length <= cArr3.length && ((CharOperation.prefixEquals(cArr, cArr3, false) || (this.options.substringMatch && CharOperation.substringMatch(cArr, cArr2[i10]))) && (!z11 || !CharOperation.equals(cArr2[i10], Keywords.PACKAGE)))) {
                int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForCaseMatching(cArr, cArr2[i10]) + computeRelevanceForRestrictions(0);
                if (z10 && this.insideQualifiedReference) {
                    computeBaseRelevance += 2;
                }
                if (CharOperation.equals(cArr2[i10], Keywords.TRUE) || CharOperation.equals(cArr2[i10], Keywords.FALSE)) {
                    computeBaseRelevance = computeBaseRelevance + computeRelevanceForExpectingType(TypeBinding.BOOLEAN) + computeRelevanceForQualification(false);
                }
                if (CharOperation.equals(cArr2[i10], Keywords.NEW)) {
                    computeBaseRelevance += computeRelevanceForConstructor();
                }
                this.noProposal = false;
                if (!this.requestor.isIgnored(3)) {
                    InternalCompletionProposal createProposal = createProposal(3, this.actualCompletionPosition);
                    createProposal.setName(cArr2[i10]);
                    createProposal.setCompletion(cArr2[i10]);
                    int i11 = this.startPosition;
                    createProposal.setReplaceRange(i11 < 0 ? 0 : i11 - this.offset, this.endPosition - this.offset);
                    int i12 = this.tokenStart;
                    createProposal.setTokenRange(i12 < 0 ? 0 : i12 - this.offset, this.tokenEnd - this.offset);
                    createProposal.setRelevance(computeBaseRelevance);
                    this.requestor.accept(createProposal);
                    if (DEBUG) {
                        printDebug(createProposal);
                    }
                }
            }
        }
    }

    private void findKeywordsForMember(char[] cArr, int i10, ASTNode aSTNode) {
        int i11;
        char[][] cArr2 = new char[50];
        boolean z10 = true;
        if ((i10 & 2) == 0 && (i10 & 4) == 0 && (i10 & 1) == 0) {
            cArr2[0] = Keywords.PROTECTED;
            cArr2[1] = Keywords.PUBLIC;
            if ((i10 & 1024) == 0) {
                cArr2[2] = Keywords.PRIVATE;
                i11 = 3;
            } else {
                i11 = 2;
            }
        } else {
            i11 = 0;
        }
        if ((aSTNode instanceof CompletionOnFieldType) && this.compilerOptions.sourceLevel >= ClassFileConstants.JDK1_8) {
            FieldBinding fieldBinding = ((CompletionOnFieldType) aSTNode).binding;
            ReferenceBinding referenceBinding = fieldBinding != null ? fieldBinding.declaringClass : null;
            if (referenceBinding != null && referenceBinding.isInterface() && !referenceBinding.isAnnotationType()) {
                cArr2[i11] = Keywords.DEFAULT;
                i11++;
            }
        }
        if ((i10 & 1024) == 0) {
            if ((i10 & (-16)) == 0) {
                cArr2[i11] = Keywords.ABSTRACT;
                i11++;
            }
            int i12 = i10 & 16;
            if (i12 == 0) {
                cArr2[i11] = Keywords.FINAL;
                i11++;
            }
            if ((i10 & 8) == 0) {
                cArr2[i11] = Keywords.STATIC;
                i11++;
            }
            int i13 = i10 & 256;
            boolean z11 = i13 == 0 && (i10 & 2048) == 0 && (i10 & 32) == 0;
            boolean z12 = z11;
            int i14 = i10 & 128;
            if (i14 != 0 || (i10 & 64) != 0) {
                z10 = false;
                z12 = false;
            }
            if (z11) {
                if (i14 == 0) {
                    cArr2[i11] = Keywords.TRANSIENT;
                    i11++;
                }
                if ((i10 & 64) == 0) {
                    cArr2[i11] = Keywords.VOLATILE;
                    i11++;
                }
            }
            if (z10) {
                if (i13 == 0) {
                    cArr2[i11] = Keywords.NATIVE;
                    i11++;
                }
                if ((i10 & 2048) == 0) {
                    cArr2[i11] = Keywords.STRICTFP;
                    i11++;
                }
                if ((i10 & 32) == 0) {
                    cArr2[i11] = Keywords.SYNCHRONIZED;
                    i11++;
                }
            }
            if (z12) {
                cArr2[i11] = Keywords.CLASS;
                int i15 = i11 + 2;
                cArr2[i11 + 1] = Keywords.INTERFACE;
                if (i12 == 0) {
                    i11 += 3;
                    cArr2[i15] = Keywords.ENUM;
                } else {
                    i11 = i15;
                }
            }
        } else {
            int i16 = i11 + 1;
            cArr2[i11] = Keywords.CLASS;
            i11 += 2;
            cArr2[i16] = Keywords.INTERFACE;
        }
        char[][] cArr3 = new char[i11];
        System.arraycopy(cArr2, 0, cArr3, 0, i11);
        findKeywords(cArr, cArr3, false, false);
    }

    private void findLabels(char[] cArr, char[][] cArr2) {
        if (cArr2 == null || cArr2.length == 0) {
            return;
        }
        int length = cArr.length;
        for (int i10 = 0; i10 < cArr2.length; i10++) {
            char[] cArr3 = cArr2[i10];
            if (length <= cArr3.length && CharOperation.prefixEquals(cArr, cArr3, false)) {
                int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForCaseMatching(cArr, cArr2[i10]) + computeRelevanceForRestrictions(0);
                this.noProposal = false;
                if (!this.requestor.isIgnored(4)) {
                    InternalCompletionProposal createProposal = createProposal(4, this.actualCompletionPosition);
                    createProposal.setName(cArr2[i10]);
                    createProposal.setCompletion(cArr2[i10]);
                    int i11 = this.startPosition;
                    int i12 = this.offset;
                    createProposal.setReplaceRange(i11 - i12, this.endPosition - i12);
                    int i13 = this.tokenStart;
                    int i14 = this.offset;
                    createProposal.setTokenRange(i13 - i14, this.tokenEnd - i14);
                    createProposal.setRelevance(computeBaseRelevance);
                    this.requestor.accept(createProposal);
                    if (DEBUG) {
                        printDebug(createProposal);
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x006f, code lost:
    
        if (org.eclipse.jdt.core.compiler.CharOperation.equals(r20, r0.selector, false) == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007f, code lost:
    
        r1 = r23.size;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0081, code lost:
    
        r1 = r1 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0083, code lost:
    
        if (r1 >= 0) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x01d6, code lost:
    
        r3 = r6;
        r18 = r12;
        r2 = (org.eclipse.jdt.internal.compiler.lookup.MethodBinding) r23.elementAt(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x01df, code lost:
    
        if (r0 != r2) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x01eb, code lost:
    
        if (org.eclipse.jdt.core.compiler.CharOperation.equals(r0.selector, r2.selector, true) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x01f7, code lost:
    
        if (r19.lookupEnvironment.methodVerifier().isMethodSubsignature(r2, r0) == false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0202, code lost:
    
        r10 = r22;
        r6 = r3;
        r12 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0085, code lost:
    
        r12.add(r0);
        r2 = r0.parameters.length;
        r5 = new char[r2];
        r4 = new char[r2];
        r1 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0090, code lost:
    
        if (r1 < r2) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01b7, code lost:
    
        r9 = r4;
        r10 = r5;
        r4 = r0.parameters[r1];
        r10[r1] = r4.qualifiedPackageName();
        r9[r1] = r4.qualifiedSourceName();
        r1 = r1 + 1;
        r4 = r9;
        r5 = r10;
        r10 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0092, code lost:
    
        r3 = findMethodParameterNames(r0, r4);
        r1 = r0.typeVariables;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0098, code lost:
    
        if (r1 == null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x009b, code lost:
    
        if (r1.length <= 0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x009d, code lost:
    
        r1 = substituteMethodTypeParameterNames(r0.typeVariables, findEnclosingTypeNames(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00a7, code lost:
    
        if (r1 == null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00a9, code lost:
    
        r16 = r3;
        r6 = new org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding(r0.declaringClass, r0, r1, r22.environment());
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00bb, code lost:
    
        r3 = new java.lang.StringBuffer(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00c2, code lost:
    
        if (r24 != false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00c4, code lost:
    
        r17 = r16;
        r16 = r3;
        r9 = r4;
        r10 = r5;
        r18 = r12;
        r12 = r6;
        createMethod(r6, r5, r4, r17, r22, r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00e5, code lost:
    
        r0 = ((computeBaseRelevance() + computeRelevanceForResolution()) + computeRelevanceForInterestingProposal()) + computeRelevanceForCaseMatching(r20, r12.selector);
        r1 = r0 + 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0100, code lost:
    
        if (r12.isAbstract() == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0102, code lost:
    
        r1 = r0 + 23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0104, code lost:
    
        r1 = r1 + computeRelevanceForRestrictions(0);
        r19.noProposal = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0113, code lost:
    
        if (r19.requestor.isIgnored(7) != false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0115, code lost:
    
        r0 = createProposal(7, r19.actualCompletionPosition);
        r0.setBinding(r12);
        r0.setDeclarationSignature(org.eclipse.jdt.internal.codeassist.impl.Engine.getSignature(r12.declaringClass));
        r0.setDeclarationKey(r12.declaringClass.computeUniqueKey());
        r0.setSignature(org.eclipse.jdt.internal.codeassist.impl.Engine.getSignature(r12));
        r2 = r12.original();
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x013b, code lost:
    
        if (r2 == r12) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x013d, code lost:
    
        r0.setOriginalSignature(org.eclipse.jdt.internal.codeassist.impl.Engine.getSignature(r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0144, code lost:
    
        r0.setKey(r12.computeUniqueKey());
        r0.setDeclarationPackageName(r12.declaringClass.qualifiedPackageName());
        r0.setDeclarationTypeName(r12.declaringClass.qualifiedSourceName());
        r0.setParameterPackageNames(r10);
        r0.setParameterTypeNames(r9);
        r0.setPackageName(r12.returnType.qualifiedPackageName());
        r0.setTypeName(r12.returnType.qualifiedSourceName());
        r0.setCompletion(r16.toString().toCharArray());
        r0.setName(r12.selector);
        r0.setFlags(r12.modifiers);
        r2 = r19.startPosition;
        r3 = r19.offset;
        r0.setReplaceRange(r2 - r3, r19.endPosition - r3);
        r2 = r19.tokenStart;
        r3 = r19.offset;
        r0.setTokenRange(r2 - r3, r19.tokenEnd - r3);
        r0.setRelevance(r1);
        r1 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01a5, code lost:
    
        if (r1 == null) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01a7, code lost:
    
        r0.setParameterNames(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01aa, code lost:
    
        r19.requestor.accept(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01b1, code lost:
    
        if (org.eclipse.jdt.internal.codeassist.CompletionEngine.DEBUG == false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01b3, code lost:
    
        printDebug(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00dc, code lost:
    
        r9 = r4;
        r10 = r5;
        r18 = r12;
        r17 = r16;
        r16 = r3;
        r12 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00b8, code lost:
    
        r16 = r3;
        r6 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x007c, code lost:
    
        if (isFailedMatch(r20, r1) != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findLocalMethodDeclarations(char[] cArr, MethodBinding[] methodBindingArr, Scope scope, ObjectVector objectVector, boolean z10, ReferenceBinding referenceBinding) {
        MethodBinding[] methodBindingArr2 = methodBindingArr;
        Scope scope2 = scope;
        ObjectVector objectVector2 = new ObjectVector();
        int length = cArr.length;
        int length2 = methodBindingArr2.length;
        while (true) {
            int i10 = length2 - 1;
            if (i10 < 0) {
                objectVector.addAll(objectVector2);
                return;
            }
            MethodBinding methodBinding = methodBindingArr2[i10];
            if (!methodBinding.isSynthetic() && !methodBinding.isDefaultAbstract() && !methodBinding.isConstructor()) {
                if (methodBinding.isFinal()) {
                    objectVector2.add(methodBinding);
                } else if ((!this.options.checkDeprecation || !methodBinding.isViewedAsDeprecated() || scope2.isDefinedInSameUnit(methodBinding.declaringClass)) && !methodBinding.isStatic()) {
                    if (methodBinding.canBeSeenBy(referenceBinding, FakeInvocationSite, scope2)) {
                        int i11 = 0;
                        if (!z10) {
                            char[] cArr2 = methodBinding.selector;
                            if (length <= cArr2.length) {
                            }
                        }
                        methodBindingArr2 = methodBindingArr;
                        scope2 = scope;
                        length2 = i10;
                        objectVector2 = r18;
                    }
                    ObjectVector objectVector3 = objectVector2;
                    methodBindingArr2 = methodBindingArr;
                    scope2 = scope;
                    length2 = i10;
                    objectVector2 = objectVector3;
                }
            }
            ObjectVector objectVector32 = objectVector2;
            methodBindingArr2 = methodBindingArr;
            scope2 = scope;
            length2 = i10;
            objectVector2 = objectVector32;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x00f9, code lost:
    
        if (r3 < r2.length) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x00ff, code lost:
    
        r18 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x010b, code lost:
    
        if (r2[r3].original() != r11.original()) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x010d, code lost:
    
        r11 = r2[r3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0110, code lost:
    
        r3 = r3 + 1;
        r12 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x00fb, code lost:
    
        r2 = r11;
        r18 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x011a, code lost:
    
        r10 = r2.parameters.length;
        r12 = new char[r10];
        r3 = new char[r10];
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0122, code lost:
    
        if (r11 < r10) goto L230;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0525, code lost:
    
        r1 = r3;
        r3 = r2.original().parameters[r11];
        r12[r11] = r3.qualifiedPackageName();
        r1[r11] = r3.qualifiedSourceName();
        r11 = r11 + 1;
        r5 = r31;
        r7 = r33;
        r9 = r36;
        r3 = r1;
        r14 = r14;
        r15 = r15;
        r1 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0124, code lost:
    
        r10 = findMethodParameterNames(r2, r3);
        r11 = org.eclipse.jdt.core.compiler.CharOperation.NO_CHAR;
        r11 = r26.startPosition;
        r20 = r14;
        r14 = r26.tokenStart;
        r21 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0136, code lost:
    
        if (r26.assistNodeInJavadoc <= 0) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x013a, code lost:
    
        if ((r9 instanceof org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocMessageSend) == false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x013c, code lost:
    
        r15 = ((org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocMessageSend) r9).receiver;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x014d, code lost:
    
        if (r15 == null) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x014f, code lost:
    
        r6 = new java.lang.StringBuffer();
        r23 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x015c, code lost:
    
        if (r15.isThis() == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0162, code lost:
    
        if ((r26.assistNodeInJavadoc & 4) == 0) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0164, code lost:
    
        r6.append(org.eclipse.jdt.internal.core.JavaElement.JEM_IMPORTDECLARATION);
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0167, code lost:
    
        r25 = r3;
        r24 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x01b9, code lost:
    
        r6.append(r2.selector);
        r6.append('(');
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x01c5, code lost:
    
        if (r2.parameters == null) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x01c7, code lost:
    
        r3 = r2.isVarargs();
        r10 = r2.parameters.length;
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x01cf, code lost:
    
        if (r14 < r10) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x01d4, code lost:
    
        if (r14 <= 0) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x01d6, code lost:
    
        r6.append(", ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x01db, code lost:
    
        r15 = r2.parameters[r14];
        r22 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x01e3, code lost:
    
        if (r3 == false) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x01e7, code lost:
    
        if (r14 != (r10 - 1)) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x01e9, code lost:
    
        createVargsType(r15.erasure(), r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x01f8, code lost:
    
        r14 = r14 + 1;
        r3 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x01f1, code lost:
    
        createType(r15.erasure(), r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x01fd, code lost:
    
        r6.append(')');
        r3 = r6.toString().toCharArray();
        r6 = r45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0284, code lost:
    
        r10 = (((((((computeBaseRelevance() + computeRelevanceForResolution()) + computeRelevanceForInterestingProposal()) + computeRelevanceForCaseMatching(r1, r2.selector)) + computeRelevanceForExpectingType(r2.returnType)) + computeRelevanceForEnumConstant(r2.returnType)) + computeRelevanceForStatic(r7, r2.isStatic())) + computeRelevanceForQualification(r4)) + computeRelevanceForRestrictions(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x02bb, code lost:
    
        if (r7 == false) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x02bf, code lost:
    
        if (r26.insideQualifiedReference == false) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x02c1, code lost:
    
        r10 = r10 + computeRelevanceForInheritance(r35, r2.declaringClass);
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x02cc, code lost:
    
        if (r41 == null) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x02ce, code lost:
    
        r10 = r10 + computeRelevanceForMissingElements(r44);
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x02d3, code lost:
    
        r10 = r10 + computeRelevanceForSuper(r2, r5, r9);
        r26.noProposal = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x02db, code lost:
    
        if (r6 != null) goto L207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x02dd, code lost:
    
        if (r41 == null) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x02df, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x02e2, code lost:
    
        r1 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x02e7, code lost:
    
        if (isIgnored(6, r4) != false) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x02ed, code lost:
    
        if ((r26.assistNodeInJavadoc & 16) != 0) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x02ef, code lost:
    
        if (r13 == false) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x02f1, code lost:
    
        r1 = 12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x02f3, code lost:
    
        r1 = createProposal(r1, r26.actualCompletionPosition);
        r1.setBinding(r2);
        r1.setDeclarationSignature(org.eclipse.jdt.internal.codeassist.impl.Engine.getSignature(r2.declaringClass));
        r1.setSignature(org.eclipse.jdt.internal.codeassist.impl.Engine.getSignature(r2));
        r4 = r2.original();
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0310, code lost:
    
        if (r4 == r2) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0312, code lost:
    
        r1.setOriginalSignature(org.eclipse.jdt.internal.codeassist.impl.Engine.getSignature(r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0319, code lost:
    
        r1.setDeclarationPackageName(r2.declaringClass.qualifiedPackageName());
        r1.setDeclarationTypeName(r2.declaringClass.qualifiedSourceName());
        r1.setParameterPackageNames(r12);
        r4 = r25;
        r1.setParameterTypeNames(r4);
        r1.setPackageName(r2.returnType.qualifiedPackageName());
        r1.setTypeName(r2.returnType.qualifiedSourceName());
        r1.setName(r2.selector);
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x034a, code lost:
    
        if (r41 == null) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x034c, code lost:
    
        r5 = new org.eclipse.jdt.core.CompletionProposal[r41.length];
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0351, code lost:
    
        if (r6 < r41.length) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0359, code lost:
    
        r5[r6] = createRequiredTypeProposal(r41[r6], r42[r6], r43[r6], r10);
        r6 = r6 + 1;
        r13 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0353, code lost:
    
        r1.setRequiredProposals(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0356, code lost:
    
        r19 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x036e, code lost:
    
        r1.setCompletion(r3);
        r1.setFlags(r2.modifiers);
        r5 = r26.startPosition;
        r6 = r26.offset;
        r1.setReplaceRange(r5 - r6, r26.endPosition - r6);
        r5 = r26.tokenStart;
        r6 = r26.offset;
        r1.setTokenRange(r5 - r6, r26.tokenEnd - r6);
        r1.setRelevance(r10);
        r5 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0391, code lost:
    
        if (r24 == null) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0393, code lost:
    
        r1.setParameterNames(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0396, code lost:
    
        r26.requestor.accept(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x039d, code lost:
    
        if (org.eclipse.jdt.internal.codeassist.CompletionEngine.DEBUG == false) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x039f, code lost:
    
        printDebug(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x03ad, code lost:
    
        if ((r26.assistNodeInJavadoc & 4) == 0) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x03b7, code lost:
    
        if (r26.requestor.isIgnored(15) != false) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x03b9, code lost:
    
        r1 = inlineTagCompletion(r3, org.eclipse.jdt.internal.compiler.parser.JavadocTagConstants.TAG_LINK);
        r3 = createProposal(15, r26.actualCompletionPosition);
        r3.setBinding(r2);
        r3.setDeclarationSignature(org.eclipse.jdt.internal.codeassist.impl.Engine.getSignature(r2.declaringClass));
        r3.setSignature(org.eclipse.jdt.internal.codeassist.impl.Engine.getSignature(r2));
        r6 = r2.original();
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x03dc, code lost:
    
        if (r6 == r2) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x03de, code lost:
    
        r3.setOriginalSignature(org.eclipse.jdt.internal.codeassist.impl.Engine.getSignature(r6));
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x03e5, code lost:
    
        r3.setDeclarationPackageName(r2.declaringClass.qualifiedPackageName());
        r3.setDeclarationTypeName(r2.declaringClass.qualifiedSourceName());
        r3.setParameterPackageNames(r12);
        r3.setParameterTypeNames(r4);
        r3.setPackageName(r2.returnType.qualifiedPackageName());
        r3.setTypeName(r2.returnType.qualifiedSourceName());
        r3.setName(r2.selector);
        r3.setCompletion(r1);
        r3.setFlags(r2.modifiers);
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0420, code lost:
    
        if ((r26.assistNodeInJavadoc & 32) == 0) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x0422, code lost:
    
        r1 = r26.javadocTagPosition;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0427, code lost:
    
        r2 = r26.offset;
        r3.setReplaceRange(r1 - r2, r26.endPosition - r2);
        r1 = r26.tokenStart;
        r2 = r26.offset;
        r3.setTokenRange(r1 - r2, r26.tokenEnd - r2);
        r3.setRelevance(r10 + 31);
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x0440, code lost:
    
        if (r5 == null) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x0442, code lost:
    
        r3.setParameterNames(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x0445, code lost:
    
        r26.requestor.accept(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x044c, code lost:
    
        if (org.eclipse.jdt.internal.codeassist.CompletionEngine.DEBUG == false) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x044e, code lost:
    
        printDebug(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x0425, code lost:
    
        r1 = r26.startPosition;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x0519, code lost:
    
        r26.startPosition = r11;
        r26.tokenStart = r23;
        r1 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x03a3, code lost:
    
        r19 = r13;
        r5 = r24;
        r4 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x02e1, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x0453, code lost:
    
        r19 = r13;
        r5 = r24;
        r4 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0459, code lost:
    
        if (r41 == null) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x045b, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x0464, code lost:
    
        if (isIgnored(24, r1) != false) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0466, code lost:
    
        r1 = createProposal(24, r26.actualCompletionPosition);
        r1.setBinding(r2);
        r1.setDeclarationSignature(org.eclipse.jdt.internal.codeassist.impl.Engine.getSignature(r2.declaringClass));
        r1.setSignature(org.eclipse.jdt.internal.codeassist.impl.Engine.getSignature(r2));
        r6 = r2.original();
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x0483, code lost:
    
        if (r6 == r2) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x0485, code lost:
    
        r1.setOriginalSignature(org.eclipse.jdt.internal.codeassist.impl.Engine.getSignature(r6));
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x048c, code lost:
    
        r1.setReceiverSignature(org.eclipse.jdt.internal.codeassist.impl.Engine.getSignature(r35));
        r1.setDeclarationPackageName(r2.declaringClass.qualifiedPackageName());
        r1.setDeclarationTypeName(r2.declaringClass.qualifiedSourceName());
        r1.setParameterPackageNames(r12);
        r1.setParameterTypeNames(r4);
        r1.setPackageName(r2.returnType.qualifiedPackageName());
        r1.setTypeName(r2.returnType.qualifiedSourceName());
        r1.setName(r2.selector);
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x04c2, code lost:
    
        if (r41 == null) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x04c4, code lost:
    
        r4 = new org.eclipse.jdt.core.CompletionProposal[r41.length];
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x04c9, code lost:
    
        if (r6 < r41.length) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x04cf, code lost:
    
        r4[r6] = createRequiredTypeProposal(r41[r6], r42[r6], r43[r6], r10);
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x04cb, code lost:
    
        r1.setRequiredProposals(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x04de, code lost:
    
        r1.setCompletion(r3);
        r1.setFlags(r2.modifiers);
        r2 = r26.startPosition;
        r3 = r26.offset;
        r1.setReplaceRange(r2 - r3, r26.endPosition - r3);
        r2 = r26.offset;
        r1.setReceiverRange(r46 - r2, r47 - r2);
        r2 = r26.tokenStart;
        r3 = r26.offset;
        r1.setTokenRange(r2 - r3, r26.tokenEnd - r3);
        r1.setRelevance(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x0508, code lost:
    
        if (r5 == null) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x050a, code lost:
    
        r1.setParameterNames(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x050d, code lost:
    
        r26.requestor.accept(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x0514, code lost:
    
        if (org.eclipse.jdt.internal.codeassist.CompletionEngine.DEBUG == false) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x0516, code lost:
    
        printDebug(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x045d, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x0170, code lost:
    
        if ((r26.assistNodeInJavadoc & 4) == 0) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x0174, code lost:
    
        if ((r15 instanceof org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference) == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x0176, code lost:
    
        r6.append(((org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference) r15).token);
        r6.append(org.eclipse.jdt.internal.core.JavaElement.JEM_IMPORTDECLARATION);
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x0185, code lost:
    
        if ((r15 instanceof org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference) == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0187, code lost:
    
        r15 = (org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference) r15;
        r24 = r10;
        r14 = org.eclipse.jdt.core.compiler.CharOperation.concatWith(r15.tokens, '.');
        r10 = r2.selector;
        r25 = r3;
        r3 = org.eclipse.jdt.internal.core.JavaElement.JEM_IMPORTDECLARATION;
        org.eclipse.jdt.core.compiler.CharOperation.concat(r14, r10, org.eclipse.jdt.internal.core.JavaElement.JEM_IMPORTDECLARATION);
        r10 = r15.tokens.length;
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x01a0, code lost:
    
        if (r14 < r10) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x01a6, code lost:
    
        if (r14 <= 0) goto L294;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x01a8, code lost:
    
        r6.append('.');
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x01ad, code lost:
    
        r6.append(r15.tokens[r14]);
        r14 = r14 + 1;
        r3 = org.eclipse.jdt.internal.core.JavaElement.JEM_IMPORTDECLARATION;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x01a2, code lost:
    
        r6.append(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x020c, code lost:
    
        r25 = r3;
        r24 = r10;
        r23 = r14;
        r6 = r45;
        r3 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x0144, code lost:
    
        if ((r9 instanceof org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocFieldReference) == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0146, code lost:
    
        r15 = ((org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocFieldReference) r9).receiver;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x014c, code lost:
    
        r15 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x0218, code lost:
    
        r25 = r3;
        r24 = r10;
        r23 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x021e, code lost:
    
        if (r34 != false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x0220, code lost:
    
        if (r13 == false) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x0222, code lost:
    
        r3 = r2.selector;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0224, code lost:
    
        r6 = r45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x0246, code lost:
    
        if (r6 == null) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x0248, code lost:
    
        r3 = org.eclipse.jdt.core.compiler.CharOperation.concat(r6, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x0266, code lost:
    
        if (r4 != false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x026c, code lost:
    
        if (r26.options.forceImplicitQualification == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x026e, code lost:
    
        r3 = org.eclipse.jdt.core.compiler.CharOperation.concat(computePrefix(r31.enclosingSourceType(), r37.enclosingSourceType(), r2.isStatic()), r3, '.');
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x0227, code lost:
    
        r3 = r26.source;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x0229, code lost:
    
        if (r3 == null) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x022b, code lost:
    
        r6 = r3.length;
        r10 = r26.endPosition;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x022e, code lost:
    
        if (r6 <= r10) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x0234, code lost:
    
        if (r3[r10] != '(') goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x0236, code lost:
    
        r3 = r2.selector;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x0239, code lost:
    
        r3 = org.eclipse.jdt.core.compiler.CharOperation.concat(r2.selector, new char[]{'(', ')'});
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x024d, code lost:
    
        r6 = r45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x024f, code lost:
    
        if (r4 == false) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x0251, code lost:
    
        r3 = r26.source;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x0253, code lost:
    
        if (r3 == null) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x0255, code lost:
    
        r3 = org.eclipse.jdt.core.compiler.CharOperation.subarray(r3, r11, r26.endPosition);
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x0262, code lost:
    
        r26.tokenStart = r26.tokenEnd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x025c, code lost:
    
        r26.startPosition = r26.endPosition;
        r3 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x0115, code lost:
    
        r17 = r10;
        r18 = r12;
        r2 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x00b1, code lost:
    
        if (isFailedMatch(r1, r3) != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a4, code lost:
    
        if (org.eclipse.jdt.core.compiler.CharOperation.equals(r1, r11.selector, false) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b4, code lost:
    
        if (r12 == 0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b9, code lost:
    
        if (r12 == r11.typeVariables.length) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00bc, code lost:
    
        if (r12 == 0) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00be, code lost:
    
        r11 = r31.environment().createParameterizedGenericMethod(r11, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c9, code lost:
    
        if (r10 <= r11.parameters.length) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00cc, code lost:
    
        r3 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00cd, code lost:
    
        r3 = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00cf, code lost:
    
        if (r3 >= 0) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x05f0, code lost:
    
        r1 = r6;
        r17 = r10;
        r18 = r12;
        r19 = r13;
        r20 = r14;
        r21 = r15;
        r2 = r29[r3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0603, code lost:
    
        if (r2 == null) goto L272;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x060d, code lost:
    
        if (r2.isCompatibleWith(r11.parameters[r3]) != false) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x062c, code lost:
    
        r5 = r31;
        r7 = r33;
        r9 = r36;
        r6 = r1;
        r10 = r17;
        r12 = r18;
        r13 = r19;
        r14 = r20;
        r15 = r21;
        r1 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00d1, code lost:
    
        r3 = r6.size;
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00d4, code lost:
    
        r3 = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00d6, code lost:
    
        if (r3 >= 0) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0557, code lost:
    
        r1 = r6;
        r17 = r10;
        r18 = r12;
        r19 = r13;
        r20 = r14;
        r21 = r15;
        r2 = (java.lang.Object[]) r1.elementAt(r3);
        r7 = (org.eclipse.jdt.internal.compiler.lookup.MethodBinding) r2[0];
        r2 = (org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding) r2[1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0576, code lost:
    
        if (r11 != r7) goto L236;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x057c, code lost:
    
        if (org.eclipse.jdt.internal.compiler.lookup.TypeBinding.equalsEquals(r35, r2) == false) goto L236;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0588, code lost:
    
        if (org.eclipse.jdt.core.compiler.CharOperation.equals(r11.selector, r7.selector, true) == false) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x058e, code lost:
    
        if (org.eclipse.jdt.internal.compiler.lookup.TypeBinding.equalsEquals(r35, r2) == false) goto L246;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x05b2, code lost:
    
        if (r26.lookupEnvironment.methodVerifier().isMethodSubsignature(r7, r11) == false) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x05b8, code lost:
    
        if (r35.isAnonymousType() == false) goto L251;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x05bc, code lost:
    
        if (r39 != false) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x05d9, code lost:
    
        r5 = r31;
        r7 = r33;
        r9 = r36;
        r6 = r1;
        r10 = r17;
        r12 = r18;
        r13 = r19;
        r14 = r20;
        r15 = r21;
        r1 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x05be, code lost:
    
        if (r40 != false) goto L254;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x05c1, code lost:
    
        r7 = r33;
        r9 = r36;
        r6 = r1;
        r4 = true;
        r10 = r17;
        r12 = r18;
        r13 = r19;
        r14 = r20;
        r15 = r21;
        r1 = r27;
        r5 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x059a, code lost:
    
        if (r26.lookupEnvironment.methodVerifier().isMethodSubsignature(r7, r11) == false) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x059c, code lost:
    
        if (r39 == false) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x05a4, code lost:
    
        if (r7.declaringClass.isInterface() != false) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x00d8, code lost:
    
        r14.add(new java.lang.Object[]{r11, r35});
        r3 = (org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding) r35.findSuperTypeOriginatingFrom(r11.declaringClass);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x00ed, code lost:
    
        if (org.eclipse.jdt.internal.compiler.lookup.TypeBinding.notEquals(r11.declaringClass, r3) == false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x00ef, code lost:
    
        r2 = r3.getMethods(r11.selector);
        r17 = r10;
        r3 = 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findLocalMethods(char[] cArr, TypeBinding[] typeBindingArr, TypeBinding[] typeBindingArr2, MethodBinding[] methodBindingArr, Scope scope, ObjectVector objectVector, boolean z10, boolean z11, ReferenceBinding referenceBinding, InvocationSite invocationSite, Scope scope2, boolean z12, boolean z13, boolean z14, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z15, char[] cArr2, int i10, int i11) {
        int i12;
        char[] cArr3 = cArr;
        TypeBinding[] typeBindingArr3 = typeBindingArr;
        MethodBinding[] methodBindingArr2 = methodBindingArr;
        Scope scope3 = scope;
        ObjectVector objectVector2 = objectVector;
        boolean z16 = z10;
        InvocationSite invocationSite2 = invocationSite;
        boolean z17 = invocationSite2 instanceof ReferenceExpression;
        ObjectVector objectVector3 = new ObjectVector();
        int length = cArr3.length;
        int length2 = typeBindingArr3 == null ? 0 : typeBindingArr3.length;
        int length3 = typeBindingArr2 == null ? 0 : typeBindingArr2.length;
        int length4 = methodBindingArr2.length;
        while (true) {
            int i13 = length4 - 1;
            if (i13 < 0) {
                objectVector2.addAll(objectVector3);
                return;
            }
            MethodBinding methodBinding = methodBindingArr2[i13];
            if (methodBinding.isSynthetic() || methodBinding.isDefaultAbstract() || methodBinding.isConstructor()) {
                i12 = i13;
            } else {
                i12 = i13;
                if ((!this.options.checkDeprecation || !methodBinding.isViewedAsDeprecated() || scope3.isDefinedInSameUnit(methodBinding.declaringClass)) && ((!z16 || methodBinding.isStatic()) && (!this.options.checkVisibility || methodBinding.canBeSeenBy(referenceBinding, invocationSite2, scope3)))) {
                    if (z13 && methodBinding.isAbstract()) {
                        objectVector2.add(new Object[]{methodBinding, referenceBinding});
                    } else if (!z11) {
                        char[] cArr4 = methodBinding.selector;
                        if (length <= cArr4.length) {
                        }
                    }
                }
            }
            ObjectVector objectVector4 = objectVector2;
            int i14 = length3;
            int i15 = length2;
            boolean z18 = z17;
            ObjectVector objectVector5 = objectVector3;
            int i16 = length;
            typeBindingArr3 = typeBindingArr;
            methodBindingArr2 = methodBindingArr;
            scope3 = scope;
            z16 = z10;
            invocationSite2 = invocationSite;
            objectVector2 = objectVector4;
            length4 = i12;
            length3 = i14;
            length2 = i15;
            z17 = z18;
            objectVector3 = objectVector5;
            length = i16;
            cArr3 = cArr;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0050, code lost:
    
        if (r3.isDefinedInSameUnit(r13.declaringClass) == false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0066, code lost:
    
        if (r13.canBeSeenBy(r6, r28, r3) == false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0445, code lost:
    
        r1 = r26;
        r5 = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0323  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findLocalMethodsFromFavorites(char[] cArr, MethodBinding[] methodBindingArr, Scope scope, ObjectVector objectVector, ObjectVector objectVector2, ReferenceBinding referenceBinding, InvocationSite invocationSite, Scope scope2) {
        char[] cArr2;
        int i10;
        int i11;
        int i12;
        int i13;
        char[] concat;
        char[] cArr3;
        int i14;
        ObjectVector objectVector3;
        int i15;
        char[] cArr4 = cArr;
        MethodBinding[] methodBindingArr2 = methodBindingArr;
        Scope scope3 = scope;
        ObjectVector objectVector4 = objectVector2;
        ReferenceBinding referenceBinding2 = referenceBinding;
        int i16 = 0;
        char[] concatWith = CharOperation.concatWith(referenceBinding2.compoundName, '.');
        int length = cArr4.length;
        int length2 = methodBindingArr2.length;
        while (true) {
            int i17 = length2 - 1;
            if (i17 < 0) {
                return;
            }
            MethodBinding methodBinding = methodBindingArr2[i17];
            if (!methodBinding.isSynthetic()) {
                if (!methodBinding.isDefaultAbstract()) {
                    if (!methodBinding.isConstructor()) {
                        if (this.options.checkDeprecation) {
                            if (methodBinding.isViewedAsDeprecated()) {
                            }
                        }
                        if (methodBinding.isStatic()) {
                            if (!this.options.checkVisibility) {
                            }
                            char[] cArr5 = methodBinding.selector;
                            if (length <= cArr5.length && !isFailedMatch(cArr4, cArr5)) {
                                int i18 = objectVector4.size;
                                while (true) {
                                    i18--;
                                    if (i18 < 0) {
                                        int i19 = objectVector.size;
                                        while (true) {
                                            i19--;
                                            if (i19 >= 0) {
                                                cArr2 = concatWith;
                                                i11 = length;
                                                i12 = i17;
                                                MethodBinding methodBinding2 = (MethodBinding) ((Object[]) objectVector.elementAt(i19))[0];
                                                if (methodBinding == methodBinding2) {
                                                    i15 = 0;
                                                    objectVector3 = objectVector2;
                                                    break;
                                                }
                                                if (CharOperation.equals(methodBinding.selector, methodBinding2.selector, true) && this.lookupEnvironment.methodVerifier().isMethodSubsignature(methodBinding2, methodBinding)) {
                                                    break;
                                                }
                                                cArr4 = cArr;
                                                objectVector4 = objectVector2;
                                                referenceBinding2 = referenceBinding;
                                                concatWith = cArr2;
                                                length = i11;
                                                i17 = i12;
                                                i16 = 0;
                                            } else {
                                                char[] cArr6 = concatWith;
                                                int i20 = (this.compilerOptions.complianceLevel < ClassFileConstants.JDK1_5 || !this.options.suggestStaticImport) ? i16 : 1;
                                                if (i20 == 0) {
                                                    if (!this.importCachesInitialized) {
                                                        initializeImportCaches();
                                                    }
                                                    i10 = i16;
                                                    int i21 = i10;
                                                    while (i21 < this.importCacheCount) {
                                                        char[][] cArr7 = this.importsCache[i21];
                                                        if (CharOperation.equals(referenceBinding2.sourceName, cArr7[i16])) {
                                                            i14 = 1;
                                                            char[] cArr8 = cArr7[1];
                                                            cArr3 = cArr6;
                                                            if (!CharOperation.equals(cArr3, cArr8)) {
                                                                objectVector3 = objectVector4;
                                                                i15 = i16;
                                                                i11 = length;
                                                                i12 = i17;
                                                                cArr2 = cArr3;
                                                                break;
                                                            }
                                                            i10 = 1;
                                                        } else {
                                                            cArr3 = cArr6;
                                                            i14 = 1;
                                                        }
                                                        i21 += i14;
                                                        cArr6 = cArr3;
                                                    }
                                                    cArr2 = cArr6;
                                                } else {
                                                    cArr2 = cArr6;
                                                    i10 = i16;
                                                }
                                                objectVector4.add(new Object[]{methodBinding, referenceBinding2});
                                                ReferenceBinding referenceBinding3 = (ReferenceBinding) referenceBinding2.findSuperTypeOriginatingFrom(methodBinding.declaringClass);
                                                if (TypeBinding.notEquals(methodBinding.declaringClass, referenceBinding3)) {
                                                    MethodBinding[] methods = referenceBinding3.getMethods(methodBinding.selector);
                                                    for (int i22 = i16; i22 < methods.length; i22++) {
                                                        if (methods[i22].original() == methodBinding.original()) {
                                                            methodBinding = methods[i22];
                                                        }
                                                    }
                                                }
                                                MethodBinding methodBinding3 = methodBinding;
                                                int length3 = methodBinding3.parameters.length;
                                                char[][] cArr9 = new char[length3];
                                                char[][] cArr10 = new char[length3];
                                                int i23 = 0;
                                                while (i23 < length3) {
                                                    TypeBinding typeBinding = methodBinding3.original().parameters[i23];
                                                    cArr9[i23] = typeBinding.qualifiedPackageName();
                                                    cArr10[i23] = typeBinding.qualifiedSourceName();
                                                    i23++;
                                                    cArr4 = cArr;
                                                    referenceBinding2 = referenceBinding;
                                                }
                                                char[][] findMethodParameterNames = findMethodParameterNames(methodBinding3, cArr10);
                                                char[] cArr11 = CharOperation.NO_CHAR;
                                                int i24 = this.startPosition;
                                                i11 = length;
                                                int i25 = this.tokenStart;
                                                i12 = i17;
                                                char[] cArr12 = this.source;
                                                if (cArr12 != null) {
                                                    int length4 = cArr12.length;
                                                    i13 = i24;
                                                    int i26 = this.endPosition;
                                                    if (length4 > i26 && cArr12[i26] == '(') {
                                                        concat = methodBinding3.selector;
                                                        int i27 = i13;
                                                        int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForCaseMatching(cArr4, methodBinding3.selector) + computeRelevanceForExpectingType(methodBinding3.returnType) + computeRelevanceForEnumConstant(methodBinding3.returnType) + computeRelevanceForStatic(true, methodBinding3.isStatic()) + computeRelevanceForQualification(true) + computeRelevanceForRestrictions(0);
                                                        int i28 = this.unitScope.referenceContext.types[0].declarationSourceStart;
                                                        this.noProposal = false;
                                                        if (i20 != 0) {
                                                            if (i10 != 0) {
                                                                if (!isIgnored(6)) {
                                                                    char[] concat2 = CharOperation.concat(referenceBinding2.sourceName, concat, '.');
                                                                    InternalCompletionProposal createProposal = createProposal(6, this.actualCompletionPosition);
                                                                    createProposal.setBinding(methodBinding3);
                                                                    createProposal.setDeclarationSignature(Engine.getSignature(methodBinding3.declaringClass));
                                                                    createProposal.setSignature(Engine.getSignature(methodBinding3));
                                                                    MethodBinding original = methodBinding3.original();
                                                                    if (original != methodBinding3) {
                                                                        createProposal.setOriginalSignature(Engine.getSignature(original));
                                                                    }
                                                                    createProposal.setDeclarationPackageName(methodBinding3.declaringClass.qualifiedPackageName());
                                                                    createProposal.setDeclarationTypeName(methodBinding3.declaringClass.qualifiedSourceName());
                                                                    createProposal.setParameterPackageNames(cArr9);
                                                                    createProposal.setParameterTypeNames(cArr10);
                                                                    createProposal.setPackageName(methodBinding3.returnType.qualifiedPackageName());
                                                                    createProposal.setTypeName(methodBinding3.returnType.qualifiedSourceName());
                                                                    createProposal.setName(methodBinding3.selector);
                                                                    createProposal.setCompletion(concat2);
                                                                    createProposal.setFlags(methodBinding3.modifiers);
                                                                    int i29 = this.startPosition;
                                                                    int i30 = this.offset;
                                                                    createProposal.setReplaceRange(i29 - i30, this.endPosition - i30);
                                                                    int i31 = this.tokenStart;
                                                                    int i32 = this.offset;
                                                                    createProposal.setTokenRange(i31 - i32, this.tokenEnd - i32);
                                                                    createProposal.setRelevance(computeBaseRelevance);
                                                                    if (findMethodParameterNames != null) {
                                                                        createProposal.setParameterNames(findMethodParameterNames);
                                                                    }
                                                                    this.requestor.accept(createProposal);
                                                                    if (DEBUG) {
                                                                        printDebug(createProposal);
                                                                    }
                                                                }
                                                            } else if (!isIgnored(6, 23)) {
                                                                char[] concat3 = CharOperation.concat(referenceBinding2.sourceName, concat, '.');
                                                                InternalCompletionProposal createProposal2 = createProposal(6, this.actualCompletionPosition);
                                                                createProposal2.setBinding(methodBinding3);
                                                                createProposal2.setDeclarationSignature(Engine.getSignature(methodBinding3.declaringClass));
                                                                createProposal2.setSignature(Engine.getSignature(methodBinding3));
                                                                MethodBinding original2 = methodBinding3.original();
                                                                if (original2 != methodBinding3) {
                                                                    createProposal2.setOriginalSignature(Engine.getSignature(original2));
                                                                }
                                                                createProposal2.setDeclarationPackageName(methodBinding3.declaringClass.qualifiedPackageName());
                                                                createProposal2.setDeclarationTypeName(methodBinding3.declaringClass.qualifiedSourceName());
                                                                createProposal2.setParameterPackageNames(cArr9);
                                                                createProposal2.setParameterTypeNames(cArr10);
                                                                createProposal2.setPackageName(methodBinding3.returnType.qualifiedPackageName());
                                                                createProposal2.setTypeName(methodBinding3.returnType.qualifiedSourceName());
                                                                createProposal2.setName(methodBinding3.selector);
                                                                createProposal2.setCompletion(concat3);
                                                                createProposal2.setFlags(methodBinding3.modifiers);
                                                                int i33 = this.startPosition;
                                                                int i34 = this.offset;
                                                                createProposal2.setReplaceRange(i33 - i34, this.endPosition - i34);
                                                                int i35 = this.tokenStart;
                                                                int i36 = this.offset;
                                                                createProposal2.setTokenRange(i35 - i36, this.tokenEnd - i36);
                                                                createProposal2.setRelevance(computeBaseRelevance);
                                                                if (findMethodParameterNames != null) {
                                                                    createProposal2.setParameterNames(findMethodParameterNames);
                                                                }
                                                                char[] createImportCharArray = createImportCharArray(cArr2, false, false);
                                                                InternalCompletionProposal createProposal3 = createProposal(23, this.actualCompletionPosition);
                                                                createProposal3.nameLookup = this.nameEnvironment.nameLookup;
                                                                createProposal3.completionEngine = this;
                                                                char[] qualifiedPackageName = referenceBinding.qualifiedPackageName();
                                                                createProposal3.setDeclarationSignature(qualifiedPackageName);
                                                                createProposal3.setSignature(Engine.getSignature(referenceBinding));
                                                                createProposal3.setPackageName(qualifiedPackageName);
                                                                createProposal3.setTypeName(referenceBinding.qualifiedSourceName());
                                                                createProposal3.setCompletion(createImportCharArray);
                                                                createProposal3.setFlags(referenceBinding2.modifiers);
                                                                createProposal3.setAdditionalFlags(0);
                                                                int i37 = this.offset;
                                                                createProposal3.setReplaceRange(i28 - i37, i28 - i37);
                                                                int i38 = this.offset;
                                                                createProposal3.setTokenRange(i28 - i38, i28 - i38);
                                                                createProposal3.setRelevance(computeBaseRelevance);
                                                                createProposal2.setRequiredProposals(new CompletionProposal[]{createProposal3});
                                                                this.requestor.accept(createProposal2);
                                                                if (DEBUG) {
                                                                    printDebug(createProposal2);
                                                                }
                                                            }
                                                        } else if (!isIgnored(6, 22)) {
                                                            InternalCompletionProposal createProposal4 = createProposal(6, this.actualCompletionPosition);
                                                            createProposal4.setBinding(methodBinding3);
                                                            createProposal4.setDeclarationSignature(Engine.getSignature(methodBinding3.declaringClass));
                                                            createProposal4.setSignature(Engine.getSignature(methodBinding3));
                                                            MethodBinding original3 = methodBinding3.original();
                                                            if (original3 != methodBinding3) {
                                                                createProposal4.setOriginalSignature(Engine.getSignature(original3));
                                                            }
                                                            createProposal4.setDeclarationPackageName(methodBinding3.declaringClass.qualifiedPackageName());
                                                            createProposal4.setDeclarationTypeName(methodBinding3.declaringClass.qualifiedSourceName());
                                                            createProposal4.setParameterPackageNames(cArr9);
                                                            createProposal4.setParameterTypeNames(cArr10);
                                                            createProposal4.setPackageName(methodBinding3.returnType.qualifiedPackageName());
                                                            createProposal4.setTypeName(methodBinding3.returnType.qualifiedSourceName());
                                                            createProposal4.setName(methodBinding3.selector);
                                                            createProposal4.setCompletion(concat);
                                                            createProposal4.setFlags(methodBinding3.modifiers);
                                                            int i39 = this.startPosition;
                                                            int i40 = this.offset;
                                                            createProposal4.setReplaceRange(i39 - i40, this.endPosition - i40);
                                                            int i41 = this.tokenStart;
                                                            int i42 = this.offset;
                                                            createProposal4.setTokenRange(i41 - i42, this.tokenEnd - i42);
                                                            createProposal4.setRelevance(computeBaseRelevance);
                                                            if (findMethodParameterNames != null) {
                                                                createProposal4.setParameterNames(findMethodParameterNames);
                                                            }
                                                            char[] createImportCharArray2 = createImportCharArray(CharOperation.concat(cArr2, methodBinding3.selector, '.'), true, false);
                                                            InternalCompletionProposal createProposal5 = createProposal(22, this.actualCompletionPosition);
                                                            createProposal5.setDeclarationSignature(Engine.getSignature(methodBinding3.declaringClass));
                                                            createProposal5.setSignature(Engine.getSignature(methodBinding3));
                                                            if (original3 != methodBinding3) {
                                                                createProposal4.setOriginalSignature(Engine.getSignature(original3));
                                                            }
                                                            createProposal5.setDeclarationPackageName(methodBinding3.declaringClass.qualifiedPackageName());
                                                            createProposal5.setDeclarationTypeName(methodBinding3.declaringClass.qualifiedSourceName());
                                                            createProposal5.setParameterPackageNames(cArr9);
                                                            createProposal5.setParameterTypeNames(cArr10);
                                                            createProposal5.setPackageName(methodBinding3.returnType.qualifiedPackageName());
                                                            createProposal5.setTypeName(methodBinding3.returnType.qualifiedSourceName());
                                                            createProposal5.setName(methodBinding3.selector);
                                                            createProposal5.setCompletion(createImportCharArray2);
                                                            createProposal5.setFlags(methodBinding3.modifiers);
                                                            createProposal5.setAdditionalFlags(1);
                                                            int i43 = this.offset;
                                                            createProposal5.setReplaceRange(i28 - i43, i28 - i43);
                                                            int i44 = this.offset;
                                                            createProposal5.setTokenRange(i28 - i44, i28 - i44);
                                                            createProposal5.setRelevance(computeBaseRelevance);
                                                            if (findMethodParameterNames != null) {
                                                                createProposal5.setParameterNames(findMethodParameterNames);
                                                            }
                                                            createProposal4.setRequiredProposals(new CompletionProposal[]{createProposal5});
                                                            this.requestor.accept(createProposal4);
                                                            if (DEBUG) {
                                                                printDebug(createProposal4);
                                                            }
                                                        }
                                                        this.startPosition = i27;
                                                        this.tokenStart = i25;
                                                    }
                                                } else {
                                                    i13 = i24;
                                                }
                                                concat = CharOperation.concat(methodBinding3.selector, new char[]{'(', ')'});
                                                int i272 = i13;
                                                int computeBaseRelevance2 = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForCaseMatching(cArr4, methodBinding3.selector) + computeRelevanceForExpectingType(methodBinding3.returnType) + computeRelevanceForEnumConstant(methodBinding3.returnType) + computeRelevanceForStatic(true, methodBinding3.isStatic()) + computeRelevanceForQualification(true) + computeRelevanceForRestrictions(0);
                                                int i282 = this.unitScope.referenceContext.types[0].declarationSourceStart;
                                                this.noProposal = false;
                                                if (i20 != 0) {
                                                }
                                                this.startPosition = i272;
                                                this.tokenStart = i25;
                                            }
                                        }
                                    } else {
                                        objectVector3 = objectVector4;
                                        cArr2 = concatWith;
                                        i11 = length;
                                        i12 = i17;
                                        i15 = 0;
                                        MethodBinding methodBinding4 = (MethodBinding) ((Object[]) objectVector3.elementAt(i18))[0];
                                        if (methodBinding == methodBinding4) {
                                            break;
                                        }
                                        if (!CharOperation.equals(methodBinding.selector, methodBinding4.selector, true) || !TypeBinding.equalsEquals(methodBinding4.declaringClass, methodBinding.declaringClass) || !this.lookupEnvironment.methodVerifier().isMethodSubsignature(methodBinding4, methodBinding)) {
                                            referenceBinding2 = referenceBinding;
                                            concatWith = cArr2;
                                            i16 = 0;
                                            length = i11;
                                            i17 = i12;
                                            objectVector4 = objectVector3;
                                            cArr4 = cArr;
                                        }
                                    }
                                }
                                scope3 = scope;
                                referenceBinding2 = referenceBinding;
                                concatWith = cArr2;
                                i16 = i15;
                                length = i11;
                                length2 = i12;
                                methodBindingArr2 = methodBindingArr;
                                objectVector4 = objectVector3;
                                cArr4 = cArr;
                            }
                        }
                    }
                }
            }
            objectVector3 = objectVector4;
            i15 = i16;
            cArr2 = concatWith;
            i11 = length;
            i12 = i17;
            scope3 = scope;
            referenceBinding2 = referenceBinding;
            concatWith = cArr2;
            i16 = i15;
            length = i11;
            length2 = i12;
            methodBindingArr2 = methodBindingArr;
            objectVector4 = objectVector3;
            cArr4 = cArr;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005b, code lost:
    
        if (r8.canBeSeenBy(r22, r23, r2) == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findLocalMethodsFromStaticImports(char[] cArr, MethodBinding[] methodBindingArr, Scope scope, boolean z10, ObjectVector objectVector, ReferenceBinding referenceBinding, InvocationSite invocationSite) {
        MethodBinding[] methodBindingArr2 = methodBindingArr;
        Scope scope2 = scope;
        ObjectVector objectVector2 = new ObjectVector();
        int length = methodBindingArr2.length;
        while (true) {
            length--;
            if (length < 0) {
                objectVector.addAll(objectVector2);
                return;
            }
            MethodBinding methodBinding = methodBindingArr2[length];
            if (!methodBinding.isSynthetic() && !methodBinding.isDefaultAbstract() && !methodBinding.isConstructor() && methodBinding.isStatic() && (!this.options.checkDeprecation || !methodBinding.isViewedAsDeprecated() || scope2.isDefinedInSameUnit(methodBinding.declaringClass))) {
                if (!this.options.checkVisibility) {
                }
                int i10 = objectVector.size;
                while (true) {
                    i10--;
                    if (i10 < 0) {
                        objectVector2.add(new Object[]{methodBinding, referenceBinding});
                        int length2 = methodBinding.parameters.length;
                        char[][] cArr2 = new char[length2];
                        char[][] cArr3 = new char[length2];
                        for (int i11 = 0; i11 < length2; i11++) {
                            TypeBinding typeBinding = methodBinding.original().parameters[i11];
                            cArr2[i11] = typeBinding.qualifiedPackageName();
                            cArr3[i11] = typeBinding.qualifiedSourceName();
                        }
                        char[][] findMethodParameterNames = findMethodParameterNames(methodBinding, cArr3);
                        char[] cArr4 = CharOperation.NO_CHAR;
                        int i12 = this.startPosition;
                        int i13 = this.tokenStart;
                        if (!z10) {
                            char[] cArr5 = this.source;
                            if (cArr5 != null) {
                                int length3 = cArr5.length;
                                int i14 = this.endPosition;
                                if (length3 > i14 && cArr5[i14] == '(') {
                                    cArr4 = methodBinding.selector;
                                }
                            }
                            cArr4 = CharOperation.concat(methodBinding.selector, new char[]{'(', ')'});
                        } else {
                            this.startPosition = this.endPosition;
                            this.tokenStart = this.tokenEnd;
                        }
                        int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForCaseMatching(cArr, methodBinding.selector) + computeRelevanceForExpectingType(methodBinding.returnType) + computeRelevanceForEnumConstant(methodBinding.returnType) + computeRelevanceForStatic(true, methodBinding.isStatic()) + computeRelevanceForQualification(false) + computeRelevanceForRestrictions(0);
                        this.noProposal = false;
                        if (!this.requestor.isIgnored(6)) {
                            InternalCompletionProposal createProposal = createProposal(6, this.actualCompletionPosition);
                            createProposal.setBinding(methodBinding);
                            createProposal.setDeclarationSignature(Engine.getSignature(methodBinding.declaringClass));
                            createProposal.setSignature(Engine.getSignature(methodBinding));
                            MethodBinding original = methodBinding.original();
                            if (original != methodBinding) {
                                createProposal.setOriginalSignature(Engine.getSignature(original));
                            }
                            createProposal.setDeclarationPackageName(methodBinding.declaringClass.qualifiedPackageName());
                            createProposal.setDeclarationTypeName(methodBinding.declaringClass.qualifiedSourceName());
                            createProposal.setParameterPackageNames(cArr2);
                            createProposal.setParameterTypeNames(cArr3);
                            createProposal.setPackageName(methodBinding.returnType.qualifiedPackageName());
                            createProposal.setTypeName(methodBinding.returnType.qualifiedSourceName());
                            createProposal.setName(methodBinding.selector);
                            createProposal.setCompletion(cArr4);
                            createProposal.setFlags(methodBinding.modifiers);
                            int i15 = this.startPosition;
                            int i16 = this.offset;
                            createProposal.setReplaceRange(i15 - i16, this.endPosition - i16);
                            int i17 = this.tokenStart;
                            int i18 = this.offset;
                            createProposal.setTokenRange(i17 - i18, this.tokenEnd - i18);
                            createProposal.setRelevance(computeBaseRelevance);
                            if (findMethodParameterNames != null) {
                                createProposal.setParameterNames(findMethodParameterNames);
                            }
                            this.requestor.accept(createProposal);
                            if (DEBUG) {
                                printDebug(createProposal);
                            }
                        }
                        this.startPosition = i12;
                        this.tokenStart = i13;
                    } else {
                        Object[] objArr = (Object[]) objectVector.elementAt(i10);
                        MethodBinding methodBinding2 = (MethodBinding) objArr[0];
                        ReferenceBinding referenceBinding2 = (ReferenceBinding) objArr[1];
                        if ((methodBinding != methodBinding2 || !TypeBinding.equalsEquals(referenceBinding, referenceBinding2)) && (!CharOperation.equals(methodBinding.selector, methodBinding2.selector, true) || !this.lookupEnvironment.methodVerifier().isMethodSubsignature(methodBinding2, methodBinding))) {
                        }
                    }
                }
                methodBindingArr2 = methodBindingArr;
                scope2 = scope;
            }
            methodBindingArr2 = methodBindingArr;
            scope2 = scope;
        }
    }

    private void findMemberTypes(char[] cArr, ReferenceBinding referenceBinding, Scope scope, SourceTypeBinding sourceTypeBinding, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, SourceTypeBinding sourceTypeBinding2, ObjectVector objectVector, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z15) {
        ReferenceBinding[] referenceBindingArr;
        int i10;
        int i11;
        int i12;
        ReferenceBinding[] referenceBindingArr2;
        if (cArr == null) {
            return;
        }
        if (this.insideQualifiedReference || cArr.length == 0) {
            findMemberTypes(cArr, referenceBinding.memberTypes(), objectVector, referenceBinding, sourceTypeBinding, z10, z11, z12, z13, scope, bindingArr, iArr, iArr2, z15);
            return;
        }
        int i13 = 0;
        ReferenceBinding[] referenceBindingArr3 = null;
        ReferenceBinding referenceBinding2 = referenceBinding;
        int i14 = 0;
        while (true) {
            ReferenceBinding[] superInterfaces = referenceBinding2.superInterfaces();
            if (superInterfaces == null || superInterfaces == Binding.NO_SUPERINTERFACES) {
                referenceBindingArr = referenceBindingArr3;
                i10 = i14;
            } else if (referenceBindingArr3 == null) {
                i10 = superInterfaces.length;
                referenceBindingArr = superInterfaces;
            } else {
                int length = superInterfaces.length;
                int i15 = i14 + length;
                if (i15 >= referenceBindingArr3.length) {
                    referenceBindingArr2 = new ReferenceBinding[i15 + 5];
                    System.arraycopy(referenceBindingArr3, i13, referenceBindingArr2, i13, i14);
                } else {
                    referenceBindingArr2 = referenceBindingArr3;
                }
                int i16 = i14;
                for (int i17 = i13; i17 < length; i17++) {
                    ReferenceBinding referenceBinding3 = superInterfaces[i17];
                    int i18 = i13;
                    while (true) {
                        if (i18 >= i16) {
                            referenceBindingArr2[i16] = referenceBinding3;
                            i16++;
                            break;
                        } else if (TypeBinding.equalsEquals(referenceBinding3, referenceBindingArr2[i18])) {
                            break;
                        } else {
                            i18++;
                        }
                    }
                }
                referenceBindingArr = referenceBindingArr2;
                i10 = i16;
            }
            i11 = i13;
            findMemberTypes(cArr, referenceBinding2.memberTypes(), objectVector, referenceBinding, sourceTypeBinding, z10, z11, z12, z13, scope, bindingArr, iArr, iArr2, z15);
            referenceBinding2 = referenceBinding2.superclass();
            if (referenceBinding2 == null) {
                break;
            }
            i13 = i11;
            referenceBindingArr3 = referenceBindingArr;
            i14 = i10;
        }
        if (z14) {
            ReferenceBinding[] memberTypes = referenceBinding.memberTypes();
            for (int i19 = i11; i19 < memberTypes.length; i19++) {
                if (TypeBinding.notEquals(memberTypes[i19], sourceTypeBinding2)) {
                    findSubMemberTypes(cArr, memberTypes[i19], scope, sourceTypeBinding, z10, z11, z12, objectVector);
                }
            }
        }
        if (referenceBindingArr != null) {
            int i20 = i11;
            ReferenceBinding[] referenceBindingArr4 = referenceBindingArr;
            int i21 = i10;
            while (i20 < i21) {
                ReferenceBinding referenceBinding4 = referenceBindingArr4[i20];
                int i22 = i21;
                ReferenceBinding[] referenceBindingArr5 = referenceBindingArr4;
                int i23 = i20;
                findMemberTypes(cArr, referenceBinding4.memberTypes(), objectVector, referenceBinding, sourceTypeBinding, z10, z11, z12, z13, scope, bindingArr, iArr, iArr2, z15);
                ReferenceBinding[] superInterfaces2 = referenceBinding4.superInterfaces();
                if (superInterfaces2 == null || superInterfaces2 == Binding.NO_SUPERINTERFACES) {
                    i12 = 0;
                    referenceBindingArr4 = referenceBindingArr5;
                    i21 = i22;
                } else {
                    int length2 = superInterfaces2.length;
                    int i24 = i22 + length2;
                    if (i24 >= referenceBindingArr5.length) {
                        referenceBindingArr4 = new ReferenceBinding[i24 + 5];
                        i12 = 0;
                        System.arraycopy(referenceBindingArr5, 0, referenceBindingArr4, 0, i22);
                    } else {
                        i12 = 0;
                        referenceBindingArr4 = referenceBindingArr5;
                    }
                    i21 = i22;
                    for (int i25 = i12; i25 < length2; i25++) {
                        ReferenceBinding referenceBinding5 = superInterfaces2[i25];
                        int i26 = i12;
                        while (true) {
                            if (i26 >= i21) {
                                referenceBindingArr4[i21] = referenceBinding5;
                                i21++;
                                break;
                            } else if (TypeBinding.equalsEquals(referenceBinding5, referenceBindingArr4[i26])) {
                                break;
                            } else {
                                i26++;
                            }
                        }
                    }
                }
                i20 = i23 + 1;
            }
        }
    }

    private void findMemberTypesFromMissingType(char[] cArr, long j10, final Scope scope) {
        MissingTypesGuesser missingTypesGuesser = new MissingTypesGuesser(this);
        MissingTypesGuesser.GuessedTypeRequestor guessedTypeRequestor = new MissingTypesGuesser.GuessedTypeRequestor() {
            @Override
            public void accept(TypeBinding typeBinding, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z10) {
                if (typeBinding instanceof ReferenceBinding) {
                    CompletionEngine completionEngine = CompletionEngine.this;
                    Scope scope2 = scope;
                    completionEngine.findMemberTypes(completionEngine.completionToken, (ReferenceBinding) typeBinding, scope2, scope2.enclosingSourceType(), false, false, new ObjectVector(), bindingArr, iArr, iArr2, z10);
                }
            }
        };
        SingleTypeReference singleTypeReference = new SingleTypeReference(cArr, j10);
        singleTypeReference.resolvedType = new ProblemReferenceBinding(new char[][]{cArr}, null, 1);
        missingTypesGuesser.guess(singleTypeReference, scope, guessedTypeRequestor);
    }

    private void findMembersFromMissingType(char[] cArr, long j10, TypeBinding typeBinding, final Scope scope, final InvocationSite invocationSite, final boolean z10) {
        MissingTypesGuesser missingTypesGuesser = new MissingTypesGuesser(this);
        MissingTypesGuesser.GuessedTypeRequestor guessedTypeRequestor = new MissingTypesGuesser.GuessedTypeRequestor() {
            @Override
            public void accept(TypeBinding typeBinding2, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z11) {
                if (typeBinding2 instanceof ReferenceBinding) {
                    CompletionEngine completionEngine = CompletionEngine.this;
                    completionEngine.findMembers(completionEngine.completionToken, (ReferenceBinding) typeBinding2, scope, invocationSite, z10, bindingArr, iArr, iArr2, z11);
                }
            }
        };
        SingleTypeReference singleTypeReference = new SingleTypeReference(cArr, j10);
        singleTypeReference.resolvedType = new ProblemReferenceBinding(new char[][]{cArr}, null, 1);
        missingTypesGuesser.guess(singleTypeReference, scope, guessedTypeRequestor);
    }

    private void findMethodDeclarations(char[] cArr, ReferenceBinding referenceBinding, Scope scope, ObjectVector objectVector, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z10) {
        if (cArr == null) {
            return;
        }
        MethodBinding[] availableMethods = referenceBinding.availableMethods();
        if (availableMethods != null) {
            for (int i10 = 0; i10 < availableMethods.length; i10++) {
                if (!availableMethods[i10].isDefaultAbstract()) {
                    objectVector.add(availableMethods[i10]);
                }
            }
        }
        findInterfacesMethodDeclarations(cArr, referenceBinding, referenceBinding.superInterfaces(), scope, objectVector, bindingArr, iArr, iArr2, z10);
        ReferenceBinding javaLangObject = referenceBinding.isInterface() ? scope.getJavaLangObject() : referenceBinding.superclass();
        boolean z11 = this.compilerOptions.sourceLevel >= ClassFileConstants.JDK1_8;
        boolean z12 = true;
        for (ReferenceBinding referenceBinding2 = javaLangObject; referenceBinding2 != null; referenceBinding2 = referenceBinding2.superclass()) {
            MethodBinding[] availableMethods2 = referenceBinding2.availableMethods();
            if (availableMethods2 != null) {
                findLocalMethodDeclarations(cArr, availableMethods2, scope, objectVector, false, referenceBinding);
            }
            if (z12 && (z11 || referenceBinding2.isAbstract() || referenceBinding2.isTypeVariable() || referenceBinding2.isIntersectionType() || referenceBinding2.isEnum())) {
                findInterfacesMethodDeclarations(cArr, referenceBinding, referenceBinding2.superInterfaces(), scope, objectVector, bindingArr, iArr, iArr2, z10);
            } else {
                z12 = false;
            }
        }
    }

    private char[][] findMethodParameterNames(MethodBinding methodBinding, char[][] cArr) {
        char[][] cArr2;
        ClassScope classScope;
        TypeDeclaration typeDeclaration;
        AbstractMethodDeclaration declarationOf;
        TypeBinding erasure = methodBinding.declaringClass.erasure();
        ISourceType iSourceType = null;
        if (!(erasure instanceof ReferenceBinding)) {
            return null;
        }
        int length = cArr.length;
        if (length == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        if (!(erasure instanceof SourceTypeBinding) || (classScope = ((SourceTypeBinding) erasure).scope) == null || (typeDeclaration = classScope.referenceContext) == null || (declarationOf = typeDeclaration.declarationOf(methodBinding.original())) == null) {
            cArr2 = null;
        } else {
            Argument[] argumentArr = declarationOf.arguments;
            cArr2 = new char[length];
            for (int i10 = 0; i10 < length; i10++) {
                cArr2[i10] = argumentArr[i10].name;
            }
        }
        if (cArr2 != null) {
            return cArr2;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) erasure;
        char[] concatWith = CharOperation.concatWith(referenceBinding.compoundName, '.');
        Object obj = this.typeCache.get(concatWith);
        if (obj == null) {
            NameEnvironmentAnswer findTypeInModules = this.nameEnvironment.findTypeInModules(referenceBinding.compoundName, this.unitScope.module());
            if (findTypeInModules != null && findTypeInModules.isSourceType()) {
                iSourceType = findTypeInModules.getSourceTypes()[0];
                this.typeCache.put(concatWith, iSourceType);
            }
        } else if (obj instanceof ISourceType) {
            iSourceType = (ISourceType) obj;
        }
        if (iSourceType == null) {
            return cArr2;
        }
        IType handle = ((SourceTypeElementInfo) iSourceType).getHandle();
        String[] strArr = new String[length];
        for (int i11 = 0; i11 < length; i11++) {
            strArr[i11] = Signature.createTypeSignature(cArr[i11], false);
        }
        IMethod[] findMethods = handle.findMethods(handle.getMethod(String.valueOf(methodBinding.selector), strArr));
        if (findMethods == null || findMethods.length != 1) {
            return cArr2;
        }
        try {
            return ((SourceMethodElementInfo) ((SourceMethod) findMethods[0]).getElementInfo()).getArgumentNames();
        } catch (JavaModelException unused) {
            return cArr2;
        }
    }

    private void findMethods(char[] cArr, TypeBinding[] typeBindingArr, TypeBinding[] typeBindingArr2, ReferenceBinding referenceBinding, Scope scope, ObjectVector objectVector, boolean z10, boolean z11, InvocationSite invocationSite, Scope scope2, boolean z12, boolean z13, boolean z14, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z15, char[] cArr2, int i10, int i11) {
        CompletionEngine completionEngine;
        ReferenceBinding referenceBinding2;
        boolean z16 = this.assistNodeInJavadoc == 0;
        if ((cArr == null && z16) || this.assistNodeIsInsideCase) {
            return;
        }
        if (z16 && referenceBinding.isInterface()) {
            findInterfacesMethods(cArr, typeBindingArr, typeBindingArr2, referenceBinding, new ReferenceBinding[]{referenceBinding}, scope, objectVector, z10, z11, invocationSite, scope2, z12, z13, z14, bindingArr, iArr, iArr2, z15, cArr2, i10, i11);
            referenceBinding2 = scope.getJavaLangObject();
            completionEngine = this;
        } else {
            completionEngine = this;
            referenceBinding2 = referenceBinding;
        }
        boolean z17 = completionEngine.compilerOptions.sourceLevel >= ClassFileConstants.JDK1_8;
        boolean z18 = true;
        for (ReferenceBinding referenceBinding3 = referenceBinding2; referenceBinding3 != null; referenceBinding3 = referenceBinding3.superclass()) {
            MethodBinding[] availableMethods = referenceBinding3.availableMethods();
            if (availableMethods != null) {
                findLocalMethods(cArr, typeBindingArr, typeBindingArr2, availableMethods, scope, objectVector, z10, z11, referenceBinding, invocationSite, scope2, z12, z13, z14, bindingArr, iArr, iArr2, z15, cArr2, i10, i11);
            }
            if (z18 && (z17 || referenceBinding3.isAbstract() || referenceBinding3.isTypeVariable() || referenceBinding3.isIntersectionType() || referenceBinding3.isEnum())) {
                ReferenceBinding[] superInterfaces = referenceBinding3.superInterfaces();
                if (superInterfaces != null && referenceBinding3.isIntersectionType()) {
                    for (int i12 = 0; i12 < superInterfaces.length; i12++) {
                        superInterfaces[i12] = (ReferenceBinding) superInterfaces[i12].capture(scope2, invocationSite.sourceStart(), invocationSite.sourceEnd());
                    }
                }
                findInterfacesMethods(cArr, typeBindingArr, typeBindingArr2, referenceBinding, superInterfaces, scope, objectVector, z10, z11, invocationSite, scope2, z12, z13, z14, bindingArr, iArr, iArr2, z15, cArr2, i10, i11);
            } else if (!z17) {
                z18 = false;
            }
        }
    }

    private void findModules(CompletionOnModuleReference completionOnModuleReference, boolean z10) {
        setCompletionToken(completionOnModuleReference.tokens, completionOnModuleReference.sourceStart, completionOnModuleReference.sourceEnd, completionOnModuleReference.sourcePositions);
        findTargettedModules(completionOnModuleReference, new HashSet<>());
        this.nameEnvironment.findModules(CharOperation.toLowerCase(this.completionToken), this, z10 ? this.javaProject : null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v5, types: [boolean, int] */
    private void findNestedTypes(char[] cArr, SourceTypeBinding sourceTypeBinding, Scope scope, boolean z10, ObjectVector objectVector) {
        int i10;
        Scope scope2;
        int i11;
        SourceTypeBinding sourceTypeBinding2;
        CompletionEngine completionEngine;
        CompletionEngine completionEngine2;
        if (cArr == null) {
            return;
        }
        int length = cArr.length;
        Scope scope3 = scope;
        SourceTypeBinding sourceTypeBinding3 = null;
        while (scope3 != null) {
            int i12 = scope3.kind;
            if (i12 == 1 || i12 == 2) {
                Scope scope4 = scope3;
                i10 = length;
                scope2 = scope4;
                BlockScope blockScope = (BlockScope) scope2;
                int i13 = blockScope.subscopeCount;
                boolean z11 = false;
                int i14 = 0;
                while (i14 < i13) {
                    Scope scope5 = blockScope.subscopes[i14];
                    if (scope5 instanceof ClassScope) {
                        SourceTypeBinding sourceTypeBinding4 = ((ClassScope) scope5).referenceContext.binding;
                        if (!sourceTypeBinding4.isAnonymousType()) {
                            CompletionEngine completionEngine3 = this;
                            if (!completionEngine3.isForbidden(sourceTypeBinding4)) {
                                char[] cArr2 = sourceTypeBinding4.sourceName;
                                if (i10 <= cArr2.length) {
                                    char[] cArr3 = cArr;
                                    if (!completionEngine3.isFailedMatch(cArr3, cArr2)) {
                                        ObjectVector objectVector2 = objectVector;
                                        int i15 = objectVector2.size;
                                        CompletionEngine completionEngine4 = completionEngine3;
                                        ?? r15 = z11;
                                        while (true) {
                                            i15--;
                                            if (i15 >= 0) {
                                                ObjectVector objectVector3 = objectVector2;
                                                CompletionEngine completionEngine5 = completionEngine4;
                                                SourceTypeBinding sourceTypeBinding5 = sourceTypeBinding4;
                                                i11 = i14;
                                                if (TypeBinding.equalsEquals(sourceTypeBinding5, (ReferenceBinding) objectVector3.elementAt(i15))) {
                                                    break;
                                                }
                                                sourceTypeBinding4 = sourceTypeBinding5;
                                                completionEngine4 = completionEngine5;
                                                objectVector2 = objectVector3;
                                                i14 = i11;
                                                r15 = 0;
                                                cArr3 = cArr;
                                            } else if (!(completionEngine4.assistNodeIsExtendedType && sourceTypeBinding4.isFinal()) && (!(completionEngine4.assistNodeIsInterfaceExcludingAnnotation && sourceTypeBinding4.isAnnotationType()) && (!completionEngine4.assistNodeIsClass ? !(!completionEngine4.assistNodeIsInterface ? !(!completionEngine4.assistNodeIsAnnotation || sourceTypeBinding4.isAnnotationType()) : !(sourceTypeBinding4.isInterface() || sourceTypeBinding4.isAnnotationType())) : !sourceTypeBinding4.isClass()))) {
                                                int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + completionEngine4.computeRelevanceForInterestingProposal(sourceTypeBinding4) + completionEngine4.computeRelevanceForCaseMatching(cArr3, sourceTypeBinding4.sourceName) + completionEngine4.computeRelevanceForExpectingType(sourceTypeBinding4) + completionEngine4.computeRelevanceForException(sourceTypeBinding4.sourceName) + computeRelevanceForClass() + completionEngine4.computeRelevanceForQualification(r15) + completionEngine4.computeRelevanceForRestrictions(r15) + completionEngine4.computeRelevanceForAnnotationTarget(sourceTypeBinding4);
                                                boolean isAllowingLongComputationProposals = isAllowingLongComputationProposals();
                                                if (completionEngine4.assistNodeIsConstructor && isAllowingLongComputationProposals && !hasArrayTypeAsExpectedSuperTypes()) {
                                                    completionEngine = completionEngine4;
                                                    sourceTypeBinding2 = sourceTypeBinding4;
                                                    i11 = i14;
                                                } else {
                                                    completionEngine4.noProposal = r15;
                                                    if (completionEngine4.requestor.isIgnored(9)) {
                                                        sourceTypeBinding2 = sourceTypeBinding4;
                                                        i11 = i14;
                                                    } else {
                                                        char[] cArr4 = sourceTypeBinding4.sourceName;
                                                        sourceTypeBinding2 = sourceTypeBinding4;
                                                        i11 = i14;
                                                        createTypeProposal(sourceTypeBinding4, cArr4, 0, cArr4, computeBaseRelevance, null, null, null, false);
                                                    }
                                                    completionEngine = this;
                                                }
                                                if (completionEngine.assistNodeIsConstructor && isAllowingLongComputationProposals) {
                                                    findConstructorsOrAnonymousTypes(sourceTypeBinding2, blockScope, FakeInvocationSite, false, computeBaseRelevance);
                                                }
                                            } else {
                                                completionEngine2 = completionEngine4;
                                            }
                                        }
                                        i14 = i11 + 1;
                                        z11 = false;
                                    }
                                }
                            }
                            completionEngine2 = completionEngine3;
                            i11 = i14;
                            i14 = i11 + 1;
                            z11 = false;
                        }
                    }
                    i11 = i14;
                    i14 = i11 + 1;
                    z11 = false;
                }
            } else if (i12 == 3) {
                SourceTypeBinding enclosingSourceType = scope3.enclosingSourceType();
                Scope scope6 = scope3;
                findMemberTypes(cArr, enclosingSourceType, scope3, sourceTypeBinding, false, false, false, false, z10, sourceTypeBinding3, objectVector, null, null, null, false);
                i10 = length;
                if (i10 == 0) {
                    return;
                }
                sourceTypeBinding3 = enclosingSourceType;
                scope2 = scope6;
            } else {
                if (i12 == 4) {
                    return;
                }
                int i16 = length;
                scope2 = scope3;
                i10 = i16;
            }
            Scope scope7 = scope2.parent;
            length = i10;
            scope3 = scope7;
        }
    }

    private void findPackages(CompletionOnPackageVisibilityReference completionOnPackageVisibilityReference) {
        setCompletionToken(completionOnPackageVisibilityReference.tokens, completionOnPackageVisibilityReference.sourceStart, completionOnPackageVisibilityReference.sourceEnd, completionOnPackageVisibilityReference.sourcePositions, false);
        findPackagesInCurrentModule();
    }

    private void findPackagesInCurrentModule() {
        try {
            this.nameEnvironment.findPackages(CharOperation.toLowerCase(this.completionToken), this, SearchableEnvironment.getOwnedPackageFragmentRoots(this.javaProject), false);
        } catch (JavaModelException unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findParameterizedType(TypeReference typeReference, Scope scope) {
        int i10;
        AccessRestriction accessRestriction;
        ReferenceBinding referenceBinding = (ReferenceBinding) typeReference.resolvedType;
        if (referenceBinding == null) {
            return;
        }
        if (this.options.checkDeprecation && referenceBinding.isViewedAsDeprecated() && !scope.isDefinedInSameUnit(referenceBinding)) {
            return;
        }
        if (referenceBinding.hasRestrictedAccess() && (accessRestriction = this.lookupEnvironment.getAccessRestriction(referenceBinding)) != null) {
            int problemId = accessRestriction.getProblemId();
            if (problemId != 16777496) {
                if (problemId == 16777523) {
                    if (this.options.checkForbiddenReference) {
                        return;
                    } else {
                        i10 = 1;
                    }
                }
            } else if (this.options.checkDiscouragedReference) {
                return;
            } else {
                i10 = 2;
            }
            int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal();
            char[] cArr = referenceBinding.sourceName;
            int computeRelevanceForCaseMatching = computeBaseRelevance + computeRelevanceForCaseMatching(cArr, cArr) + computeRelevanceForExpectingType(referenceBinding) + computeRelevanceForQualification(false) + computeRelevanceForRestrictions(i10);
            if (this.requestor.isIgnored(9)) {
                createTypeProposal(referenceBinding, referenceBinding.qualifiedSourceName(), 0, CharOperation.NO_CHAR, computeRelevanceForCaseMatching, null, null, null, false);
                return;
            }
            return;
        }
        i10 = 0;
        int computeBaseRelevance2 = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal();
        char[] cArr2 = referenceBinding.sourceName;
        int computeRelevanceForCaseMatching2 = computeBaseRelevance2 + computeRelevanceForCaseMatching(cArr2, cArr2) + computeRelevanceForExpectingType(referenceBinding) + computeRelevanceForQualification(false) + computeRelevanceForRestrictions(i10);
        if (this.requestor.isIgnored(9)) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0069, code lost:
    
        if (r9[r10].canBeSeenBy(r18.unitScope.fPackage) != false) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findSubMemberTypes(char[] cArr, ReferenceBinding referenceBinding, Scope scope, SourceTypeBinding sourceTypeBinding, boolean z10, boolean z11, boolean z12, ObjectVector objectVector) {
        if (cArr == null) {
            return;
        }
        if (this.assistNodeIsSuperType && !this.insideQualifiedReference && isForbidden(referenceBinding)) {
            return;
        }
        findMemberTypes(cArr, referenceBinding.memberTypes(), objectVector, referenceBinding, sourceTypeBinding, z10, z11, z12, true, scope, null, null, null, false);
        ReferenceBinding[] memberTypes = referenceBinding.memberTypes();
        int i10 = 0;
        while (i10 < memberTypes.length) {
            if (this.options.checkVisibility) {
                if (sourceTypeBinding != null && !memberTypes[i10].canBeSeenBy(referenceBinding, sourceTypeBinding)) {
                    i10++;
                }
            }
            findSubMemberTypes(cArr, memberTypes[i10], scope, sourceTypeBinding, z10, z11, z12, objectVector);
            i10++;
        }
    }

    private void findTargettedModules(final char[] cArr, HashSet<String> hashSet) {
        HashSet hashSet2 = new HashSet();
        ModuleSourcePathManager modulePathManager = JavaModelManager.getModulePathManager();
        JavaElementRequestor javaElementRequestor = new JavaElementRequestor();
        try {
            modulePathManager.seekModule(this.completionToken, true, javaElementRequestor);
            for (IModuleDescription iModuleDescription : javaElementRequestor.getModules()) {
                String elementName = iModuleDescription.getElementName();
                if (elementName != null && !elementName.equals("")) {
                    hashSet2.add(elementName);
                }
            }
        } catch (JavaModelException unused) {
        }
        hashSet2.addAll(getAllJarModuleNames(this.javaProject));
        if (cArr != CharOperation.ALL_PREFIX && cArr != null && cArr.length > 0) {
            hashSet2.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$0;
                    lambda$0 = CompletionEngine.this.lambda$0(cArr, (String) obj);
                    return lambda$0;
                }
            });
        }
        Iterator it = hashSet2.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!hashSet.contains(str)) {
                acceptModule(str.toCharArray());
            }
        }
    }

    private void findTrueOrFalseKeywords(char[][] cArr) {
        if (cArr == null || cArr.length == 0 || this.expectedTypesPtr != 0 || TypeBinding.notEquals(this.expectedTypes[0], TypeBinding.BOOLEAN)) {
            return;
        }
        for (int i10 = 0; i10 < cArr.length; i10++) {
            if (CharOperation.equals(cArr[i10], Keywords.TRUE) || CharOperation.equals(cArr[i10], Keywords.FALSE)) {
                int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForCaseMatching(CharOperation.NO_CHAR, cArr[i10]) + computeRelevanceForRestrictions(0) + computeRelevanceForExpectingType(TypeBinding.BOOLEAN) + computeRelevanceForQualification(false) + 1;
                this.noProposal = false;
                if (!this.requestor.isIgnored(3)) {
                    InternalCompletionProposal createProposal = createProposal(3, this.actualCompletionPosition);
                    createProposal.setName(cArr[i10]);
                    createProposal.setCompletion(cArr[i10]);
                    int i11 = this.startPosition;
                    int i12 = this.offset;
                    createProposal.setReplaceRange(i11 - i12, this.endPosition - i12);
                    int i13 = this.tokenStart;
                    int i14 = this.offset;
                    createProposal.setTokenRange(i13 - i14, this.tokenEnd - i14);
                    createProposal.setRelevance(computeBaseRelevance);
                    this.requestor.accept(createProposal);
                    if (DEBUG) {
                        printDebug(createProposal);
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findTypeParameters(char[] cArr, Scope scope) {
        TypeParameter[] typeParameterArr;
        if (this.compilerOptions.sourceLevel < ClassFileConstants.JDK1_5) {
            return;
        }
        while (scope != null) {
            int i10 = scope.kind;
            if (i10 == 2) {
                ReferenceContext referenceContext = ((MethodScope) scope).referenceContext;
                if (referenceContext instanceof MethodDeclaration) {
                    typeParameterArr = ((MethodDeclaration) referenceContext).typeParameters;
                } else {
                    if (referenceContext instanceof ConstructorDeclaration) {
                        typeParameterArr = ((ConstructorDeclaration) referenceContext).typeParameters;
                    }
                    typeParameterArr = null;
                }
                if (typeParameterArr != null) {
                }
                scope = scope.parent;
            } else if (i10 != 3) {
                if (i10 == 4) {
                    return;
                }
                typeParameterArr = null;
                if (typeParameterArr != null) {
                    for (TypeParameter typeParameter : typeParameterArr) {
                        int length = cArr.length;
                        if (typeParameter.binding != null) {
                            char[] cArr2 = typeParameter.name;
                            if (length <= cArr2.length && !isFailedMatch(cArr, cArr2)) {
                                int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForCaseMatching(cArr, typeParameter.name);
                                TypeReference typeReference = typeParameter.type;
                                int computeRelevanceForExpectingType = computeBaseRelevance + computeRelevanceForExpectingType(typeReference == null ? null : typeReference.resolvedType) + computeRelevanceForQualification(false) + computeRelevanceForException(typeParameter.name) + computeRelevanceForRestrictions(0);
                                this.noProposal = false;
                                if (!this.requestor.isIgnored(9)) {
                                    createTypeParameterProposal(typeParameter, computeRelevanceForExpectingType);
                                }
                            }
                        }
                    }
                }
                scope = scope.parent;
            } else {
                typeParameterArr = ((ClassScope) scope).referenceContext.typeParameters;
                if (typeParameterArr != null) {
                }
                scope = scope.parent;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:165:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0276 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0335  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findTypesAndPackages(char[] cArr, Scope scope, boolean z10, boolean z11, ObjectVector objectVector) {
        SourceTypeBinding sourceTypeBinding;
        int i10;
        int i11;
        SourceTypeBinding[] sourceTypeBindingArr;
        int i12;
        SourceTypeBinding sourceTypeBinding2;
        boolean z12;
        boolean z13;
        boolean z14;
        SourceTypeBinding sourceTypeBinding3;
        int computeRelevanceForException;
        boolean z15;
        boolean z16;
        ReferenceBinding referenceBinding;
        int i13;
        boolean z17;
        SourceTypeBinding sourceTypeBinding4;
        boolean z18;
        int i14;
        int i15;
        int i16;
        if (cArr == null) {
            return;
        }
        boolean isAllowingLongComputationProposals = isAllowingLongComputationProposals();
        boolean z19 = true;
        boolean z20 = (this.requestor.isIgnored(9) && ((this.assistNodeInJavadoc & 4) == 0 || this.requestor.isIgnored(16))) ? false : true;
        boolean z21 = this.assistNodeIsConstructor;
        boolean z22 = !z21;
        boolean z23 = isAllowingLongComputationProposals && z21 && !(isIgnored(26, 9) && isIgnored(27, 9));
        if ((z20 || z23) && scope.enclosingSourceType() != null) {
            checkCancel();
            findNestedTypes(cArr, scope.enclosingSourceType(), scope, z22, objectVector);
            if (!this.assistNodeIsInterface && !this.assistNodeIsConstructor && !this.assistNodeIsAnnotation && this.assistNodeInJavadoc == 0) {
                checkCancel();
                findTypeParameters(cArr, scope);
            }
        }
        boolean z24 = cArr.length == 0;
        if ((z20 || z23) && this.unitScope != null) {
            SourceTypeBinding enclosingSourceType = scope.enclosingSourceType();
            if (enclosingSourceType != null) {
                ReferenceBinding enclosingType = enclosingSourceType.enclosingType();
                SourceTypeBinding sourceTypeBinding5 = enclosingSourceType;
                while (true) {
                    ReferenceBinding referenceBinding2 = enclosingType;
                    sourceTypeBinding4 = sourceTypeBinding5;
                    ReferenceBinding referenceBinding3 = referenceBinding2;
                    if (referenceBinding3 == null) {
                        break;
                    }
                    enclosingType = referenceBinding3.enclosingType();
                    sourceTypeBinding5 = referenceBinding3;
                }
                sourceTypeBinding = sourceTypeBinding4;
            } else {
                sourceTypeBinding = enclosingSourceType;
            }
            int length = cArr.length;
            SourceTypeBinding[] sourceTypeBindingArr2 = this.unitScope.topLevelTypes;
            int length2 = sourceTypeBindingArr2.length;
            int i17 = 0;
            while (i17 < length2) {
                checkCancel();
                SourceTypeBinding sourceTypeBinding6 = sourceTypeBindingArr2[i17];
                if (isForbidden(sourceTypeBinding6)) {
                    i10 = i17;
                    i11 = length2;
                    sourceTypeBindingArr = sourceTypeBindingArr2;
                    i13 = length;
                    sourceTypeBinding2 = sourceTypeBinding;
                    z12 = z22;
                    z13 = z21;
                    z16 = z20;
                    z17 = isAllowingLongComputationProposals;
                } else {
                    if (z21 || !TypeBinding.notEquals(sourceTypeBinding6, sourceTypeBinding)) {
                        i10 = i17;
                        i11 = length2;
                        sourceTypeBindingArr = sourceTypeBindingArr2;
                        i12 = length;
                        sourceTypeBinding2 = sourceTypeBinding;
                        z12 = z22;
                        z13 = z21;
                        z14 = z20;
                        sourceTypeBinding3 = sourceTypeBinding6;
                    } else {
                        i10 = i17;
                        i11 = length2;
                        sourceTypeBindingArr = sourceTypeBindingArr2;
                        i12 = length;
                        sourceTypeBinding2 = sourceTypeBinding;
                        z12 = z22;
                        z13 = z21;
                        z14 = z20;
                        findSubMemberTypes(cArr, sourceTypeBinding6, scope, scope.enclosingSourceType(), false, false, false, objectVector);
                        sourceTypeBinding3 = sourceTypeBinding6;
                    }
                    char[] cArr2 = sourceTypeBinding3.sourceName;
                    if (cArr2 != CompletionParser.FAKE_TYPE_NAME && cArr2 != TypeConstants.PACKAGE_INFO_NAME && i12 <= cArr2.length && !isFailedMatch(cArr, cArr2) && (!this.assistNodeIsAnnotation || hasPossibleAnnotationTarget(sourceTypeBinding3, scope))) {
                        int i18 = objectVector.size;
                        while (true) {
                            i18--;
                            if (i18 < 0) {
                                objectVector.add(sourceTypeBinding3);
                                if ((!this.assistNodeIsExtendedType || !sourceTypeBinding3.isFinal()) && ((!this.assistNodeIsInterfaceExcludingAnnotation || !sourceTypeBinding3.isAnnotationType()) && (!this.assistNodeIsClass ? !this.assistNodeIsInterface ? !this.assistNodeIsAnnotation ? !this.assistNodeIsException || (sourceTypeBinding3.isClass() && (!z24 || sourceTypeBinding3.findSuperTypeOriginatingFrom(21, z19) != null)) : sourceTypeBinding3.isAnnotationType() : sourceTypeBinding3.isInterface() || sourceTypeBinding3.isAnnotationType() : sourceTypeBinding3.isClass()))) {
                                    int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal(sourceTypeBinding3) + computeRelevanceForCaseMatching(cArr, sourceTypeBinding3.sourceName) + computeRelevanceForExpectingType(sourceTypeBinding3) + computeRelevanceForQualification(false) + computeRelevanceForRestrictions(0);
                                    if (sourceTypeBinding3.isAnnotationType()) {
                                        computeBaseRelevance += computeRelevanceForAnnotation();
                                        computeRelevanceForException = computeRelevanceForAnnotationTarget(sourceTypeBinding3);
                                    } else if (sourceTypeBinding3.isInterface()) {
                                        computeRelevanceForException = computeRelevanceForInterface();
                                    } else {
                                        if (sourceTypeBinding3.isClass()) {
                                            computeBaseRelevance += computeRelevanceForClass();
                                            computeRelevanceForException = computeRelevanceForException(sourceTypeBinding3.sourceName);
                                        }
                                        int i19 = computeBaseRelevance;
                                        this.noProposal = false;
                                        z15 = z14;
                                        if ((z15 || (this.assistNodeIsConstructor && isAllowingLongComputationProposals && !hasStaticMemberTypes(sourceTypeBinding3, null, this.unitScope) && !hasMemberTypesInEnclosingScope(sourceTypeBinding3, scope))) && !hasArrayTypeAsExpectedSuperTypes()) {
                                            z16 = z15;
                                            referenceBinding = sourceTypeBinding3;
                                            i13 = i12;
                                            z17 = isAllowingLongComputationProposals;
                                        } else {
                                            char[] sourceName = sourceTypeBinding3.sourceName();
                                            z16 = z15;
                                            referenceBinding = sourceTypeBinding3;
                                            z17 = isAllowingLongComputationProposals;
                                            i13 = i12;
                                            createTypeProposal(sourceTypeBinding3, sourceName, 0, sourceName, i19, null, null, null, false);
                                        }
                                        if (!z23) {
                                            findConstructorsOrAnonymousTypes(referenceBinding, scope, FakeInvocationSite, false, i19);
                                        }
                                    }
                                    computeBaseRelevance += computeRelevanceForException;
                                    int i192 = computeBaseRelevance;
                                    this.noProposal = false;
                                    z15 = z14;
                                    if (z15) {
                                    }
                                    z16 = z15;
                                    referenceBinding = sourceTypeBinding3;
                                    i13 = i12;
                                    z17 = isAllowingLongComputationProposals;
                                    if (!z23) {
                                    }
                                }
                            } else {
                                i13 = i12;
                                z17 = isAllowingLongComputationProposals;
                                z16 = z14;
                                SourceTypeBinding sourceTypeBinding7 = sourceTypeBinding3;
                                if (TypeBinding.equalsEquals(sourceTypeBinding7, (ReferenceBinding) objectVector.elementAt(i18))) {
                                    break;
                                }
                                sourceTypeBinding3 = sourceTypeBinding7;
                                z14 = z16;
                                isAllowingLongComputationProposals = z17;
                                i12 = i13;
                                z19 = true;
                            }
                        }
                    }
                    i13 = i12;
                    z17 = isAllowingLongComputationProposals;
                    z16 = z14;
                }
                i17 = i10 + 1;
                z20 = z16;
                sourceTypeBinding = sourceTypeBinding2;
                z21 = z13;
                isAllowingLongComputationProposals = z17;
                length2 = i11;
                sourceTypeBindingArr2 = sourceTypeBindingArr;
                length = i13;
                z22 = z12;
                z19 = true;
            }
        }
        boolean z25 = z22;
        boolean z26 = z20;
        if (z23 && !z24) {
            checkCancel();
            findTypesFromImports(cArr, scope, z26, objectVector);
        } else if (z26) {
            checkCancel();
            z18 = z25;
            findTypesFromStaticImports(cArr, scope, z18, objectVector);
            if (z23) {
                checkCancel();
                findTypesFromExpectedTypes(cArr, scope, objectVector, z26, z23);
            }
            if (!z24 && !this.assistNodeIsAnnotation) {
                if (z23) {
                    return;
                }
                findTypesFromExpectedTypes(cArr, scope, objectVector, z26, z23);
                return;
            }
            if (!z24 && !this.requestor.isIgnored(3) && (((i16 = this.assistNodeInJavadoc) == 0 || (i16 & 8) != 0) && z10)) {
                if (z11) {
                    findKeywords(cArr, BASE_TYPE_NAMES_WITHOUT_VOID, false, false);
                } else {
                    findKeywords(cArr, BASE_TYPE_NAMES, false, false);
                }
            }
            if (!z23) {
                int size = objectVector.size();
                for (int i20 = 0; i20 < size; i20++) {
                    ReferenceBinding referenceBinding4 = (ReferenceBinding) objectVector.elementAt(i20);
                    this.knownTypes.put(CharOperation.concat(referenceBinding4.qualifiedPackageName(), referenceBinding4.qualifiedSourceName(), '.'), KNOWN_TYPE_WITH_KNOWN_CONSTRUCTORS);
                }
                checkCancel();
                this.foundConstructorsCount = 0;
                this.nameEnvironment.findConstructorDeclarations(cArr, this.options.camelCaseMatch, this, this.monitor);
                acceptConstructors(scope);
            } else if (z26) {
                int size2 = objectVector.size();
                for (int i21 = 0; i21 < size2; i21++) {
                    ReferenceBinding referenceBinding5 = (ReferenceBinding) objectVector.elementAt(i21);
                    this.knownTypes.put(CharOperation.concat(referenceBinding5.qualifiedPackageName(), referenceBinding5.qualifiedSourceName(), '.'), KNOWN_TYPE_WITH_KNOWN_CONSTRUCTORS);
                }
                if (this.assistNodeIsClass || this.assistNodeIsException) {
                    i14 = 5;
                } else if (this.assistNodeIsInterfaceExcludingAnnotation) {
                    i14 = 6;
                } else if (this.assistNodeIsInterface) {
                    i14 = 11;
                } else if (this.assistNodeIsEnum) {
                    i14 = 7;
                } else {
                    i15 = this.assistNodeIsAnnotation ? 8 : 0;
                    checkCancel();
                    this.foundTypesCount = 0;
                    this.nameEnvironment.findTypes(cArr, z18, this.options.camelCaseMatch, i15, this, this.monitor);
                    acceptTypes(scope);
                }
                i15 = i14;
                checkCancel();
                this.foundTypesCount = 0;
                this.nameEnvironment.findTypes(cArr, z18, this.options.camelCaseMatch, i15, this, this.monitor);
                acceptTypes(scope);
            }
            if (!z24 || this.requestor.isIgnored(8)) {
            }
            checkCancel();
            this.nameEnvironment.findPackages(cArr, this);
            return;
        }
        z18 = z25;
        if (z23) {
        }
        if (!z24) {
        }
        if (!z24) {
            if (z11) {
            }
        }
        if (!z23) {
        }
        if (z24) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0203 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x017d  */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [int] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r28v0, types: [org.eclipse.jdt.internal.codeassist.ISearchRequestor, org.eclipse.jdt.internal.codeassist.CompletionEngine, org.eclipse.jdt.internal.codeassist.impl.Engine] */
    /* JADX WARN: Type inference failed for: r31v0, types: [org.eclipse.jdt.internal.compiler.lookup.Scope] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findTypesAndSubpackages(char[] cArr, PackageBinding packageBinding, Scope scope) {
        char[] cArr2;
        CompilationUnitScope compilationUnitScope;
        ?? r12;
        int i10;
        int computeRelevanceForException;
        SourceTypeBinding sourceTypeBinding;
        int i11;
        SourceTypeBinding[] sourceTypeBindingArr;
        int i12;
        char[] cArr3;
        char c10;
        boolean z10;
        AccessRestriction accessRestriction;
        char[] cArr4;
        int i13;
        int i14;
        char[] cArr5 = cArr;
        boolean isAllowingLongComputationProposals = isAllowingLongComputationProposals();
        boolean z11 = false;
        boolean z12 = (this.requestor.isIgnored(9) && ((this.assistNodeInJavadoc & 4) == 0 || this.requestor.isIgnored(16))) ? false : true;
        boolean z13 = isAllowingLongComputationProposals && this.assistNodeIsConstructor && !(isIgnored(26, 9) && isIgnored(27, 9));
        char c11 = '.';
        char[] concatWith = CharOperation.concatWith(packageBinding.compoundName, cArr5, '.');
        if (cArr5 == null || cArr5.length == 0) {
            int length = concatWith.length;
            char[] cArr6 = new char[length + 1];
            System.arraycopy(concatWith, 0, cArr6, 0, length);
            cArr6[length] = '.';
            cArr2 = cArr6;
        } else {
            cArr2 = concatWith;
        }
        this.qualifiedCompletionToken = cArr2;
        if ((z12 || z13) && (compilationUnitScope = this.unitScope) != null) {
            int length2 = cArr2.length;
            SourceTypeBinding[] sourceTypeBindingArr2 = compilationUnitScope.topLevelTypes;
            int length3 = sourceTypeBindingArr2.length;
            int i15 = 0;
            while (i15 < length3) {
                checkCancel();
                SourceTypeBinding sourceTypeBinding2 = sourceTypeBindingArr2[i15];
                if (!isForbidden(sourceTypeBinding2) && ((!this.assistNodeIsClass || !sourceTypeBinding2.isInterface()) && (!this.assistNodeIsInterface || !sourceTypeBinding2.isClass()))) {
                    char[] concatWith2 = CharOperation.concatWith(sourceTypeBinding2.compoundName, c11);
                    char[] cArr7 = sourceTypeBinding2.sourceName;
                    if (cArr7 != CompletionParser.FAKE_TYPE_NAME && cArr7 != TypeConstants.PACKAGE_INFO_NAME && length2 <= concatWith2.length && packageBinding == sourceTypeBinding2.getPackage() && ((CharOperation.prefixEquals(cArr2, concatWith2, z11) || (this.options.camelCaseMatch && CharOperation.camelCaseMatch(cArr5, sourceTypeBinding2.sourceName))) && ((!this.options.checkDeprecation || !sourceTypeBinding2.isViewedAsDeprecated() || scope.isDefinedInSameUnit(sourceTypeBinding2)) && ((!this.assistNodeIsExtendedType || !sourceTypeBinding2.isFinal()) && (!this.assistNodeIsInterfaceExcludingAnnotation || !sourceTypeBinding2.isAnnotationType()))))) {
                        if (sourceTypeBinding2.hasRestrictedAccess() && (accessRestriction = this.lookupEnvironment.getAccessRestriction(sourceTypeBinding2)) != null) {
                            int problemId = accessRestriction.getProblemId();
                            if (problemId != 16777496) {
                                if (problemId == 16777523) {
                                    if (!this.options.checkForbiddenReference) {
                                        r12 = 1;
                                        i10 = i15;
                                        this.knownTypes.put(CharOperation.concat(sourceTypeBinding2.qualifiedPackageName(), sourceTypeBinding2.sourceName(), c11), KNOWN_TYPE_WITH_KNOWN_CONSTRUCTORS);
                                        int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal(sourceTypeBinding2) + computeRelevanceForCaseMatching(cArr2, concatWith2) + computeRelevanceForExpectingType(sourceTypeBinding2) + computeRelevanceForQualification(false) + computeRelevanceForRestrictions(r12);
                                        if (sourceTypeBinding2.isAnnotationType()) {
                                            computeRelevanceForException = computeRelevanceForAnnotation();
                                        } else if (sourceTypeBinding2.isInterface()) {
                                            computeRelevanceForException = computeRelevanceForInterface();
                                        } else {
                                            if (sourceTypeBinding2.isClass()) {
                                                computeBaseRelevance += computeRelevanceForClass();
                                                computeRelevanceForException = computeRelevanceForException(sourceTypeBinding2.sourceName);
                                            }
                                            int i16 = computeBaseRelevance;
                                            this.noProposal = false;
                                            if ((z12 || (this.assistNodeIsConstructor && isAllowingLongComputationProposals && !hasStaticMemberTypes(sourceTypeBinding2, null, this.unitScope) && !hasMemberTypesInEnclosingScope(sourceTypeBinding2, scope))) && !hasArrayTypeAsExpectedSuperTypes()) {
                                                sourceTypeBinding = sourceTypeBinding2;
                                                i11 = length3;
                                                sourceTypeBindingArr = sourceTypeBindingArr2;
                                                i12 = length2;
                                                cArr3 = cArr2;
                                                c10 = c11;
                                                z10 = false;
                                            } else {
                                                char[] sourceName = sourceTypeBinding2.sourceName();
                                                sourceTypeBinding = sourceTypeBinding2;
                                                i11 = length3;
                                                sourceTypeBindingArr = sourceTypeBindingArr2;
                                                i12 = length2;
                                                cArr3 = cArr2;
                                                c10 = c11;
                                                z10 = false;
                                                createTypeProposal(sourceTypeBinding2, sourceName, 0, sourceName, i16, null, null, null, false);
                                            }
                                            if (!z13) {
                                                findConstructorsOrAnonymousTypes(sourceTypeBinding, scope, FakeInvocationSite, false, i16);
                                            }
                                        }
                                        computeBaseRelevance += computeRelevanceForException;
                                        int i162 = computeBaseRelevance;
                                        this.noProposal = false;
                                        if (z12) {
                                        }
                                        sourceTypeBinding = sourceTypeBinding2;
                                        i11 = length3;
                                        sourceTypeBindingArr = sourceTypeBindingArr2;
                                        i12 = length2;
                                        cArr3 = cArr2;
                                        c10 = c11;
                                        z10 = false;
                                        if (!z13) {
                                        }
                                    }
                                }
                            } else if (!this.options.checkDiscouragedReference) {
                                r12 = 2;
                                i10 = i15;
                                this.knownTypes.put(CharOperation.concat(sourceTypeBinding2.qualifiedPackageName(), sourceTypeBinding2.sourceName(), c11), KNOWN_TYPE_WITH_KNOWN_CONSTRUCTORS);
                                int computeBaseRelevance2 = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal(sourceTypeBinding2) + computeRelevanceForCaseMatching(cArr2, concatWith2) + computeRelevanceForExpectingType(sourceTypeBinding2) + computeRelevanceForQualification(false) + computeRelevanceForRestrictions(r12);
                                if (sourceTypeBinding2.isAnnotationType()) {
                                }
                                computeBaseRelevance2 += computeRelevanceForException;
                                int i1622 = computeBaseRelevance2;
                                this.noProposal = false;
                                if (z12) {
                                }
                                sourceTypeBinding = sourceTypeBinding2;
                                i11 = length3;
                                sourceTypeBindingArr = sourceTypeBindingArr2;
                                i12 = length2;
                                cArr3 = cArr2;
                                c10 = c11;
                                z10 = false;
                                if (!z13) {
                                }
                            }
                            i15 = i10 + 1;
                            z11 = z10;
                            sourceTypeBindingArr2 = sourceTypeBindingArr;
                            c11 = c10;
                            length3 = i11;
                            length2 = i12;
                            cArr2 = cArr3;
                            cArr5 = cArr;
                        }
                        r12 = z11;
                        i10 = i15;
                        this.knownTypes.put(CharOperation.concat(sourceTypeBinding2.qualifiedPackageName(), sourceTypeBinding2.sourceName(), c11), KNOWN_TYPE_WITH_KNOWN_CONSTRUCTORS);
                        int computeBaseRelevance22 = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal(sourceTypeBinding2) + computeRelevanceForCaseMatching(cArr2, concatWith2) + computeRelevanceForExpectingType(sourceTypeBinding2) + computeRelevanceForQualification(false) + computeRelevanceForRestrictions(r12);
                        if (sourceTypeBinding2.isAnnotationType()) {
                        }
                        computeBaseRelevance22 += computeRelevanceForException;
                        int i16222 = computeBaseRelevance22;
                        this.noProposal = false;
                        if (z12) {
                        }
                        sourceTypeBinding = sourceTypeBinding2;
                        i11 = length3;
                        sourceTypeBindingArr = sourceTypeBindingArr2;
                        i12 = length2;
                        cArr3 = cArr2;
                        c10 = c11;
                        z10 = false;
                        if (!z13) {
                        }
                        i15 = i10 + 1;
                        z11 = z10;
                        sourceTypeBindingArr2 = sourceTypeBindingArr;
                        c11 = c10;
                        length3 = i11;
                        length2 = i12;
                        cArr2 = cArr3;
                        cArr5 = cArr;
                    }
                }
                i10 = i15;
                i11 = length3;
                sourceTypeBindingArr = sourceTypeBindingArr2;
                i12 = length2;
                cArr3 = cArr2;
                c10 = c11;
                z10 = z11;
                i15 = i10 + 1;
                z11 = z10;
                sourceTypeBindingArr2 = sourceTypeBindingArr;
                c11 = c10;
                length3 = i11;
                length2 = i12;
                cArr2 = cArr3;
                cArr5 = cArr;
            }
        }
        char[] cArr8 = cArr2;
        boolean z14 = z11;
        if (z13) {
            checkCancel();
            this.foundConstructorsCount = z14 ? 1 : 0;
            cArr4 = cArr8;
            this.nameEnvironment.findConstructorDeclarations(cArr4, this.options.camelCaseMatch, this, this.monitor);
            acceptConstructors(scope);
        } else {
            cArr4 = cArr8;
        }
        if (z12) {
            if (this.assistNodeIsClass) {
                i14 = 5;
            } else if (this.assistNodeIsInterfaceExcludingAnnotation) {
                i14 = 6;
            } else if (this.assistNodeIsInterface) {
                i14 = 11;
            } else if (this.assistNodeIsEnum) {
                i14 = 7;
            } else {
                i13 = this.assistNodeIsAnnotation ? 8 : z14 ? 1 : 0;
                checkCancel();
                this.foundTypesCount = z14 ? 1 : 0;
                this.nameEnvironment.findTypes(cArr4, false, this.options.camelCaseMatch, i13, this, this.monitor);
                acceptTypes(scope);
            }
            i13 = i14;
            checkCancel();
            this.foundTypesCount = z14 ? 1 : 0;
            this.nameEnvironment.findTypes(cArr4, false, this.options.camelCaseMatch, i13, this, this.monitor);
            acceptTypes(scope);
        }
        if (this.requestor.isIgnored(8)) {
            return;
        }
        this.nameEnvironment.findPackages(cArr4, this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
    
        if (isFailedMatch(r18, r0) != false) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x020e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x020e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findTypesFromExpectedTypes(char[] cArr, Scope scope, ObjectVector objectVector, boolean z10, boolean z11) {
        int i10;
        int i11;
        char[] cArr2;
        boolean z12;
        int computeRelevanceForInterface;
        CompilationUnitScope compilationUnitScope;
        AccessRestriction accessRestriction;
        if (this.expectedTypesPtr > -1) {
            boolean isAllowingLongComputationProposals = isAllowingLongComputationProposals();
            int length = cArr == null ? 0 : cArr.length;
            while (i10 <= this.expectedTypesPtr) {
                checkCancel();
                TypeBinding typeBinding = this.expectedTypes[i10];
                if (typeBinding instanceof ReferenceBinding) {
                    ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding;
                    if (length > 0) {
                        char[] cArr3 = referenceBinding.sourceName;
                        if (length <= cArr3.length) {
                        }
                    }
                    if (!referenceBinding.isTypeVariable() || !this.assistNodeIsConstructor) {
                        if (this.options.checkDeprecation && referenceBinding.isViewedAsDeprecated()) {
                            i10 = scope.isDefinedInSameUnit(referenceBinding) ? 0 : i10 + 1;
                        }
                        if (referenceBinding.hasRestrictedAccess() && (accessRestriction = this.lookupEnvironment.getAccessRestriction(referenceBinding)) != null) {
                            int problemId = accessRestriction.getProblemId();
                            if (problemId != 16777496) {
                                if (problemId == 16777523) {
                                    if (!this.options.checkForbiddenReference) {
                                        i11 = 1;
                                        if (!isForbidden(referenceBinding)) {
                                            int i12 = 0;
                                            while (true) {
                                                if (i12 >= objectVector.size()) {
                                                    objectVector.add(referenceBinding);
                                                    boolean isDefinedInSameUnit = this.unitScope.isDefinedInSameUnit(referenceBinding);
                                                    if (!isDefinedInSameUnit || (isDefinedInSameUnit && referenceBinding.isMemberType())) {
                                                        char[] qualifiedPackageName = referenceBinding.qualifiedPackageName();
                                                        char[] sourceName = referenceBinding.sourceName();
                                                        if (this.insideQualifiedReference || referenceBinding.isMemberType() || !mustQualifyType(qualifiedPackageName, sourceName, null, referenceBinding.modifiers)) {
                                                            cArr2 = sourceName;
                                                            z12 = false;
                                                        } else if ((qualifiedPackageName != null && qualifiedPackageName.length != 0) || (compilationUnitScope = this.unitScope) == null || compilationUnitScope.fPackage.compoundName == CharOperation.NO_CHAR_CHAR) {
                                                            z12 = true;
                                                            cArr2 = CharOperation.concat(qualifiedPackageName, sourceName, '.');
                                                        }
                                                        if ((!this.assistNodeIsExtendedType || !referenceBinding.isFinal()) && (!this.assistNodeIsInterfaceExcludingAnnotation || !referenceBinding.isAnnotationType())) {
                                                            if (this.assistNodeIsClass) {
                                                                if (!referenceBinding.isClass()) {
                                                                }
                                                                int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal(referenceBinding) + computeRelevanceForCaseMatching(cArr, sourceName) + computeRelevanceForExpectingType(referenceBinding) + computeRelevanceForQualification(z12) + computeRelevanceForRestrictions(i11);
                                                                if (referenceBinding.isClass()) {
                                                                    computeBaseRelevance += computeRelevanceForClass();
                                                                    computeRelevanceForInterface = computeRelevanceForException(sourceName);
                                                                } else if (referenceBinding.isEnum()) {
                                                                    computeRelevanceForInterface = computeRelevanceForEnum();
                                                                } else {
                                                                    if (referenceBinding.isInterface()) {
                                                                        computeRelevanceForInterface = computeRelevanceForInterface();
                                                                    }
                                                                    if ((z10 && (!this.assistNodeIsConstructor || !isAllowingLongComputationProposals || hasStaticMemberTypes(referenceBinding, scope.enclosingSourceType(), this.unitScope))) || hasArrayTypeAsExpectedSuperTypes()) {
                                                                        this.noProposal = false;
                                                                        if (!this.requestor.isIgnored(9)) {
                                                                            InternalCompletionProposal createProposal = createProposal(9, this.actualCompletionPosition);
                                                                            createProposal.setDeclarationSignature(qualifiedPackageName);
                                                                            createProposal.setSignature(Engine.getSignature(referenceBinding));
                                                                            createProposal.setPackageName(qualifiedPackageName);
                                                                            createProposal.setTypeName(sourceName);
                                                                            createProposal.setCompletion(cArr2);
                                                                            createProposal.setFlags(referenceBinding.modifiers);
                                                                            int i13 = this.startPosition;
                                                                            int i14 = this.offset;
                                                                            createProposal.setReplaceRange(i13 - i14, this.endPosition - i14);
                                                                            int i15 = this.tokenStart;
                                                                            int i16 = this.offset;
                                                                            createProposal.setTokenRange(i15 - i16, this.tokenEnd - i16);
                                                                            createProposal.setRelevance(computeBaseRelevance);
                                                                            createProposal.setAccessibility(i11);
                                                                            this.requestor.accept(createProposal);
                                                                            if (DEBUG) {
                                                                                printDebug(createProposal);
                                                                            }
                                                                        }
                                                                    }
                                                                    if (z11) {
                                                                        findConstructorsOrAnonymousTypes(referenceBinding, scope, FakeInvocationSite, z12, computeBaseRelevance);
                                                                    }
                                                                }
                                                                computeBaseRelevance += computeRelevanceForInterface;
                                                                if (z10) {
                                                                    this.noProposal = false;
                                                                    if (!this.requestor.isIgnored(9)) {
                                                                    }
                                                                    if (z11) {
                                                                    }
                                                                }
                                                                this.noProposal = false;
                                                                if (!this.requestor.isIgnored(9)) {
                                                                }
                                                                if (z11) {
                                                                }
                                                            } else if (this.assistNodeIsInterface) {
                                                                if (!referenceBinding.isInterface() && !referenceBinding.isAnnotationType()) {
                                                                }
                                                                int computeBaseRelevance2 = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal(referenceBinding) + computeRelevanceForCaseMatching(cArr, sourceName) + computeRelevanceForExpectingType(referenceBinding) + computeRelevanceForQualification(z12) + computeRelevanceForRestrictions(i11);
                                                                if (referenceBinding.isClass()) {
                                                                }
                                                                computeBaseRelevance2 += computeRelevanceForInterface;
                                                                if (z10) {
                                                                }
                                                                this.noProposal = false;
                                                                if (!this.requestor.isIgnored(9)) {
                                                                }
                                                                if (z11) {
                                                                }
                                                            } else {
                                                                if (this.assistNodeIsAnnotation && !referenceBinding.isAnnotationType()) {
                                                                }
                                                                int computeBaseRelevance22 = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal(referenceBinding) + computeRelevanceForCaseMatching(cArr, sourceName) + computeRelevanceForExpectingType(referenceBinding) + computeRelevanceForQualification(z12) + computeRelevanceForRestrictions(i11);
                                                                if (referenceBinding.isClass()) {
                                                                }
                                                                computeBaseRelevance22 += computeRelevanceForInterface;
                                                                if (z10) {
                                                                }
                                                                this.noProposal = false;
                                                                if (!this.requestor.isIgnored(9)) {
                                                                }
                                                                if (z11) {
                                                                }
                                                            }
                                                        }
                                                    }
                                                } else if (TypeBinding.equalsEquals((ReferenceBinding) objectVector.elementAt(i12), referenceBinding.erasure())) {
                                                    break;
                                                } else {
                                                    i12++;
                                                }
                                            }
                                        }
                                    }
                                }
                            } else if (!this.options.checkDiscouragedReference) {
                                i11 = 2;
                                if (!isForbidden(referenceBinding)) {
                                }
                            }
                        }
                        i11 = 0;
                        if (!isForbidden(referenceBinding)) {
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0198  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findTypesFromImports(char[] cArr, Scope scope, boolean z10, ObjectVector objectVector) {
        int i10;
        boolean z11;
        ImportBinding[] importBindingArr;
        ObjectVector objectVector2;
        char[] cArr2;
        CompletionEngine completionEngine;
        Binding binding;
        int i11;
        int computeRelevanceForException;
        AccessRestriction accessRestriction;
        CompletionEngine completionEngine2 = this;
        char[] cArr3 = cArr;
        ObjectVector objectVector3 = objectVector;
        ImportBinding[] importBindingArr2 = scope.compilationUnitScope().imports;
        boolean z12 = false;
        int i12 = 0;
        while (i12 < importBindingArr2.length) {
            ImportBinding importBinding = importBindingArr2[i12];
            if (importBinding.isValidBinding() && (binding = importBinding.resolvedImport) != null && binding.isValidBinding()) {
                if (!importBinding.onDemand) {
                    i10 = i12;
                    importBindingArr = importBindingArr2;
                    if ((binding.kind() & 4) != 0) {
                        ReferenceBinding referenceBinding = (ReferenceBinding) binding;
                        cArr2 = cArr;
                        int length = cArr2.length;
                        if (referenceBinding.isStatic()) {
                            char[] cArr4 = referenceBinding.sourceName;
                            if (length <= cArr4.length) {
                                completionEngine = this;
                                if (!completionEngine.isFailedMatch(cArr2, cArr4)) {
                                    if (referenceBinding.hasRestrictedAccess() && (accessRestriction = completionEngine.lookupEnvironment.getAccessRestriction(referenceBinding)) != null) {
                                        int problemId = accessRestriction.getProblemId();
                                        if (problemId != 16777496) {
                                            if (problemId == 16777523) {
                                                if (!completionEngine.options.checkForbiddenReference) {
                                                    i11 = 1;
                                                    objectVector2 = objectVector;
                                                    if (!objectVector2.contains(referenceBinding)) {
                                                        objectVector2.add(referenceBinding);
                                                        if ((!completionEngine.assistNodeIsExtendedType || !referenceBinding.isFinal()) && ((!completionEngine.assistNodeIsInterfaceExcludingAnnotation || !referenceBinding.isAnnotationType()) && (!completionEngine.assistNodeIsClass ? !completionEngine.assistNodeIsInterface ? !completionEngine.assistNodeIsAnnotation || referenceBinding.isAnnotationType() : referenceBinding.isInterface() || referenceBinding.isAnnotationType() : referenceBinding.isClass()))) {
                                                            z11 = false;
                                                            int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + completionEngine.computeRelevanceForInterestingProposal(referenceBinding) + completionEngine.computeRelevanceForCaseMatching(cArr2, referenceBinding.sourceName) + completionEngine.computeRelevanceForExpectingType(referenceBinding) + completionEngine.computeRelevanceForQualification(false) + completionEngine.computeRelevanceForRestrictions(i11);
                                                            if (referenceBinding.isAnnotationType()) {
                                                                computeBaseRelevance += computeRelevanceForAnnotation();
                                                                computeRelevanceForException = completionEngine.computeRelevanceForAnnotationTarget(referenceBinding);
                                                            } else if (referenceBinding.isInterface()) {
                                                                computeRelevanceForException = computeRelevanceForInterface();
                                                            } else {
                                                                if (referenceBinding.isClass()) {
                                                                    computeBaseRelevance += computeRelevanceForClass();
                                                                    computeRelevanceForException = completionEngine.computeRelevanceForException(referenceBinding.sourceName);
                                                                }
                                                                int i13 = computeBaseRelevance;
                                                                if (z10 && (hasStaticMemberTypes(referenceBinding, scope.enclosingSourceType(), completionEngine.unitScope) || hasArrayTypeAsExpectedSuperTypes())) {
                                                                    completionEngine.noProposal = false;
                                                                    if (!completionEngine.requestor.isIgnored(9)) {
                                                                        InternalCompletionProposal createProposal = completionEngine.createProposal(9, completionEngine.actualCompletionPosition);
                                                                        createProposal.setDeclarationSignature(referenceBinding.qualifiedPackageName());
                                                                        createProposal.setSignature(Engine.getSignature(referenceBinding));
                                                                        createProposal.setPackageName(referenceBinding.qualifiedPackageName());
                                                                        createProposal.setTypeName(referenceBinding.qualifiedSourceName());
                                                                        createProposal.setCompletion(referenceBinding.sourceName());
                                                                        createProposal.setFlags(referenceBinding.modifiers);
                                                                        int i14 = completionEngine.startPosition;
                                                                        int i15 = completionEngine.offset;
                                                                        createProposal.setReplaceRange(i14 - i15, completionEngine.endPosition - i15);
                                                                        int i16 = completionEngine.tokenStart;
                                                                        int i17 = completionEngine.offset;
                                                                        createProposal.setTokenRange(i16 - i17, completionEngine.tokenEnd - i17);
                                                                        createProposal.setRelevance(i13);
                                                                        completionEngine.requestor.accept(createProposal);
                                                                        if (DEBUG) {
                                                                            completionEngine.printDebug(createProposal);
                                                                        }
                                                                    }
                                                                }
                                                                findConstructorsOrAnonymousTypes(referenceBinding, scope, FakeInvocationSite, false, i13);
                                                            }
                                                            computeBaseRelevance += computeRelevanceForException;
                                                            int i132 = computeBaseRelevance;
                                                            if (z10) {
                                                                completionEngine.noProposal = false;
                                                                if (!completionEngine.requestor.isIgnored(9)) {
                                                                }
                                                            }
                                                            findConstructorsOrAnonymousTypes(referenceBinding, scope, FakeInvocationSite, false, i132);
                                                        }
                                                    }
                                                    z11 = false;
                                                }
                                            }
                                        } else if (!completionEngine.options.checkDiscouragedReference) {
                                            i11 = 2;
                                            objectVector2 = objectVector;
                                            if (!objectVector2.contains(referenceBinding)) {
                                            }
                                            z11 = false;
                                        }
                                    }
                                    objectVector2 = objectVector;
                                    i11 = 0;
                                    if (!objectVector2.contains(referenceBinding)) {
                                    }
                                    z11 = false;
                                }
                                objectVector2 = objectVector;
                                z11 = false;
                            }
                        }
                        z11 = false;
                        completionEngine = this;
                    }
                    z11 = false;
                    completionEngine = this;
                    cArr2 = cArr;
                } else if (!importBinding.isStatic() || (binding.kind() & 4) == 0) {
                    i10 = i12;
                    importBindingArr = importBindingArr2;
                    completionEngine = this;
                    cArr2 = cArr;
                    objectVector2 = objectVector;
                    z11 = z12;
                } else {
                    i10 = i12;
                    importBindingArr = importBindingArr2;
                    findMemberTypes(cArr, (ReferenceBinding) binding, scope, scope.enclosingSourceType(), true, false, true, true, false, null, objectVector, null, null, null, false);
                    z11 = false;
                    completionEngine = this;
                    cArr2 = cArr;
                }
                objectVector2 = objectVector;
            } else {
                i10 = i12;
                z11 = z12;
                importBindingArr = importBindingArr2;
                objectVector2 = objectVector3;
                cArr2 = cArr3;
                completionEngine = completionEngine2;
            }
            i12 = i10 + 1;
            cArr3 = cArr2;
            completionEngine2 = completionEngine;
            objectVector3 = objectVector2;
            z12 = z11;
            importBindingArr2 = importBindingArr;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01b1 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findTypesFromStaticImports(char[] cArr, Scope scope, boolean z10, ObjectVector objectVector) {
        int i10;
        boolean z11;
        ImportBinding[] importBindingArr;
        ObjectVector objectVector2;
        char[] cArr2;
        CompletionEngine completionEngine;
        Binding binding;
        int computeRelevanceForInterface;
        CompletionEngine completionEngine2 = this;
        char[] cArr3 = cArr;
        ObjectVector objectVector3 = objectVector;
        ImportBinding[] importBindingArr2 = scope.compilationUnitScope().imports;
        if (importBindingArr2 == null) {
            return;
        }
        boolean z12 = false;
        int i11 = 0;
        while (i11 < importBindingArr2.length) {
            ImportBinding importBinding = importBindingArr2[i11];
            if (importBinding.isValidBinding() && importBinding.isStatic() && (binding = importBinding.resolvedImport) != null && binding.isValidBinding()) {
                if (!importBinding.onDemand) {
                    i10 = i11;
                    importBindingArr = importBindingArr2;
                    if ((binding.kind() & 4) != 0) {
                        ReferenceBinding referenceBinding = (ReferenceBinding) binding;
                        cArr2 = cArr;
                        int length = cArr2.length;
                        if (referenceBinding.isStatic()) {
                            char[] cArr4 = referenceBinding.sourceName;
                            if (length <= cArr4.length) {
                                completionEngine = this;
                                if (completionEngine.isFailedMatch(cArr2, cArr4)) {
                                    objectVector2 = objectVector;
                                } else {
                                    objectVector2 = objectVector;
                                    if (!objectVector2.contains(referenceBinding)) {
                                        objectVector2.add(referenceBinding);
                                        if ((!completionEngine.assistNodeIsExtendedType || !referenceBinding.isFinal()) && ((!completionEngine.assistNodeIsInterfaceExcludingAnnotation || !referenceBinding.isAnnotationType()) && (completionEngine.assistNodeIsClass || completionEngine.assistNodeIsException ? referenceBinding.isClass() : !completionEngine.assistNodeIsInterface ? !completionEngine.assistNodeIsAnnotation || referenceBinding.isAnnotationType() : referenceBinding.isInterface() || referenceBinding.isAnnotationType()))) {
                                            z11 = false;
                                            int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + completionEngine.computeRelevanceForInterestingProposal(referenceBinding) + completionEngine.computeRelevanceForCaseMatching(cArr2, referenceBinding.sourceName) + completionEngine.computeRelevanceForExpectingType(referenceBinding) + completionEngine.computeRelevanceForQualification(false) + completionEngine.computeRelevanceForRestrictions(0);
                                            if (referenceBinding.isClass()) {
                                                computeBaseRelevance += computeRelevanceForClass();
                                                computeRelevanceForInterface = completionEngine.computeRelevanceForException(referenceBinding.sourceName);
                                            } else if (referenceBinding.isEnum()) {
                                                computeRelevanceForInterface = computeRelevanceForEnum();
                                            } else {
                                                if (referenceBinding.isInterface()) {
                                                    computeRelevanceForInterface = computeRelevanceForInterface();
                                                }
                                                completionEngine.noProposal = false;
                                                if (completionEngine.requestor.isIgnored(9)) {
                                                    InternalCompletionProposal createProposal = completionEngine.createProposal(9, completionEngine.actualCompletionPosition);
                                                    createProposal.setDeclarationSignature(referenceBinding.qualifiedPackageName());
                                                    createProposal.setSignature(Engine.getSignature(referenceBinding));
                                                    createProposal.setPackageName(referenceBinding.qualifiedPackageName());
                                                    createProposal.setTypeName(referenceBinding.qualifiedSourceName());
                                                    createProposal.setCompletion(referenceBinding.sourceName());
                                                    createProposal.setFlags(referenceBinding.modifiers);
                                                    int i12 = completionEngine.startPosition;
                                                    int i13 = completionEngine.offset;
                                                    createProposal.setReplaceRange(i12 - i13, completionEngine.endPosition - i13);
                                                    int i14 = completionEngine.tokenStart;
                                                    int i15 = completionEngine.offset;
                                                    createProposal.setTokenRange(i14 - i15, completionEngine.tokenEnd - i15);
                                                    createProposal.setRelevance(computeBaseRelevance);
                                                    completionEngine.requestor.accept(createProposal);
                                                    if (DEBUG) {
                                                        completionEngine.printDebug(createProposal);
                                                    }
                                                }
                                            }
                                            computeBaseRelevance += computeRelevanceForInterface;
                                            completionEngine.noProposal = false;
                                            if (completionEngine.requestor.isIgnored(9)) {
                                            }
                                        }
                                    }
                                }
                                z11 = false;
                            }
                        }
                        z11 = false;
                        completionEngine = this;
                    }
                    z11 = false;
                    completionEngine = this;
                    cArr2 = cArr;
                } else if ((binding.kind() & 4) != 0) {
                    i10 = i11;
                    importBindingArr = importBindingArr2;
                    findMemberTypes(cArr, (ReferenceBinding) binding, scope, scope.enclosingSourceType(), true, false, true, true, z10, null, objectVector, null, null, null, false);
                    z11 = false;
                    completionEngine = this;
                    cArr2 = cArr;
                } else {
                    i10 = i11;
                    importBindingArr = importBindingArr2;
                    completionEngine = this;
                    cArr2 = cArr;
                    objectVector2 = objectVector;
                    z11 = z12;
                }
                objectVector2 = objectVector;
            } else {
                i10 = i11;
                z11 = z12;
                importBindingArr = importBindingArr2;
                objectVector2 = objectVector3;
                cArr2 = cArr3;
                completionEngine = completionEngine2;
            }
            i11 = i10 + 1;
            cArr3 = cArr2;
            completionEngine2 = completionEngine;
            objectVector3 = objectVector2;
            z12 = z11;
            importBindingArr2 = importBindingArr;
        }
    }

    private void findUnresolvedReference(int i10, int i11, BlockScope blockScope, char[][] cArr) {
        char[][] findUnresolvedReferenceBefore = findUnresolvedReferenceBefore(i10 - 1, i11, blockScope, cArr);
        if (findUnresolvedReferenceBefore != null && findUnresolvedReferenceBefore.length > 1) {
            int length = cArr.length;
            int length2 = findUnresolvedReferenceBefore.length;
            char[][] cArr2 = new char[length + length2];
            System.arraycopy(cArr, 0, cArr2, 0, length);
            System.arraycopy(findUnresolvedReferenceBefore, 0, cArr2, length, length2);
            cArr = cArr2;
        }
        findUnresolvedReferenceAfter(i11 + 1, blockScope, cArr);
    }

    private char[][] findUnresolvedReferenceAfter(int i10, BlockScope blockScope, char[][] cArr) {
        TypeDeclaration typeDeclaration;
        FieldDeclaration[] fieldDeclarationArr;
        final ArrayList arrayList = new ArrayList();
        UnresolvedReferenceNameFinder.UnresolvedReferenceNameRequestor unresolvedReferenceNameRequestor = new UnresolvedReferenceNameFinder.UnresolvedReferenceNameRequestor() {
            @Override
            public void acceptName(char[] cArr2) {
                CompletionEngine.this.acceptUnresolvedName(cArr2);
                arrayList.add(cArr2);
            }
        };
        ReferenceContext referenceContext = blockScope.referenceContext();
        if (referenceContext instanceof AbstractMethodDeclaration) {
            AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration) referenceContext;
            UnresolvedReferenceNameFinder unresolvedReferenceNameFinder = new UnresolvedReferenceNameFinder(this);
            char[] cArr2 = this.completionToken;
            MethodScope methodScope = abstractMethodDeclaration.scope;
            unresolvedReferenceNameFinder.findAfter(cArr2, methodScope, methodScope.classScope(), i10, abstractMethodDeclaration.bodyEnd, cArr, unresolvedReferenceNameRequestor);
        } else if (referenceContext instanceof LambdaExpression) {
            LambdaExpression lambdaExpression = (LambdaExpression) referenceContext;
            UnresolvedReferenceNameFinder unresolvedReferenceNameFinder2 = new UnresolvedReferenceNameFinder(this);
            char[] cArr3 = this.completionToken;
            MethodScope methodScope2 = lambdaExpression.scope;
            unresolvedReferenceNameFinder2.findAfter(cArr3, methodScope2, methodScope2.classScope(), i10, lambdaExpression.body().sourceEnd, cArr, unresolvedReferenceNameRequestor);
        } else if ((referenceContext instanceof TypeDeclaration) && (fieldDeclarationArr = (typeDeclaration = (TypeDeclaration) referenceContext).fields) != null) {
            int i11 = 0;
            while (true) {
                if (i11 >= fieldDeclarationArr.length) {
                    break;
                }
                FieldDeclaration fieldDeclaration = fieldDeclarationArr[i11];
                if (fieldDeclaration instanceof Initializer) {
                    Initializer initializer = (Initializer) fieldDeclaration;
                    if (initializer.block.sourceStart <= i10 && i10 < initializer.bodyEnd) {
                        UnresolvedReferenceNameFinder unresolvedReferenceNameFinder3 = new UnresolvedReferenceNameFinder(this);
                        char[] cArr4 = this.completionToken;
                        ClassScope classScope = typeDeclaration.scope;
                        unresolvedReferenceNameFinder3.findAfter(cArr4, classScope, classScope, i10, initializer.bodyEnd, cArr, unresolvedReferenceNameRequestor);
                        break;
                    }
                }
                i11++;
            }
        }
        int size = arrayList.size();
        if (size > 0) {
            return (char[][]) arrayList.toArray(new char[size]);
        }
        return null;
    }

    private char[][] findUnresolvedReferenceBefore(int i10, int i11, BlockScope blockScope, char[][] cArr) {
        TypeDeclaration typeDeclaration;
        FieldDeclaration[] fieldDeclarationArr;
        final ArrayList arrayList = new ArrayList();
        UnresolvedReferenceNameFinder.UnresolvedReferenceNameRequestor unresolvedReferenceNameRequestor = new UnresolvedReferenceNameFinder.UnresolvedReferenceNameRequestor() {
            @Override
            public void acceptName(char[] cArr2) {
                CompletionEngine.this.acceptUnresolvedName(cArr2);
                arrayList.add(cArr2);
            }
        };
        while (blockScope.enclosingMethodScope() != null) {
            blockScope = blockScope.enclosingMethodScope();
        }
        ReferenceContext referenceContext = blockScope.referenceContext();
        if (referenceContext instanceof AbstractMethodDeclaration) {
            AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration) referenceContext;
            UnresolvedReferenceNameFinder unresolvedReferenceNameFinder = new UnresolvedReferenceNameFinder(this);
            char[] cArr2 = this.completionToken;
            MethodScope methodScope = abstractMethodDeclaration.scope;
            unresolvedReferenceNameFinder.findBefore(cArr2, methodScope, methodScope.classScope(), abstractMethodDeclaration.bodyStart, i10, i11, cArr, unresolvedReferenceNameRequestor);
        } else if ((referenceContext instanceof TypeDeclaration) && (fieldDeclarationArr = (typeDeclaration = (TypeDeclaration) referenceContext).fields) != null) {
            int i12 = 0;
            while (true) {
                if (i12 >= fieldDeclarationArr.length) {
                    break;
                }
                FieldDeclaration fieldDeclaration = fieldDeclarationArr[i12];
                if (fieldDeclaration instanceof Initializer) {
                    Initializer initializer = (Initializer) fieldDeclaration;
                    if (initializer.block.sourceStart <= i10 && i10 < initializer.bodyEnd) {
                        UnresolvedReferenceNameFinder unresolvedReferenceNameFinder2 = new UnresolvedReferenceNameFinder(this);
                        char[] cArr3 = this.completionToken;
                        ClassScope classScope = typeDeclaration.scope;
                        unresolvedReferenceNameFinder2.findBefore(cArr3, classScope, classScope, initializer.block.sourceStart, i10, i11, cArr, unresolvedReferenceNameRequestor);
                        break;
                    }
                }
                i12++;
            }
        }
        int size = arrayList.size();
        if (size > 0) {
            return (char[][]) arrayList.toArray(new char[size]);
        }
        return null;
    }

    private char[][] findVariableFromUnresolvedReference(LocalDeclaration localDeclaration, BlockScope blockScope, char[][] cArr) {
        TypeBinding typeBinding;
        TypeDeclaration typeDeclaration;
        FieldDeclaration[] fieldDeclarationArr;
        final TypeReference typeReference = localDeclaration.type;
        if (typeReference == null || (typeBinding = typeReference.resolvedType) == null || typeBinding.problemId() != 0) {
            return null;
        }
        final ArrayList arrayList = new ArrayList();
        UnresolvedReferenceNameFinder.UnresolvedReferenceNameRequestor unresolvedReferenceNameRequestor = new UnresolvedReferenceNameFinder.UnresolvedReferenceNameRequestor() {
            @Override
            public void acceptName(char[] cArr2) {
                int computeBaseRelevance = CompletionEngine.this.computeBaseRelevance() + CompletionEngine.this.computeRelevanceForInterestingProposal();
                CompletionEngine completionEngine = CompletionEngine.this;
                int computeRelevanceForCaseMatching = computeBaseRelevance + completionEngine.computeRelevanceForCaseMatching(completionEngine.completionToken, cArr2) + 25 + CompletionEngine.this.computeRelevanceForRestrictions(0);
                CompletionEngine completionEngine2 = CompletionEngine.this;
                completionEngine2.noProposal = false;
                if (!completionEngine2.requestor.isIgnored(10)) {
                    CompletionEngine completionEngine3 = CompletionEngine.this;
                    InternalCompletionProposal createProposal = completionEngine3.createProposal(10, completionEngine3.actualCompletionPosition);
                    createProposal.setSignature(Engine.getSignature(typeReference.resolvedType));
                    createProposal.setPackageName(typeReference.resolvedType.qualifiedPackageName());
                    createProposal.setTypeName(typeReference.resolvedType.qualifiedSourceName());
                    createProposal.setName(cArr2);
                    createProposal.setCompletion(cArr2);
                    CompletionEngine completionEngine4 = CompletionEngine.this;
                    int i10 = completionEngine4.startPosition;
                    int i11 = completionEngine4.offset;
                    createProposal.setReplaceRange(i10 - i11, completionEngine4.endPosition - i11);
                    CompletionEngine completionEngine5 = CompletionEngine.this;
                    int i12 = completionEngine5.tokenStart;
                    int i13 = completionEngine5.offset;
                    createProposal.setTokenRange(i12 - i13, completionEngine5.tokenEnd - i13);
                    createProposal.setRelevance(computeRelevanceForCaseMatching);
                    CompletionEngine.this.requestor.accept(createProposal);
                    if (CompletionEngine.DEBUG) {
                        CompletionEngine.this.printDebug(createProposal);
                    }
                }
                arrayList.add(cArr2);
            }
        };
        ReferenceContext referenceContext = blockScope.referenceContext();
        if (referenceContext instanceof AbstractMethodDeclaration) {
            new UnresolvedReferenceNameFinder(this).find(this.completionToken, (AbstractMethodDeclaration) referenceContext, localDeclaration.declarationSourceEnd + 1, cArr, unresolvedReferenceNameRequestor);
        } else if ((referenceContext instanceof TypeDeclaration) && (fieldDeclarationArr = (typeDeclaration = (TypeDeclaration) referenceContext).fields) != null) {
            int i10 = 0;
            while (true) {
                if (i10 >= fieldDeclarationArr.length) {
                    break;
                }
                FieldDeclaration fieldDeclaration = fieldDeclarationArr[i10];
                if (fieldDeclaration instanceof Initializer) {
                    Initializer initializer = (Initializer) fieldDeclaration;
                    int i11 = initializer.bodyStart;
                    int i12 = localDeclaration.sourceStart;
                    if (i11 <= i12 && i12 < initializer.bodyEnd) {
                        new UnresolvedReferenceNameFinder(this).find(this.completionToken, initializer, typeDeclaration.scope, localDeclaration.declarationSourceEnd + 1, cArr, unresolvedReferenceNameRequestor);
                        break;
                    }
                }
                i10++;
            }
        }
        int size = arrayList.size();
        if (size > 0) {
            return (char[][]) arrayList.toArray(new char[size]);
        }
        return null;
    }

    private void findVariableName(final char[] cArr, final char[] cArr2, char[] cArr3, char[] cArr4, final TypeBinding typeBinding, char[][] cArr5, final char[][] cArr6, boolean z10, int i10, int i11) {
        char[] qualifiedSourceName;
        final char[] cArr7;
        if (cArr4 == null || cArr4.length == 0) {
            return;
        }
        if (z10) {
            qualifiedSourceName = typeBinding.qualifiedSourceName();
        } else if (i10 > 0) {
            int length = cArr3.length;
            qualifiedSourceName = new char[(i10 * 2) + length];
            System.arraycopy(cArr3, 0, qualifiedSourceName, 0, length);
            for (int i12 = 0; i12 < i10; i12++) {
                int i13 = (i12 * 2) + length;
                qualifiedSourceName[i13] = '[';
                qualifiedSourceName[i13 + 1] = JavaElement.JEM_TYPE_PARAMETER;
            }
        } else {
            cArr7 = cArr3;
            InternalNamingConventions.suggestVariableNames(i11, 2, cArr3, this.javaProject, i10, cArr, cArr5, true, new INamingRequestor() {
                public void accept(char[] cArr8, int i14, int i15) {
                    char[][] cArr9 = cArr6;
                    int length2 = cArr9 == null ? 0 : cArr9.length;
                    for (int i16 = 0; i16 < length2; i16++) {
                        if (CharOperation.equals(cArr6[i16], cArr8, false)) {
                            return;
                        }
                    }
                    if (CharOperation.prefixEquals(cArr, cArr8, false)) {
                        int computeBaseRelevance = CompletionEngine.this.computeBaseRelevance() + CompletionEngine.this.computeRelevanceForInterestingProposal() + CompletionEngine.this.computeRelevanceForCaseMatching(cArr, cArr8) + i14;
                        if (i15 > 0) {
                            computeBaseRelevance += 15;
                        }
                        int computeRelevanceForRestrictions = computeBaseRelevance + CompletionEngine.this.computeRelevanceForRestrictions(0);
                        CompletionEngine completionEngine = CompletionEngine.this;
                        completionEngine.noProposal = false;
                        if (completionEngine.requestor.isIgnored(10)) {
                            return;
                        }
                        CompletionEngine completionEngine2 = CompletionEngine.this;
                        InternalCompletionProposal createProposal = completionEngine2.createProposal(10, completionEngine2.actualCompletionPosition);
                        createProposal.setSignature(Engine.getSignature(typeBinding));
                        createProposal.setPackageName(cArr2);
                        createProposal.setTypeName(cArr7);
                        createProposal.setName(cArr8);
                        createProposal.setCompletion(cArr8);
                        CompletionEngine completionEngine3 = CompletionEngine.this;
                        int i17 = completionEngine3.startPosition;
                        int i18 = completionEngine3.offset;
                        createProposal.setReplaceRange(i17 - i18, completionEngine3.endPosition - i18);
                        CompletionEngine completionEngine4 = CompletionEngine.this;
                        int i19 = completionEngine4.tokenStart;
                        int i20 = completionEngine4.offset;
                        createProposal.setTokenRange(i19 - i20, completionEngine4.tokenEnd - i20);
                        createProposal.setRelevance(computeRelevanceForRestrictions);
                        CompletionEngine.this.requestor.accept(createProposal);
                        if (CompletionEngine.DEBUG) {
                            CompletionEngine.this.printDebug(createProposal);
                        }
                    }
                }

                @Override
                public void acceptNameWithPrefix(char[] cArr8, boolean z11, int i14) {
                    accept(cArr8, z11 ? 6 : 5, i14);
                }

                @Override
                public void acceptNameWithPrefixAndSuffix(char[] cArr8, boolean z11, boolean z12, int i14) {
                    accept(cArr8, (z11 ? 6 : 5) + (z12 ? 4 : 3), i14);
                }

                @Override
                public void acceptNameWithSuffix(char[] cArr8, boolean z11, int i14) {
                    accept(cArr8, z11 ? 4 : 3, i14);
                }

                @Override
                public void acceptNameWithoutPrefixAndSuffix(char[] cArr8, int i14) {
                    accept(cArr8, 0, i14);
                }
            });
        }
        cArr7 = qualifiedSourceName;
        InternalNamingConventions.suggestVariableNames(i11, 2, cArr3, this.javaProject, i10, cArr, cArr5, true, new INamingRequestor() {
            public void accept(char[] cArr8, int i14, int i15) {
                char[][] cArr9 = cArr6;
                int length2 = cArr9 == null ? 0 : cArr9.length;
                for (int i16 = 0; i16 < length2; i16++) {
                    if (CharOperation.equals(cArr6[i16], cArr8, false)) {
                        return;
                    }
                }
                if (CharOperation.prefixEquals(cArr, cArr8, false)) {
                    int computeBaseRelevance = CompletionEngine.this.computeBaseRelevance() + CompletionEngine.this.computeRelevanceForInterestingProposal() + CompletionEngine.this.computeRelevanceForCaseMatching(cArr, cArr8) + i14;
                    if (i15 > 0) {
                        computeBaseRelevance += 15;
                    }
                    int computeRelevanceForRestrictions = computeBaseRelevance + CompletionEngine.this.computeRelevanceForRestrictions(0);
                    CompletionEngine completionEngine = CompletionEngine.this;
                    completionEngine.noProposal = false;
                    if (completionEngine.requestor.isIgnored(10)) {
                        return;
                    }
                    CompletionEngine completionEngine2 = CompletionEngine.this;
                    InternalCompletionProposal createProposal = completionEngine2.createProposal(10, completionEngine2.actualCompletionPosition);
                    createProposal.setSignature(Engine.getSignature(typeBinding));
                    createProposal.setPackageName(cArr2);
                    createProposal.setTypeName(cArr7);
                    createProposal.setName(cArr8);
                    createProposal.setCompletion(cArr8);
                    CompletionEngine completionEngine3 = CompletionEngine.this;
                    int i17 = completionEngine3.startPosition;
                    int i18 = completionEngine3.offset;
                    createProposal.setReplaceRange(i17 - i18, completionEngine3.endPosition - i18);
                    CompletionEngine completionEngine4 = CompletionEngine.this;
                    int i19 = completionEngine4.tokenStart;
                    int i20 = completionEngine4.offset;
                    createProposal.setTokenRange(i19 - i20, completionEngine4.tokenEnd - i20);
                    createProposal.setRelevance(computeRelevanceForRestrictions);
                    CompletionEngine.this.requestor.accept(createProposal);
                    if (CompletionEngine.DEBUG) {
                        CompletionEngine.this.printDebug(createProposal);
                    }
                }
            }

            @Override
            public void acceptNameWithPrefix(char[] cArr8, boolean z11, int i14) {
                accept(cArr8, z11 ? 6 : 5, i14);
            }

            @Override
            public void acceptNameWithPrefixAndSuffix(char[] cArr8, boolean z11, boolean z12, int i14) {
                accept(cArr8, (z11 ? 6 : 5) + (z12 ? 4 : 3), i14);
            }

            @Override
            public void acceptNameWithSuffix(char[] cArr8, boolean z11, int i14) {
                accept(cArr8, z11 ? 4 : 3, i14);
            }

            @Override
            public void acceptNameWithoutPrefixAndSuffix(char[] cArr8, int i14) {
                accept(cArr8, 0, i14);
            }
        });
    }

    private void findVariableNameForCollection(char[] cArr, char[] cArr2, char[] cArr3, char[] cArr4, TypeBinding typeBinding, char[][] cArr5, char[][] cArr6, int i10) {
        findVariableName(cArr, cArr2, cArr3, cArr4, typeBinding, cArr5, cArr6, false, 1, i10);
    }

    private void findVariableNames(char[] cArr, TypeReference typeReference, char[][] cArr2, char[][] cArr3, int i10) {
        TypeBinding typeBinding;
        TypeBinding[] typeBindingArr;
        if (typeReference == null || (typeBinding = typeReference.resolvedType) == null || typeBinding.problemId() != 0 || !TypeBinding.notEquals(typeBinding, Scope.getBaseType(VOID))) {
            return;
        }
        findVariableName(cArr, typeBinding.leafComponentType().qualifiedPackageName(), typeBinding.leafComponentType().qualifiedSourceName(), typeBinding.leafComponentType().sourceName(), typeBinding, cArr2, cArr3, typeReference.dimensions(), i10);
        if (!typeBinding.isParameterizedType() || typeBinding.findSuperTypeOriginatingFrom(59, false) == null || (typeBindingArr = ((ParameterizedTypeBinding) typeBinding).arguments) == null || typeBindingArr.length != 1) {
            return;
        }
        TypeBinding typeBinding2 = typeBindingArr[0];
        findVariableNameForCollection(cArr, typeBinding2.leafComponentType().qualifiedPackageName(), typeBinding2.leafComponentType().qualifiedSourceName(), typeBinding2.leafComponentType().sourceName(), typeBinding, cArr2, cArr3, i10);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    private void findVariablesAndMethods(char[] r36, org.eclipse.jdt.internal.compiler.lookup.Scope r37, org.eclipse.jdt.internal.compiler.lookup.InvocationSite r38, org.eclipse.jdt.internal.compiler.lookup.Scope r39, boolean r40, boolean r41) {
        /*
            Method dump skipped, instructions count: 689
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jdt.internal.codeassist.CompletionEngine.findVariablesAndMethods(char[], org.eclipse.jdt.internal.compiler.lookup.Scope, org.eclipse.jdt.internal.compiler.lookup.InvocationSite, org.eclipse.jdt.internal.compiler.lookup.Scope, boolean, boolean):void");
    }

    private HashSet<String> getAllJarModuleNames(IJavaProject iJavaProject) {
        HashSet<String> hashSet = new HashSet<>();
        try {
            for (IPackageFragmentRoot iPackageFragmentRoot : iJavaProject.getAllPackageFragmentRoots()) {
                if (iPackageFragmentRoot instanceof JarPackageFragmentRoot) {
                    IModuleDescription moduleDescription = iPackageFragmentRoot.getModuleDescription();
                    if (moduleDescription == null) {
                        moduleDescription = ((JarPackageFragmentRoot) iPackageFragmentRoot).getAutomaticModuleDescription();
                    }
                    String elementName = moduleDescription != null ? moduleDescription.getElementName() : null;
                    if (elementName != null && elementName.length() > 0) {
                        hashSet.add(elementName);
                    }
                }
            }
        } catch (JavaModelException unused) {
        }
        return hashSet;
    }

    private void getAllTypesInHierarchy(ITypeHierarchy iTypeHierarchy, IType iType, ArrayList<IType> arrayList) {
        arrayList.add(iType);
        for (IType iType2 : iTypeHierarchy.getSubclasses(iType)) {
            getAllTypesInHierarchy(iTypeHierarchy, iType2, arrayList);
        }
    }

    private char[] getCompletedTypeSignature(ReferenceBinding referenceBinding) {
        TypeVariableBinding[] typeVariables;
        StringBuffer stringBuffer = new StringBuffer(10);
        if (!referenceBinding.isMemberType()) {
            char[] genericTypeSignature = referenceBinding.genericTypeSignature();
            stringBuffer.append(genericTypeSignature, 0, genericTypeSignature.length);
        } else if (this.insideQualifiedReference) {
            if (referenceBinding.enclosingType().isParameterizedType()) {
                stringBuffer.append(referenceBinding.genericTypeSignature(), 0, r1.length - 1);
                TypeVariableBinding[] typeVariables2 = referenceBinding.typeVariables();
                if (typeVariables2 != Binding.NO_TYPE_VARIABLES) {
                    stringBuffer.append('<');
                    for (TypeVariableBinding typeVariableBinding : typeVariables2) {
                        stringBuffer.append(typeVariableBinding.genericTypeSignature());
                    }
                    stringBuffer.append('>');
                }
            } else {
                stringBuffer.append(referenceBinding.signature(), 0, r1.length - 1);
                if (referenceBinding.isStatic() && (typeVariables = referenceBinding.typeVariables()) != Binding.NO_TYPE_VARIABLES) {
                    stringBuffer.append('<');
                    for (TypeVariableBinding typeVariableBinding2 : typeVariables) {
                        stringBuffer.append(typeVariableBinding2.genericTypeSignature());
                    }
                    stringBuffer.append('>');
                }
            }
            stringBuffer.append(';');
        } else if (referenceBinding.isStatic()) {
            stringBuffer.append(referenceBinding.signature(), 0, r1.length - 1);
            TypeVariableBinding[] typeVariables3 = referenceBinding.typeVariables();
            if (typeVariables3 != Binding.NO_TYPE_VARIABLES) {
                stringBuffer.append('<');
                for (TypeVariableBinding typeVariableBinding3 : typeVariables3) {
                    stringBuffer.append(typeVariableBinding3.genericTypeSignature());
                }
                stringBuffer.append('>');
            }
            stringBuffer.append(';');
        } else {
            char[] genericTypeSignature2 = referenceBinding.genericTypeSignature();
            stringBuffer.append(genericTypeSignature2, 0, genericTypeSignature2.length);
        }
        int length = stringBuffer.length();
        char[] cArr = new char[length];
        stringBuffer.getChars(0, length, cArr, 0);
        return CharOperation.replaceOnCopy(cArr, '/', '.');
    }

    private ImportBinding[] getFavoriteReferenceBindings(Scope scope) {
        int length;
        ImportBinding[] importBindingArr = this.favoriteReferenceBindings;
        if (importBindingArr != null) {
            return importBindingArr;
        }
        String[] favoriteReferences = this.requestor.getFavoriteReferences();
        if (favoriteReferences == null || favoriteReferences.length == 0) {
            return null;
        }
        int length2 = favoriteReferences.length;
        ImportBinding[] importBindingArr2 = new ImportBinding[length2];
        int i10 = 0;
        for (String str : favoriteReferences) {
            if (str != null && (length = str.length()) != 0) {
                boolean z10 = str.charAt(length + (-1)) == '*';
                char[][] splitOn = CharOperation.splitOn('.', str.toCharArray());
                if (z10) {
                    splitOn = CharOperation.subarray(splitOn, 0, splitOn.length - 1);
                }
                int i11 = 0;
                while (true) {
                    if (i11 >= i10) {
                        ImportReference importReference = new ImportReference(splitOn, new long[splitOn.length], z10, 8);
                        Binding findImport = this.unitScope.findImport(splitOn, true, z10);
                        if (findImport.isValidBinding() && !(findImport instanceof PackageBinding)) {
                            importBindingArr2[i10] = new ImportBinding(splitOn, z10, findImport, importReference);
                            i10++;
                        }
                    } else {
                        ImportReference importReference2 = importBindingArr2[i11].reference;
                        if (!CharOperation.equals(importReference2.tokens, splitOn)) {
                            if (!z10 && (importReference2.bits & 131072) == 0) {
                                char[][] cArr = importReference2.tokens;
                                if (CharOperation.equals(cArr[cArr.length - 1], splitOn[splitOn.length - 1])) {
                                    break;
                                }
                            }
                            i11++;
                        }
                    }
                }
            }
        }
        if (length2 > i10) {
            ImportBinding[] importBindingArr3 = new ImportBinding[i10];
            System.arraycopy(importBindingArr2, 0, importBindingArr3, 0, i10);
            importBindingArr2 = importBindingArr3;
        }
        this.favoriteReferenceBindings = importBindingArr2;
        return importBindingArr2;
    }

    private INameEnvironment getNoCacheNameEnvironment() {
        if (this.noCacheNameEnvironment == null) {
            JavaModelManager.getJavaModelManager().cacheZipFiles(this);
            this.noCacheNameEnvironment = IndexBasedJavaSearchEnvironment.create(Collections.singletonList(this.javaProject), this.owner == null ? null : JavaModelManager.getJavaModelManager().getWorkingCopies(this.owner, true));
        }
        return this.noCacheNameEnvironment;
    }

    private static char[] getRequiredTypeSignature(TypeBinding typeBinding) {
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append(typeBinding.signature());
        int length = stringBuffer.length();
        char[] cArr = new char[length];
        stringBuffer.getChars(0, length, cArr, 0);
        return CharOperation.replaceOnCopy(cArr, '/', '.');
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x007c, code lost:
    
        r12.resolveTypesFor(r2.binding);
        r2 = r2.binding;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0083, code lost:
    
        if (r2 != null) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0086, code lost:
    
        r11 = org.eclipse.jdt.internal.codeassist.impl.Engine.getSignature(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x008a, code lost:
    
        r10.lookupEnvironment.nameEnvironment = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x008e, code lost:
    
        return r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private char[] getResolvedSignature(char[][] cArr, char[] cArr2, int i10, Scope scope) {
        ClassScope classScope;
        TypeDeclaration typeDeclaration;
        char[][] splitOn = CharOperation.splitOn('.', cArr2);
        Expression singleTypeReference = splitOn.length == 1 ? new SingleTypeReference(splitOn[0], 0L) : new QualifiedTypeReference(splitOn, new long[splitOn.length]);
        LookupEnvironment lookupEnvironment = this.lookupEnvironment;
        INameEnvironment iNameEnvironment = lookupEnvironment.nameEnvironment;
        lookupEnvironment.nameEnvironment = getNoCacheNameEnvironment();
        try {
            int i11 = scope.kind;
            TypeBinding resolveType = (i11 == 1 || i11 == 2) ? singleTypeReference.resolveType((BlockScope) scope) : i11 != 3 ? null : singleTypeReference.resolveType((ClassScope) scope);
            if (resolveType != null && resolveType.isValidBinding()) {
                TypeBinding erasure = resolveType.erasure();
                if ((erasure instanceof SourceTypeBinding) && (classScope = (r12 = (SourceTypeBinding) erasure).scope) != null && (typeDeclaration = classScope.referenceContext) != null) {
                    AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration.methods;
                    for (int i12 = 0; i12 < abstractMethodDeclarationArr.length; i12++) {
                        AbstractMethodDeclaration abstractMethodDeclaration = abstractMethodDeclarationArr[i12];
                        if (abstractMethodDeclaration.isConstructor()) {
                            Argument[] argumentArr = abstractMethodDeclaration.arguments;
                            int length = argumentArr == null ? 0 : argumentArr.length;
                            if (i10 == length) {
                                int i13 = 0;
                                while (true) {
                                    if (i13 >= length) {
                                        break;
                                    }
                                    if (!CharOperation.equals(getTypeName(argumentArr[i13].type), cArr[i13])) {
                                        break;
                                    }
                                    i13++;
                                }
                            }
                        }
                    }
                }
            }
            return null;
        } finally {
            this.lookupEnvironment.nameEnvironment = iNameEnvironment;
        }
    }

    private static char[] getTypeName(TypeReference typeReference) {
        char[] concatWith = CharOperation.concatWith(typeReference.getTypeName(), '.');
        int dimensions = typeReference.dimensions();
        if (dimensions <= 0) {
            return concatWith;
        }
        int length = concatWith.length;
        int i10 = (dimensions * 2) + length;
        char[] cArr = new char[i10];
        System.arraycopy(concatWith, 0, cArr, 0, length);
        while (length < i10) {
            cArr[length] = '[';
            cArr[length + 1] = JavaElement.JEM_TYPE_PARAMETER;
            length += 2;
        }
        return cArr;
    }

    private static boolean hasMemberTypesInEnclosingScope(SourceTypeBinding sourceTypeBinding, Scope scope) {
        MethodScope methodScope;
        ReferenceBinding[] memberTypes = sourceTypeBinding.memberTypes();
        if ((memberTypes == null ? 0 : memberTypes.length) > 0 && (methodScope = scope.methodScope()) != null && !methodScope.isStatic) {
            ClassScope classScope = sourceTypeBinding.scope;
            while (scope != null) {
                if (scope == classScope) {
                    return true;
                }
                scope = scope.parent;
            }
        }
        return false;
    }

    private static boolean hasStaticMemberTypes(ReferenceBinding referenceBinding, SourceTypeBinding sourceTypeBinding, CompilationUnitScope compilationUnitScope) {
        ReferenceBinding[] memberTypes = referenceBinding.memberTypes();
        int length = memberTypes == null ? 0 : memberTypes.length;
        for (int i10 = 0; i10 < length; i10++) {
            ReferenceBinding referenceBinding2 = memberTypes[i10];
            if ((sourceTypeBinding == null || referenceBinding2.canBeSeenBy(referenceBinding, sourceTypeBinding)) && ((sourceTypeBinding != null || referenceBinding2.canBeSeenBy(compilationUnitScope.fPackage)) && (referenceBinding2.modifiers & 8) != 0)) {
                return true;
            }
        }
        return false;
    }

    private char[] inlineTagCompletion(char[] cArr, char[] cArr2) {
        int length = cArr2.length;
        int length2 = cArr.length;
        int i10 = length + 3 + length2;
        char[] cArr3 = new char[i10 + 1];
        cArr3[0] = JavaElement.JEM_COMPILATIONUNIT;
        cArr3[1] = '@';
        System.arraycopy(cArr2, 0, cArr3, 2, length);
        cArr3[length + 2] = C15883c.f126249O;
        System.arraycopy(cArr, 0, cArr3, length + 3, length2);
        cArr3[i10] = JavaElement.JEM_ANNOTATION;
        return cArr3;
    }

    private boolean isAllowingLongComputationProposals() {
        return this.monitor != null;
    }

    private boolean isFailedMatch(char[] cArr, char[] cArr2) {
        return ((this.options.substringMatch && CharOperation.substringMatch(cArr, cArr2)) || (this.options.camelCaseMatch && CharOperation.camelCaseMatch(cArr, cArr2)) || CharOperation.prefixEquals(cArr, cArr2, false)) ? false : true;
    }

    private boolean isForbidden(ReferenceBinding referenceBinding) {
        for (int i10 = 0; i10 <= this.forbbidenBindingsPtr; i10++) {
            if (this.forbbidenBindings[i10] == referenceBinding) {
                return true;
            }
        }
        return !isValidPackageName(referenceBinding.qualifiedPackageName());
    }

    private boolean isIgnored(int i10) {
        return this.requestor.isIgnored(i10);
    }

    private boolean isValidPackageName(char[] cArr) {
        if (this.validPackageNames.includes(cArr)) {
            return true;
        }
        if (this.invalidPackageNames.includes(cArr)) {
            return false;
        }
        for (char[] cArr2 : CharOperation.splitOn('.', cArr)) {
            if (!Util.isValidFolderNameForPackage(new String(cArr2), this.sourceLevel, this.complianceLevel)) {
                this.invalidPackageNames.add(cArr);
                return false;
            }
        }
        this.validPackageNames.add(cArr);
        return true;
    }

    private boolean isValidParent(ASTNode aSTNode, ASTNode aSTNode2, Scope scope) {
        if (aSTNode instanceof ParameterizedSingleTypeReference) {
            ParameterizedSingleTypeReference parameterizedSingleTypeReference = (ParameterizedSingleTypeReference) aSTNode;
            TypeBinding typeBinding = parameterizedSingleTypeReference.resolvedType;
            if (typeBinding == null) {
                return false;
            }
            TypeVariableBinding[] typeVariables = ((ReferenceBinding) typeBinding).typeVariables();
            TypeReference[] typeReferenceArr = parameterizedSingleTypeReference.typeArguments;
            int length = (typeReferenceArr == null ? 0 : typeReferenceArr.length) - 1;
            while (true) {
                if (length <= -1) {
                    length = -1;
                    break;
                }
                if (aSTNode2 == parameterizedSingleTypeReference.typeArguments[length]) {
                    break;
                }
                length--;
            }
            if (length > -1 && (typeVariables == null || typeVariables.length < length + 1)) {
                TypeBinding[] typeBindingArr = new TypeBinding[length + 1];
                for (int i10 = 0; i10 < length; i10++) {
                    typeBindingArr[i10] = parameterizedSingleTypeReference.typeArguments[i10].resolvedType;
                }
                typeBindingArr[length] = scope.getJavaLangObject();
                if (typeVariables == null || typeVariables.length == 0) {
                    scope.problemReporter().nonGenericTypeCannotBeParameterized(0, parameterizedSingleTypeReference, parameterizedSingleTypeReference.resolvedType, typeBindingArr);
                } else {
                    scope.problemReporter().incorrectArityForParameterizedType(parameterizedSingleTypeReference, parameterizedSingleTypeReference.resolvedType, typeBindingArr);
                }
                return false;
            }
        } else if (aSTNode instanceof ParameterizedQualifiedTypeReference) {
            ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = (ParameterizedQualifiedTypeReference) aSTNode;
            TypeVariableBinding[] typeVariables2 = ((ReferenceBinding) parameterizedQualifiedTypeReference.resolvedType).typeVariables();
            TypeReference[][] typeReferenceArr2 = parameterizedQualifiedTypeReference.typeArguments;
            int length2 = typeReferenceArr2 == null ? 0 : typeReferenceArr2.length;
            for (int i11 = 0; i11 < length2; i11++) {
                TypeReference[] typeReferenceArr3 = typeReferenceArr2[i11];
                int length3 = typeReferenceArr3 == null ? 0 : typeReferenceArr3.length;
                for (int i12 = 0; i12 < length3; i12++) {
                    if (typeReferenceArr2[i11][i12] == aSTNode2 && (typeVariables2 == null || typeVariables2.length <= i12)) {
                        TypeBinding[] typeBindingArr2 = new TypeBinding[i12 + 1];
                        for (int i13 = 0; i13 < i12; i13++) {
                            typeBindingArr2[i13] = parameterizedQualifiedTypeReference.typeArguments[i11][i13].resolvedType;
                        }
                        typeBindingArr2[i12] = scope.getJavaLangObject();
                        if (typeVariables2 == null || typeVariables2.length == 0) {
                            scope.problemReporter().nonGenericTypeCannotBeParameterized(0, parameterizedQualifiedTypeReference, parameterizedQualifiedTypeReference.resolvedType, typeBindingArr2);
                        } else {
                            scope.problemReporter().incorrectArityForParameterizedType(parameterizedQualifiedTypeReference, parameterizedQualifiedTypeReference.resolvedType, typeBindingArr2);
                        }
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public boolean lambda$0(char[] cArr, String str) {
        return isFailedMatch(cArr, str.toCharArray());
    }

    private boolean mustQualifyType(ReferenceBinding referenceBinding, char[] cArr, Scope scope) {
        if (!mustQualifyType(cArr, referenceBinding.sourceName(), referenceBinding.isMemberType() ? referenceBinding.enclosingType().qualifiedSourceName() : null, referenceBinding.modifiers)) {
            return false;
        }
        for (ReferenceBinding enclosingSourceType = scope.enclosingSourceType(); enclosingSourceType != null; enclosingSourceType = enclosingSourceType.enclosingType()) {
            for (ReferenceBinding referenceBinding2 = enclosingSourceType; referenceBinding2 != null; referenceBinding2 = referenceBinding2.superclass()) {
                ReferenceBinding[] memberTypes = referenceBinding2.memberTypes();
                if (memberTypes != null) {
                    for (int i10 = 0; i10 < memberTypes.length; i10++) {
                        if (CharOperation.equals(memberTypes[i10].sourceName, referenceBinding.sourceName()) && memberTypes[i10].canBeSeenBy(scope)) {
                            return TypeBinding.notEquals(memberTypes[i10], referenceBinding);
                        }
                    }
                }
            }
        }
        return true;
    }

    private Initializer parseSnippeInitializer(char[] cArr, int i10, char[][] cArr2, char[][] cArr3, int[] iArr, boolean z10) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("public class FakeType {\n ");
        if (z10) {
            stringBuffer.append("static ");
        }
        stringBuffer.append("{\n");
        for (int i11 = 0; i11 < cArr2.length; i11++) {
            ASTNode.printModifiers(iArr[i11], stringBuffer);
            stringBuffer.append(C15883c.f126249O);
            stringBuffer.append(cArr2[i11]);
            stringBuffer.append(C15883c.f126249O);
            stringBuffer.append(cArr3[i11]);
            stringBuffer.append(';');
        }
        char[] concat = CharOperation.concat(stringBuffer.toString().toCharArray(), cArr, "}}".toCharArray());
        this.offset = stringBuffer.length();
        BasicCompilationUnit basicCompilationUnit = new BasicCompilationUnit(concat, (char[][]) null, "FakeType.java", this.compilerOptions.defaultEncoding);
        this.actualCompletionPosition = (stringBuffer.length() + i10) - 1;
        CompilationUnitDeclaration dietParse = this.parser.dietParse(basicCompilationUnit, new CompilationResult(basicCompilationUnit, 1, 1, this.compilerOptions.maxProblemsPerUnit), this.actualCompletionPosition);
        parseBlockStatements(dietParse, this.actualCompletionPosition);
        return (Initializer) dietParse.types[0].fields[0];
    }

    private void printDebugTab(int i10, StringBuffer stringBuffer) {
        for (int i11 = 0; i11 < i10; i11++) {
            stringBuffer.append('\t');
        }
    }

    private void processModuleKeywordCompletion(CompilationUnitDeclaration compilationUnitDeclaration, ASTNode aSTNode, CompletionOnKeyword completionOnKeyword) {
        buildContext(aSTNode, null, compilationUnitDeclaration, null, null);
        if (!this.requestor.isIgnored(3)) {
            setSourceAndTokenRange(aSTNode.sourceStart, aSTNode.sourceEnd);
            findKeywords(completionOnKeyword.getToken(), completionOnKeyword.getPossibleKeywords(), false, compilationUnitDeclaration.currentPackage != null);
        }
        debugPrintf();
    }

    private void proposeConstructor(AcceptedConstructor acceptedConstructor, Scope scope) {
        if (acceptedConstructor.proposeConstructor) {
            char[] cArr = acceptedConstructor.simpleTypeName;
            proposeConstructor(cArr, acceptedConstructor.parameterCount, acceptedConstructor.signature, acceptedConstructor.parameterTypes, acceptedConstructor.parameterNames, acceptedConstructor.modifiers, acceptedConstructor.packageName, acceptedConstructor.typeModifiers, acceptedConstructor.accessibility, cArr, acceptedConstructor.fullyQualifiedName, acceptedConstructor.mustBeQualified, scope, acceptedConstructor.extraFlags);
        }
    }

    private void proposeModuleName(CompilationUnitDeclaration compilationUnitDeclaration) {
        char[] charArray = this.javaProject.getElementName().toCharArray();
        if (charArray.length > 0) {
            if (!Character.isJavaIdentifierStart(charArray[0])) {
                return;
            }
            for (char c10 : charArray) {
                if (!Character.isJavaIdentifierPart(c10) && c10 != '.') {
                    return;
                }
            }
        }
        this.completionToken = CharOperation.concatWith(this.moduleDeclaration.tokens, '.');
        ModuleDeclaration moduleDeclaration = this.moduleDeclaration;
        setSourceRange(moduleDeclaration.sourceStart, moduleDeclaration.bodyStart);
        char[] cArr = this.completionToken;
        if (cArr.length <= 0 || CharOperation.prefixEquals(cArr, charArray)) {
            InternalCompletionProposal createProposal = createProposal(28, this.actualCompletionPosition);
            createProposal.setName(charArray);
            createProposal.setDeclarationSignature(charArray);
            createProposal.setCompletion(charArray);
            int i10 = this.startPosition;
            createProposal.setReplaceRange(i10 < 0 ? 0 : i10 - this.offset, this.endPosition - this.offset);
            int i11 = this.tokenStart;
            createProposal.setTokenRange(i11 >= 0 ? i11 - this.offset : 0, this.tokenEnd - this.offset);
            createProposal.setRelevance(31);
            this.requestor.accept(createProposal);
            if (DEBUG) {
                printDebug(createProposal);
            }
        }
    }

    private void proposeNewMethod(char[] cArr, ReferenceBinding referenceBinding) {
        if (this.requestor.isIgnored(11)) {
            return;
        }
        int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForRestrictions(0);
        InternalCompletionProposal createProposal = createProposal(11, this.actualCompletionPosition);
        createProposal.setDeclarationSignature(Engine.getSignature(referenceBinding));
        char[][] cArr2 = CharOperation.NO_CHAR_CHAR;
        char[] cArr3 = CharOperation.NO_CHAR;
        char[] cArr4 = VOID;
        createProposal.setSignature(createMethodSignature(cArr2, cArr2, cArr3, cArr4));
        createProposal.setDeclarationPackageName(referenceBinding.qualifiedPackageName());
        createProposal.setDeclarationTypeName(referenceBinding.qualifiedSourceName());
        createProposal.setTypeName(cArr4);
        createProposal.setName(cArr);
        createProposal.setCompletion(cArr);
        createProposal.setFlags(1);
        int i10 = this.startPosition;
        int i11 = this.offset;
        createProposal.setReplaceRange(i10 - i11, this.endPosition - i11);
        int i12 = this.tokenStart;
        int i13 = this.offset;
        createProposal.setTokenRange(i12 - i13, this.tokenEnd - i13);
        createProposal.setRelevance(computeBaseRelevance);
        this.requestor.accept(createProposal);
        if (DEBUG) {
            printDebug(createProposal);
        }
    }

    private void proposeType(char[] cArr, char[] cArr2, int i10, int i11, char[] cArr3, char[] cArr4, boolean z10, Scope scope) {
        char[] cArr5;
        int computeRelevanceForInterface;
        CompilationUnitScope compilationUnitScope;
        if (!z10) {
            cArr5 = cArr2;
        } else if ((cArr == null || cArr.length == 0) && (compilationUnitScope = this.unitScope) != null && compilationUnitScope.fPackage.compoundName != CharOperation.NO_CHAR_CHAR) {
            return;
        } else {
            cArr5 = cArr4;
        }
        TypeBinding typeBinding = null;
        if ((i10 & 8192) != 0 && this.assistNodeIsAnnotation && (this.targetedElement & TagBits.AnnotationTargetMASK) != 0) {
            char[][] splitOn = CharOperation.splitOn('.', cArr4);
            Expression singleTypeReference = splitOn.length == 1 ? new SingleTypeReference(cArr2, 0L) : new QualifiedTypeReference(splitOn, new long[splitOn.length]);
            int i12 = scope.kind;
            if (i12 == 1 || i12 == 2) {
                typeBinding = singleTypeReference.resolveType((BlockScope) scope);
            } else if (i12 == 3) {
                typeBinding = singleTypeReference.resolveType((ClassScope) scope);
            }
            if (typeBinding == null || !typeBinding.isValidBinding() || !hasPossibleAnnotationTarget(typeBinding, scope)) {
                return;
            }
        }
        int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal(cArr, cArr4) + computeRelevanceForRestrictions(i11) + computeRelevanceForCaseMatching(this.completionToken, cArr2) + computeRelevanceForExpectingType(cArr, cArr2) + computeRelevanceForQualification(z10);
        int i13 = i10 & 25088;
        if (i13 == 512) {
            computeRelevanceForInterface = computeRelevanceForInterface();
        } else if (i13 == 8192 || i13 == 8704) {
            computeBaseRelevance += computeRelevanceForAnnotation();
            if (typeBinding != null) {
                computeBaseRelevance += computeRelevanceForAnnotationTarget(typeBinding);
            }
            computeRelevanceForInterface = computeRelevanceForInterface();
        } else if (i13 != 16384) {
            computeBaseRelevance += computeRelevanceForClass();
            computeRelevanceForInterface = computeRelevanceForException(cArr2);
        } else {
            computeRelevanceForInterface = computeRelevanceForEnum();
        }
        int i14 = computeBaseRelevance + computeRelevanceForInterface;
        this.noProposal = false;
        if (this.requestor.isIgnored(9)) {
            return;
        }
        createTypeProposal(cArr, cArr3, i10, i11, cArr5, i14);
    }

    private void setCompletionToken(char[][] cArr, int i10, int i11, long[] jArr, boolean z10) {
        char[] concatWith = z10 ? CharOperation.concatWith(cArr, '.') : CharOperation.concatWithAll(cArr, '.');
        this.completionToken = concatWith;
        if (concatWith.length == 0) {
            this.completionToken = CharOperation.ALL_PREFIX;
        }
        setSourceRange(i10, i11);
        long j10 = jArr[jArr.length - 1];
        setTokenRange((int) (j10 >>> 32), (int) j10);
    }

    private void setSourceAndTokenRange(int i10, int i11) {
        setSourceAndTokenRange(i10, i11, true);
    }

    private void setSourceRange(int i10, int i11) {
        setSourceRange(i10, i11, true);
    }

    private void setTokenRange(int i10, int i11) {
        setTokenRange(i10, i11, true);
    }

    private char[] substituteMethodTypeParameterName(char c10, char c11, char c12, char[][] cArr, char[][] cArr2) {
        char c13 = c10;
        while (true) {
            int i10 = 0;
            while (true) {
                if (i10 >= cArr.length) {
                    for (char[] cArr3 : cArr2) {
                        if (cArr3.length == 1 && ScannerHelper.toLowerCase(cArr3[0]) == ScannerHelper.toLowerCase(c13)) {
                            c13 = (char) (c13 + 1);
                            if (c13 > c12) {
                                c13 = c11;
                            }
                            if (c13 == c10) {
                                return substituteMethodTypeParameterName(new char[]{c10}, cArr, cArr2);
                            }
                        }
                    }
                    return new char[]{c13};
                }
                char[] cArr4 = cArr[i10];
                if (cArr4.length == 1 && ScannerHelper.toLowerCase(cArr4[0]) == ScannerHelper.toLowerCase(c13)) {
                    c13 = (char) (c13 + 1);
                    if (c13 > c12) {
                        c13 = c11;
                    }
                    if (c13 == c10) {
                        return substituteMethodTypeParameterName(new char[]{c10}, cArr, cArr2);
                    }
                } else {
                    i10++;
                }
            }
        }
    }

    private char[][] substituteMethodTypeParameterNames(TypeVariableBinding[] typeVariableBindingArr, char[][] cArr) {
        int length = typeVariableBindingArr.length;
        char[][] cArr2 = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr2[i10] = typeVariableBindingArr[i10].sourceName;
        }
        boolean z10 = false;
        for (int i11 = 0; i11 < typeVariableBindingArr.length; i11++) {
            char[] cArr3 = typeVariableBindingArr[i11].sourceName;
            int i12 = 0;
            while (true) {
                if (i12 < cArr.length) {
                    if (CharOperation.equals(cArr[i12], cArr3, false)) {
                        cArr2[i11] = cArr3.length == 1 ? ScannerHelper.isUpperCase(cArr3[0]) ? substituteMethodTypeParameterName(cArr3[0], IIndexConstants.ANNOTATION_TYPE_SUFFIX, 'Z', cArr, cArr2) : substituteMethodTypeParameterName(cArr3[0], 'a', 'z', cArr, cArr2) : substituteMethodTypeParameterName(cArr3, cArr, cArr2);
                        z10 = true;
                    } else {
                        i12++;
                    }
                }
            }
        }
        if (z10) {
            return cArr2;
        }
        return null;
    }

    @Override
    public void accept(ICompilationUnit iCompilationUnit, AccessRestriction accessRestriction) {
        if (CharOperation.equals(iCompilationUnit.getMainTypeName(), TypeConstants.PACKAGE_INFO_NAME)) {
            return;
        }
        super.accept(iCompilationUnit, accessRestriction);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x006e  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void acceptConstructor(int i10, char[] cArr, int i11, char[] cArr2, char[][] cArr3, char[][] cArr4, int i12, char[] cArr5, int i13, String str, AccessRestriction accessRestriction) {
        int i14;
        int i15;
        if (this.foundConstructorsCount % 50 == 0) {
            checkCancel();
        }
        this.foundConstructorsCount++;
        if ((i12 & 16384) != 0) {
            return;
        }
        AssistOptions assistOptions = this.options;
        if (!assistOptions.checkDeprecation || (1048576 & i12) == 0) {
            if (assistOptions.checkVisibility && (i12 & 1) == 0) {
                if ((i12 & 2) != 0) {
                    return;
                }
                if (this.currentPackageName == null) {
                    initializePackageCache();
                }
                if (!CharOperation.equals(cArr5, this.currentPackageName)) {
                    return;
                }
            }
            if (accessRestriction != null) {
                int problemId = accessRestriction.getProblemId();
                if (problemId == 16777496) {
                    if (this.options.checkDiscouragedReference) {
                        return;
                    }
                    i14 = 2;
                    i15 = i14;
                    if (this.acceptedConstructors == null) {
                    }
                    this.acceptedConstructors.add(new AcceptedConstructor(i10, cArr, i11, cArr2, cArr3, cArr4, i12, cArr5, i13, i15));
                }
                if (problemId == 16777523) {
                    if (this.options.checkForbiddenReference) {
                        return;
                    }
                    i15 = 1;
                    if (this.acceptedConstructors == null) {
                        this.acceptedConstructors = new ObjectVector();
                    }
                    this.acceptedConstructors.add(new AcceptedConstructor(i10, cArr, i11, cArr2, cArr3, cArr4, i12, cArr5, i13, i15));
                }
            }
            i14 = 0;
            i15 = i14;
            if (this.acceptedConstructors == null) {
            }
            this.acceptedConstructors.add(new AcceptedConstructor(i10, cArr, i11, cArr2, cArr3, cArr4, i12, cArr5, i13, i15));
        }
    }

    @Override
    public void acceptModule(char[] cArr) {
        if (this.knownModules.containsKey(cArr) || CharOperation.equals(cArr, this.moduleDeclaration.moduleName) || CharOperation.equals(cArr, CharOperation.NO_CHAR)) {
            return;
        }
        this.knownModules.put(cArr, this);
        int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal();
        char[] cArr2 = this.qualifiedCompletionToken;
        if (cArr2 == null) {
            cArr2 = this.completionToken;
        }
        int computeRelevanceForCaseMatching = computeBaseRelevance + computeRelevanceForCaseMatching(cArr2, cArr) + computeRelevanceForQualification(true) + computeRelevanceForRestrictions(0);
        this.noProposal = false;
        if (this.requestor.isIgnored(29)) {
            return;
        }
        InternalCompletionProposal createProposal = createProposal(29, this.actualCompletionPosition);
        createProposal.setModuleName(cArr);
        createProposal.setDeclarationSignature(cArr);
        createProposal.setCompletion(cArr);
        int i10 = this.startPosition;
        int i11 = this.offset;
        createProposal.setReplaceRange(i10 - i11, this.endPosition - i11);
        int i12 = this.tokenStart;
        int i13 = this.offset;
        createProposal.setTokenRange(i12 - i13, this.tokenEnd - i13);
        createProposal.setRelevance(computeRelevanceForCaseMatching);
        this.requestor.accept(createProposal);
        if (DEBUG) {
            printDebug(createProposal);
        }
    }

    @Override
    public void acceptPackage(char[] cArr) {
        if (!this.knownPkgs.containsKey(cArr) && isValidPackageName(cArr)) {
            if (this.skipDefaultPackage && CharOperation.equals(cArr, CharOperation.NO_CHAR)) {
                return;
            }
            this.knownPkgs.put(cArr, this);
            char[] concat = this.resolvingImports ? this.resolvingStaticImports ? CharOperation.concat(cArr, new char[]{'.'}) : CharOperation.concat(cArr, new char[]{'.', '*', ';'}) : cArr;
            int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal();
            char[] cArr2 = this.qualifiedCompletionToken;
            if (cArr2 == null) {
                cArr2 = this.completionToken;
            }
            int computeRelevanceForCaseMatching = computeBaseRelevance + computeRelevanceForCaseMatching(cArr2, cArr);
            if (!this.resolvingImports) {
                computeRelevanceForCaseMatching += computeRelevanceForQualification(true);
            }
            int computeRelevanceForRestrictions = computeRelevanceForCaseMatching + computeRelevanceForRestrictions(0);
            this.noProposal = false;
            if (this.requestor.isIgnored(8)) {
                return;
            }
            InternalCompletionProposal createProposal = createProposal(8, this.actualCompletionPosition);
            createProposal.setDeclarationSignature(cArr);
            createProposal.setPackageName(cArr);
            createProposal.setCompletion(concat);
            int i10 = this.startPosition;
            int i11 = this.offset;
            createProposal.setReplaceRange(i10 - i11, this.endPosition - i11);
            int i12 = this.tokenStart;
            int i13 = this.offset;
            createProposal.setTokenRange(i12 - i13, this.tokenEnd - i13);
            createProposal.setRelevance(computeRelevanceForRestrictions);
            this.requestor.accept(createProposal);
            if (DEBUG) {
                printDebug(createProposal);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0073 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0074  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void acceptType(char[] cArr, char[] cArr2, char[][] cArr3, int i10, AccessRestriction accessRestriction) {
        if (this.foundTypesCount % 50 == 0) {
            checkCancel();
        }
        int i11 = 1;
        this.foundTypesCount++;
        AssistOptions assistOptions = this.options;
        if (assistOptions.checkDeprecation && (1048576 & i10) != 0) {
            return;
        }
        if (this.assistNodeIsExtendedType && (i10 & 16) != 0) {
            return;
        }
        if (assistOptions.checkVisibility && (i10 & 1) == 0) {
            if ((i10 & 2) != 0) {
                return;
            }
            if (this.moduleDeclaration == null && !CharOperation.equals(cArr, CharOperation.concatWith(this.unitScope.fPackage.compoundName, '.'))) {
                return;
            }
        }
        if (accessRestriction != null) {
            int problemId = accessRestriction.getProblemId();
            if (problemId != 16777496) {
                if (problemId == 16777523) {
                    if (this.options.checkForbiddenReference) {
                        return;
                    }
                }
            } else if (this.options.checkDiscouragedReference) {
                return;
            } else {
                i11 = 2;
            }
            int i12 = i11;
            if (isForbidden(cArr, cArr2, cArr3)) {
                if (this.acceptedTypes == null) {
                    this.acceptedTypes = new ObjectVector();
                }
                this.acceptedTypes.add(new AcceptedType(cArr, cArr2, cArr3, i10, i12));
                return;
            }
            return;
        }
        i11 = 0;
        int i122 = i11;
        if (isForbidden(cArr, cArr2, cArr3)) {
        }
    }

    public void acceptUnresolvedName(char[] cArr) {
        int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution(false) + computeRelevanceForInterestingProposal() + computeRelevanceForCaseMatching(this.completionToken, cArr) + computeRelevanceForQualification(false) + computeRelevanceForRestrictions(0);
        this.noProposal = false;
        if (this.requestor.isIgnored(5)) {
            return;
        }
        InternalCompletionProposal createProposal = createProposal(5, this.actualCompletionPosition);
        createProposal.setSignature(JAVA_LANG_OBJECT_SIGNATURE);
        createProposal.setPackageName(JAVA_LANG_NAME);
        createProposal.setTypeName(TypeConstants.OBJECT);
        createProposal.setName(cArr);
        createProposal.setCompletion(cArr);
        createProposal.setFlags(0);
        int i10 = this.startPosition;
        int i11 = this.offset;
        createProposal.setReplaceRange(i10 - i11, this.endPosition - i11);
        int i12 = this.tokenStart;
        int i13 = this.offset;
        createProposal.setTokenRange(i12 - i13, this.tokenEnd - i13);
        createProposal.setRelevance(computeBaseRelevance);
        this.requestor.accept(createProposal);
        if (DEBUG) {
            printDebug(createProposal);
        }
    }

    public void checkCancel() {
        IProgressMonitor iProgressMonitor = this.monitor;
        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    public int computeBaseRelevance() {
        return 30;
    }

    public int computeRelevanceForCaseMatching(char[] cArr, char[] cArr2) {
        if (CharOperation.equals(cArr, cArr2, true)) {
            return 14;
        }
        if (CharOperation.equals(cArr, cArr2, false)) {
            return 4;
        }
        if (CharOperation.prefixEquals(cArr, cArr2, false)) {
            if (CharOperation.prefixEquals(cArr, cArr2, true)) {
                return 10;
            }
        } else {
            if (this.options.camelCaseMatch && CharOperation.camelCaseMatch(cArr, cArr2)) {
                return 5;
            }
            if (this.options.substringMatch && CharOperation.substringMatch(cArr, cArr2)) {
                return -21;
            }
        }
        return 0;
    }

    public int computeRelevanceForInterestingProposal() {
        return computeRelevanceForInterestingProposal(null);
    }

    public int computeRelevanceForQualification(boolean z10) {
        if (z10 || this.insideQualifiedReference) {
            return (z10 && this.insideQualifiedReference) ? 2 : 0;
        }
        return 3;
    }

    public int computeRelevanceForResolution(boolean z10) {
        return z10 ? 1 : 0;
    }

    public int computeRelevanceForRestrictions(int i10) {
        return i10 == 0 ? 3 : 0;
    }

    public InternalCompletionProposal createProposal(int i10, int i11) {
        InternalCompletionProposal internalCompletionProposal = (InternalCompletionProposal) CompletionProposal.create(i10, i11 - this.offset);
        internalCompletionProposal.nameLookup = this.nameEnvironment.nameLookup;
        internalCompletionProposal.completionEngine = this;
        return internalCompletionProposal;
    }

    public void findAnonymousType(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, Scope scope, InvocationSite invocationSite, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z10) {
        int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal(referenceBinding) + computeRelevanceForRestrictions(0);
        if (bindingArr != null) {
            computeBaseRelevance += computeRelevanceForMissingElements(z10);
        }
        findAnonymousType(referenceBinding, typeBindingArr, scope, invocationSite, bindingArr, iArr, iArr2, z10, true, false, computeBaseRelevance);
    }

    public void findConstructors(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, Scope scope, InvocationSite invocationSite, boolean z10, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z11) {
        int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForRestrictions(0);
        if (bindingArr != null) {
            computeBaseRelevance += computeRelevanceForMissingElements(z11);
        }
        findConstructors(referenceBinding, typeBindingArr, scope, invocationSite, z10, bindingArr, iArr, iArr2, z11, true, false, computeBaseRelevance);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0024, code lost:
    
        if (isIgnored(2, r31 != null) != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0049, code lost:
    
        r18 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0055, code lost:
    
        if (isIgnored(24, r31 != null) != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0028, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0033, code lost:
    
        if (isIgnored(25, r31 != null) != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
    
        if (isIgnored(6, r31 != null) != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0046, code lost:
    
        r18 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void findFieldsAndMethods(char[] cArr, TypeBinding typeBinding, Scope scope, ObjectVector objectVector, ObjectVector objectVector2, InvocationSite invocationSite, Scope scope2, boolean z10, boolean z11, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z12, char[] cArr2, int i10, int i11) {
        boolean z13;
        boolean z14;
        TypeBinding typeBinding2;
        char[] concat;
        char[] createMethodSignature;
        char[] createMethodSignature2;
        if (cArr == null || typeBinding.isBaseType()) {
            return;
        }
        if (cArr2 == null) {
        }
        if (cArr2 == null) {
        }
        if (typeBinding.isArrayType()) {
            if (z13) {
                int length = cArr.length;
                char[] cArr3 = lengthField;
                if (length <= cArr3.length && CharOperation.prefixEquals(cArr, cArr3, false)) {
                    int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForCaseMatching(cArr, cArr3) + computeRelevanceForExpectingType(TypeBinding.INT) + computeRelevanceForRestrictions(0);
                    if (bindingArr != null) {
                        computeBaseRelevance += computeRelevanceForMissingElements(z12);
                    }
                    this.noProposal = false;
                    if (cArr2 != null) {
                        char[] concat2 = CharOperation.concat(cArr2, cArr3);
                        if (!isIgnored(25, bindingArr != null)) {
                            InternalCompletionProposal createProposal = createProposal(25, this.actualCompletionPosition);
                            createProposal.setDeclarationSignature(Engine.getSignature(typeBinding));
                            createProposal.setSignature(INT_SIGNATURE);
                            createProposal.setReceiverSignature(Engine.getSignature(typeBinding));
                            createProposal.setTypeName(INT);
                            createProposal.setName(cArr3);
                            if (bindingArr != null) {
                                CompletionProposal[] completionProposalArr = new CompletionProposal[bindingArr.length];
                                for (int i12 = 0; i12 < bindingArr.length; i12++) {
                                    completionProposalArr[i12] = createRequiredTypeProposal(bindingArr[i12], iArr[i12], iArr2[i12], computeBaseRelevance);
                                }
                                createProposal.setRequiredProposals(completionProposalArr);
                            }
                            createProposal.setCompletion(concat2);
                            createProposal.setFlags(1);
                            int i13 = this.startPosition;
                            int i14 = this.offset;
                            createProposal.setReplaceRange(i13 - i14, this.endPosition - i14);
                            int i15 = this.offset;
                            createProposal.setReceiverRange(i10 - i15, i11 - i15);
                            int i16 = this.tokenStart;
                            int i17 = this.offset;
                            createProposal.setTokenRange(i16 - i17, this.tokenEnd - i17);
                            createProposal.setRelevance(computeBaseRelevance);
                            this.requestor.accept(createProposal);
                            if (DEBUG) {
                                printDebug(createProposal);
                            }
                        }
                    } else if (!isIgnored(2, bindingArr != null)) {
                        InternalCompletionProposal createProposal2 = createProposal(2, this.actualCompletionPosition);
                        createProposal2.setDeclarationSignature(Engine.getSignature(typeBinding));
                        createProposal2.setSignature(INT_SIGNATURE);
                        createProposal2.setTypeName(INT);
                        createProposal2.setName(cArr3);
                        if (bindingArr != null) {
                            CompletionProposal[] completionProposalArr2 = new CompletionProposal[bindingArr.length];
                            for (int i18 = 0; i18 < bindingArr.length; i18++) {
                                completionProposalArr2[i18] = createRequiredTypeProposal(bindingArr[i18], iArr[i18], iArr2[i18], computeBaseRelevance);
                            }
                            createProposal2.setRequiredProposals(completionProposalArr2);
                        }
                        createProposal2.setCompletion(lengthField);
                        createProposal2.setFlags(1);
                        int i19 = this.startPosition;
                        int i20 = this.offset;
                        createProposal2.setReplaceRange(i19 - i20, this.endPosition - i20);
                        int i21 = this.tokenStart;
                        int i22 = this.offset;
                        createProposal2.setTokenRange(i21 - i22, this.tokenEnd - i22);
                        createProposal2.setRelevance(computeBaseRelevance);
                        this.requestor.accept(createProposal2);
                        if (DEBUG) {
                            printDebug(createProposal2);
                        }
                    }
                }
            }
            if (z14) {
                int length2 = cArr.length;
                char[] cArr4 = cloneMethod;
                if (length2 <= cArr4.length && CharOperation.prefixEquals(cArr, cArr4, false)) {
                    ReferenceBinding javaLangObject = scope.getJavaLangObject();
                    int computeBaseRelevance2 = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForCaseMatching(cArr, cArr4) + computeRelevanceForExpectingType(javaLangObject) + computeRelevanceForStatic(false, false) + computeRelevanceForQualification(false) + computeRelevanceForRestrictions(0);
                    if (bindingArr != null) {
                        computeBaseRelevance2 += computeRelevanceForMissingElements(z12);
                    }
                    char[] cArr5 = this.source;
                    if (cArr5 != null) {
                        int length3 = cArr5.length;
                        int i23 = this.endPosition;
                        if (length3 > i23 && cArr5[i23] == '(') {
                            concat = cArr4;
                            if (cArr2 != null) {
                                concat = CharOperation.concat(cArr2, concat);
                            }
                            this.noProposal = false;
                            if (cArr2 != null) {
                                if (!isIgnored(6, bindingArr != null)) {
                                    InternalCompletionProposal createProposal3 = createProposal(6, this.actualCompletionPosition);
                                    createProposal3.setDeclarationSignature(Engine.getSignature(typeBinding));
                                    if (this.compilerOptions.sourceLevel <= ClassFileConstants.JDK1_4 || !typeBinding.isArrayType()) {
                                        char[][] cArr6 = CharOperation.NO_CHAR_CHAR;
                                        createMethodSignature2 = createMethodSignature(cArr6, cArr6, CharOperation.concatWith(TypeConstants.JAVA_LANG, '.'), TypeConstants.OBJECT);
                                    } else {
                                        char[][] cArr7 = CharOperation.NO_CHAR_CHAR;
                                        createMethodSignature2 = createMethodSignature(cArr7, cArr7, Engine.getSignature(typeBinding));
                                    }
                                    createProposal3.setSignature(createMethodSignature2);
                                    createProposal3.setPackageName(CharOperation.concatWith(TypeConstants.JAVA_LANG, '.'));
                                    createProposal3.setTypeName(TypeConstants.OBJECT);
                                    createProposal3.setName(cArr4);
                                    if (bindingArr != null) {
                                        CompletionProposal[] completionProposalArr3 = new CompletionProposal[bindingArr.length];
                                        for (int i24 = 0; i24 < bindingArr.length; i24++) {
                                            completionProposalArr3[i24] = createRequiredTypeProposal(bindingArr[i24], iArr[i24], iArr2[i24], computeBaseRelevance2);
                                        }
                                        createProposal3.setRequiredProposals(completionProposalArr3);
                                    }
                                    createProposal3.setCompletion(concat);
                                    createProposal3.setFlags(1);
                                    int i25 = this.startPosition;
                                    int i26 = this.offset;
                                    createProposal3.setReplaceRange(i25 - i26, this.endPosition - i26);
                                    int i27 = this.tokenStart;
                                    int i28 = this.offset;
                                    createProposal3.setTokenRange(i27 - i28, this.tokenEnd - i28);
                                    createProposal3.setRelevance(computeBaseRelevance2);
                                    this.requestor.accept(createProposal3);
                                    if (DEBUG) {
                                        printDebug(createProposal3);
                                    }
                                }
                                objectVector2.add(new Object[]{javaLangObject.getMethods(cloneMethod)[0], javaLangObject});
                            } else if (!isIgnored(24, bindingArr != null)) {
                                InternalCompletionProposal createProposal4 = createProposal(24, this.actualCompletionPosition);
                                createProposal4.setDeclarationSignature(Engine.getSignature(typeBinding));
                                if (this.compilerOptions.sourceLevel <= ClassFileConstants.JDK1_4 || !typeBinding.isArrayType()) {
                                    char[][] cArr8 = CharOperation.NO_CHAR_CHAR;
                                    createMethodSignature = createMethodSignature(cArr8, cArr8, CharOperation.concatWith(TypeConstants.JAVA_LANG, '.'), TypeConstants.OBJECT);
                                } else {
                                    char[][] cArr9 = CharOperation.NO_CHAR_CHAR;
                                    createMethodSignature = createMethodSignature(cArr9, cArr9, Engine.getSignature(typeBinding));
                                }
                                createProposal4.setSignature(createMethodSignature);
                                createProposal4.setReceiverSignature(Engine.getSignature(typeBinding));
                                createProposal4.setPackageName(CharOperation.concatWith(TypeConstants.JAVA_LANG, '.'));
                                createProposal4.setTypeName(TypeConstants.OBJECT);
                                createProposal4.setName(cArr4);
                                if (bindingArr != null) {
                                    CompletionProposal[] completionProposalArr4 = new CompletionProposal[bindingArr.length];
                                    for (int i29 = 0; i29 < bindingArr.length; i29++) {
                                        completionProposalArr4[i29] = createRequiredTypeProposal(bindingArr[i29], iArr[i29], iArr2[i29], computeBaseRelevance2);
                                    }
                                    createProposal4.setRequiredProposals(completionProposalArr4);
                                }
                                createProposal4.setCompletion(concat);
                                createProposal4.setFlags(1);
                                int i30 = this.startPosition;
                                int i31 = this.offset;
                                createProposal4.setReplaceRange(i30 - i31, this.endPosition - i31);
                                int i32 = this.offset;
                                createProposal4.setReceiverRange(i10 - i32, i11 - i32);
                                int i33 = this.tokenStart;
                                int i34 = this.offset;
                                createProposal4.setTokenRange(i33 - i34, this.tokenEnd - i34);
                                createProposal4.setRelevance(computeBaseRelevance2);
                                this.requestor.accept(createProposal4);
                                if (DEBUG) {
                                    printDebug(createProposal4);
                                }
                            }
                        }
                    }
                    concat = CharOperation.concat(cArr4, new char[]{'(', ')'});
                    if (cArr2 != null) {
                    }
                    this.noProposal = false;
                    if (cArr2 != null) {
                    }
                }
            }
            typeBinding2 = scope.getJavaLangObject();
        } else {
            typeBinding2 = typeBinding;
        }
        checkCancel();
        if (z13) {
            findFields(cArr, (ReferenceBinding) typeBinding2, scope, objectVector, new ObjectVector(), false, invocationSite, scope2, z10, false, bindingArr, iArr, iArr2, z12, cArr2, i10, i11);
        }
        if (z14) {
            findMethods(cArr, null, null, (ReferenceBinding) typeBinding2, scope, objectVector2, false, false, invocationSite, scope2, z10, z11, false, bindingArr, iArr, iArr2, z12, cArr2, i10, i11);
        }
    }

    public void findFieldsAndMethodsFromAnotherReceiver(char[] cArr, TypeReference typeReference, Scope scope, ObjectVector objectVector, ObjectVector objectVector2, InvocationSite invocationSite, Scope scope2, boolean z10, boolean z11, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z12, char[][] cArr2, int i10, int i11) {
        char[] concat;
        TypeBinding typeBinding = typeReference.resolvedType;
        if (typeBinding == null) {
            return;
        }
        char[] concatWith = CharOperation.concatWith(typeReference.getTypeName(), '.');
        char[] cArr3 = this.source;
        if (cArr3 != null) {
            int i12 = this.startPosition;
            char[] subarray = CharOperation.subarray(cArr3, i10, i11);
            concat = CharOperation.concat(CharOperation.concat('(', CharOperation.concat(CharOperation.concat('(', concatWith, ')'), subarray), ')'), CharOperation.subarray(this.source, i11, i12));
        } else {
            concat = CharOperation.concat(CharOperation.concat('(', CharOperation.concat(CharOperation.concat('(', concatWith, ')'), CharOperation.concatWith(cArr2, '.')), ')'), DOT);
        }
        char[] cArr4 = concat;
        if (cArr4 == null) {
            return;
        }
        int i13 = this.startPosition;
        this.startPosition = i10;
        findFieldsAndMethods(cArr, typeBinding, scope, objectVector, objectVector2, invocationSite, scope2, z10, z11, bindingArr, iArr, iArr2, z12, cArr4, i10, i11);
        this.startPosition = i13;
    }

    public void findMembers(char[] cArr, ReferenceBinding referenceBinding, Scope scope, InvocationSite invocationSite, boolean z10, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z11) {
        MethodScope enclosingMethodScope;
        boolean z12;
        if (!this.requestor.isIgnored(9)) {
            findMemberTypes(cArr, referenceBinding, scope, scope.enclosingSourceType(), false, true, new ObjectVector(), bindingArr, iArr, iArr2, z11);
        }
        if (!this.requestor.isIgnored(2)) {
            findClassField(cArr, referenceBinding, scope, bindingArr, iArr, iArr2, z11);
        }
        if (!z10 && !this.requestor.isIgnored(3) && ((((scope instanceof MethodScope) && !((MethodScope) scope).isStatic) || ((enclosingMethodScope = scope.enclosingMethodScope()) != null && !enclosingMethodScope.isStatic)) && cArr.length >= 0)) {
            if (referenceBinding != null ? referenceBinding.isInterface() : false) {
                char[] cArr2 = scope.enclosingSourceType() != null ? scope.enclosingSourceType().sourceName : null;
                char[] cArr3 = referenceBinding != null ? referenceBinding.sourceName : null;
                if ((cArr2 != null) & (cArr3 != null) ? Arrays.equals(cArr2, cArr3) : false) {
                    findKeywords(cArr, new char[][]{Keywords.THIS}, true, false);
                } else if (scope.enclosingSourceType() != null) {
                    ReferenceBinding[] superInterfaces = scope.enclosingSourceType().superInterfaces();
                    int length = superInterfaces.length;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= length) {
                            z12 = false;
                            break;
                        } else {
                            if (Arrays.equals(superInterfaces[i10].sourceName, cArr3)) {
                                z12 = true;
                                break;
                            }
                            i10++;
                        }
                    }
                    if (z12) {
                        findKeywords(cArr, new char[][]{Keywords.SUPER}, true, false);
                    }
                }
            } else {
                findKeywords(cArr, new char[][]{Keywords.THIS, Keywords.SUPER}, true, false);
            }
        }
        if (!this.requestor.isIgnored(2)) {
            findFields(cArr, referenceBinding, scope, new ObjectVector(), new ObjectVector(), true, invocationSite, scope, false, false, bindingArr, iArr, iArr2, z11, null, -1, -1);
        }
        if (z10 || this.requestor.isIgnored(6)) {
            return;
        }
        findMethods(cArr, null, null, referenceBinding, scope, new ObjectVector(), true, false, invocationSite, scope, false, false, false, bindingArr, iArr, iArr2, z11, null, -1, -1);
    }

    @Override
    public AssistParser getParser() {
        return this.parser;
    }

    public boolean hasArrayTypeAsExpectedSuperTypes() {
        int i10 = 0;
        if ((this.expectedTypesFilter & (-3)) != 0) {
            return false;
        }
        if (!this.hasComputedExpectedArrayTypes) {
            if (this.expectedTypes != null) {
                while (true) {
                    if (i10 > this.expectedTypesPtr) {
                        break;
                    }
                    if (this.expectedTypes[i10].isArrayType()) {
                        this.hasExpectedArrayTypes = true;
                        break;
                    }
                    i10++;
                }
            }
            this.hasComputedExpectedArrayTypes = true;
        }
        return this.hasExpectedArrayTypes;
    }

    public boolean hasPossibleAnnotationTarget(TypeBinding typeBinding, Scope scope) {
        Scope scope2;
        long j10 = this.targetedElement;
        if (j10 == 8796093022208L) {
            long annotationTagBits = typeBinding.getAnnotationTagBits();
            return (annotationTagBits & TagBits.AnnotationTargetMASK) == 0 || (annotationTagBits & 8796093022208L) != 0;
        }
        if (j10 == 2305843009213693952L) {
            long annotationTagBits2 = typeBinding.getAnnotationTagBits();
            return (annotationTagBits2 & TagBits.AnnotationTargetMASK) == 0 || (annotationTagBits2 & 2305843009213693952L) != 0;
        }
        if ((j10 & 9007267974217728L) == 0 || (scope2 = scope.parent) == null || scope2.parent == null || !(scope2.referenceContext() instanceof CompletionOnAnnotationOfType) || !(scope.parent.parent instanceof CompilationUnitScope)) {
            return true;
        }
        long annotationTagBits3 = typeBinding.getAnnotationTagBits();
        long j11 = annotationTagBits3 & TagBits.AnnotationTargetMASK;
        return (this.targetedElement & 4398046511104L) != 0 ? j11 == 0 || (annotationTagBits3 & 9011666020728832L) != 0 : j11 == 0 || (annotationTagBits3 & 9007267974217728L) != 0;
    }

    public void printDebug(CategorizedProblem categorizedProblem) {
        if (DEBUG) {
            PrintStream printStream = System.out;
            printStream.print("COMPLETION - completionFailure(");
            printStream.print(categorizedProblem);
            printStream.println(")");
        }
    }

    public void reset() {
        super.reset(false);
        this.validPackageNames = new SimpleSetOfCharArray(10);
        this.invalidPackageNames = new SimpleSetOfCharArray(1);
        this.knownModules = new HashtableOfObject(10);
        this.knownPkgs = new HashtableOfObject(10);
        this.knownTypes = new HashtableOfObject(10);
        INameEnvironment iNameEnvironment = this.noCacheNameEnvironment;
        if (iNameEnvironment != null) {
            iNameEnvironment.cleanup();
            this.noCacheNameEnvironment = null;
            JavaModelManager.getJavaModelManager().flushZipFiles(this);
        }
    }

    public class CompletionProblemFactory extends DefaultProblemFactory {
        private boolean checkProblems;
        public boolean hasAllowedProblems;
        public boolean hasForbiddenProblems;
        private int lastErrorStart;

        public CompletionProblemFactory(Locale locale) {
            super(locale);
            this.checkProblems = false;
            this.hasForbiddenProblems = false;
            this.hasAllowedProblems = false;
        }

        private CategorizedProblem checkProblem(CategorizedProblem categorizedProblem, char[] cArr, int i10, int i11) {
            char[] cArr2;
            int id2 = categorizedProblem.getID();
            if (CompletionEngine.this.actualCompletionPosition > i11 && this.lastErrorStart < i11 && categorizedProblem.isError() && (1073741824 & id2) == 0 && ((cArr2 = CompletionEngine.this.fileName) == null || CharOperation.equals(cArr2, cArr))) {
                CompletionEngine.this.problem = categorizedProblem;
                this.lastErrorStart = i11;
            }
            if (this.checkProblems && !this.hasForbiddenProblems) {
                switch (id2) {
                    case IProblem.NotVisibleType:
                        this.hasForbiddenProblems = CompletionEngine.this.options.checkVisibility;
                        break;
                    case IProblem.UsingDeprecatedType:
                        this.hasForbiddenProblems = CompletionEngine.this.options.checkDeprecation;
                        break;
                    case IProblem.DiscouragedReference:
                        this.hasForbiddenProblems = CompletionEngine.this.options.checkDiscouragedReference;
                        break;
                    case IProblem.ForbiddenReference:
                        this.hasForbiddenProblems = CompletionEngine.this.options.checkForbiddenReference;
                        break;
                    default:
                        if ((i10 & 32) == 0) {
                            this.hasForbiddenProblems = true;
                            break;
                        } else {
                            this.hasAllowedProblems = true;
                            break;
                        }
                }
            }
            return categorizedProblem;
        }

        @Override
        public CategorizedProblem createProblem(char[] cArr, int i10, String[] strArr, int i11, String[] strArr2, int i12, int i13, int i14, int i15, int i16) {
            return checkProblem(super.createProblem(cArr, i10, strArr, i11, strArr2, i12, i13, i14, i15, i16), cArr, i12, i13);
        }

        public void startCheckingProblems() {
            this.checkProblems = true;
            this.hasForbiddenProblems = false;
            this.hasAllowedProblems = false;
        }

        public void stopCheckingProblems() {
            this.checkProblems = false;
        }

        @Override
        public CategorizedProblem createProblem(char[] cArr, int i10, String[] strArr, String[] strArr2, int i11, int i12, int i13, int i14, int i15) {
            return checkProblem(super.createProblem(cArr, i10, strArr, strArr2, i11, i12, i13, i14, i15), cArr, i11, i12);
        }
    }

    private int computeRelevanceForException(char[] cArr) {
        return ((this.assistNodeIsException || (this.assistNodeInJavadoc & 2) != 0) && (CharOperation.match(EXCEPTION_PATTERN, cArr, false) || CharOperation.match(ERROR_PATTERN, cArr, false))) ? 20 : 0;
    }

    private int computeRelevanceForInterestingProposal(Binding binding) {
        if (this.uninterestingBindings == null) {
            return 5;
        }
        for (int i10 = 0; i10 <= this.uninterestingBindingsPtr; i10++) {
            Binding binding2 = this.uninterestingBindings[i10];
            if (binding2 == binding) {
                return 0;
            }
            if ((this.uninterestingBindingsFilter & 2) != 0 && (binding instanceof TypeBinding) && (binding2 instanceof TypeBinding) && ((TypeBinding) binding).isCompatibleWith((TypeBinding) binding2)) {
                return 0;
            }
            if ((this.uninterestingBindingsFilter & 1) != 0 && (binding instanceof TypeBinding)) {
                Binding binding3 = this.uninterestingBindings[i10];
                if ((binding3 instanceof TypeBinding) && ((TypeBinding) binding3).isCompatibleWith((TypeBinding) binding)) {
                    return 0;
                }
            }
        }
        return 5;
    }

    private void setSourceAndTokenRange(int i10, int i11, boolean z10) {
        setSourceRange(i10, i11, z10);
        setTokenRange(i10, i11, z10);
    }

    private void setSourceRange(int i10, int i11, boolean z10) {
        this.startPosition = i10;
        if (z10) {
            int i12 = ((CompletionScanner) this.parser.scanner).endOfEmptyToken;
            this.endPosition = i12 > i11 ? i12 + 1 : i11 + 1;
        } else {
            this.endPosition = i11 + 1;
        }
    }

    private void setTokenRange(int i10, int i11, boolean z10) {
        this.tokenStart = i10;
        if (z10) {
            int i12 = ((CompletionScanner) this.parser.scanner).endOfEmptyToken;
            this.tokenEnd = i12 > i11 ? i12 + 1 : i11 + 1;
        } else {
            this.tokenEnd = i11 + 1;
        }
    }

    public int computeRelevanceForResolution() {
        return computeRelevanceForResolution(true);
    }

    public boolean isIgnored(int i10, boolean z10) {
        if (this.requestor.isIgnored(i10)) {
            return true;
        }
        return z10 && !this.requestor.isAllowingRequiredProposals(i10, 9);
    }

    private void findPackages(CompletionOnPackageReference completionOnPackageReference) {
        char[] concatWithAll = CharOperation.concatWithAll(completionOnPackageReference.tokens, '.');
        this.completionToken = concatWithAll;
        if (concatWithAll.length == 0) {
            return;
        }
        setSourceRange(completionOnPackageReference.sourceStart, completionOnPackageReference.sourceEnd);
        long[] jArr = completionOnPackageReference.sourcePositions;
        long j10 = jArr[jArr.length - 1];
        setTokenRange((int) (j10 >>> 32), (int) j10);
        try {
            this.nameEnvironment.findPackages(CharOperation.toLowerCase(this.completionToken), this, this.javaProject.getAllPackageFragmentRoots(), true);
        } catch (JavaModelException unused) {
        }
    }

    private boolean isForbidden(char[] cArr, char[] cArr2, char[][] cArr3) {
        char[] concatWith = CharOperation.concatWith(cArr3, cArr2, '.');
        for (int i10 = 0; i10 <= this.forbbidenBindingsPtr; i10++) {
            Binding binding = this.forbbidenBindings[i10];
            if (binding instanceof TypeBinding) {
                TypeBinding typeBinding = (TypeBinding) binding;
                if (CharOperation.equals(cArr, typeBinding.qualifiedPackageName()) && CharOperation.equals(concatWith, typeBinding.qualifiedSourceName())) {
                    return true;
                }
            }
        }
        return !isValidPackageName(cArr);
    }

    private boolean isIgnored(int i10, int i11) {
        return this.requestor.isIgnored(i10) || !this.requestor.isAllowingRequiredProposals(i10, i11);
    }

    public void printDebug(CompletionProposal completionProposal) {
        StringBuffer stringBuffer = new StringBuffer();
        printDebug(completionProposal, 0, stringBuffer);
        System.out.println(stringBuffer.toString());
    }

    private int computeRelevanceForExpectingType(TypeBinding typeBinding) {
        if (this.expectedTypes == null || typeBinding == null) {
            return 0;
        }
        if (typeBinding == TypeBinding.VOID && this.expectedTypesPtr >= 0) {
            return -5;
        }
        int i10 = 0;
        for (int i11 = 0; i11 <= this.expectedTypesPtr; i11++) {
            if ((this.expectedTypesFilter & 2) != 0 && typeBinding.isCompatibleWith(this.expectedTypes[i11])) {
                if (CharOperation.equals(this.expectedTypes[i11].qualifiedPackageName(), typeBinding.qualifiedPackageName()) && CharOperation.equals(this.expectedTypes[i11].qualifiedSourceName(), typeBinding.qualifiedSourceName())) {
                    return 30;
                }
                i10 = 20;
            }
            if ((this.expectedTypesFilter & 1) != 0 && this.expectedTypes[i11].isCompatibleWith(typeBinding)) {
                if (CharOperation.equals(this.expectedTypes[i11].qualifiedPackageName(), typeBinding.qualifiedPackageName()) && CharOperation.equals(this.expectedTypes[i11].qualifiedSourceName(), typeBinding.qualifiedSourceName())) {
                    return 30;
                }
                i10 = 20;
            }
            CompilationUnitScope compilationUnitScope = this.unitScope;
            if (compilationUnitScope != null && compilationUnitScope.isBoxingCompatibleWith(typeBinding, this.expectedTypes[i11])) {
                i10 = 20;
            }
        }
        return i10;
    }

    private void findMemberTypesFromMissingType(TypeReference typeReference, long j10, final Scope scope) {
        new MissingTypesGuesser(this).guess(typeReference, scope, new MissingTypesGuesser.GuessedTypeRequestor() {
            @Override
            public void accept(TypeBinding typeBinding, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z10) {
                if (typeBinding instanceof ReferenceBinding) {
                    CompletionEngine completionEngine = CompletionEngine.this;
                    Scope scope2 = scope;
                    completionEngine.findMemberTypes(completionEngine.completionToken, (ReferenceBinding) typeBinding, scope2, scope2.enclosingSourceType(), false, false, new ObjectVector(), bindingArr, iArr, iArr2, z10);
                }
            }
        });
    }

    private void findAnonymousType(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, Scope scope, InvocationSite invocationSite, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z10, boolean z11, boolean z12, int i10) {
        char[] cArr;
        char[] cArr2;
        if (referenceBinding.isInterface()) {
            char[] cArr3 = CharOperation.NO_CHAR;
            if (z11) {
                cArr = cArr3;
                cArr2 = null;
            } else {
                if (z12) {
                    cArr2 = CharOperation.concat(referenceBinding.qualifiedPackageName(), referenceBinding.qualifiedSourceName(), '.');
                } else {
                    cArr2 = referenceBinding.sourceName();
                }
                char[] cArr4 = this.source;
                if (cArr4 != null) {
                    int length = cArr4.length;
                    int i11 = this.endPosition;
                    if (length > i11 && cArr4[i11] == '(') {
                        cArr = cArr3;
                    }
                }
                cArr = new char[]{'(', ')'};
            }
            this.noProposal = false;
            if (!z11) {
                if (isIgnored(27, 9)) {
                    return;
                }
                char[] qualifiedPackageName = referenceBinding.isLocalType() ? null : referenceBinding.qualifiedPackageName();
                char[] qualifiedSourceName = referenceBinding.qualifiedSourceName();
                InternalCompletionProposal createProposal = createProposal(27, this.actualCompletionPosition);
                createProposal.setDeclarationSignature(Engine.getSignature(referenceBinding));
                createProposal.setDeclarationKey(referenceBinding.computeUniqueKey());
                char[][] cArr5 = CharOperation.NO_CHAR_CHAR;
                createProposal.setSignature(createMethodSignature(cArr5, cArr5, cArr3, cArr3));
                createProposal.setDeclarationPackageName(qualifiedPackageName);
                createProposal.setDeclarationTypeName(qualifiedSourceName);
                createProposal.setName(referenceBinding.sourceName());
                InternalCompletionProposal createProposal2 = createProposal(9, this.actualCompletionPosition);
                createProposal2.nameLookup = this.nameEnvironment.nameLookup;
                createProposal2.completionEngine = this;
                createProposal2.setDeclarationSignature(qualifiedPackageName);
                createProposal2.setSignature(getRequiredTypeSignature(referenceBinding));
                createProposal2.setPackageName(qualifiedPackageName);
                createProposal2.setTypeName(qualifiedSourceName);
                createProposal2.setCompletion(cArr2);
                createProposal2.setFlags(referenceBinding.modifiers);
                int i12 = this.startPosition;
                int i13 = this.offset;
                createProposal2.setReplaceRange(i12 - i13, this.endPosition - i13);
                int i14 = this.startPosition;
                int i15 = this.offset;
                createProposal2.setTokenRange(i14 - i15, this.endPosition - i15);
                createProposal2.setRelevance(i10);
                createProposal.setRequiredProposals(new CompletionProposal[]{createProposal2});
                createProposal.setCompletion(cArr);
                createProposal.setFlags(1);
                int i16 = this.endPosition;
                int i17 = this.offset;
                createProposal.setReplaceRange(i16 - i17, i16 - i17);
                int i18 = this.tokenStart;
                int i19 = this.offset;
                createProposal.setTokenRange(i18 - i19, this.tokenEnd - i19);
                createProposal.setRelevance(i10);
                this.requestor.accept(createProposal);
                if (DEBUG) {
                    printDebug(createProposal);
                    return;
                }
                return;
            }
            if (isIgnored(1, bindingArr != null)) {
                return;
            }
            InternalCompletionProposal createProposal3 = createProposal(1, this.actualCompletionPosition);
            createProposal3.setDeclarationSignature(Engine.getSignature(referenceBinding));
            createProposal3.setDeclarationKey(referenceBinding.computeUniqueKey());
            char[][] cArr6 = CharOperation.NO_CHAR_CHAR;
            createProposal3.setSignature(createMethodSignature(cArr6, cArr6, cArr3, cArr3));
            createProposal3.setDeclarationPackageName(referenceBinding.qualifiedPackageName());
            createProposal3.setDeclarationTypeName(referenceBinding.qualifiedSourceName());
            if (bindingArr != null) {
                CompletionProposal[] completionProposalArr = new CompletionProposal[bindingArr.length];
                for (int i20 = 0; i20 < bindingArr.length; i20++) {
                    completionProposalArr[i20] = createRequiredTypeProposal(bindingArr[i20], iArr[i20], iArr2[i20], i10);
                }
                createProposal3.setRequiredProposals(completionProposalArr);
            }
            createProposal3.setCompletion(cArr);
            createProposal3.setFlags(1);
            int i21 = this.endPosition;
            int i22 = this.offset;
            createProposal3.setReplaceRange(i21 - i22, i21 - i22);
            int i23 = this.tokenEnd;
            int i24 = this.offset;
            createProposal3.setTokenRange(i23 - i24, i23 - i24);
            createProposal3.setRelevance(i10);
            this.requestor.accept(createProposal3);
            if (DEBUG) {
                printDebug(createProposal3);
                return;
            }
            return;
        }
        findConstructors(referenceBinding, typeBindingArr, scope, invocationSite, true, bindingArr, iArr, iArr2, z10, z11, z12, i10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:236:0x0360, code lost:
    
        if (r9[r12] == '(') goto L153;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findConstructors(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, Scope scope, InvocationSite invocationSite, boolean z10, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z11, boolean z12, boolean z13, int i10) {
        MethodBinding[] availableMethods;
        MethodBinding[] methodBindingArr;
        int i11;
        int i12;
        TypeBinding[] typeBindingArr2;
        int length;
        char[] sourceName;
        char c10;
        boolean z14;
        ASTNode aSTNode;
        char[] cArr;
        boolean z15;
        char[] cArr2;
        char[] qualifiedPackageName;
        char[] sourceName2;
        char[] cArr3;
        char c11;
        Scope scope2 = scope;
        if ((referenceBinding instanceof ParameterizedTypeBinding) && (invocationSite instanceof CompletionOnQualifiedAllocationExpression)) {
            if ((((CompletionOnQualifiedAllocationExpression) invocationSite).bits & 524288) != 0) {
                ReferenceBinding genericType = ((ParameterizedTypeBinding) referenceBinding).genericType();
                availableMethods = genericType != null ? genericType.methods() : null;
            } else {
                availableMethods = referenceBinding.availableMethods();
            }
        } else {
            availableMethods = referenceBinding.availableMethods();
        }
        if (availableMethods == null) {
            return;
        }
        int length2 = typeBindingArr == null ? 0 : typeBindingArr.length;
        int length3 = availableMethods.length;
        while (true) {
            int i13 = length3 - 1;
            if (i13 < 0) {
                return;
            }
            MethodBinding methodBinding = availableMethods[i13];
            if (!methodBinding.isConstructor() || methodBinding.isSynthetic() || ((this.options.checkDeprecation && methodBinding.isViewedAsDeprecated() && !scope2.isDefinedInSameUnit(methodBinding.declaringClass)) || (!(!this.options.checkVisibility || methodBinding.canBeSeenBy(invocationSite, scope2) || (z10 && methodBinding.isProtected())) || length2 > (length = (typeBindingArr2 = methodBinding.parameters).length)))) {
                methodBindingArr = availableMethods;
                i11 = length2;
            } else {
                int i14 = length2;
                while (true) {
                    i14--;
                    if (i14 < 0) {
                        char[][] cArr4 = new char[length];
                        char[][] cArr5 = new char[length];
                        int i15 = 0;
                        while (i15 < length) {
                            TypeBinding typeBinding = typeBindingArr2[i15];
                            cArr4[i15] = typeBinding.qualifiedPackageName();
                            cArr5[i15] = typeBinding.qualifiedSourceName();
                            i15++;
                            scope2 = scope;
                        }
                        char[][] findMethodParameterNames = findMethodParameterNames(methodBinding, cArr5);
                        char[] cArr6 = CharOperation.NO_CHAR;
                        if (z10) {
                            if (z12) {
                                methodBindingArr = availableMethods;
                                i11 = length2;
                                z15 = false;
                                cArr2 = null;
                            } else {
                                if (z13) {
                                    methodBindingArr = availableMethods;
                                    i11 = length2;
                                    sourceName2 = CharOperation.concat(referenceBinding.qualifiedPackageName(), referenceBinding.qualifiedSourceName(), '.');
                                } else {
                                    methodBindingArr = availableMethods;
                                    i11 = length2;
                                    sourceName2 = referenceBinding.sourceName();
                                }
                                char[] cArr7 = this.source;
                                if (cArr7 != null) {
                                    int length4 = cArr7.length;
                                    cArr3 = sourceName2;
                                    int i16 = this.endPosition;
                                    if (length4 > i16) {
                                        char c12 = cArr7[i16];
                                        c11 = '(';
                                        if (c12 == '(') {
                                            cArr2 = cArr3;
                                            z15 = false;
                                        }
                                        z15 = false;
                                        cArr6 = new char[]{c11, ')'};
                                        cArr2 = cArr3;
                                    }
                                } else {
                                    cArr3 = sourceName2;
                                }
                                c11 = '(';
                                z15 = false;
                                cArr6 = new char[]{c11, ')'};
                                cArr2 = cArr3;
                            }
                            this.noProposal = z15;
                            if (!z12) {
                                if (!isIgnored(27, 9)) {
                                    if (referenceBinding.isLocalType()) {
                                        i12 = i13;
                                        qualifiedPackageName = null;
                                    } else {
                                        qualifiedPackageName = referenceBinding.qualifiedPackageName();
                                        i12 = i13;
                                    }
                                    char[] qualifiedSourceName = referenceBinding.qualifiedSourceName();
                                    InternalCompletionProposal createProposal = createProposal(27, this.actualCompletionPosition);
                                    createProposal.setBinding(methodBinding);
                                    createProposal.setDeclarationSignature(Engine.getSignature(referenceBinding));
                                    createProposal.setDeclarationKey(referenceBinding.computeUniqueKey());
                                    createProposal.setSignature(Engine.getSignature(methodBinding));
                                    MethodBinding original = methodBinding.original();
                                    if (original != methodBinding) {
                                        createProposal.setOriginalSignature(Engine.getSignature(original));
                                    }
                                    createProposal.setKey(methodBinding.computeUniqueKey());
                                    createProposal.setDeclarationPackageName(qualifiedPackageName);
                                    createProposal.setDeclarationTypeName(qualifiedSourceName);
                                    createProposal.setParameterPackageNames(cArr4);
                                    createProposal.setParameterTypeNames(cArr5);
                                    createProposal.setName(referenceBinding.sourceName());
                                    InternalCompletionProposal createProposal2 = createProposal(9, this.actualCompletionPosition);
                                    createProposal2.nameLookup = this.nameEnvironment.nameLookup;
                                    createProposal2.completionEngine = this;
                                    createProposal2.setDeclarationSignature(qualifiedPackageName);
                                    createProposal2.setSignature(getRequiredTypeSignature(referenceBinding));
                                    createProposal2.setPackageName(qualifiedPackageName);
                                    createProposal2.setTypeName(qualifiedSourceName);
                                    createProposal2.setCompletion(cArr2);
                                    createProposal2.setFlags(referenceBinding.modifiers);
                                    int i17 = this.startPosition;
                                    int i18 = this.offset;
                                    createProposal2.setReplaceRange(i17 - i18, this.endPosition - i18);
                                    int i19 = this.startPosition;
                                    int i20 = this.offset;
                                    createProposal2.setTokenRange(i19 - i20, this.endPosition - i20);
                                    createProposal2.setRelevance(i10);
                                    createProposal.setRequiredProposals(new CompletionProposal[]{createProposal2});
                                    createProposal.setCompletion(cArr6);
                                    createProposal.setFlags(methodBinding.modifiers);
                                    int i21 = this.endPosition;
                                    int i22 = this.offset;
                                    createProposal.setReplaceRange(i21 - i22, i21 - i22);
                                    int i23 = this.tokenStart;
                                    int i24 = this.offset;
                                    createProposal.setTokenRange(i23 - i24, this.tokenEnd - i24);
                                    createProposal.setRelevance(i10);
                                    if (findMethodParameterNames != null) {
                                        createProposal.setParameterNames(findMethodParameterNames);
                                    }
                                    this.requestor.accept(createProposal);
                                    if (DEBUG) {
                                        printDebug(createProposal);
                                    }
                                }
                            } else {
                                i12 = i13;
                                if (!isIgnored(1, bindingArr != null)) {
                                    InternalCompletionProposal createProposal3 = createProposal(1, this.actualCompletionPosition);
                                    createProposal3.setDeclarationSignature(Engine.getSignature(referenceBinding));
                                    createProposal3.setDeclarationKey(referenceBinding.computeUniqueKey());
                                    createProposal3.setSignature(Engine.getSignature(methodBinding));
                                    MethodBinding original2 = methodBinding.original();
                                    if (original2 != methodBinding) {
                                        createProposal3.setOriginalSignature(Engine.getSignature(original2));
                                    }
                                    createProposal3.setKey(methodBinding.computeUniqueKey());
                                    createProposal3.setDeclarationPackageName(referenceBinding.qualifiedPackageName());
                                    createProposal3.setDeclarationTypeName(referenceBinding.qualifiedSourceName());
                                    createProposal3.setParameterPackageNames(cArr4);
                                    createProposal3.setParameterTypeNames(cArr5);
                                    if (bindingArr != null) {
                                        CompletionProposal[] completionProposalArr = new CompletionProposal[bindingArr.length];
                                        for (int i25 = 0; i25 < bindingArr.length; i25++) {
                                            completionProposalArr[i25] = createRequiredTypeProposal(bindingArr[i25], iArr[i25], iArr2[i25], i10);
                                        }
                                        createProposal3.setRequiredProposals(completionProposalArr);
                                    }
                                    createProposal3.setCompletion(cArr6);
                                    createProposal3.setFlags(methodBinding.modifiers);
                                    int i26 = this.endPosition;
                                    int i27 = this.offset;
                                    createProposal3.setReplaceRange(i26 - i27, i26 - i27);
                                    int i28 = this.tokenEnd;
                                    int i29 = this.offset;
                                    createProposal3.setTokenRange(i28 - i29, i28 - i29);
                                    createProposal3.setRelevance(i10);
                                    if (findMethodParameterNames != null) {
                                        createProposal3.setParameterNames(findMethodParameterNames);
                                    }
                                    this.requestor.accept(createProposal3);
                                    if (DEBUG) {
                                        printDebug(createProposal3);
                                    }
                                }
                            }
                        } else {
                            methodBindingArr = availableMethods;
                            i11 = length2;
                            i12 = i13;
                            if (this.assistNodeInJavadoc > 0) {
                                if (invocationSite instanceof CompletionOnJavadocAllocationExpression) {
                                    aSTNode = ((CompletionOnJavadocAllocationExpression) invocationSite).type;
                                } else {
                                    aSTNode = invocationSite instanceof CompletionOnJavadocFieldReference ? ((CompletionOnJavadocFieldReference) invocationSite).receiver : null;
                                }
                                if (aSTNode != null) {
                                    StringBuffer stringBuffer = new StringBuffer();
                                    if (aSTNode.isThis()) {
                                        cArr = ((JavadocImplicitTypeReference) aSTNode).token;
                                        if ((this.assistNodeInJavadoc & 4) != 0) {
                                            stringBuffer.append(JavaElement.JEM_IMPORTDECLARATION);
                                        }
                                    } else if (aSTNode instanceof JavadocSingleTypeReference) {
                                        cArr = ((JavadocSingleTypeReference) aSTNode).token;
                                        if ((this.assistNodeInJavadoc & 4) != 0) {
                                            stringBuffer.append(cArr);
                                            stringBuffer.append(JavaElement.JEM_IMPORTDECLARATION);
                                        }
                                    } else if (aSTNode instanceof JavadocQualifiedTypeReference) {
                                        char[][] cArr8 = ((JavadocQualifiedTypeReference) aSTNode).tokens;
                                        char[] cArr9 = cArr8[cArr8.length - 1];
                                        if ((this.assistNodeInJavadoc & 4) != 0) {
                                            stringBuffer.append(CharOperation.concatWith(cArr8, '.'));
                                            stringBuffer.append(JavaElement.JEM_IMPORTDECLARATION);
                                        }
                                        cArr = cArr9;
                                    } else {
                                        cArr = null;
                                    }
                                    stringBuffer.append(cArr);
                                    stringBuffer.append('(');
                                    if (methodBinding.parameters != null) {
                                        boolean isVarargs = methodBinding.isVarargs();
                                        int length5 = methodBinding.parameters.length;
                                        int i30 = 0;
                                        while (i30 < length5) {
                                            if (i30 > 0) {
                                                stringBuffer.append(", ");
                                            }
                                            TypeBinding typeBinding2 = methodBinding.parameters[i30];
                                            boolean z16 = isVarargs;
                                            if (isVarargs && i30 == length5 - 1) {
                                                createVargsType(typeBinding2.erasure(), scope2, stringBuffer);
                                            } else {
                                                createType(typeBinding2.erasure(), scope2, stringBuffer);
                                            }
                                            i30++;
                                            isVarargs = z16;
                                        }
                                    }
                                    stringBuffer.append(')');
                                    cArr6 = stringBuffer.toString().toCharArray();
                                    sourceName = null;
                                    z14 = false;
                                }
                                z14 = false;
                                sourceName = null;
                            } else {
                                if (!z12) {
                                    if (z13) {
                                        sourceName = CharOperation.concat(referenceBinding.qualifiedPackageName(), referenceBinding.qualifiedSourceName(), '.');
                                    } else {
                                        sourceName = referenceBinding.sourceName();
                                    }
                                    char[] cArr10 = this.source;
                                    if (cArr10 != null) {
                                        int length6 = cArr10.length;
                                        int i31 = this.endPosition;
                                        c10 = length6 > i31 ? '(' : '(';
                                    }
                                    z14 = false;
                                    cArr6 = new char[]{c10, ')'};
                                }
                                z14 = false;
                                sourceName = null;
                            }
                            this.noProposal = z14;
                            if (!z12) {
                                if (!isIgnored(26, 9)) {
                                    char[] qualifiedPackageName2 = referenceBinding.isLocalType() ? null : referenceBinding.qualifiedPackageName();
                                    char[] qualifiedSourceName2 = referenceBinding.qualifiedSourceName();
                                    int computeRelevanceForConstructor = computeRelevanceForConstructor() + i10;
                                    InternalCompletionProposal createProposal4 = createProposal(26, this.actualCompletionPosition);
                                    createProposal4.setBinding(methodBinding);
                                    createProposal4.setDeclarationSignature(Engine.getSignature(referenceBinding));
                                    createProposal4.setSignature(Engine.getSignature(methodBinding));
                                    MethodBinding original3 = methodBinding.original();
                                    if (original3 != methodBinding) {
                                        createProposal4.setOriginalSignature(Engine.getSignature(original3));
                                    }
                                    createProposal4.setDeclarationPackageName(qualifiedPackageName2);
                                    createProposal4.setDeclarationTypeName(qualifiedSourceName2);
                                    createProposal4.setParameterPackageNames(cArr4);
                                    createProposal4.setParameterTypeNames(cArr5);
                                    createProposal4.setName(referenceBinding.sourceName());
                                    InternalCompletionProposal createProposal5 = createProposal(9, this.actualCompletionPosition);
                                    createProposal5.nameLookup = this.nameEnvironment.nameLookup;
                                    createProposal5.completionEngine = this;
                                    createProposal5.setDeclarationSignature(qualifiedPackageName2);
                                    createProposal5.setSignature(getRequiredTypeSignature(referenceBinding));
                                    createProposal5.setPackageName(qualifiedPackageName2);
                                    createProposal5.setTypeName(qualifiedSourceName2);
                                    createProposal5.setCompletion(sourceName);
                                    createProposal5.setFlags(referenceBinding.modifiers);
                                    int i32 = this.startPosition;
                                    int i33 = this.offset;
                                    createProposal5.setReplaceRange(i32 - i33, this.endPosition - i33);
                                    int i34 = this.startPosition;
                                    int i35 = this.offset;
                                    createProposal5.setTokenRange(i34 - i35, this.endPosition - i35);
                                    createProposal5.setRelevance(computeRelevanceForConstructor);
                                    createProposal4.setRequiredProposals(new CompletionProposal[]{createProposal5});
                                    createProposal4.setIsContructor(true);
                                    createProposal4.setCompletion(cArr6);
                                    createProposal4.setFlags(methodBinding.modifiers);
                                    int i36 = this.endPosition;
                                    int i37 = this.offset;
                                    createProposal4.setReplaceRange(i36 - i37, i36 - i37);
                                    int i38 = this.tokenStart;
                                    int i39 = this.offset;
                                    createProposal4.setTokenRange(i38 - i39, this.tokenEnd - i39);
                                    createProposal4.setRelevance(computeRelevanceForConstructor);
                                    if (findMethodParameterNames != null) {
                                        createProposal4.setParameterNames(findMethodParameterNames);
                                    }
                                    this.requestor.accept(createProposal4);
                                    if (DEBUG) {
                                        printDebug(createProposal4);
                                    }
                                }
                            } else {
                                if (!isIgnored(6, bindingArr != null) && (this.assistNodeInJavadoc & 16) == 0) {
                                    InternalCompletionProposal createProposal6 = createProposal(6, this.actualCompletionPosition);
                                    createProposal6.setBinding(methodBinding);
                                    createProposal6.setDeclarationSignature(Engine.getSignature(referenceBinding));
                                    createProposal6.setSignature(Engine.getSignature(methodBinding));
                                    MethodBinding original4 = methodBinding.original();
                                    if (original4 != methodBinding) {
                                        createProposal6.setOriginalSignature(Engine.getSignature(original4));
                                    }
                                    createProposal6.setDeclarationPackageName(referenceBinding.qualifiedPackageName());
                                    createProposal6.setDeclarationTypeName(referenceBinding.qualifiedSourceName());
                                    createProposal6.setParameterPackageNames(cArr4);
                                    createProposal6.setParameterTypeNames(cArr5);
                                    createProposal6.setName(referenceBinding.sourceName());
                                    if (bindingArr != null) {
                                        CompletionProposal[] completionProposalArr2 = new CompletionProposal[bindingArr.length];
                                        for (int i40 = 0; i40 < bindingArr.length; i40++) {
                                            completionProposalArr2[i40] = createRequiredTypeProposal(bindingArr[i40], iArr[i40], iArr2[i40], i10);
                                        }
                                        createProposal6.setRequiredProposals(completionProposalArr2);
                                    }
                                    createProposal6.setIsContructor(true);
                                    createProposal6.setCompletion(cArr6);
                                    createProposal6.setFlags(methodBinding.modifiers);
                                    int i41 = this.assistNodeInJavadoc > 0 ? this.startPosition : this.endPosition;
                                    int i42 = this.offset;
                                    createProposal6.setReplaceRange(i41 - i42, this.endPosition - i42);
                                    int i43 = this.tokenStart;
                                    int i44 = this.offset;
                                    createProposal6.setTokenRange(i43 - i44, this.tokenEnd - i44);
                                    createProposal6.setRelevance(i10);
                                    if (findMethodParameterNames != null) {
                                        createProposal6.setParameterNames(findMethodParameterNames);
                                    }
                                    this.requestor.accept(createProposal6);
                                    if (DEBUG) {
                                        printDebug(createProposal6);
                                    }
                                }
                                if ((this.assistNodeInJavadoc & 4) != 0 && !this.requestor.isIgnored(15)) {
                                    char[] inlineTagCompletion = inlineTagCompletion(cArr6, JavadocTagConstants.TAG_LINK);
                                    InternalCompletionProposal createProposal7 = createProposal(15, this.actualCompletionPosition);
                                    createProposal7.setBinding(methodBinding);
                                    createProposal7.setDeclarationSignature(Engine.getSignature(referenceBinding));
                                    createProposal7.setSignature(Engine.getSignature(methodBinding));
                                    MethodBinding original5 = methodBinding.original();
                                    if (original5 != methodBinding) {
                                        createProposal7.setOriginalSignature(Engine.getSignature(original5));
                                    }
                                    createProposal7.setDeclarationPackageName(referenceBinding.qualifiedPackageName());
                                    createProposal7.setDeclarationTypeName(referenceBinding.qualifiedSourceName());
                                    createProposal7.setParameterPackageNames(cArr4);
                                    createProposal7.setParameterTypeNames(cArr5);
                                    createProposal7.setName(referenceBinding.sourceName());
                                    createProposal7.setIsContructor(true);
                                    createProposal7.setCompletion(inlineTagCompletion);
                                    createProposal7.setFlags(methodBinding.modifiers);
                                    int i45 = (this.assistNodeInJavadoc & 32) != 0 ? this.javadocTagPosition : this.startPosition;
                                    int i46 = this.offset;
                                    createProposal7.setReplaceRange(i45 - i46, this.endPosition - i46);
                                    int i47 = this.tokenStart;
                                    int i48 = this.offset;
                                    createProposal7.setTokenRange(i47 - i48, this.tokenEnd - i48);
                                    createProposal7.setRelevance(i10 + 31);
                                    if (findMethodParameterNames != null) {
                                        createProposal7.setParameterNames(findMethodParameterNames);
                                    }
                                    this.requestor.accept(createProposal7);
                                    if (DEBUG) {
                                        printDebug(createProposal7);
                                    }
                                }
                            }
                        }
                    } else {
                        methodBindingArr = availableMethods;
                        i11 = length2;
                        i12 = i13;
                        TypeBinding typeBinding3 = typeBindingArr[i14];
                        if (typeBinding3 == null || typeBinding3.isCompatibleWith(methodBinding.parameters[i14])) {
                            scope2 = scope;
                            availableMethods = methodBindingArr;
                            length2 = i11;
                            i13 = i12;
                        }
                    }
                }
                scope2 = scope;
                availableMethods = methodBindingArr;
                length2 = i11;
                length3 = i12;
            }
            i12 = i13;
            scope2 = scope;
            availableMethods = methodBindingArr;
            length2 = i11;
            length3 = i12;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0009, code lost:
    
        if (r9[r9.length - 1].length > 0) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void setCompletionToken(char[][] cArr, int i10, int i11, long[] jArr) {
        boolean z10 = cArr.length > 0;
        setCompletionToken(cArr, i10, i11, jArr, z10);
    }

    public static char[] createMethodSignature(char[][] cArr, char[][] cArr2, char[] cArr3, char[] cArr4) {
        char[] createCharArrayTypeSignature;
        if (cArr4 != null && cArr4.length != 0) {
            createCharArrayTypeSignature = Signature.createCharArrayTypeSignature(CharOperation.concat(cArr3, CharOperation.replaceOnCopy(cArr4, '.', '$'), '.'), true);
        } else {
            createCharArrayTypeSignature = Signature.createCharArrayTypeSignature(VOID, true);
        }
        return createMethodSignature(cArr, cArr2, createCharArrayTypeSignature);
    }

    private void printDebug(CompletionProposal completionProposal, int i10, StringBuffer stringBuffer) {
        printDebugTab(i10, stringBuffer);
        stringBuffer.append("COMPLETION - ");
        int kind = completionProposal.getKind();
        switch (kind) {
            case 1:
                stringBuffer.append("ANONYMOUS_CLASS_DECLARATION");
                break;
            case 2:
                stringBuffer.append("FIELD_REF");
                break;
            case 3:
                stringBuffer.append("KEYWORD");
                break;
            case 4:
                stringBuffer.append("LABEL_REF");
                break;
            case 5:
                stringBuffer.append("LOCAL_VARIABLE_REF");
                break;
            case 6:
                stringBuffer.append("METHOD_REF");
                break;
            case 7:
                stringBuffer.append("METHOD_DECLARATION");
                break;
            case 8:
                stringBuffer.append("PACKAGE_REF");
                break;
            case 9:
                stringBuffer.append("TYPE_REF");
                break;
            case 10:
                stringBuffer.append("VARIABLE_DECLARATION");
                break;
            case 11:
                stringBuffer.append("POTENTIAL_METHOD_DECLARATION");
                break;
            case 12:
                stringBuffer.append("METHOD_NAME_REFERENCE");
                break;
            case 13:
                stringBuffer.append("ANNOTATION_ATTRIBUT_REF");
                break;
            default:
                switch (kind) {
                    case 21:
                        stringBuffer.append("FIELD_IMPORT");
                        break;
                    case 22:
                        stringBuffer.append("METHOD_IMPORT");
                        break;
                    case 23:
                        stringBuffer.append("TYPE_IMPORT");
                        break;
                    case 24:
                        stringBuffer.append("METHOD_REF_WITH_CASTED_RECEIVER");
                        break;
                    case 25:
                        stringBuffer.append("FIELD_REF_WITH_CASTED_RECEIVER");
                        break;
                    case 26:
                        stringBuffer.append("CONSTRUCTOR_INVOCATION");
                        break;
                    case 27:
                        stringBuffer.append("ANONYMOUS_CLASS_CONSTRUCTOR_INVOCATION");
                        break;
                    case 28:
                        stringBuffer.append("MODULE_DECLARATION");
                        break;
                    case 29:
                        stringBuffer.append("MODULE_REF");
                        break;
                    default:
                        stringBuffer.append("PROPOSAL");
                        break;
                }
        }
        stringBuffer.append("{\n");
        printDebugTab(i10, stringBuffer);
        stringBuffer.append("\tCompletion[");
        stringBuffer.append(completionProposal.getCompletion() == null ? "null".toCharArray() : completionProposal.getCompletion());
        stringBuffer.append("]\n");
        printDebugTab(i10, stringBuffer);
        stringBuffer.append("\tDeclarationSignature[");
        stringBuffer.append(completionProposal.getDeclarationSignature() == null ? "null".toCharArray() : completionProposal.getDeclarationSignature());
        stringBuffer.append("]\n");
        printDebugTab(i10, stringBuffer);
        stringBuffer.append("\tDeclarationKey[");
        stringBuffer.append(completionProposal.getDeclarationKey() == null ? "null".toCharArray() : completionProposal.getDeclarationKey());
        stringBuffer.append("]\n");
        printDebugTab(i10, stringBuffer);
        stringBuffer.append("\tSignature[");
        stringBuffer.append(completionProposal.getSignature() == null ? "null".toCharArray() : completionProposal.getSignature());
        stringBuffer.append("]\n");
        printDebugTab(i10, stringBuffer);
        stringBuffer.append("\tKey[");
        stringBuffer.append(completionProposal.getKey() == null ? "null".toCharArray() : completionProposal.getKey());
        stringBuffer.append("]\n");
        printDebugTab(i10, stringBuffer);
        stringBuffer.append("\tName[");
        stringBuffer.append(completionProposal.getName() == null ? "null".toCharArray() : completionProposal.getName());
        stringBuffer.append("]\n");
        printDebugTab(i10, stringBuffer);
        stringBuffer.append("\tFlags[");
        int flags = completionProposal.getFlags();
        stringBuffer.append(Flags.toString(flags));
        if ((flags & 512) != 0) {
            stringBuffer.append("interface ");
        }
        if ((flags & 16384) != 0) {
            stringBuffer.append("enum ");
        }
        stringBuffer.append("]\n");
        CompletionProposal[] requiredProposals = completionProposal.getRequiredProposals();
        if (requiredProposals != null) {
            printDebugTab(i10, stringBuffer);
            stringBuffer.append("\tRequiredProposals[");
            for (CompletionProposal completionProposal2 : requiredProposals) {
                stringBuffer.append("\n");
                printDebug(completionProposal2, i10 + 2, stringBuffer);
            }
            printDebugTab(i10, stringBuffer);
            stringBuffer.append("\n\t]\n");
        }
        printDebugTab(i10, stringBuffer);
        stringBuffer.append("\tCompletionLocation[");
        stringBuffer.append(completionProposal.getCompletionLocation());
        stringBuffer.append("]\n");
        int replaceStart = completionProposal.getReplaceStart();
        int replaceEnd = completionProposal.getReplaceEnd();
        printDebugTab(i10, stringBuffer);
        stringBuffer.append("\tReplaceStart[");
        stringBuffer.append(replaceStart);
        stringBuffer.append("]");
        stringBuffer.append("-ReplaceEnd[");
        stringBuffer.append(replaceEnd);
        stringBuffer.append("]\n");
        int tokenStart = completionProposal.getTokenStart();
        int tokenEnd = completionProposal.getTokenEnd();
        printDebugTab(i10, stringBuffer);
        stringBuffer.append("\tTokenStart[");
        stringBuffer.append(tokenStart);
        stringBuffer.append("]");
        stringBuffer.append("-TokenEnd[");
        stringBuffer.append(tokenEnd);
        stringBuffer.append("]\n");
        if (this.source != null) {
            printDebugTab(i10, stringBuffer);
            stringBuffer.append("\tReplacedText[");
            stringBuffer.append(this.source, tokenStart, tokenEnd - tokenStart);
            stringBuffer.append("]\n");
        }
        printDebugTab(i10, stringBuffer);
        stringBuffer.append("\tTokenStart[");
        stringBuffer.append(completionProposal.getTokenStart());
        stringBuffer.append("]");
        stringBuffer.append("-TokenEnd[");
        stringBuffer.append(completionProposal.getTokenEnd());
        stringBuffer.append("]\n");
        printDebugTab(i10, stringBuffer);
        stringBuffer.append("\tRelevance[");
        stringBuffer.append(completionProposal.getRelevance());
        stringBuffer.append("]\n");
        printDebugTab(i10, stringBuffer);
        stringBuffer.append("}\n");
    }

    private char[] substituteMethodTypeParameterName(char[] cArr, char[][] cArr2, char[][] cArr3) {
        int i10;
        char[] concat;
        int i11 = 2;
        char[] cArr4 = cArr;
        while (true) {
            int i12 = 0;
            while (true) {
                if (i12 >= cArr2.length) {
                    for (char[] cArr5 : cArr3) {
                        if (CharOperation.equals(cArr4, cArr5, false)) {
                            i10 = i11 + 1;
                            concat = CharOperation.concat(cArr, String.valueOf(i11).toCharArray());
                        }
                    }
                    return cArr4;
                }
                if (CharOperation.equals(cArr4, cArr2[i12], false)) {
                    i10 = i11 + 1;
                    concat = CharOperation.concat(cArr, String.valueOf(i11).toCharArray());
                    break;
                }
                i12++;
            }
            int i13 = i10;
            cArr4 = concat;
            i11 = i13;
        }
    }

    private void findVariableName(char[] cArr, char[] cArr2, char[] cArr3, char[] cArr4, TypeBinding typeBinding, char[][] cArr5, char[][] cArr6, int i10, int i11) {
        findVariableName(cArr, cArr2, cArr3, cArr4, typeBinding, cArr5, cArr6, false, i10, i11);
    }

    private int computeRelevanceForInterestingProposal(char[] cArr, char[] cArr2) {
        for (int i10 = 0; i10 <= this.uninterestingBindingsPtr; i10++) {
            Binding binding = this.uninterestingBindings[i10];
            if (binding instanceof TypeBinding) {
                TypeBinding typeBinding = (TypeBinding) binding;
                if (CharOperation.equals(cArr, typeBinding.qualifiedPackageName()) && CharOperation.equals(cArr2, typeBinding.qualifiedSourceName())) {
                    return 0;
                }
            }
        }
        return 5;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00ef A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findImplementations(char[] cArr, Scope scope, ProvidesStatement providesStatement, int i10) {
        SearchPattern searchPattern;
        char[] readableName;
        int i11 = 0;
        TypeReference typeReference = providesStatement.serviceInterface;
        if (cArr == null) {
            return;
        }
        TypeBinding typeBinding = typeReference.resolvedType;
        org.eclipse.jdt.core.ICompilationUnit[] iCompilationUnitArr = null;
        char[][] splitOn = (typeBinding == null || !typeBinding.isValidBinding() || (readableName = typeReference.resolvedType.readableName()) == null) ? null : CharOperation.splitOn('.', readableName);
        if (splitOn == null) {
            splitOn = typeReference.getTypeName();
        }
        if (splitOn == null) {
            return;
        }
        NameEnvironmentAnswer findTypeInModules = this.nameEnvironment.findTypeInModules(splitOn, scope.module());
        if (findTypeInModules != null) {
            if (findTypeInModules.isSourceType()) {
                IType handle = ((SourceTypeElementInfo) findTypeInModules.getSourceTypes()[0]).getHandle();
                try {
                    ArrayList<IType> arrayList = new ArrayList<>();
                    ITypeHierarchy newTypeHierarchy = handle.newTypeHierarchy(this.javaProject, (IProgressMonitor) null);
                    for (IType iType : newTypeHierarchy.getImplementingClasses(handle)) {
                        getAllTypesInHierarchy(newTypeHierarchy, iType, arrayList);
                    }
                    Iterator<IType> it = arrayList.iterator();
                    while (it.hasNext()) {
                        IType next = it.next();
                        String elementName = next.getPackageFragment().getElementName();
                        String elementName2 = next.getElementName();
                        char[] cArr2 = CharOperation.ALL_PREFIX;
                        char[] cArr3 = this.completionToken;
                        if (cArr2 == cArr3 || CharOperation.prefixEquals(cArr3, elementName2.toCharArray(), false) || CharOperation.prefixEquals(this.completionToken, elementName.toCharArray(), false)) {
                            acceptType(elementName.toCharArray(), elementName2.toCharArray(), CharOperation.NO_CHAR_CHAR, next.getFlags(), null);
                            acceptTypes(scope);
                        }
                    }
                    if (this.requestor.isIgnored(8)) {
                        return;
                    }
                    checkCancel();
                    findPackagesInCurrentModule();
                    return;
                } catch (JavaModelException unused) {
                }
            } else if (findTypeInModules.isBinaryType()) {
                searchPattern = SearchPattern.createPattern(new String(CharOperation.replaceOnCopy(findTypeInModules.getBinaryType().getName(), '/', '.')), 10, 1, 8);
                if (searchPattern != null) {
                    return;
                }
                IJavaSearchScope createJavaSearchScope = BasicSearchEngine.createJavaSearchScope(new IJavaElement[]{this.javaProject});
                try {
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    char[][] typeName = typeReference.getTypeName();
                    int i12 = this.moduleDeclaration.servicesCount;
                    for (int i13 = 0; i13 < i12; i13++) {
                        if (i13 != i10) {
                            ProvidesStatement providesStatement2 = this.moduleDeclaration.services[i13];
                            if (CharOperation.equals(typeName, providesStatement2.serviceInterface.getTypeName())) {
                                TypeReference[] typeReferenceArr = providesStatement2.implementations;
                                int length = typeReferenceArr.length;
                                int i14 = i11;
                                while (i14 < length) {
                                    char[][] typeName2 = typeReferenceArr[i14].getTypeName();
                                    if (typeName2 != CharOperation.NO_CHAR_CHAR) {
                                        linkedHashSet.add(CharOperation.toString(typeName2));
                                    }
                                    i14++;
                                    i11 = 0;
                                }
                            }
                        }
                    }
                    C1ImplSearchRequestor c1ImplSearchRequestor = new C1ImplSearchRequestor(this.completionToken, linkedHashSet);
                    if (this.owner != null) {
                        iCompilationUnitArr = JavaModelManager.getJavaModelManager().getWorkingCopies(this.owner, true);
                    }
                    new SearchEngine(iCompilationUnitArr).search(searchPattern, new SearchParticipant[]{SearchEngine.getDefaultSearchParticipant()}, createJavaSearchScope, c1ImplSearchRequestor, (IProgressMonitor) null);
                    for (IType iType2 : c1ImplSearchRequestor.types) {
                        acceptType(iType2.getPackageFragment().getElementName().toCharArray(), iType2.getElementName().toCharArray(), CharOperation.NO_CHAR_CHAR, iType2.getFlags(), null);
                        acceptTypes(scope);
                    }
                } catch (CoreException e10) {
                    e10.printStackTrace();
                }
                if (this.requestor.isIgnored(8)) {
                    return;
                }
                checkCancel();
                findPackagesInCurrentModule();
                return;
            }
        }
        searchPattern = null;
        if (searchPattern != null) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02d7  */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void proposeConstructor(char[] cArr, int i10, char[] cArr2, char[][] cArr3, char[][] cArr4, int i11, char[] cArr5, int i12, int i13, char[] cArr6, char[] cArr7, boolean z10, Scope scope, int i14) {
        char[] cArr8;
        int computeRelevanceForInterface;
        int i15;
        boolean z11;
        char[] cArr9;
        char[] cArr10;
        char[] replaceOnCopy;
        int i16;
        int i17;
        int computeRelevanceForEnum;
        CompilationUnitScope compilationUnitScope;
        if (!z10) {
            cArr8 = cArr;
        } else if ((cArr5 == null || cArr5.length == 0) && (compilationUnitScope = this.unitScope) != null && compilationUnitScope.fPackage.compoundName != CharOperation.NO_CHAR_CHAR) {
            return;
        } else {
            cArr8 = cArr7;
        }
        int computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal() + computeRelevanceForRestrictions(i13) + computeRelevanceForCaseMatching(this.completionToken, cArr) + computeRelevanceForExpectingType(cArr5, cArr) + computeRelevanceForQualification(z10) + computeRelevanceForConstructor();
        int i18 = i12 & 25088;
        if (i18 == 512) {
            computeRelevanceForInterface = computeRelevanceForInterface();
        } else if (i18 == 8192 || i18 == 8704) {
            computeBaseRelevance += computeRelevanceForAnnotation();
            computeRelevanceForInterface = computeRelevanceForInterface();
        } else {
            if (i18 != 16384) {
                computeBaseRelevance += computeRelevanceForClass();
                computeRelevanceForEnum = computeRelevanceForException(cArr);
            } else {
                computeRelevanceForEnum = computeRelevanceForEnum();
            }
            i15 = computeBaseRelevance + computeRelevanceForEnum;
            z11 = false;
            cArr9 = this.source;
            if (cArr9 != null) {
                int length = cArr9.length;
                int i19 = this.endPosition;
                if (length > i19 && cArr9[i19] == '(') {
                    cArr10 = CharOperation.NO_CHAR;
                    InternalCompletionProposal createProposal = createProposal(9, this.actualCompletionPosition);
                    createProposal.nameLookup = this.nameEnvironment.nameLookup;
                    createProposal.completionEngine = this;
                    createProposal.setDeclarationSignature(cArr5);
                    createProposal.setSignature(createNonGenericTypeSignature(cArr5, cArr6));
                    createProposal.setPackageName(cArr5);
                    createProposal.setTypeName(cArr6);
                    createProposal.setCompletion(cArr8);
                    createProposal.setFlags(i12);
                    int i20 = this.startPosition;
                    int i21 = this.offset;
                    createProposal.setReplaceRange(i20 - i21, this.endPosition - i21);
                    int i22 = this.startPosition;
                    int i23 = this.offset;
                    createProposal.setTokenRange(i22 - i23, this.endPosition - i23);
                    createProposal.setRelevance(i15);
                    if (i10 == -1) {
                        int i24 = Flags.isDeprecated(i12) ? 1048577 : 1;
                        if (!z11 && (i12 & 1024) == 0) {
                            this.noProposal = false;
                            if (isIgnored(26, 9)) {
                                return;
                            }
                            InternalCompletionProposal createProposal2 = createProposal(26, this.actualCompletionPosition);
                            createProposal2.setDeclarationSignature(createNonGenericTypeSignature(cArr5, cArr6));
                            createProposal2.setSignature(DEFAULT_CONSTRUCTOR_SIGNATURE);
                            createProposal2.setDeclarationPackageName(cArr5);
                            createProposal2.setDeclarationTypeName(cArr6);
                            char[][] cArr11 = CharOperation.NO_CHAR_CHAR;
                            createProposal2.setParameterPackageNames(cArr11);
                            createProposal2.setParameterTypeNames(cArr11);
                            createProposal2.setParameterNames(cArr11);
                            createProposal2.setName(cArr);
                            createProposal2.setRequiredProposals(new CompletionProposal[]{createProposal});
                            createProposal2.setIsContructor(true);
                            createProposal2.setCompletion(cArr10);
                            createProposal2.setFlags(i24);
                            int i25 = this.endPosition;
                            int i26 = this.offset;
                            createProposal2.setReplaceRange(i25 - i26, i25 - i26);
                            int i27 = this.tokenStart;
                            int i28 = this.offset;
                            createProposal2.setTokenRange(i27 - i28, this.tokenEnd - i28);
                            createProposal2.setRelevance(i15);
                            this.requestor.accept(createProposal2);
                            if (DEBUG) {
                                printDebug(createProposal2);
                                return;
                            }
                            return;
                        }
                        this.noProposal = false;
                        if (isIgnored(27, 9)) {
                            return;
                        }
                        InternalCompletionProposal createProposal3 = createProposal(27, this.actualCompletionPosition);
                        createProposal3.setDeclarationSignature(createNonGenericTypeSignature(cArr5, cArr6));
                        createProposal3.setDeclarationKey(createBindingKey(cArr5, cArr6));
                        createProposal3.setSignature(DEFAULT_CONSTRUCTOR_SIGNATURE);
                        createProposal3.setDeclarationPackageName(cArr5);
                        createProposal3.setDeclarationTypeName(cArr6);
                        char[][] cArr12 = CharOperation.NO_CHAR_CHAR;
                        createProposal3.setParameterPackageNames(cArr12);
                        createProposal3.setParameterTypeNames(cArr12);
                        createProposal3.setParameterNames(cArr12);
                        createProposal3.setName(cArr);
                        createProposal3.setRequiredProposals(new CompletionProposal[]{createProposal});
                        createProposal3.setIsContructor(true);
                        createProposal3.setCompletion(cArr10);
                        createProposal3.setFlags(i24);
                        int i29 = this.endPosition;
                        int i30 = this.offset;
                        createProposal3.setReplaceRange(i29 - i30, i29 - i30);
                        int i31 = this.tokenStart;
                        int i32 = this.offset;
                        createProposal3.setTokenRange(i31 - i32, this.tokenEnd - i32);
                        createProposal3.setRelevance(i15);
                        this.requestor.accept(createProposal3);
                        if (DEBUG) {
                            printDebug(createProposal3);
                            return;
                        }
                        return;
                    }
                    if (i10 == 0) {
                        if ((i12 & 1024) != 0) {
                            this.noProposal = false;
                            if (isIgnored(27, 9)) {
                                return;
                            }
                            InternalCompletionProposal createProposal4 = createProposal(27, this.actualCompletionPosition);
                            createProposal4.setDeclarationSignature(createNonGenericTypeSignature(cArr5, cArr6));
                            createProposal4.setDeclarationKey(createBindingKey(cArr5, cArr6));
                            createProposal4.setSignature(DEFAULT_CONSTRUCTOR_SIGNATURE);
                            createProposal4.setDeclarationPackageName(cArr5);
                            createProposal4.setDeclarationTypeName(cArr6);
                            char[][] cArr13 = CharOperation.NO_CHAR_CHAR;
                            createProposal4.setParameterPackageNames(cArr13);
                            createProposal4.setParameterTypeNames(cArr13);
                            createProposal4.setParameterNames(cArr13);
                            createProposal4.setName(cArr);
                            createProposal4.setRequiredProposals(new CompletionProposal[]{createProposal});
                            createProposal4.setIsContructor(true);
                            createProposal4.setCompletion(cArr10);
                            createProposal4.setFlags(i11);
                            int i33 = this.endPosition;
                            int i34 = this.offset;
                            createProposal4.setReplaceRange(i33 - i34, i33 - i34);
                            int i35 = this.tokenStart;
                            int i36 = this.offset;
                            createProposal4.setTokenRange(i35 - i36, this.tokenEnd - i36);
                            createProposal4.setRelevance(i15);
                            this.requestor.accept(createProposal4);
                            if (DEBUG) {
                                printDebug(createProposal4);
                                return;
                            }
                            return;
                        }
                        this.noProposal = false;
                        if (isIgnored(26, 9)) {
                            return;
                        }
                        InternalCompletionProposal createProposal5 = createProposal(26, this.actualCompletionPosition);
                        createProposal5.setDeclarationSignature(createNonGenericTypeSignature(cArr5, cArr6));
                        createProposal5.setSignature(DEFAULT_CONSTRUCTOR_SIGNATURE);
                        createProposal5.setDeclarationPackageName(cArr5);
                        createProposal5.setDeclarationTypeName(cArr6);
                        char[][] cArr14 = CharOperation.NO_CHAR_CHAR;
                        createProposal5.setParameterPackageNames(cArr14);
                        createProposal5.setParameterTypeNames(cArr14);
                        createProposal5.setParameterNames(cArr14);
                        createProposal5.setName(cArr);
                        createProposal5.setRequiredProposals(new CompletionProposal[]{createProposal});
                        createProposal5.setIsContructor(true);
                        createProposal5.setCompletion(cArr10);
                        createProposal5.setFlags(i11);
                        int i37 = this.endPosition;
                        int i38 = this.offset;
                        createProposal5.setReplaceRange(i37 - i38, i37 - i38);
                        int i39 = this.tokenStart;
                        int i40 = this.offset;
                        createProposal5.setTokenRange(i39 - i40, this.tokenEnd - i40);
                        createProposal5.setRelevance(i15);
                        this.requestor.accept(createProposal5);
                        if (DEBUG) {
                            printDebug(createProposal5);
                            return;
                        }
                        return;
                    }
                    if (cArr2 == null) {
                        replaceOnCopy = getResolvedSignature(cArr3, cArr7, i10, scope);
                        if (replaceOnCopy == null) {
                            return;
                        }
                    } else {
                        replaceOnCopy = CharOperation.replaceOnCopy(cArr2, '/', '.');
                    }
                    char[][] cArr15 = i10 != (cArr4 == null ? 0 : cArr4.length) ? null : cArr4;
                    if ((i12 & 1024) != 0) {
                        this.noProposal = false;
                        if (isIgnored(27, 9)) {
                            return;
                        }
                        InternalCompletionProposal createProposal6 = createProposal(27, this.actualCompletionPosition);
                        createProposal6.setDeclarationSignature(createNonGenericTypeSignature(cArr5, cArr6));
                        createProposal6.setDeclarationKey(createBindingKey(cArr5, cArr6));
                        createProposal6.setSignature(replaceOnCopy);
                        createProposal6.setDeclarationPackageName(cArr5);
                        createProposal6.setDeclarationTypeName(cArr6);
                        char[][] cArr16 = CharOperation.NO_CHAR_CHAR;
                        createProposal6.setParameterPackageNames(cArr16);
                        createProposal6.setParameterTypeNames(cArr16);
                        if (cArr15 != null) {
                            createProposal6.setParameterNames(cArr15);
                            i17 = 1;
                        } else {
                            i17 = 1;
                            createProposal6.setHasNoParameterNamesFromIndex(true);
                        }
                        createProposal6.setName(cArr);
                        CompletionProposal[] completionProposalArr = new CompletionProposal[i17];
                        completionProposalArr[0] = createProposal;
                        createProposal6.setRequiredProposals(completionProposalArr);
                        createProposal6.setIsContructor(i17);
                        createProposal6.setCompletion(cArr10);
                        createProposal6.setFlags(i11);
                        int i41 = this.endPosition;
                        int i42 = this.offset;
                        createProposal6.setReplaceRange(i41 - i42, i41 - i42);
                        int i43 = this.tokenStart;
                        int i44 = this.offset;
                        createProposal6.setTokenRange(i43 - i44, this.tokenEnd - i44);
                        createProposal6.setRelevance(i15);
                        this.requestor.accept(createProposal6);
                        if (DEBUG) {
                            printDebug(createProposal6);
                            return;
                        }
                        return;
                    }
                    this.noProposal = false;
                    if (isIgnored(26, 9)) {
                        return;
                    }
                    InternalCompletionProposal createProposal7 = createProposal(26, this.actualCompletionPosition);
                    createProposal7.setDeclarationSignature(createNonGenericTypeSignature(cArr5, cArr6));
                    createProposal7.setSignature(replaceOnCopy);
                    createProposal7.setDeclarationPackageName(cArr5);
                    createProposal7.setDeclarationTypeName(cArr6);
                    char[][] cArr17 = CharOperation.NO_CHAR_CHAR;
                    createProposal7.setParameterPackageNames(cArr17);
                    createProposal7.setParameterTypeNames(cArr17);
                    if (cArr15 != null) {
                        createProposal7.setParameterNames(cArr15);
                        i16 = 1;
                    } else {
                        i16 = 1;
                        createProposal7.setHasNoParameterNamesFromIndex(true);
                    }
                    createProposal7.setName(cArr);
                    CompletionProposal[] completionProposalArr2 = new CompletionProposal[i16];
                    completionProposalArr2[0] = createProposal;
                    createProposal7.setRequiredProposals(completionProposalArr2);
                    createProposal7.setIsContructor(i16);
                    createProposal7.setCompletion(cArr10);
                    createProposal7.setFlags(i11);
                    int i45 = this.endPosition;
                    int i46 = this.offset;
                    createProposal7.setReplaceRange(i45 - i46, i45 - i46);
                    int i47 = this.tokenStart;
                    int i48 = this.offset;
                    createProposal7.setTokenRange(i47 - i48, this.tokenEnd - i48);
                    createProposal7.setRelevance(i15);
                    this.requestor.accept(createProposal7);
                    if (DEBUG) {
                        printDebug(createProposal7);
                        return;
                    }
                    return;
                }
            }
            cArr10 = new char[]{'(', ')'};
            InternalCompletionProposal createProposal8 = createProposal(9, this.actualCompletionPosition);
            createProposal8.nameLookup = this.nameEnvironment.nameLookup;
            createProposal8.completionEngine = this;
            createProposal8.setDeclarationSignature(cArr5);
            createProposal8.setSignature(createNonGenericTypeSignature(cArr5, cArr6));
            createProposal8.setPackageName(cArr5);
            createProposal8.setTypeName(cArr6);
            createProposal8.setCompletion(cArr8);
            createProposal8.setFlags(i12);
            int i202 = this.startPosition;
            int i212 = this.offset;
            createProposal8.setReplaceRange(i202 - i212, this.endPosition - i212);
            int i222 = this.startPosition;
            int i232 = this.offset;
            createProposal8.setTokenRange(i222 - i232, this.endPosition - i232);
            createProposal8.setRelevance(i15);
            if (i10 == -1) {
            }
        }
        i15 = computeBaseRelevance + computeRelevanceForInterface;
        z11 = true;
        cArr9 = this.source;
        if (cArr9 != null) {
        }
        cArr10 = new char[]{'(', ')'};
        InternalCompletionProposal createProposal82 = createProposal(9, this.actualCompletionPosition);
        createProposal82.nameLookup = this.nameEnvironment.nameLookup;
        createProposal82.completionEngine = this;
        createProposal82.setDeclarationSignature(cArr5);
        createProposal82.setSignature(createNonGenericTypeSignature(cArr5, cArr6));
        createProposal82.setPackageName(cArr5);
        createProposal82.setTypeName(cArr6);
        createProposal82.setCompletion(cArr8);
        createProposal82.setFlags(i12);
        int i2022 = this.startPosition;
        int i2122 = this.offset;
        createProposal82.setReplaceRange(i2022 - i2122, this.endPosition - i2122);
        int i2222 = this.startPosition;
        int i2322 = this.offset;
        createProposal82.setTokenRange(i2222 - i2322, this.endPosition - i2322);
        createProposal82.setRelevance(i15);
        if (i10 == -1) {
        }
    }

    private void findTargettedModules(CompletionOnModuleReference completionOnModuleReference, HashSet<String> hashSet) {
        setCompletionToken(completionOnModuleReference.tokens, completionOnModuleReference.sourceStart, completionOnModuleReference.sourceEnd, completionOnModuleReference.sourcePositions);
        findTargettedModules(CharOperation.toLowerCase(this.completionToken), hashSet);
    }

    private void computeAlreadyDefinedName(FieldBinding[] fieldBindingArr, Scope scope, boolean z10, ReferenceBinding referenceBinding, InvocationSite invocationSite, ArrayList arrayList) {
        int length = fieldBindingArr.length;
        while (true) {
            length--;
            if (length < 0) {
                return;
            }
            FieldBinding fieldBinding = fieldBindingArr[length];
            if (!fieldBinding.isSynthetic() && (!z10 || fieldBinding.isStatic())) {
                if (fieldBinding.canBeSeenBy(referenceBinding, invocationSite, scope)) {
                    arrayList.add(fieldBinding.name);
                }
            }
        }
    }

    private void computeAlreadyDefinedName(SourceTypeBinding sourceTypeBinding, ClassScope classScope, boolean z10, InvocationSite invocationSite, ArrayList arrayList) {
        ReferenceBinding[] referenceBindingArr;
        ReferenceBinding[] referenceBindingArr2;
        ReferenceBinding[] referenceBindingArr3 = null;
        ReferenceBinding referenceBinding = sourceTypeBinding;
        int i10 = 0;
        do {
            ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
            if (superInterfaces != Binding.NO_SUPERINTERFACES) {
                if (referenceBindingArr3 == null) {
                    i10 = superInterfaces.length;
                    referenceBindingArr3 = superInterfaces;
                } else {
                    int length = i10 + superInterfaces.length;
                    if (length >= referenceBindingArr3.length) {
                        referenceBindingArr2 = new ReferenceBinding[length + 5];
                        System.arraycopy(referenceBindingArr3, 0, referenceBindingArr2, 0, i10);
                    } else {
                        referenceBindingArr2 = referenceBindingArr3;
                    }
                    int i11 = i10;
                    for (ReferenceBinding referenceBinding2 : superInterfaces) {
                        int i12 = 0;
                        while (true) {
                            if (i12 >= i11) {
                                referenceBindingArr2[i11] = referenceBinding2;
                                i11++;
                                break;
                            } else if (TypeBinding.equalsEquals(referenceBinding2, referenceBindingArr2[i12])) {
                                break;
                            } else {
                                i12++;
                            }
                        }
                    }
                    referenceBindingArr3 = referenceBindingArr2;
                    i10 = i11;
                }
            }
            FieldBinding[] availableFields = referenceBinding.availableFields();
            if (availableFields != null && availableFields.length > 0) {
                computeAlreadyDefinedName(availableFields, classScope, z10, sourceTypeBinding, invocationSite, arrayList);
            }
            referenceBinding = referenceBinding.superclass();
        } while (referenceBinding != null);
        if (referenceBindingArr3 != null) {
            for (int i13 = 0; i13 < i10; i13++) {
                ReferenceBinding referenceBinding3 = referenceBindingArr3[i13];
                FieldBinding[] availableFields2 = referenceBinding3.availableFields();
                if (availableFields2 != null) {
                    computeAlreadyDefinedName(availableFields2, classScope, z10, sourceTypeBinding, invocationSite, arrayList);
                }
                ReferenceBinding[] superInterfaces2 = referenceBinding3.superInterfaces();
                if (superInterfaces2 != Binding.NO_SUPERINTERFACES) {
                    int length2 = i10 + superInterfaces2.length;
                    if (length2 >= referenceBindingArr3.length) {
                        referenceBindingArr = new ReferenceBinding[length2 + 5];
                        System.arraycopy(referenceBindingArr3, 0, referenceBindingArr, 0, i10);
                    } else {
                        referenceBindingArr = referenceBindingArr3;
                    }
                    int i14 = i10;
                    for (ReferenceBinding referenceBinding4 : superInterfaces2) {
                        int i15 = 0;
                        while (true) {
                            if (i15 >= i14) {
                                referenceBindingArr[i14] = referenceBinding4;
                                i14++;
                                break;
                            } else if (TypeBinding.equalsEquals(referenceBinding4, referenceBindingArr[i15])) {
                                break;
                            } else {
                                i15++;
                            }
                        }
                    }
                    referenceBindingArr3 = referenceBindingArr;
                    i10 = i14;
                }
            }
        }
    }

    public void findMemberTypes(char[] cArr, ReferenceBinding referenceBinding, Scope scope, SourceTypeBinding sourceTypeBinding, boolean z10, boolean z11, ObjectVector objectVector, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z12) {
        findMemberTypes(cArr, referenceBinding, scope, sourceTypeBinding, z10, z11, false, false, false, null, objectVector, bindingArr, iArr, iArr2, z12);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x018b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01cf A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0244 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x014e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findMemberTypes(char[] cArr, ReferenceBinding[] referenceBindingArr, ObjectVector objectVector, ReferenceBinding referenceBinding, SourceTypeBinding sourceTypeBinding, boolean z10, boolean z11, boolean z12, boolean z13, Scope scope, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z14) {
        char[] cArr2;
        boolean z15;
        int computeBaseRelevance;
        int computeRelevanceForInterface;
        int i10;
        boolean z16;
        ReferenceBinding referenceBinding2;
        int i11;
        CompilationUnitScope compilationUnitScope;
        int length = cArr.length;
        int length2 = referenceBindingArr.length;
        while (true) {
            int i12 = length2 - 1;
            if (i12 < 0) {
                return;
            }
            ReferenceBinding referenceBinding3 = referenceBindingArr[i12];
            if ((!z10 || referenceBinding3.isStatic()) && !isForbidden(referenceBinding3)) {
                char[] cArr3 = referenceBinding3.sourceName;
                if (length <= cArr3.length && !isFailedMatch(cArr, cArr3) && ((!this.options.checkDeprecation || !referenceBinding3.isViewedAsDeprecated() || scope.isDefinedInSameUnit(referenceBinding3)) && ((!this.options.checkVisibility || ((sourceTypeBinding == null || referenceBinding3.canBeSeenBy(referenceBinding, sourceTypeBinding)) && (sourceTypeBinding != null || referenceBinding3.canBeSeenBy(this.unitScope.fPackage)))) && (!this.insideQualifiedReference || !referenceBinding.isParameterizedType() || !referenceBinding3.isStatic())))) {
                    int i13 = objectVector.size;
                    while (true) {
                        i13--;
                        if (i13 < 0) {
                            objectVector.add(referenceBinding3);
                            if ((!this.assistNodeIsExtendedType || !referenceBinding3.isFinal()) && ((!this.assistNodeIsInterfaceExcludingAnnotation || !referenceBinding3.isAnnotationType()) && (this.insideQualifiedReference || (this.assistNodeIsClass || this.assistNodeIsException ? referenceBinding3.isClass() : !this.assistNodeIsInterface ? !this.assistNodeIsAnnotation || referenceBinding3.isAnnotationType() : referenceBinding3.isInterface() || referenceBinding3.isAnnotationType())))) {
                                char[] sourceName = referenceBinding3.sourceName();
                                if (z13 && !z12) {
                                    char[] qualifiedPackageName = referenceBinding3.qualifiedPackageName();
                                    char[] sourceName2 = referenceBinding3.sourceName();
                                    char[] qualifiedSourceName = referenceBinding3.enclosingType().qualifiedSourceName();
                                    if (mustQualifyType(qualifiedPackageName, sourceName2, qualifiedSourceName, referenceBinding3.modifiers)) {
                                        if ((qualifiedPackageName == null || qualifiedPackageName.length == 0) && (compilationUnitScope = this.unitScope) != null && compilationUnitScope.fPackage.compoundName != CharOperation.NO_CHAR_CHAR) {
                                            return;
                                        }
                                        cArr2 = CharOperation.concat(qualifiedPackageName, CharOperation.concat(qualifiedSourceName, sourceName2, '.'), '.');
                                        z15 = true;
                                        computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal(referenceBinding3) + computeRelevanceForCaseMatching(cArr, referenceBinding3.sourceName) + computeRelevanceForExpectingType(referenceBinding3) + computeRelevanceForRestrictions(0);
                                        if (!this.insideQualifiedReference) {
                                            computeBaseRelevance += computeRelevanceForQualification(z15);
                                        }
                                        if (z11 && this.insideQualifiedReference) {
                                            computeBaseRelevance += 2;
                                        }
                                        if (!referenceBinding3.isAnnotationType()) {
                                            computeBaseRelevance += computeRelevanceForAnnotation();
                                            computeRelevanceForInterface = computeRelevanceForAnnotationTarget(referenceBinding3);
                                        } else if (referenceBinding3.isClass()) {
                                            computeBaseRelevance += computeRelevanceForClass();
                                            computeRelevanceForInterface = computeRelevanceForException(referenceBinding3.sourceName);
                                        } else if (referenceBinding3.isEnum()) {
                                            computeRelevanceForInterface = computeRelevanceForEnum();
                                        } else {
                                            if (referenceBinding3.isInterface()) {
                                                computeRelevanceForInterface = computeRelevanceForInterface();
                                            }
                                            if (bindingArr != null) {
                                                computeBaseRelevance += computeRelevanceForMissingElements(z14);
                                            }
                                            i10 = computeBaseRelevance;
                                            boolean isAllowingLongComputationProposals = isAllowingLongComputationProposals();
                                            this.noProposal = false;
                                            if (this.assistNodeIsConstructor || !isAllowingLongComputationProposals || hasStaticMemberTypes(referenceBinding3, sourceTypeBinding, this.unitScope) || (((referenceBinding3 instanceof SourceTypeBinding) && hasMemberTypesInEnclosingScope((SourceTypeBinding) referenceBinding3, scope)) || hasArrayTypeAsExpectedSuperTypes())) {
                                                z16 = z15;
                                                referenceBinding2 = referenceBinding3;
                                                i11 = length;
                                                createTypeProposal(referenceBinding3, referenceBinding3.qualifiedSourceName(), 0, cArr2, i10, bindingArr, iArr, iArr2, z14);
                                            } else {
                                                z16 = z15;
                                                referenceBinding2 = referenceBinding3;
                                                i11 = length;
                                            }
                                            if (!this.assistNodeIsConstructor && isAllowingLongComputationProposals) {
                                                findConstructorsOrAnonymousTypes(referenceBinding2, scope, FakeInvocationSite, z16, i10);
                                            }
                                        }
                                        computeBaseRelevance += computeRelevanceForInterface;
                                        if (bindingArr != null) {
                                        }
                                        i10 = computeBaseRelevance;
                                        boolean isAllowingLongComputationProposals2 = isAllowingLongComputationProposals();
                                        this.noProposal = false;
                                        if (this.assistNodeIsConstructor) {
                                        }
                                        z16 = z15;
                                        referenceBinding2 = referenceBinding3;
                                        i11 = length;
                                        createTypeProposal(referenceBinding3, referenceBinding3.qualifiedSourceName(), 0, cArr2, i10, bindingArr, iArr, iArr2, z14);
                                        if (!this.assistNodeIsConstructor) {
                                            findConstructorsOrAnonymousTypes(referenceBinding2, scope, FakeInvocationSite, z16, i10);
                                        }
                                    }
                                }
                                cArr2 = sourceName;
                                z15 = false;
                                computeBaseRelevance = computeBaseRelevance() + computeRelevanceForResolution() + computeRelevanceForInterestingProposal(referenceBinding3) + computeRelevanceForCaseMatching(cArr, referenceBinding3.sourceName) + computeRelevanceForExpectingType(referenceBinding3) + computeRelevanceForRestrictions(0);
                                if (!this.insideQualifiedReference) {
                                }
                                if (z11) {
                                    computeBaseRelevance += 2;
                                }
                                if (!referenceBinding3.isAnnotationType()) {
                                }
                                computeBaseRelevance += computeRelevanceForInterface;
                                if (bindingArr != null) {
                                }
                                i10 = computeBaseRelevance;
                                boolean isAllowingLongComputationProposals22 = isAllowingLongComputationProposals();
                                this.noProposal = false;
                                if (this.assistNodeIsConstructor) {
                                }
                                z16 = z15;
                                referenceBinding2 = referenceBinding3;
                                i11 = length;
                                createTypeProposal(referenceBinding3, referenceBinding3.qualifiedSourceName(), 0, cArr2, i10, bindingArr, iArr, iArr2, z14);
                                if (!this.assistNodeIsConstructor) {
                                }
                            }
                        } else {
                            ReferenceBinding referenceBinding4 = referenceBinding3;
                            i11 = length;
                            ReferenceBinding referenceBinding5 = (ReferenceBinding) objectVector.elementAt(i13);
                            if (!TypeBinding.equalsEquals(referenceBinding4, referenceBinding5) && (!CharOperation.equals(referenceBinding4.sourceName, referenceBinding5.sourceName, true) || !referenceBinding5.isNestedType() || (!referenceBinding4.enclosingType().isSuperclassOf(referenceBinding5.enclosingType()) && ((!referenceBinding5.enclosingType().isInterface() || !referenceBinding4.enclosingType().implementsInterface(referenceBinding5.enclosingType(), true)) && (!referenceBinding4.enclosingType().isInterface() || !referenceBinding5.enclosingType().implementsInterface(referenceBinding4.enclosingType(), true)))))) {
                                referenceBinding3 = referenceBinding4;
                                length = i11;
                            }
                        }
                    }
                }
            }
            i11 = length;
            length2 = i12;
            length = i11;
        }
    }

    private void createTypeProposal(ReferenceBinding referenceBinding, char[] cArr, int i10, char[] cArr2, int i11, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z10) {
        if (!isIgnored(9, bindingArr != null) && (this.assistNodeInJavadoc & 16) == 0) {
            InternalCompletionProposal internalCompletionProposal = (InternalCompletionProposal) CompletionProposal.create(9, this.actualCompletionPosition - this.offset);
            internalCompletionProposal.nameLookup = this.nameEnvironment.nameLookup;
            internalCompletionProposal.completionEngine = this;
            internalCompletionProposal.setDeclarationSignature(referenceBinding.qualifiedPackageName());
            internalCompletionProposal.setSignature(getCompletedTypeSignature(referenceBinding));
            internalCompletionProposal.setPackageName(referenceBinding.qualifiedPackageName());
            internalCompletionProposal.setTypeName(cArr);
            if (bindingArr != null) {
                CompletionProposal[] completionProposalArr = new CompletionProposal[bindingArr.length];
                for (int i12 = 0; i12 < bindingArr.length; i12++) {
                    completionProposalArr[i12] = createRequiredTypeProposal(bindingArr[i12], iArr[i12], iArr2[i12], i11);
                }
                internalCompletionProposal.setRequiredProposals(completionProposalArr);
            }
            internalCompletionProposal.setCompletion(cArr2);
            internalCompletionProposal.setFlags(referenceBinding.modifiers);
            int i13 = this.startPosition;
            int i14 = this.offset;
            internalCompletionProposal.setReplaceRange(i13 - i14, this.endPosition - i14);
            int i15 = this.tokenStart;
            int i16 = this.offset;
            internalCompletionProposal.setTokenRange(i15 - i16, this.tokenEnd - i16);
            internalCompletionProposal.setRelevance(i11);
            this.requestor.accept(internalCompletionProposal);
            if (DEBUG) {
                printDebug(internalCompletionProposal);
            }
        }
        if ((this.assistNodeInJavadoc & 4) == 0 || this.requestor.isIgnored(16)) {
            return;
        }
        char[] inlineTagCompletion = inlineTagCompletion(cArr2, JavadocTagConstants.TAG_LINK);
        InternalCompletionProposal internalCompletionProposal2 = (InternalCompletionProposal) CompletionProposal.create(16, this.actualCompletionPosition - this.offset);
        internalCompletionProposal2.nameLookup = this.nameEnvironment.nameLookup;
        internalCompletionProposal2.completionEngine = this;
        internalCompletionProposal2.setDeclarationSignature(referenceBinding.qualifiedPackageName());
        internalCompletionProposal2.setSignature(getCompletedTypeSignature(referenceBinding));
        internalCompletionProposal2.setPackageName(referenceBinding.qualifiedPackageName());
        internalCompletionProposal2.setTypeName(cArr);
        internalCompletionProposal2.setCompletion(inlineTagCompletion);
        internalCompletionProposal2.setFlags(referenceBinding.modifiers);
        int i17 = (this.assistNodeInJavadoc & 32) != 0 ? this.javadocTagPosition : this.startPosition;
        int i18 = this.offset;
        internalCompletionProposal2.setReplaceRange(i17 - i18, this.endPosition - i18);
        int i19 = this.tokenStart;
        int i20 = this.offset;
        internalCompletionProposal2.setTokenRange(i19 - i20, this.tokenEnd - i20);
        internalCompletionProposal2.setRelevance(i11 + 31);
        this.requestor.accept(internalCompletionProposal2);
        if (DEBUG) {
            printDebug(internalCompletionProposal2);
        }
    }

    private void findExceptionFromTryStatement(char[] cArr, ReferenceBinding referenceBinding, SourceTypeBinding sourceTypeBinding, BlockScope blockScope, ObjectVector objectVector) {
        for (int i10 = 0; i10 <= this.expectedTypesPtr; i10++) {
            findExceptionFromTryStatement(cArr, (ReferenceBinding) this.expectedTypes[i10], referenceBinding, sourceTypeBinding, blockScope, objectVector, true);
        }
    }

    private void findLocalMethodsFromStaticImports(char[] cArr, Scope scope, InvocationSite invocationSite, Scope scope2, boolean z10, ObjectVector objectVector, boolean z11) {
        findFieldsAndMethodsFromStaticImports(cArr, scope, invocationSite, scope2, z10, false, new ObjectVector(), new ObjectVector(), objectVector, false, z11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:250:0x0654, code lost:
    
        if (r1 == null) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x061a, code lost:
    
        reset();
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x0701, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0617, code lost:
    
        r1.done();
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x06fd, code lost:
    
        if (r1 == null) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x06c4, code lost:
    
        if (r1 == null) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x068c, code lost:
    
        if (r1 == null) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x0615, code lost:
    
        if (r1 == null) goto L382;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0349 A[Catch: all -> 0x036c, TryCatch #8 {all -> 0x036c, blocks: (B:133:0x0345, B:135:0x0349, B:137:0x034d, B:139:0x0361, B:140:0x0371), top: B:132:0x0345 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0408 A[Catch: all -> 0x01a7, CompletionNodeFound -> 0x01ab, AbortCompilation -> 0x01af, InvalidCursorLocation -> 0x01b3, IndexOutOfBoundsException -> 0x01b7, TRY_ENTER, TryCatch #19 {IndexOutOfBoundsException -> 0x01b7, CompletionNodeFound -> 0x01ab, InvalidCursorLocation -> 0x01b3, AbortCompilation -> 0x01af, all -> 0x01a7, blocks: (B:63:0x016a, B:65:0x0170, B:77:0x01bb, B:79:0x01c1, B:81:0x01c6, B:399:0x026d, B:143:0x03bb, B:156:0x0408, B:158:0x040d, B:160:0x0413, B:182:0x0419, B:162:0x04d5, B:220:0x0520, B:142:0x0399), top: B:62:0x016a }] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x05b3 A[Catch: all -> 0x007a, CompletionNodeFound -> 0x007f, AbortCompilation -> 0x0084, InvalidCursorLocation -> 0x0089, IndexOutOfBoundsException -> 0x008e, TRY_LEAVE, TryCatch #25 {CompletionNodeFound -> 0x007f, blocks: (B:452:0x006b, B:50:0x0132, B:221:0x0524, B:224:0x05af, B:226:0x05b3, B:323:0x0569, B:325:0x056d, B:327:0x0571, B:329:0x0585, B:330:0x058f), top: B:451:0x006b }] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0623 A[Catch: all -> 0x00ed, TRY_LEAVE, TryCatch #11 {all -> 0x00ed, blocks: (B:31:0x00dc, B:33:0x00e9, B:34:0x0101, B:241:0x061f, B:243:0x0623, B:280:0x0657, B:282:0x065b, B:268:0x068f, B:270:0x0693, B:256:0x06c8, B:258:0x06cc, B:42:0x0118, B:86:0x01d7, B:88:0x01e4, B:89:0x01ea, B:413:0x022e, B:229:0x05b9, B:231:0x05d1, B:232:0x05d4, B:233:0x05db, B:235:0x05e6, B:349:0x039c, B:350:0x039e, B:356:0x02ce, B:385:0x0312), top: B:8:0x003e }] */
    /* JADX WARN: Removed duplicated region for block: B:245:0x062d  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x06cc A[Catch: all -> 0x00ed, TRY_LEAVE, TryCatch #11 {all -> 0x00ed, blocks: (B:31:0x00dc, B:33:0x00e9, B:34:0x0101, B:241:0x061f, B:243:0x0623, B:280:0x0657, B:282:0x065b, B:268:0x068f, B:270:0x0693, B:256:0x06c8, B:258:0x06cc, B:42:0x0118, B:86:0x01d7, B:88:0x01e4, B:89:0x01ea, B:413:0x022e, B:229:0x05b9, B:231:0x05d1, B:232:0x05d4, B:233:0x05db, B:235:0x05e6, B:349:0x039c, B:350:0x039e, B:356:0x02ce, B:385:0x0312), top: B:8:0x003e }] */
    /* JADX WARN: Removed duplicated region for block: B:260:0x06d6  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0693 A[Catch: all -> 0x00ed, TRY_LEAVE, TryCatch #11 {all -> 0x00ed, blocks: (B:31:0x00dc, B:33:0x00e9, B:34:0x0101, B:241:0x061f, B:243:0x0623, B:280:0x0657, B:282:0x065b, B:268:0x068f, B:270:0x0693, B:256:0x06c8, B:258:0x06cc, B:42:0x0118, B:86:0x01d7, B:88:0x01e4, B:89:0x01ea, B:413:0x022e, B:229:0x05b9, B:231:0x05d1, B:232:0x05d4, B:233:0x05db, B:235:0x05e6, B:349:0x039c, B:350:0x039e, B:356:0x02ce, B:385:0x0312), top: B:8:0x003e }] */
    /* JADX WARN: Removed duplicated region for block: B:272:0x069d  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x065b A[Catch: all -> 0x00ed, TRY_LEAVE, TryCatch #11 {all -> 0x00ed, blocks: (B:31:0x00dc, B:33:0x00e9, B:34:0x0101, B:241:0x061f, B:243:0x0623, B:280:0x0657, B:282:0x065b, B:268:0x068f, B:270:0x0693, B:256:0x06c8, B:258:0x06cc, B:42:0x0118, B:86:0x01d7, B:88:0x01e4, B:89:0x01ea, B:413:0x022e, B:229:0x05b9, B:231:0x05d1, B:232:0x05d4, B:233:0x05db, B:235:0x05e6, B:349:0x039c, B:350:0x039e, B:356:0x02ce, B:385:0x0312), top: B:8:0x003e }] */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0665  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0704  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x072d  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x05ee  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0395  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void complete(ICompilationUnit iCompilationUnit, int i10, int i11, ITypeRoot iTypeRoot) {
        Throwable th2;
        boolean z10;
        AbortCompilation abortCompilation;
        boolean z11;
        InvalidCursorLocation invalidCursorLocation;
        CompletionNodeFound completionNodeFound;
        IndexOutOfBoundsException indexOutOfBoundsException;
        IProgressMonitor iProgressMonitor;
        IProgressMonitor iProgressMonitor2;
        String str;
        String str2;
        boolean z12;
        ASTNode aSTNode;
        boolean z13;
        CompilationUnitScope compilationUnitScope;
        boolean z14;
        Throwable th3;
        boolean z15;
        CompletionNodeFound completionNodeFound2;
        boolean z16;
        int i12;
        boolean z17;
        if (DEBUG) {
            PrintStream printStream = System.out;
            printStream.print("COMPLETION IN ");
            printStream.print(iCompilationUnit.getFileName());
            printStream.print(" AT POSITION ");
            printStream.println(i10);
            printStream.println("COMPLETION - Source :");
            printStream.println(iCompilationUnit.getContents());
        }
        IProgressMonitor iProgressMonitor3 = this.monitor;
        if (iProgressMonitor3 != null) {
            iProgressMonitor3.beginTask(Messages.engine_completing, -1);
        }
        this.requestor.beginReporting();
        boolean z18 = false;
        try {
            try {
                this.fileName = iCompilationUnit.getFileName();
                this.actualCompletionPosition = i10 - 1;
                this.offset = i11;
                this.typeRoot = iTypeRoot;
                checkCancel();
                z11 = true;
                CompilationUnitDeclaration dietParse = this.parser.dietParse(iCompilationUnit, new CompilationResult(iCompilationUnit, 1, 1, this.compilerOptions.maxProblemsPerUnit), this.actualCompletionPosition);
                try {
                    if (dietParse != null) {
                        if (DEBUG) {
                            try {
                                try {
                                    PrintStream printStream2 = System.out;
                                    printStream2.println("COMPLETION - Diet AST :");
                                    printStream2.println(dietParse.toString());
                                } catch (CompletionNodeFound e10) {
                                    completionNodeFound = e10;
                                    z11 = z18;
                                    if (DEBUG) {
                                        PrintStream printStream3 = System.out;
                                        printStream3.println("Exception caught by CompletionEngine:");
                                        completionNodeFound.printStackTrace(printStream3);
                                    }
                                    if (!z11) {
                                        InternalCompletionContext internalCompletionContext = new InternalCompletionContext();
                                        internalCompletionContext.setTokenKind(0);
                                        internalCompletionContext.setOffset(i10 - this.offset);
                                        if (this.requestor.isExtendedContextRequired()) {
                                            internalCompletionContext.setExtended();
                                        }
                                        this.requestor.acceptContext(internalCompletionContext);
                                    }
                                    this.requestor.endReporting();
                                    iProgressMonitor2 = this.monitor;
                                }
                            } catch (IndexOutOfBoundsException e11) {
                                indexOutOfBoundsException = e11;
                                z11 = z18;
                                if (DEBUG) {
                                    PrintStream printStream4 = System.out;
                                    printStream4.println("Exception caught by CompletionEngine:");
                                    indexOutOfBoundsException.printStackTrace(printStream4);
                                }
                                if (!z11) {
                                    InternalCompletionContext internalCompletionContext2 = new InternalCompletionContext();
                                    internalCompletionContext2.setTokenKind(0);
                                    internalCompletionContext2.setOffset(i10 - this.offset);
                                    if (this.requestor.isExtendedContextRequired()) {
                                        internalCompletionContext2.setExtended();
                                    }
                                    this.requestor.acceptContext(internalCompletionContext2);
                                }
                                this.requestor.endReporting();
                                iProgressMonitor2 = this.monitor;
                            } catch (InvalidCursorLocation e12) {
                                invalidCursorLocation = e12;
                                z11 = z18;
                                if (DEBUG) {
                                    PrintStream printStream5 = System.out;
                                    printStream5.println("Exception caught by CompletionEngine:");
                                    invalidCursorLocation.printStackTrace(printStream5);
                                }
                                if (!z11) {
                                    InternalCompletionContext internalCompletionContext3 = new InternalCompletionContext();
                                    internalCompletionContext3.setTokenKind(0);
                                    internalCompletionContext3.setOffset(i10 - this.offset);
                                    if (this.requestor.isExtendedContextRequired()) {
                                        internalCompletionContext3.setExtended();
                                    }
                                    this.requestor.acceptContext(internalCompletionContext3);
                                }
                                this.requestor.endReporting();
                                iProgressMonitor2 = this.monitor;
                            } catch (AbortCompilation e13) {
                                abortCompilation = e13;
                                z11 = z18;
                                if (DEBUG) {
                                    PrintStream printStream6 = System.out;
                                    printStream6.println("Exception caught by CompletionEngine:");
                                    abortCompilation.printStackTrace(printStream6);
                                }
                                if (!z11) {
                                    InternalCompletionContext internalCompletionContext4 = new InternalCompletionContext();
                                    internalCompletionContext4.setTokenKind(0);
                                    internalCompletionContext4.setOffset(i10 - this.offset);
                                    if (this.requestor.isExtendedContextRequired()) {
                                        internalCompletionContext4.setExtended();
                                    }
                                    this.requestor.acceptContext(internalCompletionContext4);
                                }
                                this.requestor.endReporting();
                                iProgressMonitor2 = this.monitor;
                            } catch (Throwable th4) {
                                th2 = th4;
                                z10 = z18;
                                if (!z10) {
                                    InternalCompletionContext internalCompletionContext5 = new InternalCompletionContext();
                                    internalCompletionContext5.setTokenKind(0);
                                    internalCompletionContext5.setOffset(i10 - this.offset);
                                    if (this.requestor.isExtendedContextRequired()) {
                                        internalCompletionContext5.setExtended();
                                    }
                                    this.requestor.acceptContext(internalCompletionContext5);
                                }
                                this.requestor.endReporting();
                                iProgressMonitor = this.monitor;
                                if (iProgressMonitor != null) {
                                    iProgressMonitor.done();
                                }
                                reset();
                                throw th2;
                            }
                        }
                        if (dietParse.isModuleInfo()) {
                            ModuleDeclaration moduleDeclaration = dietParse.moduleDeclaration;
                            this.moduleDeclaration = moduleDeclaration;
                            if (moduleDeclaration == 0) {
                                InternalCompletionContext internalCompletionContext6 = new InternalCompletionContext();
                                internalCompletionContext6.setTokenKind(0);
                                internalCompletionContext6.setOffset(i10 - this.offset);
                                if (this.requestor.isExtendedContextRequired()) {
                                    internalCompletionContext6.setExtended();
                                }
                                this.requestor.acceptContext(internalCompletionContext6);
                                this.requestor.endReporting();
                                IProgressMonitor iProgressMonitor4 = this.monitor;
                                if (iProgressMonitor4 != null) {
                                    iProgressMonitor4.done();
                                }
                                reset();
                                return;
                            }
                            if (moduleDeclaration instanceof CompletionOnModuleDeclaration) {
                                buildContext(moduleDeclaration, null, dietParse, null, null);
                                if (!this.requestor.isIgnored(28)) {
                                    proposeModuleName(dietParse);
                                }
                                debugPrintf();
                                this.requestor.endReporting();
                                IProgressMonitor iProgressMonitor5 = this.monitor;
                                if (iProgressMonitor5 != null) {
                                    iProgressMonitor5.done();
                                }
                                reset();
                                return;
                            }
                            if (moduleDeclaration instanceof CompletionOnKeywordModuleDeclaration) {
                                processModuleKeywordCompletion(dietParse, moduleDeclaration, (CompletionOnKeyword) moduleDeclaration);
                                this.requestor.endReporting();
                                IProgressMonitor iProgressMonitor6 = this.monitor;
                                if (iProgressMonitor6 != null) {
                                    iProgressMonitor6.done();
                                }
                                reset();
                                return;
                            }
                            PackageVisibilityStatement[] packageVisibilityStatementArr = moduleDeclaration.exports;
                            if (packageVisibilityStatementArr != null) {
                                z12 = completeOnPackageVisibilityStatements(false, dietParse, packageVisibilityStatementArr);
                                if (z12) {
                                    if (!z12) {
                                        InternalCompletionContext internalCompletionContext7 = new InternalCompletionContext();
                                        internalCompletionContext7.setTokenKind(0);
                                        internalCompletionContext7.setOffset(i10 - this.offset);
                                        if (this.requestor.isExtendedContextRequired()) {
                                            internalCompletionContext7.setExtended();
                                        }
                                        this.requestor.acceptContext(internalCompletionContext7);
                                    }
                                    this.requestor.endReporting();
                                    IProgressMonitor iProgressMonitor7 = this.monitor;
                                    if (iProgressMonitor7 != null) {
                                        iProgressMonitor7.done();
                                    }
                                    reset();
                                    return;
                                }
                            } else {
                                z12 = false;
                            }
                            try {
                                PackageVisibilityStatement[] packageVisibilityStatementArr2 = this.moduleDeclaration.opens;
                                if (packageVisibilityStatementArr2 != null && (z12 = completeOnPackageVisibilityStatements(z12, dietParse, packageVisibilityStatementArr2))) {
                                    if (!z12) {
                                        InternalCompletionContext internalCompletionContext8 = new InternalCompletionContext();
                                        internalCompletionContext8.setTokenKind(0);
                                        internalCompletionContext8.setOffset(i10 - this.offset);
                                        if (this.requestor.isExtendedContextRequired()) {
                                            internalCompletionContext8.setExtended();
                                        }
                                        this.requestor.acceptContext(internalCompletionContext8);
                                    }
                                    this.requestor.endReporting();
                                    IProgressMonitor iProgressMonitor8 = this.monitor;
                                    if (iProgressMonitor8 != null) {
                                        iProgressMonitor8.done();
                                    }
                                    reset();
                                    return;
                                }
                                RequiresStatement[] requiresStatementArr = this.moduleDeclaration.requires;
                                if (requiresStatementArr != null) {
                                    for (RequiresStatement requiresStatement : requiresStatementArr) {
                                        ASTNode aSTNode2 = requiresStatement.module;
                                        if (aSTNode2 instanceof CompletionOnModuleReference) {
                                            buildContext(aSTNode2, null, dietParse, null, null);
                                            if (!this.requestor.isIgnored(29)) {
                                                findModules((CompletionOnModuleReference) aSTNode2, false);
                                            }
                                            debugPrintf();
                                            this.requestor.endReporting();
                                            IProgressMonitor iProgressMonitor9 = this.monitor;
                                            if (iProgressMonitor9 != null) {
                                                iProgressMonitor9.done();
                                            }
                                            reset();
                                            return;
                                        }
                                    }
                                }
                                try {
                                    try {
                                        UsesStatement[] usesStatementArr = this.moduleDeclaration.uses;
                                        if (usesStatementArr != null) {
                                            try {
                                                for (UsesStatement usesStatement : usesStatementArr) {
                                                    this.parser.enclosingNode = usesStatement;
                                                    TypeReference typeReference = usesStatement.serviceInterface;
                                                    i12 = ((typeReference instanceof CompletionOnUsesSingleTypeReference) || (typeReference instanceof CompletionOnUsesQualifiedTypeReference)) ? 0 : i12 + 1;
                                                    boolean checkForCNF = checkForCNF(typeReference, dietParse, true);
                                                    this.skipDefaultPackage = false;
                                                    if (!checkForCNF) {
                                                        InternalCompletionContext internalCompletionContext9 = new InternalCompletionContext();
                                                        internalCompletionContext9.setTokenKind(0);
                                                        internalCompletionContext9.setOffset(i10 - this.offset);
                                                        if (this.requestor.isExtendedContextRequired()) {
                                                            internalCompletionContext9.setExtended();
                                                        }
                                                        this.requestor.acceptContext(internalCompletionContext9);
                                                    }
                                                    this.requestor.endReporting();
                                                    IProgressMonitor iProgressMonitor10 = this.monitor;
                                                    if (iProgressMonitor10 != null) {
                                                        iProgressMonitor10.done();
                                                    }
                                                    reset();
                                                    return;
                                                }
                                            } catch (Throwable th5) {
                                                th3 = th5;
                                                z16 = false;
                                                this.skipDefaultPackage = z16;
                                                throw th3;
                                            }
                                        }
                                        ProvidesStatement[] providesStatementArr = this.moduleDeclaration.services;
                                        int length = providesStatementArr != null ? providesStatementArr.length : 0;
                                        int i13 = 0;
                                        while (i13 < length) {
                                            ProvidesStatement providesStatement = providesStatementArr[i13];
                                            this.parser.enclosingNode = providesStatement;
                                            TypeReference typeReference2 = providesStatement.serviceInterface;
                                            if (!(typeReference2 instanceof CompletionOnProvidesInterfacesSingleTypeReference) && !(typeReference2 instanceof CompletionOnProvidesInterfacesQualifiedTypeReference)) {
                                                TypeReference[] typeReferenceArr = providesStatement.implementations;
                                                int length2 = typeReferenceArr.length;
                                                int i14 = 0;
                                                while (i14 < length2) {
                                                    try {
                                                        CompletionOnQualifiedTypeReference completionOnQualifiedTypeReference = typeReferenceArr[i14];
                                                        z17 = z12;
                                                        try {
                                                            if (!(completionOnQualifiedTypeReference instanceof CompletionOnProvidesImplementationsSingleTypeReference) && !(completionOnQualifiedTypeReference instanceof CompletionOnProvidesImplementationsQualifiedTypeReference)) {
                                                                if (completionOnQualifiedTypeReference instanceof CompletionOnKeyword) {
                                                                    try {
                                                                        processModuleKeywordCompletion(dietParse, completionOnQualifiedTypeReference, (CompletionOnKeyword) completionOnQualifiedTypeReference);
                                                                        z12 = true;
                                                                    } catch (CompletionNodeFound e14) {
                                                                        completionNodeFound2 = e14;
                                                                        z15 = true;
                                                                        try {
                                                                            if (completionNodeFound2.astNode == null) {
                                                                                if (DEBUG) {
                                                                                    PrintStream printStream7 = System.out;
                                                                                    printStream7.print("COMPLETION - Completion node : ");
                                                                                    printStream7.println(completionNodeFound2.astNode.toString());
                                                                                    if (this.parser.assistNodeParent != null) {
                                                                                        printStream7.print("COMPLETION - Parent Node : ");
                                                                                        printStream7.println(this.parser.assistNodeParent);
                                                                                    }
                                                                                }
                                                                                this.lookupEnvironment.unitBeingCompleted = dietParse;
                                                                                ASTNode aSTNode3 = completionNodeFound2.astNode;
                                                                                CompletionParser completionParser = this.parser;
                                                                                str = "COMPLETION - Completion node : ";
                                                                                str2 = "COMPLETION - Parent Node : ";
                                                                                z12 = complete(aSTNode3, completionParser.assistNodeParent, completionParser.enclosingNode, dietParse, completionNodeFound2.qualifiedBinding, completionNodeFound2.scope, completionNodeFound2.insideTypeAnnotation);
                                                                            } else {
                                                                                str = "COMPLETION - Completion node : ";
                                                                                str2 = "COMPLETION - Parent Node : ";
                                                                                z12 = z15;
                                                                            }
                                                                            this.skipDefaultPackage = false;
                                                                            aSTNode = dietParse.currentPackage;
                                                                            if (aSTNode instanceof CompletionOnPackageReference) {
                                                                            }
                                                                        } catch (Throwable th6) {
                                                                            th3 = th6;
                                                                            z16 = false;
                                                                            this.skipDefaultPackage = z16;
                                                                            throw th3;
                                                                        }
                                                                    } catch (Throwable th7) {
                                                                        th3 = th7;
                                                                        z16 = false;
                                                                        this.skipDefaultPackage = z16;
                                                                        throw th3;
                                                                    }
                                                                } else {
                                                                    z12 = z17;
                                                                }
                                                                i14++;
                                                                z11 = true;
                                                            } else {
                                                                this.skipDefaultPackage = true;
                                                                boolean checkForCNF2 = checkForCNF(completionOnQualifiedTypeReference, dietParse, false);
                                                                this.skipDefaultPackage = false;
                                                                if (!checkForCNF2) {
                                                                    InternalCompletionContext internalCompletionContext10 = new InternalCompletionContext();
                                                                    internalCompletionContext10.setTokenKind(0);
                                                                    internalCompletionContext10.setOffset(i10 - this.offset);
                                                                    if (this.requestor.isExtendedContextRequired()) {
                                                                        internalCompletionContext10.setExtended();
                                                                    }
                                                                    this.requestor.acceptContext(internalCompletionContext10);
                                                                }
                                                                this.requestor.endReporting();
                                                                IProgressMonitor iProgressMonitor11 = this.monitor;
                                                                if (iProgressMonitor11 != null) {
                                                                    iProgressMonitor11.done();
                                                                }
                                                                reset();
                                                                return;
                                                            }
                                                        } catch (CompletionNodeFound e15) {
                                                            e = e15;
                                                            z15 = z17;
                                                            completionNodeFound2 = e;
                                                            if (completionNodeFound2.astNode == null) {
                                                            }
                                                            this.skipDefaultPackage = false;
                                                            aSTNode = dietParse.currentPackage;
                                                            if (aSTNode instanceof CompletionOnPackageReference) {
                                                            }
                                                        } catch (Throwable th8) {
                                                            th = th8;
                                                            th3 = th;
                                                            z16 = false;
                                                            this.skipDefaultPackage = z16;
                                                            throw th3;
                                                        }
                                                    } catch (CompletionNodeFound e16) {
                                                        e = e16;
                                                        z17 = z12;
                                                    } catch (Throwable th9) {
                                                        th = th9;
                                                        z17 = z12;
                                                    }
                                                }
                                                i13++;
                                                z18 = false;
                                            } else {
                                                boolean checkForCNF3 = checkForCNF(typeReference2, dietParse, z11);
                                                this.skipDefaultPackage = false;
                                                if (!checkForCNF3) {
                                                    InternalCompletionContext internalCompletionContext11 = new InternalCompletionContext();
                                                    internalCompletionContext11.setTokenKind(0);
                                                    internalCompletionContext11.setOffset(i10 - this.offset);
                                                    if (this.requestor.isExtendedContextRequired()) {
                                                        internalCompletionContext11.setExtended();
                                                    }
                                                    this.requestor.acceptContext(internalCompletionContext11);
                                                }
                                                this.requestor.endReporting();
                                                IProgressMonitor iProgressMonitor12 = this.monitor;
                                                if (iProgressMonitor12 != null) {
                                                    iProgressMonitor12.done();
                                                }
                                                reset();
                                                return;
                                            }
                                        }
                                        this.skipDefaultPackage = z18;
                                        str = "COMPLETION - Completion node : ";
                                        str2 = "COMPLETION - Parent Node : ";
                                    } catch (CompletionNodeFound e17) {
                                        e = e17;
                                        z15 = z12;
                                    }
                                } catch (Throwable th10) {
                                    th3 = th10;
                                }
                            } catch (IndexOutOfBoundsException e18) {
                                e = e18;
                                z11 = z12;
                                indexOutOfBoundsException = e;
                                if (DEBUG) {
                                }
                                if (!z11) {
                                }
                                this.requestor.endReporting();
                                iProgressMonitor2 = this.monitor;
                            } catch (CompletionNodeFound e19) {
                                e = e19;
                                z11 = z12;
                                completionNodeFound = e;
                                if (DEBUG) {
                                }
                                if (!z11) {
                                }
                                this.requestor.endReporting();
                                iProgressMonitor2 = this.monitor;
                            } catch (InvalidCursorLocation e20) {
                                e = e20;
                                z11 = z12;
                                invalidCursorLocation = e;
                                if (DEBUG) {
                                }
                                if (!z11) {
                                }
                                this.requestor.endReporting();
                                iProgressMonitor2 = this.monitor;
                            } catch (AbortCompilation e21) {
                                e = e21;
                                z11 = z12;
                                abortCompilation = e;
                                if (DEBUG) {
                                }
                                if (!z11) {
                                }
                                this.requestor.endReporting();
                                iProgressMonitor2 = this.monitor;
                            } catch (Throwable th11) {
                                th = th11;
                                z10 = z12;
                                th2 = th;
                                if (!z10) {
                                }
                                this.requestor.endReporting();
                                iProgressMonitor = this.monitor;
                                if (iProgressMonitor != null) {
                                }
                                reset();
                                throw th2;
                            }
                        } else {
                            str = "COMPLETION - Completion node : ";
                            str2 = "COMPLETION - Parent Node : ";
                            z12 = false;
                        }
                        aSTNode = dietParse.currentPackage;
                        try {
                            if (aSTNode instanceof CompletionOnPackageReference) {
                                buildContext(aSTNode, null, dietParse, null, null);
                                if (!this.requestor.isIgnored(8)) {
                                    findPackages((CompletionOnPackageReference) dietParse.currentPackage);
                                }
                                debugPrintf();
                                this.requestor.endReporting();
                                IProgressMonitor iProgressMonitor13 = this.monitor;
                                if (iProgressMonitor13 != null) {
                                    iProgressMonitor13.done();
                                }
                                reset();
                                return;
                            }
                            ImportReference[] importReferenceArr = dietParse.imports;
                            if (importReferenceArr != 0) {
                                for (SelectionOnPackageVisibilityReference selectionOnPackageVisibilityReference : importReferenceArr) {
                                    if (selectionOnPackageVisibilityReference instanceof CompletionOnImportReference) {
                                        this.lookupEnvironment.buildTypeBindings(dietParse, null);
                                        CompilationUnitScope compilationUnitScope2 = dietParse.scope;
                                        this.unitScope = compilationUnitScope2;
                                        if (compilationUnitScope2 != null) {
                                            buildContext(selectionOnPackageVisibilityReference, null, dietParse, null, null);
                                            long j10 = selectionOnPackageVisibilityReference.sourcePositions[selectionOnPackageVisibilityReference.tokens.length - 1];
                                            setSourceAndTokenRange((int) (j10 >>> 32), (int) j10);
                                            char[][] cArr = selectionOnPackageVisibilityReference.tokens;
                                            int length3 = cArr.length;
                                            if (length3 == 1) {
                                                findImports((CompletionOnImportReference) selectionOnPackageVisibilityReference, true);
                                            } else if (length3 > 1) {
                                                this.insideQualifiedReference = true;
                                                int i15 = length3 - 1;
                                                char[] cArr2 = cArr[i15];
                                                Binding typeOrPackage = this.unitScope.getTypeOrPackage(CharOperation.subarray(cArr, 0, i15));
                                                if (typeOrPackage != null) {
                                                    if (typeOrPackage instanceof PackageBinding) {
                                                        findImports((CompletionOnImportReference) selectionOnPackageVisibilityReference, false);
                                                    } else {
                                                        ReferenceBinding referenceBinding = (ReferenceBinding) typeOrPackage;
                                                        if (!this.requestor.isIgnored(9)) {
                                                            findImportsOfMemberTypes(cArr2, referenceBinding, selectionOnPackageVisibilityReference.isStatic());
                                                        }
                                                        if (selectionOnPackageVisibilityReference.isStatic()) {
                                                            if (!this.requestor.isIgnored(2)) {
                                                                findImportsOfStaticFields(cArr2, referenceBinding);
                                                            }
                                                            if (!this.requestor.isIgnored(12)) {
                                                                findImportsOfStaticMethods(cArr2, referenceBinding);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            debugPrintf();
                                            z14 = true;
                                        } else {
                                            z14 = z12;
                                        }
                                        if (!z14) {
                                            InternalCompletionContext internalCompletionContext12 = new InternalCompletionContext();
                                            internalCompletionContext12.setTokenKind(0);
                                            internalCompletionContext12.setOffset(i10 - this.offset);
                                            if (this.requestor.isExtendedContextRequired()) {
                                                internalCompletionContext12.setExtended();
                                            }
                                            this.requestor.acceptContext(internalCompletionContext12);
                                        }
                                        this.requestor.endReporting();
                                        IProgressMonitor iProgressMonitor14 = this.monitor;
                                        if (iProgressMonitor14 != null) {
                                            iProgressMonitor14.done();
                                        }
                                        reset();
                                        return;
                                    }
                                    if (selectionOnPackageVisibilityReference instanceof CompletionOnKeyword) {
                                        buildContext(selectionOnPackageVisibilityReference, null, dietParse, null, null);
                                        if (!this.requestor.isIgnored(3)) {
                                            setSourceAndTokenRange(selectionOnPackageVisibilityReference.sourceStart, selectionOnPackageVisibilityReference.sourceEnd);
                                            CompletionOnKeyword completionOnKeyword = (CompletionOnKeyword) selectionOnPackageVisibilityReference;
                                            findKeywords(completionOnKeyword.getToken(), completionOnKeyword.getPossibleKeywords(), false, dietParse.currentPackage != null);
                                        }
                                        debugPrintf();
                                        this.requestor.endReporting();
                                        IProgressMonitor iProgressMonitor15 = this.monitor;
                                        if (iProgressMonitor15 != null) {
                                            iProgressMonitor15.done();
                                        }
                                        reset();
                                        return;
                                    }
                                }
                            }
                            z18 = completeJavadocTagInModuleInfo(dietParse);
                            if (dietParse.types != null) {
                                try {
                                    this.lookupEnvironment.buildTypeBindings(dietParse, null);
                                    compilationUnitScope = dietParse.scope;
                                    this.unitScope = compilationUnitScope;
                                } catch (CompletionNodeFound e22) {
                                    e = e22;
                                    z13 = true;
                                }
                                if (compilationUnitScope != null) {
                                    this.source = iCompilationUnit.getContents();
                                    z13 = true;
                                    try {
                                        this.lookupEnvironment.completeTypeBindings(dietParse, true);
                                        dietParse.scope.faultInTypes();
                                        parseBlockStatements(dietParse, this.actualCompletionPosition);
                                        if (DEBUG) {
                                            PrintStream printStream8 = System.out;
                                            printStream8.println("COMPLETION - AST :");
                                            printStream8.println(dietParse.toString());
                                        }
                                        dietParse.resolve();
                                    } catch (CompletionNodeFound e23) {
                                        e = e23;
                                        CompletionNodeFound completionNodeFound3 = e;
                                        if (completionNodeFound3.astNode != null) {
                                            if (DEBUG) {
                                                PrintStream printStream9 = System.out;
                                                printStream9.print(str);
                                                printStream9.println(completionNodeFound3.astNode.toString());
                                                if (this.parser.assistNodeParent != null) {
                                                    printStream9.print(str2);
                                                    printStream9.println(this.parser.assistNodeParent);
                                                }
                                            }
                                            this.lookupEnvironment.unitBeingCompleted = dietParse;
                                            ASTNode aSTNode4 = completionNodeFound3.astNode;
                                            CompletionParser completionParser2 = this.parser;
                                            z11 = z13;
                                            z18 = complete(aSTNode4, completionParser2.assistNodeParent, completionParser2.enclosingNode, dietParse, completionNodeFound3.qualifiedBinding, completionNodeFound3.scope, completionNodeFound3.insideTypeAnnotation);
                                            if (this.noProposal) {
                                            }
                                            if (!z18) {
                                            }
                                            this.requestor.endReporting();
                                            iProgressMonitor2 = this.monitor;
                                        }
                                        z11 = z13;
                                        if (this.noProposal) {
                                        }
                                        if (!z18) {
                                        }
                                        this.requestor.endReporting();
                                        iProgressMonitor2 = this.monitor;
                                    }
                                    z11 = z13;
                                }
                            }
                            z11 = true;
                        } catch (IndexOutOfBoundsException e24) {
                            indexOutOfBoundsException = e24;
                            z11 = true;
                            if (DEBUG) {
                            }
                            if (!z11) {
                            }
                            this.requestor.endReporting();
                            iProgressMonitor2 = this.monitor;
                        } catch (CompletionNodeFound e25) {
                            completionNodeFound = e25;
                            z11 = true;
                            if (DEBUG) {
                            }
                            if (!z11) {
                            }
                            this.requestor.endReporting();
                            iProgressMonitor2 = this.monitor;
                        } catch (InvalidCursorLocation e26) {
                            invalidCursorLocation = e26;
                            z11 = true;
                            if (DEBUG) {
                            }
                            if (!z11) {
                            }
                            this.requestor.endReporting();
                            iProgressMonitor2 = this.monitor;
                        } catch (AbortCompilation e27) {
                            abortCompilation = e27;
                            z11 = true;
                            if (DEBUG) {
                            }
                            if (!z11) {
                            }
                            this.requestor.endReporting();
                            iProgressMonitor2 = this.monitor;
                        } catch (Throwable th12) {
                            th2 = th12;
                            z10 = true;
                            if (!z10) {
                            }
                            this.requestor.endReporting();
                            iProgressMonitor = this.monitor;
                            if (iProgressMonitor != null) {
                            }
                            reset();
                            throw th2;
                        }
                    } else {
                        z18 = false;
                    }
                    if (this.noProposal) {
                        if (this.problem != null) {
                            if (z18) {
                                z11 = z18;
                            } else {
                                InternalCompletionContext internalCompletionContext13 = new InternalCompletionContext();
                                internalCompletionContext13.setOffset(i10 - this.offset);
                                internalCompletionContext13.setTokenKind(0);
                                if (this.requestor.isExtendedContextRequired()) {
                                    internalCompletionContext13.setExtended();
                                }
                                this.requestor.acceptContext(internalCompletionContext13);
                            }
                            this.requestor.completionFailure(this.problem);
                            if (DEBUG) {
                                printDebug(this.problem);
                            }
                            z18 = z11;
                        }
                    }
                    if (!z18) {
                        InternalCompletionContext internalCompletionContext14 = new InternalCompletionContext();
                        internalCompletionContext14.setTokenKind(0);
                        internalCompletionContext14.setOffset(i10 - this.offset);
                        if (this.requestor.isExtendedContextRequired()) {
                            internalCompletionContext14.setExtended();
                        }
                        this.requestor.acceptContext(internalCompletionContext14);
                    }
                    this.requestor.endReporting();
                    iProgressMonitor2 = this.monitor;
                } catch (IndexOutOfBoundsException e28) {
                    e = e28;
                } catch (CompletionNodeFound e29) {
                    e = e29;
                } catch (InvalidCursorLocation e30) {
                    e = e30;
                } catch (AbortCompilation e31) {
                    e = e31;
                }
            } catch (Throwable th13) {
                th = th13;
            }
        } catch (IndexOutOfBoundsException e32) {
            indexOutOfBoundsException = e32;
            z11 = false;
        } catch (CompletionNodeFound e33) {
            completionNodeFound = e33;
            z11 = false;
        } catch (InvalidCursorLocation e34) {
            invalidCursorLocation = e34;
            z11 = false;
        } catch (AbortCompilation e35) {
            abortCompilation = e35;
            z11 = false;
        } catch (Throwable th14) {
            th2 = th14;
            z10 = false;
        }
    }

    private void findFields(char[] cArr, ReferenceBinding referenceBinding, Scope scope, ObjectVector objectVector, ObjectVector objectVector2, boolean z10, InvocationSite invocationSite, Scope scope2, boolean z11, boolean z12, Binding[] bindingArr, int[] iArr, int[] iArr2, boolean z13, char[] cArr2, int i10, int i11) {
        ReferenceBinding[] referenceBindingArr;
        int i12;
        int i13;
        ReferenceBinding[] referenceBindingArr2;
        int i14;
        int i15;
        ReferenceBinding[] referenceBindingArr3;
        int i16 = 0;
        boolean z14 = this.assistNodeInJavadoc == 0;
        if (cArr == null && z14) {
            return;
        }
        ReferenceBinding[] referenceBindingArr4 = null;
        ReferenceBinding referenceBinding2 = referenceBinding;
        int i17 = 0;
        while (true) {
            ReferenceBinding[] superInterfaces = referenceBinding2.superInterfaces();
            if (!z14 || superInterfaces == Binding.NO_SUPERINTERFACES) {
                referenceBindingArr = referenceBindingArr4;
                i12 = i17;
            } else if (referenceBindingArr4 == null) {
                i12 = superInterfaces.length;
                referenceBindingArr = superInterfaces;
            } else {
                int length = superInterfaces.length;
                int i18 = i17 + length;
                if (i18 >= referenceBindingArr4.length) {
                    referenceBindingArr3 = new ReferenceBinding[i18 + 5];
                    System.arraycopy(referenceBindingArr4, i16, referenceBindingArr3, i16, i17);
                } else {
                    referenceBindingArr3 = referenceBindingArr4;
                }
                int i19 = i17;
                for (int i20 = i16; i20 < length; i20++) {
                    ReferenceBinding referenceBinding3 = superInterfaces[i20];
                    int i21 = i16;
                    while (true) {
                        if (i21 >= i19) {
                            referenceBindingArr3[i19] = referenceBinding3;
                            i19++;
                            break;
                        } else if (TypeBinding.equalsEquals(referenceBinding3, referenceBindingArr3[i21])) {
                            break;
                        } else {
                            i21++;
                        }
                    }
                }
                referenceBindingArr = referenceBindingArr3;
                i12 = i19;
            }
            FieldBinding[] availableFields = referenceBinding2.availableFields();
            if (availableFields != null && availableFields.length > 0) {
                findFields(cArr, availableFields, scope, objectVector, objectVector2, z10, referenceBinding, invocationSite, scope2, z11, z12, bindingArr, iArr, iArr2, z13, cArr2, i10, i11);
            }
            referenceBinding2 = referenceBinding2.superclass();
            if (!z14 || referenceBinding2 == null) {
                break;
            }
            referenceBindingArr4 = referenceBindingArr;
            i17 = i12;
            i16 = 0;
        }
        if (!z14 || referenceBindingArr == null) {
            return;
        }
        ReferenceBinding[] referenceBindingArr5 = referenceBindingArr;
        int i22 = i12;
        int i23 = 0;
        while (i23 < i22) {
            ReferenceBinding referenceBinding4 = referenceBindingArr5[i23];
            FieldBinding[] availableFields2 = referenceBinding4.availableFields();
            if (availableFields2 != null) {
                i13 = i22;
                referenceBindingArr2 = referenceBindingArr5;
                i14 = i23;
                findFields(cArr, availableFields2, scope, objectVector, objectVector2, z10, referenceBinding, invocationSite, scope2, z11, z12, bindingArr, iArr, iArr2, z13, cArr2, i10, i11);
            } else {
                i13 = i22;
                referenceBindingArr2 = referenceBindingArr5;
                i14 = i23;
            }
            ReferenceBinding[] superInterfaces2 = referenceBinding4.superInterfaces();
            if (superInterfaces2 != Binding.NO_SUPERINTERFACES) {
                int length2 = superInterfaces2.length;
                int i24 = i13;
                int i25 = i24 + length2;
                ReferenceBinding[] referenceBindingArr6 = referenceBindingArr2;
                if (i25 >= referenceBindingArr6.length) {
                    referenceBindingArr5 = new ReferenceBinding[i25 + 5];
                    i15 = 0;
                    System.arraycopy(referenceBindingArr6, 0, referenceBindingArr5, 0, i24);
                } else {
                    i15 = 0;
                    referenceBindingArr5 = referenceBindingArr6;
                }
                i22 = i24;
                for (int i26 = i15; i26 < length2; i26++) {
                    ReferenceBinding referenceBinding5 = superInterfaces2[i26];
                    int i27 = i15;
                    while (true) {
                        if (i27 >= i22) {
                            referenceBindingArr5[i22] = referenceBinding5;
                            i22++;
                            break;
                        } else if (TypeBinding.equalsEquals(referenceBinding5, referenceBindingArr5[i27])) {
                            break;
                        } else {
                            i27++;
                        }
                    }
                }
            } else {
                i22 = i13;
                referenceBindingArr5 = referenceBindingArr2;
            }
            i23 = i14 + 1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:84:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void complete(IType iType, char[] cArr, int i10, char[][] cArr2, char[][] cArr3, int[] iArr, boolean z10) {
        CompletionRequestor completionRequestor;
        TypeDeclaration buildTypeDeclaration;
        CompilationUnitDeclaration compilationUnitDeclaration;
        FieldDeclaration[] fieldDeclarationArr;
        TypeDeclaration[] typeDeclarationArr;
        boolean z11 = false;
        CompletionRequestor completionRequestor2 = this.requestor;
        if (completionRequestor2 != null) {
            completionRequestor2.beginReporting();
        }
        IType iType2 = iType;
        while (iType2.getDeclaringType() != null) {
            iType2 = iType2.getDeclaringType();
        }
        this.fileName = iType2.getParent().getElementName().toCharArray();
        CompilationResult compilationResult = new CompilationResult(this.fileName, 1, 1, this.compilerOptions.maxProblemsPerUnit);
        try {
            try {
                if (iType instanceof SourceType) {
                    CompilationUnitDeclaration buildCompilationUnit = SourceTypeConverter.buildCompilationUnit(new ISourceType[]{(ISourceType) ((SourceType) iType).getElementInfo()}, 15, this.problemReporter, compilationResult);
                    if (buildCompilationUnit == null || (typeDeclarationArr = buildCompilationUnit.types) == null) {
                        compilationUnitDeclaration = buildCompilationUnit;
                        buildTypeDeclaration = null;
                    } else {
                        compilationUnitDeclaration = buildCompilationUnit;
                        buildTypeDeclaration = typeDeclarationArr[0];
                    }
                } else {
                    CompilationUnitDeclaration compilationUnitDeclaration2 = new CompilationUnitDeclaration(this.problemReporter, compilationResult, 0);
                    buildTypeDeclaration = new BinaryTypeConverter(this.parser.problemReporter(), compilationResult, null).buildTypeDeclaration(iType, compilationUnitDeclaration2);
                    compilationUnitDeclaration = compilationUnitDeclaration2;
                }
                if (buildTypeDeclaration != null) {
                    Initializer parseSnippeInitializer = parseSnippeInitializer(cArr, i10, cArr2, cArr3, iArr, z10);
                    FieldDeclaration[] fieldDeclarationArr2 = buildTypeDeclaration.fields;
                    if (fieldDeclarationArr2 != null) {
                        fieldDeclarationArr = new FieldDeclaration[fieldDeclarationArr2.length + 1];
                        System.arraycopy(fieldDeclarationArr2, 0, fieldDeclarationArr, 0, fieldDeclarationArr2.length);
                        fieldDeclarationArr[fieldDeclarationArr2.length] = parseSnippeInitializer;
                    } else {
                        fieldDeclarationArr = new FieldDeclaration[]{parseSnippeInitializer};
                    }
                    buildTypeDeclaration.fields = fieldDeclarationArr;
                    if (DEBUG) {
                        PrintStream printStream = System.out;
                        printStream.println("SNIPPET COMPLETION AST :");
                        printStream.println(compilationUnitDeclaration.toString());
                    }
                    if (compilationUnitDeclaration.types != null) {
                        try {
                            this.lookupEnvironment.buildTypeBindings(compilationUnitDeclaration, null);
                            CompilationUnitScope compilationUnitScope = compilationUnitDeclaration.scope;
                            this.unitScope = compilationUnitScope;
                            if (compilationUnitScope != null) {
                                this.lookupEnvironment.completeTypeBindings(compilationUnitDeclaration, true);
                                compilationUnitDeclaration.scope.faultInTypes();
                                compilationUnitDeclaration.resolve();
                            }
                        } catch (CompletionNodeFound e10) {
                            ASTNode aSTNode = e10.astNode;
                            if (aSTNode != null) {
                                CompletionParser completionParser = this.parser;
                                z11 = complete(aSTNode, completionParser.assistNodeParent, completionParser.enclosingNode, compilationUnitDeclaration, e10.qualifiedBinding, e10.scope, e10.insideTypeAnnotation);
                            }
                        }
                    }
                    if (this.noProposal && this.problem != null) {
                        if (!z11) {
                            try {
                                InternalCompletionContext internalCompletionContext = new InternalCompletionContext();
                                if (this.requestor.isExtendedContextRequired()) {
                                    internalCompletionContext.setExtended();
                                }
                                this.requestor.acceptContext(internalCompletionContext);
                                z11 = true;
                            } catch (IndexOutOfBoundsException e11) {
                                e = e11;
                                z11 = true;
                                if (DEBUG) {
                                    PrintStream printStream2 = System.out;
                                    printStream2.println("Exception caught by CompletionEngine:");
                                    e.printStackTrace(printStream2);
                                }
                                if (!z11) {
                                }
                                completionRequestor = this.requestor;
                                if (completionRequestor != null) {
                                }
                            } catch (JavaModelException unused) {
                                z11 = true;
                            } catch (CompletionNodeFound e12) {
                                e = e12;
                                z11 = true;
                                if (DEBUG) {
                                    PrintStream printStream3 = System.out;
                                    printStream3.println("Exception caught by CompletionEngine:");
                                    e.printStackTrace(printStream3);
                                }
                                if (!z11) {
                                }
                                completionRequestor = this.requestor;
                                if (completionRequestor != null) {
                                }
                            } catch (InvalidCursorLocation e13) {
                                e = e13;
                                z11 = true;
                                if (DEBUG) {
                                    PrintStream printStream4 = System.out;
                                    printStream4.println("Exception caught by CompletionEngine:");
                                    e.printStackTrace(printStream4);
                                }
                                if (!z11) {
                                }
                                completionRequestor = this.requestor;
                                if (completionRequestor != null) {
                                }
                            } catch (AbortCompilation e14) {
                                e = e14;
                                z11 = true;
                                if (DEBUG) {
                                    PrintStream printStream5 = System.out;
                                    printStream5.println("Exception caught by CompletionEngine:");
                                    e.printStackTrace(printStream5);
                                }
                                if (!z11) {
                                }
                                completionRequestor = this.requestor;
                                if (completionRequestor != null) {
                                }
                            }
                        }
                        this.requestor.completionFailure(this.problem);
                        if (DEBUG) {
                            printDebug(this.problem);
                        }
                    }
                }
            } catch (CompletionNodeFound e15) {
                e = e15;
            }
        } catch (IndexOutOfBoundsException e16) {
            e = e16;
        } catch (JavaModelException unused2) {
        } catch (InvalidCursorLocation e17) {
            e = e17;
        } catch (AbortCompilation e18) {
            e = e18;
        }
        if (!z11) {
            InternalCompletionContext internalCompletionContext2 = new InternalCompletionContext();
            if (this.requestor.isExtendedContextRequired()) {
                internalCompletionContext2.setExtended();
            }
            this.requestor.acceptContext(internalCompletionContext2);
        }
        completionRequestor = this.requestor;
        if (completionRequestor != null) {
            completionRequestor.endReporting();
        }
    }
}
