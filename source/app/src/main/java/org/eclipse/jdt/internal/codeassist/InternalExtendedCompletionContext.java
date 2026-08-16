package org.eclipse.jdt.internal.codeassist;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeDetector;
import org.eclipse.jdt.internal.codeassist.complete.CompletionParser;
import org.eclipse.jdt.internal.codeassist.impl.AssistCompilationUnit;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.ITypeAnnotationWalker;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ImportBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SignatureWrapper;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.core.CompilationUnitElementInfo;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.util.Util;

public class InternalExtendedCompletionContext {
    private static Util.BindingsToNodesMap EmptyNodeMap = new Util.BindingsToNodesMap() {
        @Override
        public ASTNode get(Binding binding) {
            return null;
        }
    };
    private ASTNode assistNode;
    private ASTNode assistNodeParent;
    private Scope assistScope;
    private Map bindingsToHandles;
    private ICompilationUnit compilationUnit;
    private CompilationUnitDeclaration compilationUnitDeclaration;
    private InternalCompletionContext completionContext;
    private boolean hasComputedEnclosingJavaElements;
    private boolean hasComputedVisibleElementBindings;
    private LookupEnvironment lookupEnvironment;
    private Map nodesWithProblemsToHandles;
    private WorkingCopyOwner owner;
    private CompletionParser parser;
    private ITypeRoot typeRoot;
    private ObjectVector visibleFields;
    private ObjectVector visibleLocalVariables;
    private ObjectVector visibleMethods;

    public InternalExtendedCompletionContext(InternalCompletionContext internalCompletionContext, ITypeRoot iTypeRoot, CompilationUnitDeclaration compilationUnitDeclaration, LookupEnvironment lookupEnvironment, Scope scope, ASTNode aSTNode, ASTNode aSTNode2, WorkingCopyOwner workingCopyOwner, CompletionParser completionParser) {
        this.completionContext = internalCompletionContext;
        this.typeRoot = iTypeRoot;
        this.compilationUnitDeclaration = compilationUnitDeclaration;
        this.lookupEnvironment = lookupEnvironment;
        this.assistScope = scope;
        this.assistNode = aSTNode;
        this.assistNodeParent = aSTNode2;
        this.owner = workingCopyOwner;
        this.parser = completionParser;
    }

    private void computeEnclosingJavaElements() {
        this.hasComputedEnclosingJavaElements = true;
        ITypeRoot iTypeRoot = this.typeRoot;
        if (iTypeRoot != null && iTypeRoot.getElementType() == 5) {
            ICompilationUnit iCompilationUnit = (ICompilationUnit) this.typeRoot;
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            HashMap hashMap4 = new HashMap();
            AssistCompilationUnit assistCompilationUnit = new AssistCompilationUnit(iCompilationUnit, this.owner, hashMap, hashMap4);
            CompilationUnitElementInfo compilationUnitElementInfo = new CompilationUnitElementInfo();
            hashMap4.put(assistCompilationUnit, compilationUnitElementInfo);
            CompletionElementNotifier completionElementNotifier = new CompletionElementNotifier(new CompletionUnitStructureRequestor(assistCompilationUnit, compilationUnitElementInfo, this.parser, this.assistNode, hashMap, hashMap2, hashMap3, hashMap4), true, this.assistNode);
            CompilationUnitDeclaration compilationUnitDeclaration = this.compilationUnitDeclaration;
            completionElementNotifier.notifySourceElementRequestor(compilationUnitDeclaration, compilationUnitDeclaration.sourceStart, compilationUnitDeclaration.sourceEnd, false, this.parser.sourceEnds, new HashMap());
            this.bindingsToHandles = hashMap2;
            this.nodesWithProblemsToHandles = hashMap3;
            this.compilationUnit = assistCompilationUnit;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0093, code lost:
    
        searchVisibleVariablesAndMethods(r3, r11.visibleLocalVariables, r11.visibleFields, r11.visibleMethods, r7);
        r0 = r11.visibleFields;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a1, code lost:
    
        if (r0.size <= 0) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a9, code lost:
    
        if (r0.contains(r9.binding) == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ab, code lost:
    
        r11.visibleFields.remove(r9.binding);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00b2, code lost:
    
        r0 = r11.visibleFields;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b6, code lost:
    
        if (r8 < r0.size) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b9, code lost:
    
        r0 = (org.eclipse.jdt.internal.compiler.lookup.FieldBinding) r0.elementAt(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00c5, code lost:
    
        if (r0.f102483id <= r9.binding.f102483id) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00cd, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00c7, code lost:
    
        r11.visibleFields.remove(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void computeVisibleElementBindings() {
        FieldDeclaration[] fieldDeclarationArr;
        LookupEnvironment lookupEnvironment = this.lookupEnvironment;
        CompilationUnitDeclaration compilationUnitDeclaration = lookupEnvironment.unitBeingCompleted;
        lookupEnvironment.unitBeingCompleted = this.compilationUnitDeclaration;
        try {
            this.hasComputedVisibleElementBindings = true;
            Scope scope = this.assistScope;
            ASTNode aSTNode = this.assistNode;
            int i10 = 0;
            boolean z10 = this.completionContext.javadoc == 0;
            this.visibleLocalVariables = new ObjectVector();
            this.visibleFields = new ObjectVector();
            this.visibleMethods = new ObjectVector();
            ReferenceContext referenceContext = scope.referenceContext();
            if (!(referenceContext instanceof AbstractMethodDeclaration) && !(referenceContext instanceof LambdaExpression)) {
                if ((referenceContext instanceof TypeDeclaration) && (fieldDeclarationArr = ((TypeDeclaration) referenceContext).fields) != null) {
                    int i11 = 0;
                    while (true) {
                        if (i11 < fieldDeclarationArr.length) {
                            FieldDeclaration fieldDeclaration = fieldDeclarationArr[i11];
                            if (fieldDeclaration instanceof Initializer) {
                                Initializer initializer = (Initializer) fieldDeclaration;
                                int i12 = initializer.block.sourceStart;
                                int i13 = aSTNode.sourceStart;
                                if (i12 <= i13 && i13 < initializer.bodyEnd) {
                                    searchVisibleVariablesAndMethods(scope, this.visibleLocalVariables, this.visibleFields, this.visibleMethods, z10);
                                    break;
                                }
                                i11++;
                            } else {
                                Expression expression = fieldDeclaration.initialization;
                                if (expression != null && fieldDeclaration.binding != null) {
                                    int i14 = expression.sourceEnd;
                                    if (i14 > 0) {
                                        if (expression.sourceStart <= aSTNode.sourceStart && aSTNode.sourceEnd <= i14) {
                                            break;
                                        }
                                    } else if (new CompletionNodeDetector(this.assistNode, expression).containsCompletionNode()) {
                                        break;
                                    }
                                }
                                i11++;
                            }
                        }
                    }
                }
            }
            searchVisibleVariablesAndMethods(scope, this.visibleLocalVariables, this.visibleFields, this.visibleMethods, z10);
        } finally {
            this.lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private JavaElement getJavaElement(LocalVariableBinding localVariableBinding) {
        JavaElement javaElement;
        JavaElement unresolvedJavaElement;
        LocalDeclaration localDeclaration = localVariableBinding.declaration;
        ReferenceContext referenceContext = (localVariableBinding.declaringScope.isLambdaSubscope() ? localVariableBinding.declaringScope.namedMethodScope() : localVariableBinding.declaringScope).referenceContext();
        if (referenceContext instanceof AbstractMethodDeclaration) {
            AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration) referenceContext;
            unresolvedJavaElement = getJavaElementOfCompilationUnit(abstractMethodDeclaration, abstractMethodDeclaration.binding);
        } else {
            if (!(referenceContext instanceof TypeDeclaration)) {
                javaElement = null;
                if (javaElement != null) {
                    return null;
                }
                String str = new String(localDeclaration.name);
                int i10 = localDeclaration.declarationSourceStart;
                int i11 = localDeclaration.declarationSourceEnd;
                int i12 = localDeclaration.sourceStart;
                int i13 = localDeclaration.sourceEnd;
                TypeReference typeReference = localDeclaration.type;
                return new LocalVariable(javaElement, str, i10, i11, i12, i13, typeReference == null ? Signature.createTypeSignature(localVariableBinding.type.signableName(), true) : Util.typeSignature(typeReference), localVariableBinding.declaration.annotations, localDeclaration.modifiers, localDeclaration.getKind() == 5);
            }
            TypeDeclaration typeDeclaration = (TypeDeclaration) referenceContext;
            unresolvedJavaElement = Util.getUnresolvedJavaElement(localDeclaration.sourceStart, localDeclaration.sourceEnd, getJavaElementOfCompilationUnit(typeDeclaration, typeDeclaration.binding));
        }
        javaElement = unresolvedJavaElement;
        if (javaElement != null) {
        }
    }

    private JavaElement getJavaElementOfCompilationUnit(Binding binding) {
        if (!this.hasComputedEnclosingJavaElements) {
            computeEnclosingJavaElements();
        }
        Map map = this.bindingsToHandles;
        if (map == null) {
            return null;
        }
        return (JavaElement) map.get(binding);
    }

    private TypeBinding getTypeFromSignature(String str, Scope scope) {
        TypeVariableBinding[] typeVariableBindingArr;
        CompilationUnitDeclaration compilationUnitDeclaration;
        TypeParameter[] typeParameters;
        TypeVariableBinding[] typeVariableBindingArr2 = Binding.NO_TYPE_VARIABLES;
        ReferenceContext referenceContext = scope.referenceContext();
        try {
            if ((referenceContext instanceof AbstractMethodDeclaration) && (typeParameters = ((AbstractMethodDeclaration) referenceContext).typeParameters()) != null && typeParameters.length > 0) {
                int length = typeParameters.length;
                TypeVariableBinding[] typeVariableBindingArr3 = new TypeVariableBinding[length];
                int i10 = 0;
                for (TypeParameter typeParameter : typeParameters) {
                    TypeVariableBinding typeVariableBinding = typeParameter.binding;
                    if (typeVariableBinding != null) {
                        typeVariableBindingArr3[i10] = typeVariableBinding;
                        i10++;
                    }
                }
                if (i10 == length) {
                    typeVariableBindingArr = typeVariableBindingArr3;
                    LookupEnvironment lookupEnvironment = this.lookupEnvironment;
                    compilationUnitDeclaration = lookupEnvironment.unitBeingCompleted;
                    lookupEnvironment.unitBeingCompleted = this.compilationUnitDeclaration;
                    TypeBinding resolveType = BinaryTypeBinding.resolveType(this.lookupEnvironment.getTypeFromTypeSignature(new SignatureWrapper(replacePackagesDot(str.toCharArray())), typeVariableBindingArr, this.assistScope.enclosingClassScope().referenceContext.binding, null, ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER), this.lookupEnvironment, true);
                    this.lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration;
                    return resolveType;
                }
                typeVariableBindingArr2 = new TypeVariableBinding[i10];
                System.arraycopy(typeVariableBindingArr3, 0, typeVariableBindingArr2, 0, i10);
            }
            TypeBinding resolveType2 = BinaryTypeBinding.resolveType(this.lookupEnvironment.getTypeFromTypeSignature(new SignatureWrapper(replacePackagesDot(str.toCharArray())), typeVariableBindingArr, this.assistScope.enclosingClassScope().referenceContext.binding, null, ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER), this.lookupEnvironment, true);
            this.lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration;
            return resolveType2;
        } catch (AbortCompilation unused) {
            this.lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration;
            return null;
        } catch (Throwable th2) {
            this.lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration;
            throw th2;
        }
        typeVariableBindingArr = typeVariableBindingArr2;
        LookupEnvironment lookupEnvironment2 = this.lookupEnvironment;
        compilationUnitDeclaration = lookupEnvironment2.unitBeingCompleted;
        lookupEnvironment2.unitBeingCompleted = this.compilationUnitDeclaration;
    }

    private char[] replacePackagesDot(char[] cArr) {
        int length = cArr.length;
        boolean z10 = true;
        for (int i10 = 0; i10 < length; i10++) {
            char c10 = cArr[i10];
            if (c10 != '.') {
                if (c10 == '<') {
                    z10 = true;
                } else if (c10 == '>') {
                    z10 = false;
                }
            } else if (z10) {
                cArr[i10] = '/';
            }
        }
        return cArr;
    }

    private void searchVisibleFields(FieldBinding[] fieldBindingArr, ReferenceBinding referenceBinding, Scope scope, InvocationSite invocationSite, Scope scope2, boolean z10, ObjectVector objectVector, ObjectVector objectVector2) {
        ObjectVector objectVector3 = new ObjectVector();
        int length = fieldBindingArr.length;
        while (true) {
            length--;
            if (length < 0) {
                objectVector2.addAll(objectVector3);
                return;
            }
            FieldBinding fieldBinding = fieldBindingArr[length];
            if (!fieldBinding.isSynthetic() && (!z10 || fieldBinding.isStatic())) {
                if (fieldBinding.canBeSeenBy(referenceBinding, invocationSite, scope)) {
                    int i10 = objectVector2.size;
                    while (true) {
                        i10--;
                        if (i10 < 0) {
                            int i11 = objectVector.size;
                            while (true) {
                                i11--;
                                if (i11 < 0) {
                                    objectVector3.add(fieldBinding);
                                    break;
                                } else {
                                    if (CharOperation.equals(fieldBinding.name, ((LocalVariableBinding) objectVector.elementAt(i11)).name, true)) {
                                        break;
                                    }
                                }
                            }
                        } else {
                            if (CharOperation.equals(fieldBinding.name, ((FieldBinding) objectVector2.elementAt(i10)).name, true)) {
                                break;
                            }
                        }
                    }
                }
            }
        }
    }

    private void searchVisibleInterfaceMethods(ReferenceBinding[] referenceBindingArr, ReferenceBinding referenceBinding, Scope scope, InvocationSite invocationSite, Scope scope2, boolean z10, ObjectVector objectVector) {
        ReferenceBinding[] referenceBindingArr2;
        ReferenceBinding[] referenceBindingArr3 = referenceBindingArr;
        if (referenceBindingArr3 != Binding.NO_SUPERINTERFACES) {
            int length = referenceBindingArr3.length;
            for (int i10 = 0; i10 < length; i10++) {
                ReferenceBinding referenceBinding2 = referenceBindingArr3[i10];
                MethodBinding[] availableMethods = referenceBinding2.availableMethods();
                if (availableMethods != null) {
                    searchVisibleLocalMethods(availableMethods, referenceBinding, scope, invocationSite, scope2, z10, objectVector);
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
    }

    private void searchVisibleLocalMethods(MethodBinding[] methodBindingArr, ReferenceBinding referenceBinding, Scope scope, InvocationSite invocationSite, Scope scope2, boolean z10, ObjectVector objectVector) {
        ObjectVector objectVector2 = new ObjectVector();
        int length = methodBindingArr.length;
        while (true) {
            length--;
            if (length < 0) {
                objectVector.addAll(objectVector2);
                return;
            }
            MethodBinding methodBinding = methodBindingArr[length];
            if (!methodBinding.isSynthetic() && !methodBinding.isDefaultAbstract() && !methodBinding.isConstructor() && (!z10 || methodBinding.isStatic())) {
                if (methodBinding.canBeSeenBy(referenceBinding, invocationSite, scope)) {
                    int i10 = objectVector.size;
                    while (true) {
                        i10--;
                        if (i10 < 0) {
                            objectVector2.add(methodBinding);
                            break;
                        }
                        MethodBinding methodBinding2 = (MethodBinding) objectVector.elementAt(i10);
                        if (methodBinding != methodBinding2 && (!CharOperation.equals(methodBinding.selector, methodBinding2.selector, true) || !this.lookupEnvironment.methodVerifier().isMethodSubsignature(methodBinding2, methodBinding))) {
                        }
                    }
                }
            }
        }
    }

    private void searchVisibleMethods(ReferenceBinding referenceBinding, Scope scope, InvocationSite invocationSite, Scope scope2, boolean z10, boolean z11, ObjectVector objectVector) {
        ReferenceBinding referenceBinding2;
        if (z11 && referenceBinding.isInterface()) {
            searchVisibleInterfaceMethods(new ReferenceBinding[]{referenceBinding}, referenceBinding, scope, invocationSite, scope2, z10, objectVector);
            referenceBinding2 = scope.getJavaLangObject();
        } else {
            referenceBinding2 = referenceBinding;
        }
        boolean z12 = true;
        while (referenceBinding2 != null) {
            MethodBinding[] availableMethods = referenceBinding2.availableMethods();
            if (availableMethods != null) {
                searchVisibleLocalMethods(availableMethods, referenceBinding, scope, invocationSite, scope2, z10, objectVector);
            }
            if (z11 && z12 && (referenceBinding2.isAbstract() || referenceBinding2.isTypeVariable() || referenceBinding2.isIntersectionType() || referenceBinding2.isEnum())) {
                ReferenceBinding[] superInterfaces = referenceBinding2.superInterfaces();
                if (superInterfaces != null && referenceBinding2.isIntersectionType()) {
                    for (int i10 = 0; i10 < superInterfaces.length; i10++) {
                        superInterfaces[i10] = (ReferenceBinding) superInterfaces[i10].capture(scope2, invocationSite.sourceStart(), invocationSite.sourceEnd());
                    }
                }
                searchVisibleInterfaceMethods(superInterfaces, referenceBinding, scope, invocationSite, scope2, z10, objectVector);
            } else {
                z12 = false;
            }
            referenceBinding2 = referenceBinding2.isParameterizedType() ? ((ParameterizedTypeBinding) referenceBinding2).genericType().superclass() : referenceBinding2.superclass();
        }
    }

    private void searchVisibleVariablesAndMethods(Scope scope, ObjectVector objectVector, ObjectVector objectVector2, ObjectVector objectVector3, boolean z10) {
        int i10;
        boolean z11;
        Binding binding;
        InvocationSite invocationSite = CompletionEngine.FakeInvocationSite;
        Scope scope2 = scope;
        while (true) {
            int i11 = scope2.kind;
            if (i11 != 1) {
                if (i11 == 2) {
                } else if (i11 == 4) {
                    break;
                } else {
                    scope2 = scope2.parent;
                }
            }
            BlockScope blockScope = (BlockScope) scope2;
            int length = blockScope.locals.length;
            for (int i12 = 0; i12 < length; i12++) {
                LocalVariableBinding localVariableBinding = blockScope.locals[i12];
                if (localVariableBinding == null) {
                    break;
                }
                if (!localVariableBinding.isSecret() && localVariableBinding.declaration.initialization == null) {
                    int i13 = 0;
                    while (true) {
                        if (i13 >= objectVector.size) {
                            objectVector.add(localVariableBinding);
                            break;
                        } else if (CharOperation.equals(((LocalVariableBinding) objectVector.elementAt(i13)).name, localVariableBinding.name, true)) {
                            break;
                        } else {
                            i13++;
                        }
                    }
                }
            }
            scope2 = scope2.parent;
        }
        Scope scope3 = scope;
        boolean z12 = false;
        while (true) {
            int i14 = scope3.kind;
            if (i14 == 2) {
                MethodScope methodScope = (MethodScope) scope3;
                z11 = methodScope.isConstructorCall | methodScope.isStatic;
            } else if (i14 == 3) {
                ClassScope classScope = (ClassScope) scope3;
                ReferenceBinding referenceBinding = classScope.referenceContext.binding;
                boolean z13 = z12;
                searchVisibleFields(referenceBinding, classScope, invocationSite, scope, z13, z10, objectVector, objectVector2);
                searchVisibleMethods(referenceBinding, classScope, invocationSite, scope, z13, z10, objectVector3);
                z11 = referenceBinding.isStatic();
            } else if (i14 == 4) {
                break;
            } else {
                scope3 = scope3.parent;
            }
            z12 |= z11;
            scope3 = scope3.parent;
        }
        for (ImportBinding importBinding : scope.compilationUnitScope().imports) {
            if (importBinding.isValidBinding() && importBinding.isStatic() && (binding = importBinding.resolvedImport) != null && binding.isValidBinding()) {
                if (importBinding.onDemand) {
                    if ((binding.kind() & 4) != 0) {
                        ReferenceBinding referenceBinding2 = (ReferenceBinding) binding;
                        boolean z14 = z12;
                        searchVisibleFields(referenceBinding2, scope, invocationSite, scope, z14, z10, objectVector, objectVector2);
                        searchVisibleMethods(referenceBinding2, scope, invocationSite, scope, z14, z10, objectVector3);
                    }
                } else if ((binding.kind() & 1) != 0) {
                    FieldBinding fieldBinding = (FieldBinding) binding;
                    searchVisibleFields(new FieldBinding[]{fieldBinding}, fieldBinding.declaringClass, scope, invocationSite, scope, z12, objectVector, objectVector2);
                } else if ((binding.kind() & 8) != 0) {
                    MethodBinding methodBinding = (MethodBinding) binding;
                    searchVisibleLocalMethods(methodBinding.declaringClass.getMethods(methodBinding.selector), methodBinding.declaringClass, scope, invocationSite, scope, true, objectVector3);
                }
            }
        }
    }

    public boolean canUseDiamond(String[] strArr, char[] cArr) {
        char[][] splitOn = CharOperation.splitOn('.', cArr);
        Scope scope = this.assistScope;
        if (scope.compilerOptions().sourceLevel < ClassFileConstants.JDK1_7) {
            return false;
        }
        char[][] expectedTypesKeys = this.completionContext.getExpectedTypesKeys();
        if (expectedTypesKeys == null || expectedTypesKeys.length == 0) {
            return true;
        }
        Expression singleTypeReference = splitOn.length == 1 ? new SingleTypeReference(splitOn[0], 0L) : new QualifiedTypeReference(splitOn, new long[splitOn.length]);
        int i10 = scope.kind;
        TypeBinding resolveType = (i10 == 1 || i10 == 2) ? singleTypeReference.resolveType((BlockScope) scope) : i10 != 3 ? null : singleTypeReference.resolveType((ClassScope) scope);
        if (resolveType == null || !resolveType.isValidBinding()) {
            return false;
        }
        TypeVariableBinding[] typeVariables = resolveType.erasure().typeVariables();
        for (String str : strArr) {
            for (TypeVariableBinding typeVariableBinding : typeVariables) {
                if (CharOperation.equals(str.toCharArray(), typeVariableBinding.sourceName)) {
                    return false;
                }
            }
        }
        return true;
    }

    public ASTNode getCompletionNode() {
        return this.assistNode;
    }

    public ASTNode getCompletionNodeParent() {
        return this.assistNodeParent;
    }

    public IJavaElement getEnclosingElement() {
        try {
            if (!this.hasComputedEnclosingJavaElements) {
                computeEnclosingJavaElements();
            }
            ICompilationUnit iCompilationUnit = this.compilationUnit;
            if (iCompilationUnit == null) {
                return null;
            }
            IJavaElement elementAt = iCompilationUnit.getElementAt(this.completionContext.offset);
            return elementAt == null ? this.compilationUnit : elementAt;
        } catch (JavaModelException e10) {
            Util.log((Throwable) e10, "Cannot compute enclosing element");
            return null;
        }
    }

    public IJavaElement[] getVisibleElements(String str) {
        TypeBinding typeBinding;
        int i10;
        JavaElement javaElement;
        if (this.assistScope == null) {
            return new IJavaElement[0];
        }
        if (!this.hasComputedVisibleElementBindings) {
            computeVisibleElementBindings();
        }
        if (str != null) {
            typeBinding = getTypeFromSignature(str, this.assistScope);
            if (typeBinding == null) {
                return new IJavaElement[0];
            }
        } else {
            typeBinding = null;
        }
        int size = this.visibleLocalVariables.size() + this.visibleFields.size() + this.visibleMethods.size();
        if (size == 0) {
            return new IJavaElement[0];
        }
        IJavaElement[] iJavaElementArr = new IJavaElement[size];
        int size2 = this.visibleLocalVariables.size();
        if (size2 > 0) {
            i10 = 0;
            for (int i11 = 0; i11 < size2; i11++) {
                try {
                    LocalVariableBinding localVariableBinding = (LocalVariableBinding) this.visibleLocalVariables.elementAt(i11);
                    TypeBinding typeBinding2 = localVariableBinding.type;
                    if (typeBinding2 != null && ((typeBinding == null || typeBinding2.isCompatibleWith(typeBinding)) && (javaElement = getJavaElement(localVariableBinding)) != null)) {
                        int i12 = i10 + 1;
                        try {
                            iJavaElementArr[i10] = javaElement;
                            i10 = i12;
                        } catch (AbortCompilation e10) {
                            e = e10;
                            i10 = i12;
                            Util.logRepeatedMessage(e.getKey(), e);
                        }
                    }
                } catch (AbortCompilation e11) {
                    e = e11;
                }
            }
        } else {
            i10 = 0;
        }
        int size3 = this.visibleFields.size();
        if (size3 > 0) {
            for (int i13 = 0; i13 < size3; i13++) {
                try {
                    FieldBinding fieldBinding = (FieldBinding) this.visibleFields.elementAt(i13);
                    if (typeBinding == null || fieldBinding.type.isCompatibleWith(typeBinding)) {
                        if (this.assistScope.isDefinedInSameUnit(fieldBinding.declaringClass)) {
                            JavaElement javaElementOfCompilationUnit = getJavaElementOfCompilationUnit(fieldBinding);
                            if (javaElementOfCompilationUnit != null) {
                                int i14 = i10 + 1;
                                try {
                                    iJavaElementArr[i10] = javaElementOfCompilationUnit;
                                    i10 = i14;
                                } catch (AbortCompilation e12) {
                                    e = e12;
                                    i10 = i14;
                                    Util.logRepeatedMessage(e.getKey(), e);
                                }
                            }
                        } else {
                            JavaElement unresolvedJavaElement = Util.getUnresolvedJavaElement(fieldBinding, this.owner, EmptyNodeMap);
                            if (unresolvedJavaElement != null) {
                                int i15 = i10 + 1;
                                try {
                                    iJavaElementArr[i10] = unresolvedJavaElement.resolved(fieldBinding);
                                    i10 = i15;
                                } catch (AbortCompilation e13) {
                                    e = e13;
                                    i10 = i15;
                                    Util.logRepeatedMessage(e.getKey(), e);
                                }
                            }
                        }
                    }
                } catch (AbortCompilation e14) {
                    e = e14;
                }
            }
        }
        int size4 = this.visibleMethods.size();
        if (size4 > 0) {
            for (int i16 = 0; i16 < size4; i16++) {
                try {
                    MethodBinding methodBinding = (MethodBinding) this.visibleMethods.elementAt(i16);
                    if (typeBinding == null || methodBinding.returnType.isCompatibleWith(typeBinding)) {
                        if (this.assistScope.isDefinedInSameUnit(methodBinding.declaringClass)) {
                            JavaElement javaElementOfCompilationUnit2 = getJavaElementOfCompilationUnit(methodBinding);
                            if (javaElementOfCompilationUnit2 != null) {
                                int i17 = i10 + 1;
                                try {
                                    iJavaElementArr[i10] = javaElementOfCompilationUnit2;
                                    i10 = i17;
                                } catch (AbortCompilation e15) {
                                    e = e15;
                                    i10 = i17;
                                    Util.logRepeatedMessage(e.getKey(), e);
                                }
                            }
                        } else {
                            JavaElement unresolvedJavaElement2 = Util.getUnresolvedJavaElement(methodBinding, this.owner, EmptyNodeMap);
                            if (unresolvedJavaElement2 != null) {
                                int i18 = i10 + 1;
                                try {
                                    iJavaElementArr[i10] = unresolvedJavaElement2.resolved(methodBinding);
                                    i10 = i18;
                                } catch (AbortCompilation e16) {
                                    e = e16;
                                    i10 = i18;
                                    Util.logRepeatedMessage(e.getKey(), e);
                                }
                            }
                        }
                    }
                } catch (AbortCompilation e17) {
                    e = e17;
                }
            }
        }
        if (i10 == size) {
            return iJavaElementArr;
        }
        IJavaElement[] iJavaElementArr2 = new IJavaElement[i10];
        System.arraycopy(iJavaElementArr, 0, iJavaElementArr2, 0, i10);
        return iJavaElementArr2;
    }

    public ObjectVector getVisibleFields() {
        if (!this.hasComputedVisibleElementBindings) {
            computeVisibleElementBindings();
        }
        return this.visibleFields;
    }

    public ObjectVector getVisibleLocalVariables() {
        if (!this.hasComputedVisibleElementBindings) {
            computeVisibleElementBindings();
        }
        return this.visibleLocalVariables;
    }

    public ObjectVector getVisibleMethods() {
        if (!this.hasComputedVisibleElementBindings) {
            computeVisibleElementBindings();
        }
        return this.visibleMethods;
    }

    private JavaElement getJavaElementOfCompilationUnit(ASTNode aSTNode, Binding binding) {
        if (!this.hasComputedEnclosingJavaElements) {
            computeEnclosingJavaElements();
        }
        if (binding != null) {
            Map map = this.bindingsToHandles;
            if (map == null) {
                return null;
            }
            return (JavaElement) map.get(binding);
        }
        Map map2 = this.nodesWithProblemsToHandles;
        if (map2 == null) {
            return null;
        }
        return (JavaElement) map2.get(aSTNode);
    }

    private void searchVisibleFields(ReferenceBinding referenceBinding, Scope scope, InvocationSite invocationSite, Scope scope2, boolean z10, boolean z11, ObjectVector objectVector, ObjectVector objectVector2) {
        ReferenceBinding[] referenceBindingArr;
        ReferenceBinding[] referenceBindingArr2;
        ReferenceBinding[] referenceBindingArr3 = null;
        ReferenceBinding referenceBinding2 = referenceBinding;
        int i10 = 0;
        do {
            ReferenceBinding[] superInterfaces = referenceBinding2.superInterfaces();
            if (z11 && superInterfaces != Binding.NO_SUPERINTERFACES) {
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
                    i10 = i11;
                }
            }
            FieldBinding[] availableFields = referenceBinding2.availableFields();
            if (availableFields != null && availableFields.length > 0) {
                searchVisibleFields(availableFields, referenceBinding, scope, invocationSite, scope2, z10, objectVector, objectVector2);
            }
            referenceBinding2 = referenceBinding2.superclass();
            if (!z11) {
                break;
            }
        } while (referenceBinding2 != null);
        if (!z11 || referenceBindingArr3 == null) {
            return;
        }
        for (int i13 = 0; i13 < i10; i13++) {
            ReferenceBinding referenceBinding4 = referenceBindingArr3[i13];
            FieldBinding[] availableFields2 = referenceBinding4.availableFields();
            if (availableFields2 != null) {
                searchVisibleFields(availableFields2, referenceBinding, scope, invocationSite, scope2, z10, objectVector, objectVector2);
            }
            ReferenceBinding[] superInterfaces2 = referenceBinding4.superInterfaces();
            if (superInterfaces2 != Binding.NO_SUPERINTERFACES) {
                int length2 = i10 + superInterfaces2.length;
                if (length2 >= referenceBindingArr3.length) {
                    referenceBindingArr = new ReferenceBinding[length2 + 5];
                    System.arraycopy(referenceBindingArr3, 0, referenceBindingArr, 0, i10);
                } else {
                    referenceBindingArr = referenceBindingArr3;
                }
                int i14 = i10;
                for (ReferenceBinding referenceBinding5 : superInterfaces2) {
                    int i15 = 0;
                    while (true) {
                        if (i15 >= i14) {
                            referenceBindingArr[i14] = referenceBinding5;
                            i14++;
                            break;
                        } else if (TypeBinding.equalsEquals(referenceBinding5, referenceBindingArr[i15])) {
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
