package org.eclipse.jdt.core.dom;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.MethodBinding;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocFieldReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocImplicitTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Literal;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedSuperReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Receiver;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemPackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticArgumentBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.VoidTypeBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.util.Util;

public class DefaultBindingResolver extends BindingResolver {
    BindingTables bindingTables;
    boolean fromJavaProject;
    boolean isRecoveringBindings;
    private CompilationUnitScope scope;
    WorkingCopyOwner workingCopyOwner;
    Map newAstToOldAst = new HashMap();
    Map astNodesToBlockScope = new HashMap();
    Map bindingsToAstNodes = new HashMap();

    public static class AnnotationIdentityBinding {
        org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding internalInstance;

        public AnnotationIdentityBinding(org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding annotationBinding) {
            this.internalInstance = annotationBinding;
        }

        public boolean equals(Object obj) {
            return (obj instanceof AnnotationIdentityBinding) && this.internalInstance == ((AnnotationIdentityBinding) obj).internalInstance;
        }

        public int hashCode() {
            return this.internalInstance.hashCode();
        }
    }

    public static class BindingTables {
        Map compilerBindingsToASTBindings = new ConcurrentHashMap();
        Map compilerAnnotationBindingsToASTBindings = new ConcurrentHashMap();
        Map bindingKeysToBindings = new ConcurrentHashMap();
    }

    public DefaultBindingResolver(CompilationUnitScope compilationUnitScope, WorkingCopyOwner workingCopyOwner, BindingTables bindingTables, boolean z10, boolean z11) {
        this.bindingTables = bindingTables;
        this.scope = compilationUnitScope;
        this.workingCopyOwner = workingCopyOwner;
        this.isRecoveringBindings = z10;
        this.fromJavaProject = z11;
    }

    private IBinding getDeclaringMember(org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode, Scope scope) {
        IBinding declaringMember;
        MethodScope methodScope = scope != null ? scope.methodScope() : null;
        if (methodScope != null) {
            if (!methodScope.isInsideInitializer()) {
                if (!methodScope.isLambdaScope()) {
                    return getMethodBinding(methodScope.referenceMethodBinding());
                }
                org.eclipse.jdt.internal.compiler.ast.LambdaExpression lambdaExpression = (org.eclipse.jdt.internal.compiler.ast.LambdaExpression) methodScope.referenceContext;
                IMethodBinding methodOrLambdaBinding = (lambdaExpression.descriptor == null || (declaringMember = getDeclaringMember(lambdaExpression, lambdaExpression.enclosingScope)) == null) ? null : getMethodOrLambdaBinding(lambdaExpression.getMethodBinding(), lambdaExpression.descriptor, declaringMember);
                if (methodOrLambdaBinding == null) {
                    return null;
                }
                String key = methodOrLambdaBinding.getKey();
                if (key != null) {
                    this.bindingTables.bindingKeysToBindings.put(key, methodOrLambdaBinding);
                }
                return methodOrLambdaBinding;
            }
            org.eclipse.jdt.internal.compiler.ast.TypeDeclaration referenceType = methodScope.referenceType();
            if (referenceType.fields != null) {
                int i10 = 0;
                while (true) {
                    org.eclipse.jdt.internal.compiler.ast.FieldDeclaration[] fieldDeclarationArr = referenceType.fields;
                    if (i10 >= fieldDeclarationArr.length) {
                        break;
                    }
                    org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDeclaration = fieldDeclarationArr[i10];
                    if (fieldDeclaration.declarationSourceStart <= aSTNode.sourceStart && aSTNode.sourceEnd <= fieldDeclaration.declarationSourceEnd) {
                        return fieldDeclaration instanceof org.eclipse.jdt.internal.compiler.ast.Initializer ? getMethodBinding(((org.eclipse.jdt.internal.compiler.ast.Initializer) fieldDeclaration).getMethodBinding()) : getVariableBinding(fieldDeclaration.binding);
                    }
                    i10++;
                }
            }
        }
        return null;
    }

    private synchronized IMethodBinding getMethodOrLambdaBinding(org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding, org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding2, IBinding iBinding) {
        if (methodBinding != null) {
            try {
                if (!methodBinding.isValidBinding()) {
                    methodBinding = ((ProblemMethodBinding) methodBinding).closestMatch;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (methodBinding == null) {
            return null;
        }
        if (!this.isRecoveringBindings && (methodBinding.tagBits & 128) != 0) {
            return null;
        }
        IMethodBinding iMethodBinding = (IMethodBinding) this.bindingTables.compilerBindingsToASTBindings.get(methodBinding);
        if (iMethodBinding != null) {
            return iMethodBinding;
        }
        IMethodBinding methodBinding3 = (methodBinding2 == null || iBinding == null) ? new MethodBinding(this, methodBinding) : new MethodBinding.LambdaMethod(this, methodBinding2, methodBinding, iBinding);
        this.bindingTables.compilerBindingsToASTBindings.put(methodBinding, methodBinding3);
        return methodBinding3;
    }

    private IVariableBinding[] getSyntheticOuterLocalVariables(org.eclipse.jdt.internal.compiler.ast.LambdaExpression lambdaExpression) {
        SyntheticArgumentBinding[] syntheticArgumentBindingArr = lambdaExpression.outerLocalVariables;
        IVariableBinding[] iVariableBindingArr = new IVariableBinding[syntheticArgumentBindingArr.length];
        int length = syntheticArgumentBindingArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            iVariableBindingArr[i11] = getVariableBinding(syntheticArgumentBindingArr[i10]);
            i10++;
            i11++;
        }
        return iVariableBindingArr;
    }

    private org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] getTypeAnnotations(int i10, ArrayBinding arrayBinding, boolean z10) {
        org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] typeAnnotations = arrayBinding.getTypeAnnotations();
        org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] annotationBindingArr = Binding.NO_ANNOTATIONS;
        int i11 = (arrayBinding.dimensions - i10) - (z10 ? 1 : 0);
        int length = typeAnnotations == null ? 0 : typeAnnotations.length;
        int i12 = 0;
        while (i12 < length && i11 > 0) {
            if (typeAnnotations[i12] == null) {
                i11--;
            }
            i12++;
        }
        int i13 = 0;
        for (int i14 = i12; i14 < length && i10 > 0; i14++) {
            if (typeAnnotations[i14] == null) {
                i10--;
            }
            i13++;
        }
        if (i13 <= 0) {
            return annotationBindingArr;
        }
        org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] annotationBindingArr2 = new org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[i13];
        System.arraycopy(typeAnnotations, i12, annotationBindingArr2, 0, i13);
        return annotationBindingArr2;
    }

    private int getTypeCount(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference) {
        TypeReference[][] typeReferenceArr = parameterizedQualifiedTypeReference.typeArguments;
        org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr = parameterizedQualifiedTypeReference.annotations;
        int length = parameterizedQualifiedTypeReference.tokens.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (i10 != 0 || ((typeReferenceArr != null && typeReferenceArr[i11] != null) || (annotationArr != null && annotationArr[i11] != null))) {
                i10++;
            }
        }
        return i10;
    }

    private org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] insertAnnotations(org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] annotationBindingArr, int i10) {
        if (i10 == 0 || annotationBindingArr == null || annotationBindingArr.length == 0) {
            return annotationBindingArr;
        }
        int i11 = 0;
        if (i10 < 0) {
            int i12 = 0;
            for (org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding annotationBinding : annotationBindingArr) {
                i12++;
                if (annotationBinding == null && (i10 = i10 + 1) == 0) {
                    break;
                }
            }
            if (i10 < 0) {
                i10 = 0;
            }
            i11 = i12;
        }
        org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] annotationBindingArr2 = new org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[(annotationBindingArr.length - i11) + i10];
        System.arraycopy(annotationBindingArr, i11, annotationBindingArr2, i10, annotationBindingArr.length - i11);
        return annotationBindingArr2;
    }

    private synchronized ITypeBinding internalGetTypeBinding(org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding, IBinding iBinding) {
        if (typeBinding == null) {
            return null;
        }
        if (typeBinding.isValidBinding()) {
            if ((128 & typeBinding.tagBits) != 0 && !this.isRecoveringBindings) {
                return null;
            }
            ITypeBinding iTypeBinding = (ITypeBinding) this.bindingTables.compilerBindingsToASTBindings.get(typeBinding);
            if (iTypeBinding != null) {
                return iTypeBinding;
            }
            TypeBinding createTypeBinding = TypeBinding.createTypeBinding(this, typeBinding, iBinding);
            this.bindingTables.compilerBindingsToASTBindings.put(typeBinding, createTypeBinding);
            return createTypeBinding;
        }
        int problemId = typeBinding.problemId();
        if (problemId == 1) {
            if (!this.isRecoveringBindings) {
                return null;
            }
            ITypeBinding iTypeBinding2 = (ITypeBinding) this.bindingTables.compilerBindingsToASTBindings.get(typeBinding);
            if (iTypeBinding2 != null) {
                return iTypeBinding2;
            }
            ITypeBinding createTypeBinding2 = (typeBinding.tagBits & 128) != 0 ? TypeBinding.createTypeBinding(this, typeBinding, iBinding) : new RecoveredTypeBinding(this, typeBinding);
            this.bindingTables.compilerBindingsToASTBindings.put(typeBinding, createTypeBinding2);
            return createTypeBinding2;
        }
        if ((problemId == 2 || problemId == 7) && (typeBinding instanceof ProblemReferenceBinding)) {
            org.eclipse.jdt.internal.compiler.lookup.TypeBinding closestMatch = ((ProblemReferenceBinding) typeBinding).closestMatch();
            ITypeBinding iTypeBinding3 = (ITypeBinding) this.bindingTables.compilerBindingsToASTBindings.get(closestMatch);
            if (iTypeBinding3 != null) {
                return iTypeBinding3;
            }
            TypeBinding createTypeBinding3 = TypeBinding.createTypeBinding(this, closestMatch, iBinding);
            this.bindingTables.compilerBindingsToASTBindings.put(closestMatch, createTypeBinding3);
            return createTypeBinding3;
        }
        return null;
    }

    @Override
    public synchronized ASTNode findDeclaringNode(IBinding iBinding) {
        if (iBinding == null) {
            return null;
        }
        if (iBinding instanceof IMethodBinding) {
            return (ASTNode) this.bindingsToAstNodes.get(((IMethodBinding) iBinding).getMethodDeclaration());
        }
        if (iBinding instanceof ITypeBinding) {
            return (ASTNode) this.bindingsToAstNodes.get(((ITypeBinding) iBinding).getTypeDeclaration());
        }
        if (iBinding instanceof IVariableBinding) {
            return (ASTNode) this.bindingsToAstNodes.get(((IVariableBinding) iBinding).getVariableDeclaration());
        }
        return (ASTNode) this.bindingsToAstNodes.get(iBinding);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v6, types: [org.eclipse.jdt.core.dom.IAnnotationBinding] */
    @Override
    public synchronized IAnnotationBinding getAnnotationInstance(org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding annotationBinding) {
        if (annotationBinding == null) {
            return null;
        }
        ReferenceBinding annotationType = annotationBinding.getAnnotationType();
        if (!this.isRecoveringBindings && (annotationType == null || (annotationType.tagBits & 128) != 0)) {
            return null;
        }
        AnnotationIdentityBinding annotationIdentityBinding = new AnnotationIdentityBinding(annotationBinding);
        AnnotationBinding annotationBinding2 = new AnnotationBinding(annotationBinding, this);
        ?? r62 = (IAnnotationBinding) ((ConcurrentHashMap) this.bindingTables.compilerAnnotationBindingsToASTBindings).putIfAbsent(annotationIdentityBinding, annotationBinding2);
        if (r62 != 0) {
            annotationBinding2 = r62;
        }
        return annotationBinding2;
    }

    public IBinding getBinding(Binding binding) {
        int kind = binding.kind();
        if (kind == 1 || kind == 2) {
            return getVariableBinding((org.eclipse.jdt.internal.compiler.lookup.VariableBinding) binding);
        }
        if (kind != 4) {
            if (kind == 8) {
                return getMethodBinding((org.eclipse.jdt.internal.compiler.lookup.MethodBinding) binding);
            }
            if (kind == 16) {
                return getPackageBinding((org.eclipse.jdt.internal.compiler.lookup.PackageBinding) binding);
            }
            if (kind == 64) {
                return getModuleBinding((org.eclipse.jdt.internal.compiler.lookup.ModuleBinding) binding);
            }
            if (kind != 68) {
                if (kind != 132 && kind != 260 && kind != 1028 && kind != 2052) {
                    if (kind != 4100) {
                        return null;
                    }
                }
            }
            return new TypeBinding(this, (org.eclipse.jdt.internal.compiler.lookup.TypeBinding) binding);
        }
        return getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) binding);
    }

    public Util.BindingsToNodesMap getBindingsToNodesMap() {
        return new Util.BindingsToNodesMap() {
            @Override
            public org.eclipse.jdt.internal.compiler.ast.ASTNode get(Binding binding) {
                DefaultBindingResolver defaultBindingResolver = DefaultBindingResolver.this;
                return (org.eclipse.jdt.internal.compiler.ast.ASTNode) defaultBindingResolver.newAstToOldAst.get(defaultBindingResolver.bindingsToAstNodes.get(binding));
            }
        };
    }

    @Override
    public synchronized org.eclipse.jdt.internal.compiler.ast.ASTNode getCorrespondingNode(ASTNode aSTNode) {
        return (org.eclipse.jdt.internal.compiler.ast.ASTNode) this.newAstToOldAst.get(aSTNode);
    }

    @Override
    public synchronized IMemberValuePairBinding getMemberValuePairBinding(ElementValuePair elementValuePair) {
        if (elementValuePair != null) {
            if (elementValuePair.binding != null) {
                IMemberValuePairBinding iMemberValuePairBinding = (IMemberValuePairBinding) this.bindingTables.compilerBindingsToASTBindings.get(elementValuePair);
                if (iMemberValuePairBinding != null) {
                    return iMemberValuePairBinding;
                }
                MemberValuePairBinding memberValuePairBinding = new MemberValuePairBinding(elementValuePair, this);
                this.bindingTables.compilerBindingsToASTBindings.put(elementValuePair, memberValuePairBinding);
                return memberValuePairBinding;
            }
        }
        return null;
    }

    @Override
    public synchronized IMethodBinding getMethodBinding(org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding) {
        return getMethodOrLambdaBinding(methodBinding, null, null);
    }

    @Override
    public synchronized IModuleBinding getModuleBinding(org.eclipse.jdt.internal.compiler.lookup.ModuleBinding moduleBinding) {
        if (moduleBinding == null) {
            return null;
        }
        IModuleBinding iModuleBinding = (IModuleBinding) this.bindingTables.compilerBindingsToASTBindings.get(moduleBinding);
        if (iModuleBinding == null) {
            iModuleBinding = new ModuleBinding(this, moduleBinding);
            this.bindingTables.compilerBindingsToASTBindings.put(moduleBinding, iModuleBinding);
        }
        return iModuleBinding;
    }

    @Override
    public synchronized IPackageBinding getPackageBinding(org.eclipse.jdt.internal.compiler.lookup.PackageBinding packageBinding) {
        if (packageBinding != null) {
            try {
                if (!(packageBinding instanceof ProblemPackageBinding)) {
                    IPackageBinding iPackageBinding = (IPackageBinding) this.bindingTables.compilerBindingsToASTBindings.get(packageBinding);
                    if (iPackageBinding != null) {
                        return iPackageBinding;
                    }
                    IPackageBinding recoveredPackageBinding = packageBinding instanceof ProblemPackageBinding ? new RecoveredPackageBinding(packageBinding, this) : new PackageBinding(packageBinding, this);
                    this.bindingTables.compilerBindingsToASTBindings.put(packageBinding, recoveredPackageBinding);
                    return recoveredPackageBinding;
                }
            } finally {
            }
        }
        return null;
    }

    @Override
    public synchronized ITypeBinding getTypeBinding(VariableDeclaration variableDeclaration) {
        ITypeBinding iTypeBinding = (ITypeBinding) this.bindingTables.compilerBindingsToASTBindings.get(variableDeclaration);
        if (iTypeBinding != null) {
            return iTypeBinding;
        }
        RecoveredTypeBinding recoveredTypeBinding = new RecoveredTypeBinding(this, variableDeclaration);
        this.bindingTables.compilerBindingsToASTBindings.put(variableDeclaration, recoveredTypeBinding);
        return recoveredTypeBinding;
    }

    public synchronized IVariableBinding getVariableBinding(org.eclipse.jdt.internal.compiler.lookup.VariableBinding variableBinding, VariableDeclaration variableDeclaration) {
        ProblemFieldBinding problemFieldBinding;
        int problemId;
        FieldBinding field;
        IVariableBinding recoveredVariableBinding;
        try {
            if (!this.isRecoveringBindings) {
                return getVariableBinding(variableBinding);
            }
            if (variableBinding != null) {
                if (variableBinding.isValidBinding()) {
                    IVariableBinding iVariableBinding = (IVariableBinding) this.bindingTables.compilerBindingsToASTBindings.get(variableBinding);
                    if (iVariableBinding != null) {
                        return iVariableBinding;
                    }
                    if (variableBinding.type != null) {
                        recoveredVariableBinding = new VariableBinding(this, variableBinding);
                    } else {
                        recoveredVariableBinding = new RecoveredVariableBinding(this, variableDeclaration);
                    }
                    this.bindingTables.compilerBindingsToASTBindings.put(variableBinding, recoveredVariableBinding);
                    return recoveredVariableBinding;
                }
                if ((variableBinding instanceof ProblemFieldBinding) && (((problemId = (problemFieldBinding = (ProblemFieldBinding) variableBinding).problemId()) == 2 || problemId == 6 || problemId == 7) && (field = problemFieldBinding.declaringClass.getField(problemFieldBinding.name, true)) != null)) {
                    IVariableBinding iVariableBinding2 = (IVariableBinding) this.bindingTables.compilerBindingsToASTBindings.get(field);
                    if (iVariableBinding2 != null) {
                        return iVariableBinding2;
                    }
                    VariableBinding variableBinding2 = new VariableBinding(this, field);
                    this.bindingTables.compilerBindingsToASTBindings.put(field, variableBinding2);
                    return variableBinding2;
                }
            }
            return null;
        } finally {
        }
    }

    @Override
    public WorkingCopyOwner getWorkingCopyOwner() {
        return this.workingCopyOwner;
    }

    @Override
    public boolean isResolvedTypeInferredFromExpectedType(MethodInvocation methodInvocation) {
        Object obj = this.newAstToOldAst.get(methodInvocation);
        if (!(obj instanceof MessageSend)) {
            return false;
        }
        org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding = ((MessageSend) obj).binding;
        if (methodBinding instanceof ParameterizedGenericMethodBinding) {
            return ((ParameterizedGenericMethodBinding) methodBinding).inferredReturnType;
        }
        return false;
    }

    @Override
    public LookupEnvironment lookupEnvironment() {
        return this.scope.environment();
    }

    @Override
    public synchronized void recordScope(ASTNode aSTNode, BlockScope blockScope) {
        this.astNodesToBlockScope.put(aSTNode, blockScope);
    }

    @Override
    public synchronized IAnnotationBinding resolveAnnotation(Annotation annotation) {
        Object obj = this.newAstToOldAst.get(annotation);
        if (!(obj instanceof org.eclipse.jdt.internal.compiler.ast.Annotation)) {
            return null;
        }
        IAnnotationBinding annotationInstance = getAnnotationInstance(((org.eclipse.jdt.internal.compiler.ast.Annotation) obj).getCompilerAnnotation());
        if (annotationInstance == null) {
            return null;
        }
        this.bindingsToAstNodes.put(annotationInstance, annotation);
        return annotationInstance;
    }

    @Override
    public ITypeBinding resolveArrayType(ITypeBinding iTypeBinding, int i10) {
        ITypeBinding iTypeBinding2;
        int i11;
        if (iTypeBinding instanceof RecoveredTypeBinding) {
            throw new IllegalArgumentException("Cannot be called on a recovered type binding");
        }
        if (iTypeBinding.isArray()) {
            iTypeBinding2 = iTypeBinding.getElementType();
            i11 = iTypeBinding.getDimensions() + i10;
        } else {
            iTypeBinding2 = iTypeBinding;
            i11 = i10;
        }
        if (!(iTypeBinding2 instanceof TypeBinding)) {
            return null;
        }
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = ((TypeBinding) iTypeBinding2).binding;
        if (typeBinding instanceof VoidTypeBinding) {
            throw new IllegalArgumentException();
        }
        return iTypeBinding.isArray() ? getTypeBinding(lookupEnvironment().createArrayType(typeBinding, i11, insertAnnotations(((TypeBinding) iTypeBinding).binding.getTypeAnnotations(), i10))) : getTypeBinding(lookupEnvironment().createArrayType(typeBinding, i11));
    }

    @Override
    public boolean resolveBoxing(Expression expression) {
        org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode = (org.eclipse.jdt.internal.compiler.ast.ASTNode) this.newAstToOldAst.get(expression);
        if (aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.Expression) {
            org.eclipse.jdt.internal.compiler.ast.Expression expression2 = (org.eclipse.jdt.internal.compiler.ast.Expression) aSTNode;
            if (expression2.isTrulyExpression() && (expression2.implicitConversion & 512) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Object resolveConstantExpressionValue(Expression expression) {
        Constant constant;
        org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode = (org.eclipse.jdt.internal.compiler.ast.ASTNode) this.newAstToOldAst.get(expression);
        if (aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.Expression) {
            org.eclipse.jdt.internal.compiler.ast.Expression expression2 = (org.eclipse.jdt.internal.compiler.ast.Expression) aSTNode;
            if (expression2.isTrulyExpression() && (constant = expression2.constant) != null && constant != Constant.NotAConstant) {
                switch (constant.typeID()) {
                    case 2:
                        return Character.valueOf(constant.charValue());
                    case 3:
                        return Byte.valueOf(constant.byteValue());
                    case 4:
                        return Short.valueOf(constant.shortValue());
                    case 5:
                        return constant.booleanValue() ? Boolean.TRUE : Boolean.FALSE;
                    case 6:
                    default:
                        return null;
                    case 7:
                        return Long.valueOf(constant.longValue());
                    case 8:
                        return new Double(constant.doubleValue());
                    case 9:
                        return new Float(constant.floatValue());
                    case 10:
                        return Integer.valueOf(constant.intValue());
                    case 11:
                        return constant.stringValue();
                }
            }
        }
        return null;
    }

    @Override
    public synchronized IMethodBinding resolveConstructor(ClassInstanceCreation classInstanceCreation) {
        org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode = (org.eclipse.jdt.internal.compiler.ast.ASTNode) this.newAstToOldAst.get(classInstanceCreation);
        if (aSTNode != null && (aSTNode.bits & 512) != 0) {
            return getMethodBinding(((org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) aSTNode).allocation.binding);
        }
        if (!(aSTNode instanceof AllocationExpression)) {
            return null;
        }
        return getMethodBinding(((AllocationExpression) aSTNode).binding);
    }

    @Override
    public synchronized ITypeBinding resolveExpressionType(Expression expression) {
        try {
            switch (expression.getNodeType()) {
                case 2:
                case 3:
                case 4:
                case 7:
                case 11:
                case 16:
                case 22:
                case 27:
                case 32:
                case 37:
                case 38:
                case 47:
                case 48:
                case 57:
                case 62:
                case 77:
                case 78:
                case 79:
                case 86:
                case 89:
                case 90:
                case 91:
                case 92:
                case 100:
                    org.eclipse.jdt.internal.compiler.ast.Expression expression2 = (org.eclipse.jdt.internal.compiler.ast.Expression) this.newAstToOldAst.get(expression);
                    if (expression2 != null) {
                        return getTypeBinding(expression2.resolvedType);
                    }
                    break;
                case 9:
                case 13:
                case 33:
                case 34:
                    Literal literal = (Literal) this.newAstToOldAst.get(expression);
                    if (literal != null) {
                        return getTypeBinding(literal.literalType(null));
                    }
                    break;
                case 14:
                    org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode = (org.eclipse.jdt.internal.compiler.ast.ASTNode) this.newAstToOldAst.get(expression);
                    if (aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) {
                        ITypeBinding typeBinding = getTypeBinding(((org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) aSTNode).binding);
                        if (typeBinding != null) {
                            return typeBinding;
                        }
                    } else if (aSTNode instanceof AllocationExpression) {
                        return getTypeBinding(((AllocationExpression) aSTNode).resolvedType);
                    }
                    break;
                case 36:
                    return resolveExpressionType(((ParenthesizedExpression) expression).getExpression());
                case 40:
                case 42:
                    return resolveTypeBindingForName((Name) expression);
                case 45:
                    CompilationUnitScope compilationUnitScope = this.scope;
                    if (compilationUnitScope != null) {
                        return getTypeBinding(compilationUnitScope.getJavaLangString());
                    }
                    break;
                case 52:
                    ThisReference thisReference = (ThisReference) this.newAstToOldAst.get(expression);
                    BlockScope blockScope = (BlockScope) this.astNodesToBlockScope.get(expression);
                    if (blockScope != null) {
                        return getTypeBinding(thisReference.resolveType(blockScope));
                    }
                    break;
                case 58:
                    Type type = ((VariableDeclarationExpression) expression).getType();
                    if (type != null) {
                        return type.resolveBinding();
                    }
                    break;
            }
        } catch (AbortCompilation unused) {
        }
        return null;
    }

    @Override
    public synchronized IVariableBinding resolveField(FieldAccess fieldAccess) {
        Object obj = this.newAstToOldAst.get(fieldAccess);
        if (!(obj instanceof FieldReference)) {
            return null;
        }
        return getVariableBinding(((FieldReference) obj).binding);
    }

    @Override
    public synchronized IBinding resolveImport(ImportDeclaration importDeclaration) {
        if (this.scope == null) {
            return null;
        }
        try {
            org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode = (org.eclipse.jdt.internal.compiler.ast.ASTNode) this.newAstToOldAst.get(importDeclaration);
            if (aSTNode instanceof ImportReference) {
                ImportReference importReference = (ImportReference) aSTNode;
                boolean isStatic = importReference.isStatic();
                if ((importReference.bits & 131072) != 0) {
                    CompilationUnitScope compilationUnitScope = this.scope;
                    char[][] cArr = importReference.tokens;
                    Binding binding = compilationUnitScope.getImport(CharOperation.subarray(cArr, 0, cArr.length), true, isStatic);
                    if (binding != null) {
                        if (!isStatic) {
                            if ((binding.kind() & 16) != 0) {
                                IPackageBinding packageBinding = getPackageBinding((org.eclipse.jdt.internal.compiler.lookup.PackageBinding) binding);
                                if (packageBinding == null) {
                                    return null;
                                }
                                return packageBinding;
                            }
                            ITypeBinding typeBinding = getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) binding);
                            if (typeBinding == null) {
                                return null;
                            }
                            return typeBinding;
                        }
                        if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding) {
                            ITypeBinding typeBinding2 = getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) binding);
                            return typeBinding2 != null ? typeBinding2 : null;
                        }
                    }
                } else {
                    Binding binding2 = this.scope.getImport(importReference.tokens, false, isStatic);
                    if (binding2 != null) {
                        if (isStatic) {
                            if (binding2 instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding) {
                                ITypeBinding typeBinding3 = getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) binding2);
                                return typeBinding3 != null ? typeBinding3 : null;
                            }
                            if (binding2 instanceof FieldBinding) {
                                IVariableBinding variableBinding = getVariableBinding((FieldBinding) binding2);
                                return variableBinding != null ? variableBinding : null;
                            }
                            if (binding2 instanceof org.eclipse.jdt.internal.compiler.lookup.MethodBinding) {
                                return getMethodBinding((org.eclipse.jdt.internal.compiler.lookup.MethodBinding) binding2);
                            }
                        } else if (binding2 instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding) {
                            ITypeBinding typeBinding4 = getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) binding2);
                            return typeBinding4 != null ? typeBinding4 : null;
                        }
                    }
                }
            }
        } catch (AbortCompilation unused) {
        }
        return null;
    }

    @Override
    public IMethodBinding resolveMember(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration) {
        IMethodBinding methodBinding;
        Object obj = this.newAstToOldAst.get(annotationTypeMemberDeclaration);
        if (!(obj instanceof AbstractMethodDeclaration) || (methodBinding = getMethodBinding(((AbstractMethodDeclaration) obj).binding)) == null) {
            return null;
        }
        this.bindingsToAstNodes.put(methodBinding, annotationTypeMemberDeclaration);
        String key = methodBinding.getKey();
        if (key != null) {
            this.bindingTables.bindingKeysToBindings.put(key, methodBinding);
        }
        return methodBinding;
    }

    @Override
    public synchronized IMemberValuePairBinding resolveMemberValuePair(MemberValuePair memberValuePair) {
        org.eclipse.jdt.internal.compiler.ast.MemberValuePair memberValuePair2 = (org.eclipse.jdt.internal.compiler.ast.MemberValuePair) this.newAstToOldAst.get(memberValuePair);
        if (memberValuePair2 == null) {
            return null;
        }
        return getMemberValuePairBinding(memberValuePair2.compilerElementPair);
    }

    @Override
    public synchronized IMethodBinding resolveMethod(LambdaExpression lambdaExpression) {
        IBinding declaringMember;
        Object obj = this.newAstToOldAst.get(lambdaExpression);
        if (!(obj instanceof org.eclipse.jdt.internal.compiler.ast.LambdaExpression)) {
            return null;
        }
        org.eclipse.jdt.internal.compiler.ast.LambdaExpression lambdaExpression2 = (org.eclipse.jdt.internal.compiler.ast.LambdaExpression) obj;
        IMethodBinding methodOrLambdaBinding = (lambdaExpression2.descriptor == null || (declaringMember = getDeclaringMember(lambdaExpression2, lambdaExpression2.enclosingScope)) == null) ? null : getMethodOrLambdaBinding(lambdaExpression2.getMethodBinding(), lambdaExpression2.descriptor, declaringMember);
        if (methodOrLambdaBinding == null) {
            return null;
        }
        if (methodOrLambdaBinding instanceof MethodBinding.LambdaMethod) {
            ((MethodBinding.LambdaMethod) methodOrLambdaBinding).setSyntheticOuterLocals(getSyntheticOuterLocalVariables(lambdaExpression2));
        }
        this.bindingsToAstNodes.put(methodOrLambdaBinding, lambdaExpression);
        String key = methodOrLambdaBinding.getKey();
        if (key != null) {
            this.bindingTables.bindingKeysToBindings.put(key, methodOrLambdaBinding);
        }
        return methodOrLambdaBinding;
    }

    @Override
    public IModuleBinding resolveModule(ModuleDeclaration moduleDeclaration) {
        IModuleBinding moduleBinding;
        Object obj = this.newAstToOldAst.get(moduleDeclaration);
        if (!(obj instanceof org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration) || (moduleBinding = getModuleBinding(((org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration) obj).binding)) == null) {
            return null;
        }
        this.bindingsToAstNodes.put(moduleBinding, moduleDeclaration);
        String key = moduleBinding.getKey();
        if (key != null) {
            this.bindingTables.bindingKeysToBindings.put(key, moduleBinding);
        }
        return moduleBinding;
    }

    @Override
    public synchronized IBinding resolveName(Name name) {
        ITypeBinding typeBinding;
        ITypeBinding typeBinding2;
        Binding binding;
        Binding binding2;
        org.eclipse.jdt.internal.compiler.lookup.PackageBinding packageBinding;
        org.eclipse.jdt.internal.compiler.lookup.PackageBinding packageBinding2;
        ProblemFieldBinding problemFieldBinding;
        int problemId;
        FieldBinding field;
        int i10;
        ProblemFieldBinding problemFieldBinding2;
        int problemId2;
        ReferenceBinding referenceBinding;
        FieldBinding field2;
        Binding binding3;
        try {
            org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode = (org.eclipse.jdt.internal.compiler.ast.ASTNode) this.newAstToOldAst.get(name);
            int i11 = name.index;
            if (aSTNode instanceof QualifiedNameReference) {
                QualifiedNameReference qualifiedNameReference = (QualifiedNameReference) aSTNode;
                char[][] cArr = qualifiedNameReference.tokens;
                int i12 = qualifiedNameReference.indexOfFirstFieldBinding;
                if (i11 < i12) {
                    BlockScope blockScope = (BlockScope) this.astNodesToBlockScope.get(name);
                    try {
                        if (blockScope == null) {
                            CompilationUnitScope compilationUnitScope = this.scope;
                            if (compilationUnitScope == null) {
                                return null;
                            }
                            binding3 = compilationUnitScope.getTypeOrPackage(CharOperation.subarray(cArr, 0, i11));
                        } else {
                            binding3 = blockScope.getTypeOrPackage(CharOperation.subarray(cArr, 0, i11));
                        }
                    } catch (AbortCompilation unused) {
                        binding3 = null;
                    }
                    if (binding3 instanceof org.eclipse.jdt.internal.compiler.lookup.PackageBinding) {
                        return getPackageBinding((org.eclipse.jdt.internal.compiler.lookup.PackageBinding) binding3);
                    }
                    if (binding3 instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding) {
                        return getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) binding3);
                    }
                } else {
                    if (i11 != i12) {
                        FieldBinding[] fieldBindingArr = qualifiedNameReference.otherBindings;
                        if (fieldBindingArr != null && (i10 = (i11 - i12) - 1) >= 0) {
                            return getVariableBinding(fieldBindingArr[i10]);
                        }
                        return null;
                    }
                    if (qualifiedNameReference.isTypeReference()) {
                        return getTypeBinding(qualifiedNameReference.resolvedType);
                    }
                    Binding binding4 = qualifiedNameReference.binding;
                    if (binding4 != null) {
                        if (binding4.isValidBinding()) {
                            return getVariableBinding((org.eclipse.jdt.internal.compiler.lookup.VariableBinding) binding4);
                        }
                        if ((binding4 instanceof ProblemFieldBinding) && (((problemId2 = (problemFieldBinding2 = (ProblemFieldBinding) binding4).problemId()) == 2 || problemId2 == 7) && (referenceBinding = problemFieldBinding2.declaringClass) != null && (field2 = referenceBinding.getField(cArr[cArr.length - 1], true)) != null && field2.type != null)) {
                            IVariableBinding iVariableBinding = (IVariableBinding) this.bindingTables.compilerBindingsToASTBindings.get(field2);
                            if (iVariableBinding != null) {
                                return iVariableBinding;
                            }
                            VariableBinding variableBinding = new VariableBinding(this, field2);
                            this.bindingTables.compilerBindingsToASTBindings.put(field2, variableBinding);
                            return variableBinding;
                        }
                    }
                }
            } else if (aSTNode instanceof QualifiedTypeReference) {
                QualifiedTypeReference qualifiedTypeReference = (QualifiedTypeReference) aSTNode;
                org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding3 = qualifiedTypeReference.resolvedType;
                if (typeBinding3 == null) {
                    return null;
                }
                if (i11 == qualifiedTypeReference.tokens.length) {
                    return (typeBinding3.isValidBinding() || !(qualifiedTypeReference instanceof JavadocQualifiedTypeReference) || (packageBinding = ((JavadocQualifiedTypeReference) aSTNode).packageBinding) == null) ? getTypeBinding(qualifiedTypeReference.resolvedType.leafComponentType()) : getPackageBinding(packageBinding);
                }
                if (i11 >= 0) {
                    BlockScope blockScope2 = (BlockScope) this.astNodesToBlockScope.get(name);
                    try {
                        if (blockScope2 == null) {
                            CompilationUnitScope compilationUnitScope2 = this.scope;
                            if (compilationUnitScope2 == null) {
                                return null;
                            }
                            binding2 = compilationUnitScope2.getTypeOrPackage(CharOperation.subarray(qualifiedTypeReference.tokens, 0, i11));
                        } else {
                            binding2 = blockScope2.getTypeOrPackage(CharOperation.subarray(qualifiedTypeReference.tokens, 0, i11));
                        }
                    } catch (AbortCompilation unused2) {
                        binding2 = null;
                    }
                    if (binding2 instanceof org.eclipse.jdt.internal.compiler.lookup.PackageBinding) {
                        return getPackageBinding((org.eclipse.jdt.internal.compiler.lookup.PackageBinding) binding2);
                    }
                    if (binding2 instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding) {
                        return getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) binding2);
                    }
                    return null;
                }
            } else if (aSTNode instanceof ImportReference) {
                ImportReference importReference = (ImportReference) aSTNode;
                char[][] cArr2 = importReference.tokens;
                int length = cArr2.length;
                boolean z10 = (importReference.bits & 262144) != 0;
                if (i11 >= 0) {
                    CompilationUnitScope compilationUnitScope3 = this.scope;
                    if (compilationUnitScope3 == null) {
                        return null;
                    }
                    try {
                        if (length != i11 || z10) {
                            if (!z10) {
                                cArr2 = CharOperation.subarray(cArr2, 0, i11);
                            }
                            binding = compilationUnitScope3.getImport(cArr2, true, importReference.isStatic());
                        } else {
                            binding = compilationUnitScope3.getImport(CharOperation.subarray(cArr2, 0, i11), (importReference.bits & 131072) != 0, importReference.isStatic());
                        }
                    } catch (AbortCompilation unused3) {
                        binding = null;
                    }
                    if (binding != null) {
                        if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.PackageBinding) {
                            return getPackageBinding((org.eclipse.jdt.internal.compiler.lookup.PackageBinding) binding);
                        }
                        if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding) {
                            return getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) binding);
                        }
                        if (binding instanceof FieldBinding) {
                            return getVariableBinding((FieldBinding) binding);
                        }
                        if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.MethodBinding) {
                            return getMethodBinding((org.eclipse.jdt.internal.compiler.lookup.MethodBinding) binding);
                        }
                        return null;
                    }
                }
            } else {
                if (aSTNode instanceof CompilationUnitDeclaration) {
                    org.eclipse.jdt.internal.compiler.ast.TypeDeclaration[] typeDeclarationArr = ((CompilationUnitDeclaration) aSTNode).types;
                    if (typeDeclarationArr != null && typeDeclarationArr.length != 0) {
                        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration = typeDeclarationArr[0];
                        if (typeDeclaration != null && (typeBinding2 = getTypeBinding(typeDeclaration.binding)) != null) {
                            return typeBinding2.getPackage();
                        }
                    }
                    return null;
                }
                if (aSTNode instanceof AbstractMethodDeclaration) {
                    IMethodBinding methodBinding = getMethodBinding(((AbstractMethodDeclaration) aSTNode).binding);
                    if (methodBinding != null) {
                        return methodBinding;
                    }
                } else if (aSTNode instanceof ModuleReference) {
                    IModuleBinding moduleBinding = getModuleBinding(((ModuleReference) aSTNode).binding);
                    if (moduleBinding != null) {
                        return moduleBinding;
                    }
                } else if (aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration) {
                    IModuleBinding moduleBinding2 = getModuleBinding(((org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration) aSTNode).binding);
                    if (moduleBinding2 != null) {
                        return moduleBinding2;
                    }
                } else if ((aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) && (typeBinding = getTypeBinding(((org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) aSTNode).binding)) != null) {
                    return typeBinding;
                }
            }
            if (aSTNode instanceof SingleNameReference) {
                SingleNameReference singleNameReference = (SingleNameReference) aSTNode;
                if (singleNameReference.isTypeReference()) {
                    return getTypeBinding(singleNameReference.resolvedType);
                }
                Binding binding5 = singleNameReference.binding;
                if (binding5 != null) {
                    if (binding5.isValidBinding()) {
                        return getVariableBinding((org.eclipse.jdt.internal.compiler.lookup.VariableBinding) binding5);
                    }
                    if ((binding5 instanceof ProblemFieldBinding) && (((problemId = (problemFieldBinding = (ProblemFieldBinding) binding5).problemId()) == 2 || problemId == 6 || problemId == 7) && (field = problemFieldBinding.declaringClass.getField(problemFieldBinding.name, true)) != null && field.type != null)) {
                        IVariableBinding iVariableBinding2 = (IVariableBinding) this.bindingTables.compilerBindingsToASTBindings.get(field);
                        if (iVariableBinding2 != null) {
                            return iVariableBinding2;
                        }
                        VariableBinding variableBinding2 = new VariableBinding(this, field);
                        this.bindingTables.compilerBindingsToASTBindings.put(field, variableBinding2);
                        return variableBinding2;
                    }
                }
            } else {
                if (aSTNode instanceof QualifiedSuperReference) {
                    return getTypeBinding(((QualifiedSuperReference) aSTNode).qualification.resolvedType);
                }
                if (aSTNode instanceof LocalDeclaration) {
                    return (name.getAST().apiLevel() >= 10 && (name instanceof SimpleName) && ((SimpleName) name).isVar()) ? resolveTypeBindingForName(name) : getVariableBinding(((LocalDeclaration) aSTNode).binding);
                }
                if (aSTNode instanceof JavadocFieldReference) {
                    JavadocFieldReference javadocFieldReference = (JavadocFieldReference) aSTNode;
                    org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding2 = javadocFieldReference.methodBinding;
                    return methodBinding2 != null ? getMethodBinding(methodBinding2) : getVariableBinding(javadocFieldReference.binding);
                }
                if (aSTNode instanceof FieldReference) {
                    return getVariableBinding(((FieldReference) aSTNode).binding);
                }
                if (aSTNode instanceof SingleTypeReference) {
                    if ((aSTNode instanceof JavadocSingleTypeReference) && (packageBinding2 = ((JavadocSingleTypeReference) aSTNode).packageBinding) != null) {
                        return getPackageBinding(packageBinding2);
                    }
                    org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding4 = ((SingleTypeReference) aSTNode).resolvedType;
                    if (typeBinding4 == null) {
                        return null;
                    }
                    return getTypeBinding(typeBinding4.leafComponentType());
                }
                if (aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.FieldDeclaration) {
                    return getVariableBinding(((org.eclipse.jdt.internal.compiler.ast.FieldDeclaration) aSTNode).binding);
                }
                if (aSTNode instanceof MessageSend) {
                    return getMethodBinding(((MessageSend) aSTNode).binding);
                }
                if (aSTNode instanceof AllocationExpression) {
                    return getMethodBinding(((AllocationExpression) aSTNode).binding);
                }
                if (aSTNode instanceof JavadocImplicitTypeReference) {
                    return getTypeBinding(((JavadocImplicitTypeReference) aSTNode).resolvedType);
                }
                if (aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.TypeParameter) {
                    return getTypeBinding(((org.eclipse.jdt.internal.compiler.ast.TypeParameter) aSTNode).binding);
                }
                if (aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.MemberValuePair) {
                    return getMethodBinding(((org.eclipse.jdt.internal.compiler.ast.MemberValuePair) aSTNode).binding);
                }
                if (aSTNode instanceof ReferenceExpression) {
                    return getMethodBinding(((ReferenceExpression) aSTNode).getMethodBinding());
                }
            }
            return null;
        } finally {
        }
    }

    @Override
    public synchronized IPackageBinding resolvePackage(PackageDeclaration packageDeclaration) {
        try {
            if (this.scope == null) {
                return null;
            }
            try {
                org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode = (org.eclipse.jdt.internal.compiler.ast.ASTNode) this.newAstToOldAst.get(packageDeclaration);
                if (aSTNode instanceof ImportReference) {
                    CompilationUnitScope compilationUnitScope = this.scope;
                    char[][] cArr = ((ImportReference) aSTNode).tokens;
                    Binding onlyPackage = compilationUnitScope.getOnlyPackage(CharOperation.subarray(cArr, 0, cArr.length));
                    if (onlyPackage != null && onlyPackage.isValidBinding()) {
                        if (onlyPackage instanceof ReferenceBinding) {
                            onlyPackage = ((ReferenceBinding) onlyPackage).fPackage;
                        }
                        if (onlyPackage instanceof org.eclipse.jdt.internal.compiler.lookup.PackageBinding) {
                            IPackageBinding packageBinding = getPackageBinding((org.eclipse.jdt.internal.compiler.lookup.PackageBinding) onlyPackage);
                            if (packageBinding == null) {
                                return null;
                            }
                            this.bindingsToAstNodes.put(packageBinding, packageDeclaration);
                            String key = packageBinding.getKey();
                            if (key != null) {
                                this.bindingTables.bindingKeysToBindings.put(key, packageBinding);
                            }
                            return packageBinding;
                        }
                    }
                }
            } catch (AbortCompilation unused) {
            }
            return null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized IBinding resolveReference(MemberRef memberRef) {
        org.eclipse.jdt.internal.compiler.ast.Expression expression = (org.eclipse.jdt.internal.compiler.ast.Expression) this.newAstToOldAst.get(memberRef);
        if (expression instanceof TypeReference) {
            return getTypeBinding(expression.resolvedType);
        }
        if (!(expression instanceof JavadocFieldReference)) {
            return null;
        }
        JavadocFieldReference javadocFieldReference = (JavadocFieldReference) expression;
        org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding = javadocFieldReference.methodBinding;
        if (methodBinding != null) {
            return getMethodBinding(methodBinding);
        }
        return getVariableBinding(javadocFieldReference.binding);
    }

    @Override
    public ITypeBinding resolveType(AnnotationTypeDeclaration annotationTypeDeclaration) {
        ITypeBinding typeBinding;
        Object obj = this.newAstToOldAst.get(annotationTypeDeclaration);
        if (!(obj instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) || (typeBinding = getTypeBinding(((org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) obj).binding)) == null) {
            return null;
        }
        this.bindingsToAstNodes.put(typeBinding, annotationTypeDeclaration);
        String key = typeBinding.getKey();
        if (key != null) {
            this.bindingTables.bindingKeysToBindings.put(key, typeBinding);
        }
        return typeBinding;
    }

    public synchronized ITypeBinding resolveTypeBindingForName(Name name) {
        ITypeBinding typeBinding;
        Binding binding;
        Binding binding2;
        LocalVariableBinding localVariableBinding;
        Binding binding3;
        org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode = (org.eclipse.jdt.internal.compiler.ast.ASTNode) this.newAstToOldAst.get(name);
        int i10 = name.index;
        boolean z10 = true;
        if (aSTNode instanceof QualifiedNameReference) {
            QualifiedNameReference qualifiedNameReference = (QualifiedNameReference) aSTNode;
            char[][] cArr = qualifiedNameReference.tokens;
            if (cArr.length == i10) {
                return getTypeBinding(qualifiedNameReference.resolvedType);
            }
            int i11 = qualifiedNameReference.indexOfFirstFieldBinding;
            if (i10 >= i11) {
                if (i10 == i11) {
                    if (qualifiedNameReference.isTypeReference()) {
                        return getTypeBinding(qualifiedNameReference.resolvedType);
                    }
                    FieldBinding[] fieldBindingArr = qualifiedNameReference.otherBindings;
                    if (fieldBindingArr == null) {
                        return null;
                    }
                    FieldBinding fieldBinding = fieldBindingArr[0];
                    if (fieldBinding == null) {
                        return null;
                    }
                    org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding2 = fieldBinding.declaringClass;
                    if (typeBinding2 == null) {
                        int i12 = qualifiedNameReference.bits & 7;
                        if (i12 == 1) {
                            typeBinding2 = ((FieldBinding) qualifiedNameReference.binding).type;
                        } else if (i12 == 2) {
                            typeBinding2 = ((LocalVariableBinding) qualifiedNameReference.binding).type;
                        }
                    }
                    return getTypeBinding(typeBinding2);
                }
                FieldBinding[] fieldBindingArr2 = qualifiedNameReference.otherBindings;
                if (fieldBindingArr2 == null) {
                    return null;
                }
                int i13 = i10 - i11;
                if (fieldBindingArr2.length == i13) {
                    return getTypeBinding(qualifiedNameReference.resolvedType);
                }
                FieldBinding fieldBinding2 = fieldBindingArr2[i13];
                if (fieldBinding2 == null) {
                    return null;
                }
                org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding3 = fieldBinding2.declaringClass;
                if (typeBinding3 == null) {
                    FieldBinding fieldBinding3 = fieldBindingArr2[i13 - 1];
                    if (fieldBinding3 == null) {
                        return null;
                    }
                    typeBinding3 = fieldBinding3.type;
                }
                return getTypeBinding(typeBinding3);
            }
            BlockScope blockScope = (BlockScope) this.astNodesToBlockScope.get(name);
            try {
                if (blockScope == null) {
                    CompilationUnitScope compilationUnitScope = this.scope;
                    if (compilationUnitScope == null) {
                        return null;
                    }
                    binding3 = compilationUnitScope.getTypeOrPackage(CharOperation.subarray(cArr, 0, i10));
                } else {
                    binding3 = blockScope.getTypeOrPackage(CharOperation.subarray(cArr, 0, i10));
                }
            } catch (AbortCompilation unused) {
                binding3 = null;
            }
            if (binding3 instanceof org.eclipse.jdt.internal.compiler.lookup.PackageBinding) {
                return null;
            }
            if (binding3 instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding) {
                return getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) binding3);
            }
        } else if (aSTNode instanceof QualifiedTypeReference) {
            QualifiedTypeReference qualifiedTypeReference = (QualifiedTypeReference) aSTNode;
            org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding4 = qualifiedTypeReference.resolvedType;
            if (typeBinding4 == null) {
                return null;
            }
            if (i10 == qualifiedTypeReference.tokens.length) {
                if (typeBinding4.isValidBinding() || !(qualifiedTypeReference instanceof JavadocQualifiedTypeReference) || ((JavadocQualifiedTypeReference) aSTNode).packageBinding == null) {
                    return getTypeBinding(qualifiedTypeReference.resolvedType.leafComponentType());
                }
                return null;
            }
            if (i10 >= 0) {
                BlockScope blockScope2 = (BlockScope) this.astNodesToBlockScope.get(name);
                try {
                    if (blockScope2 == null) {
                        CompilationUnitScope compilationUnitScope2 = this.scope;
                        if (compilationUnitScope2 == null) {
                            return null;
                        }
                        binding2 = compilationUnitScope2.getTypeOrPackage(CharOperation.subarray(qualifiedTypeReference.tokens, 0, i10));
                    } else {
                        binding2 = blockScope2.getTypeOrPackage(CharOperation.subarray(qualifiedTypeReference.tokens, 0, i10));
                    }
                } catch (AbortCompilation unused2) {
                    binding2 = null;
                }
                if (binding2 instanceof org.eclipse.jdt.internal.compiler.lookup.PackageBinding) {
                    return null;
                }
                if (binding2 instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding) {
                    return getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) binding2);
                }
                return null;
            }
        } else if (aSTNode instanceof ImportReference) {
            if ((aSTNode.bits & 262144) != 0) {
                return null;
            }
            ImportReference importReference = (ImportReference) aSTNode;
            char[][] cArr2 = importReference.tokens;
            int length = cArr2.length;
            if (i10 >= 0) {
                CompilationUnitScope compilationUnitScope3 = this.scope;
                if (compilationUnitScope3 == null) {
                    return null;
                }
                try {
                    if (length == i10) {
                        char[][] subarray = CharOperation.subarray(cArr2, 0, i10);
                        if ((importReference.bits & 131072) == 0) {
                            z10 = false;
                        }
                        binding = compilationUnitScope3.getImport(subarray, z10, importReference.isStatic());
                    } else {
                        binding = compilationUnitScope3.getImport(CharOperation.subarray(cArr2, 0, i10), true, importReference.isStatic());
                    }
                } catch (AbortCompilation unused3) {
                    binding = null;
                }
                if (binding != null) {
                    if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding) {
                        return getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) binding);
                    }
                    return null;
                }
            }
        } else {
            if (aSTNode instanceof AbstractMethodDeclaration) {
                IMethodBinding methodBinding = getMethodBinding(((AbstractMethodDeclaration) aSTNode).binding);
                if (methodBinding == null) {
                    return null;
                }
                return methodBinding.getReturnType();
            }
            if ((aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) && (typeBinding = getTypeBinding(((org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) aSTNode).binding)) != null) {
                return typeBinding;
            }
        }
        if ((aSTNode instanceof JavadocSingleNameReference) && (localVariableBinding = (LocalVariableBinding) ((JavadocSingleNameReference) aSTNode).binding) != null) {
            return getTypeBinding(localVariableBinding.type);
        }
        if (aSTNode instanceof SingleNameReference) {
            return getTypeBinding(((SingleNameReference) aSTNode).resolvedType);
        }
        if (aSTNode instanceof QualifiedSuperReference) {
            return getTypeBinding(((QualifiedSuperReference) aSTNode).qualification.resolvedType);
        }
        if (aSTNode instanceof Receiver) {
            return getTypeBinding(((Receiver) aSTNode).type.resolvedType);
        }
        if (aSTNode instanceof LocalDeclaration) {
            IVariableBinding variableBinding = getVariableBinding(((LocalDeclaration) aSTNode).binding);
            if (variableBinding == null) {
                return null;
            }
            return variableBinding.getType();
        }
        if (aSTNode instanceof JavadocFieldReference) {
            JavadocFieldReference javadocFieldReference = (JavadocFieldReference) aSTNode;
            org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding2 = javadocFieldReference.methodBinding;
            return methodBinding2 != null ? getMethodBinding(methodBinding2).getReturnType() : getTypeBinding(javadocFieldReference.resolvedType);
        }
        if (aSTNode instanceof FieldReference) {
            return getTypeBinding(((FieldReference) aSTNode).resolvedType);
        }
        if (aSTNode instanceof SingleTypeReference) {
            org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding5 = ((SingleTypeReference) aSTNode).resolvedType;
            if (typeBinding5 != null) {
                return getTypeBinding(typeBinding5.leafComponentType());
            }
        } else {
            if (aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.FieldDeclaration) {
                IVariableBinding variableBinding2 = getVariableBinding(((org.eclipse.jdt.internal.compiler.ast.FieldDeclaration) aSTNode).binding);
                if (variableBinding2 == null) {
                    return null;
                }
                return variableBinding2.getType();
            }
            if (aSTNode instanceof MessageSend) {
                IMethodBinding methodBinding3 = getMethodBinding(((MessageSend) aSTNode).binding);
                if (methodBinding3 == null) {
                    return null;
                }
                return methodBinding3.getReturnType();
            }
            if (aSTNode instanceof AllocationExpression) {
                return getTypeBinding(((AllocationExpression) aSTNode).resolvedType);
            }
            if (aSTNode instanceof JavadocImplicitTypeReference) {
                return getTypeBinding(((JavadocImplicitTypeReference) aSTNode).resolvedType);
            }
            if (aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.TypeParameter) {
                return getTypeBinding(((org.eclipse.jdt.internal.compiler.ast.TypeParameter) aSTNode).binding);
            }
            if (aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.MemberValuePair) {
                IMethodBinding methodBinding4 = getMethodBinding(((org.eclipse.jdt.internal.compiler.ast.MemberValuePair) aSTNode).binding);
                if (methodBinding4 == null) {
                    return null;
                }
                return methodBinding4.getReturnType();
            }
            if (aSTNode instanceof ReferenceExpression) {
                IMethodBinding methodBinding5 = getMethodBinding(((ReferenceExpression) aSTNode).getMethodBinding());
                if (methodBinding5 == null) {
                    return null;
                }
                return methodBinding5.getReturnType();
            }
        }
        return null;
    }

    @Override
    public synchronized ITypeBinding resolveTypeParameter(TypeParameter typeParameter) {
        Object obj = this.newAstToOldAst.get(typeParameter);
        if (!(obj instanceof org.eclipse.jdt.internal.compiler.ast.TypeParameter)) {
            return null;
        }
        ITypeBinding typeBinding = getTypeBinding(((org.eclipse.jdt.internal.compiler.ast.TypeParameter) obj).binding);
        if (typeBinding == null) {
            return null;
        }
        this.bindingsToAstNodes.put(typeBinding, typeParameter);
        String key = typeBinding.getKey();
        if (key != null) {
            this.bindingTables.bindingKeysToBindings.put(key, typeBinding);
        }
        return typeBinding;
    }

    @Override
    public boolean resolveUnboxing(Expression expression) {
        org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode = (org.eclipse.jdt.internal.compiler.ast.ASTNode) this.newAstToOldAst.get(expression);
        return (aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.Expression) && (((org.eclipse.jdt.internal.compiler.ast.Expression) aSTNode).implicitConversion & 1024) != 0;
    }

    @Override
    public synchronized IVariableBinding resolveVariable(EnumConstantDeclaration enumConstantDeclaration) {
        Object obj = this.newAstToOldAst.get(enumConstantDeclaration);
        if (!(obj instanceof org.eclipse.jdt.internal.compiler.ast.FieldDeclaration)) {
            return null;
        }
        IVariableBinding variableBinding = getVariableBinding(((org.eclipse.jdt.internal.compiler.ast.FieldDeclaration) obj).binding);
        if (variableBinding == null) {
            return null;
        }
        this.bindingsToAstNodes.put(variableBinding, enumConstantDeclaration);
        String key = variableBinding.getKey();
        if (key != null) {
            this.bindingTables.bindingKeysToBindings.put(key, variableBinding);
        }
        return variableBinding;
    }

    /* JADX WARN: Code restructure failed: missing block: B:98:0x020b, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x020d A[Catch: all -> 0x0066, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0066, blocks: (B:3:0x0001, B:10:0x0008, B:12:0x0010, B:14:0x0018, B:16:0x0020, B:18:0x0028, B:20:0x0030, B:22:0x0038, B:24:0x0040, B:26:0x0048, B:29:0x0052, B:31:0x005a, B:33:0x020d, B:41:0x0069, B:43:0x0071, B:44:0x007d, B:46:0x0086, B:47:0x0094, B:49:0x009c, B:50:0x00a8, B:52:0x00b0, B:53:0x00be, B:55:0x00c6, B:56:0x00d4, B:58:0x00dc, B:59:0x00ea, B:61:0x00f2, B:62:0x00fe, B:64:0x0106, B:65:0x0112, B:67:0x011a, B:68:0x0126, B:70:0x012e, B:71:0x013c, B:73:0x0144, B:74:0x0152, B:76:0x015a, B:77:0x0168, B:79:0x0170, B:80:0x017e, B:82:0x0186, B:83:0x0194, B:85:0x019c, B:86:0x01a9, B:88:0x01b1, B:89:0x01be, B:91:0x01c6, B:92:0x01d3, B:94:0x01db, B:95:0x01e8, B:97:0x01f0, B:99:0x01fd), top: B:2:0x0001 }] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized ITypeBinding resolveWellKnownType(String str) {
        ITypeBinding iTypeBinding;
        try {
            if (this.scope == null) {
                return null;
            }
            try {
            } catch (AbortCompilation unused) {
                iTypeBinding = null;
            }
            if (!TypedValues.Custom.S_BOOLEAN.equals(str) && !"char".equals(str) && !"byte".equals(str) && !"short".equals(str) && !"int".equals(str) && !"long".equals(str) && !TypedValues.Custom.S_FLOAT.equals(str) && !"double".equals(str) && !"void".equals(str)) {
                if ("java.lang.Object".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getJavaLangObject());
                } else if ("java.lang.String".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getJavaLangString());
                } else if ("java.lang.StringBuffer".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_STRINGBUFFER, 3));
                } else if ("java.lang.Throwable".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getJavaLangThrowable());
                } else if ("java.lang.Exception".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_EXCEPTION, 3));
                } else if ("java.lang.RuntimeException".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_RUNTIMEEXCEPTION, 3));
                } else if ("java.lang.Error".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_ERROR, 3));
                } else if ("java.lang.Class".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getJavaLangClass());
                } else if ("java.lang.Cloneable".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getJavaLangCloneable());
                } else if ("java.io.Serializable".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getJavaIoSerializable());
                } else if ("java.lang.Boolean".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_BOOLEAN, 3));
                } else if ("java.lang.Byte".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_BYTE, 3));
                } else if ("java.lang.Character".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_CHARACTER, 3));
                } else if ("java.lang.Double".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_DOUBLE, 3));
                } else if ("java.lang.Float".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_FLOAT, 3));
                } else if ("java.lang.Integer".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_INTEGER, 3));
                } else if ("java.lang.Long".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_LONG, 3));
                } else if ("java.lang.Short".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_SHORT, 3));
                } else if ("java.lang.Void".equals(str)) {
                    iTypeBinding = getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_VOID, 3));
                } else {
                    if ("java.lang.AssertionError".equals(str)) {
                        iTypeBinding = getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_ASSERTIONERROR, 3));
                    }
                    iTypeBinding = null;
                }
                if (iTypeBinding != null) {
                    if (!iTypeBinding.isRecovered()) {
                        return iTypeBinding;
                    }
                }
                return null;
            }
            iTypeBinding = getTypeBinding(Scope.getBaseType(str.toCharArray()));
            if (iTypeBinding != null) {
            }
            return null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public CompilationUnitScope scope() {
        return this.scope;
    }

    @Override
    public synchronized void store(ASTNode aSTNode, org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode2) {
        this.newAstToOldAst.put(aSTNode, aSTNode2);
    }

    @Override
    public synchronized void updateKey(ASTNode aSTNode, ASTNode aSTNode2) {
        Object remove = this.newAstToOldAst.remove(aSTNode);
        if (remove != null) {
            this.newAstToOldAst.put(aSTNode2, remove);
        }
    }

    @Override
    public synchronized ITypeBinding getTypeBinding(Type type) {
        ITypeBinding iTypeBinding = (ITypeBinding) this.bindingTables.compilerBindingsToASTBindings.get(type);
        if (iTypeBinding != null) {
            return iTypeBinding;
        }
        RecoveredTypeBinding recoveredTypeBinding = new RecoveredTypeBinding(this, type);
        this.bindingTables.compilerBindingsToASTBindings.put(type, recoveredTypeBinding);
        return recoveredTypeBinding;
    }

    @Override
    public synchronized IVariableBinding resolveField(SuperFieldAccess superFieldAccess) {
        Object obj = this.newAstToOldAst.get(superFieldAccess);
        if (!(obj instanceof FieldReference)) {
            return null;
        }
        return getVariableBinding(((FieldReference) obj).binding);
    }

    @Override
    public boolean isResolvedTypeInferredFromExpectedType(SuperMethodInvocation superMethodInvocation) {
        Object obj = this.newAstToOldAst.get(superMethodInvocation);
        if (!(obj instanceof MessageSend)) {
            return false;
        }
        org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding = ((MessageSend) obj).binding;
        if (methodBinding instanceof ParameterizedGenericMethodBinding) {
            return ((ParameterizedGenericMethodBinding) methodBinding).inferredReturnType;
        }
        return false;
    }

    @Override
    public synchronized IMethodBinding resolveConstructor(ConstructorInvocation constructorInvocation) {
        org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode = (org.eclipse.jdt.internal.compiler.ast.ASTNode) this.newAstToOldAst.get(constructorInvocation);
        if (!(aSTNode instanceof ExplicitConstructorCall)) {
            return null;
        }
        return getMethodBinding(((ExplicitConstructorCall) aSTNode).binding);
    }

    @Override
    public synchronized ITypeBinding resolveType(AnonymousClassDeclaration anonymousClassDeclaration) {
        org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode = (org.eclipse.jdt.internal.compiler.ast.ASTNode) this.newAstToOldAst.get(anonymousClassDeclaration);
        if (aSTNode == null || (aSTNode.bits & 512) == 0) {
            return null;
        }
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration = (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) aSTNode;
        ITypeBinding internalGetTypeBinding = internalGetTypeBinding(typeDeclaration.binding, getDeclaringMember(typeDeclaration, typeDeclaration.scope));
        if (internalGetTypeBinding == null) {
            return null;
        }
        this.bindingsToAstNodes.put(internalGetTypeBinding, anonymousClassDeclaration);
        String key = internalGetTypeBinding.getKey();
        if (key != null) {
            this.bindingTables.bindingKeysToBindings.put(key, internalGetTypeBinding);
        }
        return internalGetTypeBinding;
    }

    public DefaultBindingResolver(LookupEnvironment lookupEnvironment, WorkingCopyOwner workingCopyOwner, BindingTables bindingTables, boolean z10, boolean z11) {
        this.bindingTables = bindingTables;
        this.scope = new CompilationUnitScope(new CompilationUnitDeclaration(null, null, -1), lookupEnvironment);
        this.workingCopyOwner = workingCopyOwner;
        this.isRecoveringBindings = z10;
        this.fromJavaProject = z11;
    }

    @Override
    public synchronized IBinding resolveReference(MethodRef methodRef) {
        org.eclipse.jdt.internal.compiler.ast.Expression expression = (org.eclipse.jdt.internal.compiler.ast.Expression) this.newAstToOldAst.get(methodRef);
        if (expression instanceof JavadocMessageSend) {
            return getMethodBinding(((JavadocMessageSend) expression).binding);
        }
        if (!(expression instanceof JavadocAllocationExpression)) {
            return null;
        }
        return getMethodBinding(((JavadocAllocationExpression) expression).binding);
    }

    @Override
    public synchronized ITypeBinding getTypeBinding(org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding) {
        return internalGetTypeBinding(typeBinding, null);
    }

    @Override
    public synchronized IVariableBinding resolveVariable(VariableDeclaration variableDeclaration) {
        IVariableBinding variableBinding;
        try {
            Object obj = this.newAstToOldAst.get(variableDeclaration);
            if (!(obj instanceof AbstractVariableDeclaration)) {
                return null;
            }
            AbstractVariableDeclaration abstractVariableDeclaration = (AbstractVariableDeclaration) obj;
            if (abstractVariableDeclaration instanceof org.eclipse.jdt.internal.compiler.ast.FieldDeclaration) {
                variableBinding = getVariableBinding(((org.eclipse.jdt.internal.compiler.ast.FieldDeclaration) abstractVariableDeclaration).binding, variableDeclaration);
            } else {
                variableBinding = getVariableBinding(((LocalDeclaration) abstractVariableDeclaration).binding, variableDeclaration);
            }
            if (variableBinding == null) {
                return null;
            }
            this.bindingsToAstNodes.put(variableBinding, variableDeclaration);
            String key = variableBinding.getKey();
            if (key != null) {
                this.bindingTables.bindingKeysToBindings.put(key, variableBinding);
            }
            return variableBinding;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized ASTNode findDeclaringNode(String str) {
        if (str == null) {
            return null;
        }
        Object obj = this.bindingTables.bindingKeysToBindings.get(str);
        if (obj == null) {
            return null;
        }
        return (ASTNode) this.bindingsToAstNodes.get(obj);
    }

    @Override
    public synchronized ITypeBinding getTypeBinding(RecoveredTypeBinding recoveredTypeBinding, int i10) {
        if (recoveredTypeBinding == null) {
            return null;
        }
        return new RecoveredTypeBinding(this, recoveredTypeBinding, i10);
    }

    @Override
    public IMethodBinding resolveConstructor(EnumConstantDeclaration enumConstantDeclaration) {
        org.eclipse.jdt.internal.compiler.ast.Expression expression;
        org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode = (org.eclipse.jdt.internal.compiler.ast.ASTNode) this.newAstToOldAst.get(enumConstantDeclaration);
        if (!(aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.FieldDeclaration)) {
            return null;
        }
        org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDeclaration = (org.eclipse.jdt.internal.compiler.ast.FieldDeclaration) aSTNode;
        if (fieldDeclaration.getKind() != 3 || (expression = fieldDeclaration.initialization) == null) {
            return null;
        }
        return getMethodBinding(((AllocationExpression) expression).binding);
    }

    @Override
    public boolean isResolvedTypeInferredFromExpectedType(ClassInstanceCreation classInstanceCreation) {
        Object obj = this.newAstToOldAst.get(classInstanceCreation);
        if (obj instanceof AllocationExpression) {
            return ((AllocationExpression) obj).inferredReturnType;
        }
        return false;
    }

    @Override
    public synchronized IMethodBinding resolveMethod(MethodDeclaration methodDeclaration) {
        Object obj = this.newAstToOldAst.get(methodDeclaration);
        if (!(obj instanceof AbstractMethodDeclaration)) {
            return null;
        }
        IMethodBinding methodBinding = getMethodBinding(((AbstractMethodDeclaration) obj).binding);
        if (methodBinding == null) {
            return null;
        }
        this.bindingsToAstNodes.put(methodBinding, methodDeclaration);
        String key = methodBinding.getKey();
        if (key != null) {
            this.bindingTables.bindingKeysToBindings.put(key, methodBinding);
        }
        return methodBinding;
    }

    @Override
    public synchronized IMethodBinding resolveConstructor(SuperConstructorInvocation superConstructorInvocation) {
        org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode = (org.eclipse.jdt.internal.compiler.ast.ASTNode) this.newAstToOldAst.get(superConstructorInvocation);
        if (!(aSTNode instanceof ExplicitConstructorCall)) {
            return null;
        }
        return getMethodBinding(((ExplicitConstructorCall) aSTNode).binding);
    }

    @Override
    public ITypeBinding resolveType(EnumDeclaration enumDeclaration) {
        ITypeBinding typeBinding;
        Object obj = this.newAstToOldAst.get(enumDeclaration);
        if (!(obj instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) || (typeBinding = getTypeBinding(((org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) obj).binding)) == null) {
            return null;
        }
        this.bindingsToAstNodes.put(typeBinding, enumDeclaration);
        String key = typeBinding.getKey();
        if (key != null) {
            this.bindingTables.bindingKeysToBindings.put(key, typeBinding);
        }
        return typeBinding;
    }

    @Override
    public synchronized IVariableBinding getVariableBinding(org.eclipse.jdt.internal.compiler.lookup.VariableBinding variableBinding) {
        ProblemFieldBinding problemFieldBinding;
        int problemId;
        FieldBinding field;
        if (variableBinding != null) {
            if (variableBinding.isValidBinding()) {
                org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = variableBinding.type;
                if (typeBinding != null) {
                    if (!this.isRecoveringBindings && (typeBinding.tagBits & 128) != 0) {
                        return null;
                    }
                    IVariableBinding iVariableBinding = (IVariableBinding) this.bindingTables.compilerBindingsToASTBindings.get(variableBinding);
                    if (iVariableBinding != null) {
                        return iVariableBinding;
                    }
                    VariableBinding variableBinding2 = new VariableBinding(this, variableBinding);
                    this.bindingTables.compilerBindingsToASTBindings.put(variableBinding, variableBinding2);
                    return variableBinding2;
                }
            } else if ((variableBinding instanceof ProblemFieldBinding) && (((problemId = (problemFieldBinding = (ProblemFieldBinding) variableBinding).problemId()) == 2 || problemId == 6 || problemId == 7) && (field = problemFieldBinding.declaringClass.getField(problemFieldBinding.name, true)) != null)) {
                IVariableBinding iVariableBinding2 = (IVariableBinding) this.bindingTables.compilerBindingsToASTBindings.get(field);
                if (iVariableBinding2 != null) {
                    return iVariableBinding2;
                }
                VariableBinding variableBinding3 = new VariableBinding(this, field);
                this.bindingTables.compilerBindingsToASTBindings.put(field, variableBinding3);
                return variableBinding3;
            }
        }
        return null;
    }

    @Override
    public synchronized IMethodBinding resolveMethod(MethodInvocation methodInvocation) {
        Object obj = this.newAstToOldAst.get(methodInvocation);
        if (!(obj instanceof MessageSend)) {
            return null;
        }
        return getMethodBinding(((MessageSend) obj).binding);
    }

    @Override
    public synchronized ITypeBinding resolveType(Type type) {
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding;
        int i10;
        TypeConstants typeConstants = (org.eclipse.jdt.internal.compiler.ast.ASTNode) this.newAstToOldAst.get(type);
        if (type.getAST().apiLevel() >= 10 && type.isVar()) {
            return resolveTypeBindingForName(((SimpleType) type).getName());
        }
        if (typeConstants != null) {
            if (typeConstants instanceof Receiver) {
                typeConstants = ((Receiver) typeConstants).type;
            }
            boolean z10 = true;
            if (typeConstants instanceof ParameterizedQualifiedTypeReference) {
                ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = (ParameterizedQualifiedTypeReference) typeConstants;
                typeBinding = parameterizedQualifiedTypeReference.resolvedType;
                if (typeBinding == null) {
                    return null;
                }
                if (type.isArrayType()) {
                    if (this.scope == null) {
                        return null;
                    }
                    ArrayBinding arrayBinding = (ArrayBinding) typeBinding;
                    int dimensions = ((ArrayType) type).getDimensions();
                    boolean isVarargs = parameterizedQualifiedTypeReference.isVarargs();
                    if (dimensions == arrayBinding.dimensions) {
                        return getTypeBinding(arrayBinding);
                    }
                    return getTypeBinding(this.scope.createArrayType(arrayBinding.leafComponentType, dimensions, getTypeAnnotations(dimensions, arrayBinding, isVarargs)));
                }
                if (typeBinding.isArrayType()) {
                    typeBinding = ((ArrayBinding) typeBinding).leafComponentType;
                }
                if (type.isQualifiedType()) {
                    i10 = ((QualifiedType) type).index;
                } else {
                    i10 = type.isParameterizedType() ? ((ParameterizedType) type).index : 1;
                }
                int typeCount = getTypeCount(parameterizedQualifiedTypeReference);
                if (i10 != typeCount) {
                    while (typeCount != i10) {
                        typeBinding = typeBinding.enclosingType();
                        typeCount--;
                    }
                }
            } else if (typeConstants instanceof TypeReference) {
                if ((type instanceof SimpleType) && (typeConstants instanceof QualifiedTypeReference)) {
                    return resolveTypeBindingForName(((SimpleType) type).getName());
                }
                if (type instanceof QualifiedType) {
                    return resolveTypeBindingForName(((QualifiedType) type).getName());
                }
                if (type instanceof NameQualifiedType) {
                    return resolveTypeBindingForName(((NameQualifiedType) type).getName());
                }
                typeBinding = ((TypeReference) typeConstants).resolvedType;
            } else if ((typeConstants instanceof SingleNameReference) && ((SingleNameReference) typeConstants).isTypeReference()) {
                typeBinding = ((SingleNameReference) typeConstants).resolvedType;
            } else if ((typeConstants instanceof QualifiedNameReference) && ((QualifiedNameReference) typeConstants).isTypeReference()) {
                typeBinding = ((QualifiedNameReference) typeConstants).resolvedType;
            } else {
                typeBinding = typeConstants instanceof ArrayAllocationExpression ? ((ArrayAllocationExpression) typeConstants).resolvedType : null;
            }
            if (typeBinding != null) {
                if (type.isArrayType()) {
                    ArrayType arrayType = (ArrayType) type;
                    if (this.scope == null) {
                        return null;
                    }
                    ArrayBinding arrayBinding2 = (ArrayBinding) typeBinding;
                    int dimensions2 = arrayType.getDimensions();
                    if (!(typeConstants instanceof TypeReference) || !((TypeReference) typeConstants).isVarargs()) {
                        z10 = false;
                    }
                    if (dimensions2 == arrayBinding2.dimensions) {
                        return getTypeBinding(arrayBinding2);
                    }
                    return getTypeBinding(this.scope.createArrayType(arrayBinding2.leafComponentType, dimensions2, getTypeAnnotations(dimensions2, arrayBinding2, z10)));
                }
                if (typeBinding.isArrayType()) {
                    return getTypeBinding(((ArrayBinding) typeBinding).leafComponentType);
                }
                return getTypeBinding(typeBinding);
            }
        } else if (type.isPrimitiveType() && ((PrimitiveType) type).getPrimitiveTypeCode() == PrimitiveType.VOID) {
            return getTypeBinding(org.eclipse.jdt.internal.compiler.lookup.TypeBinding.VOID);
        }
        return null;
    }

    @Override
    public synchronized IMethodBinding resolveMethod(MethodReference methodReference) {
        Object obj = this.newAstToOldAst.get(methodReference);
        if (!(obj instanceof ReferenceExpression)) {
            return null;
        }
        ReferenceExpression referenceExpression = (ReferenceExpression) obj;
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = referenceExpression.receiverType;
        if (typeBinding != null && typeBinding.isArrayType()) {
            return null;
        }
        IMethodBinding methodBinding = getMethodBinding(referenceExpression.getMethodBinding());
        if (methodBinding == null) {
            return null;
        }
        return methodBinding;
    }

    @Override
    public synchronized IMethodBinding resolveMethod(SuperMethodInvocation superMethodInvocation) {
        Object obj = this.newAstToOldAst.get(superMethodInvocation);
        if (!(obj instanceof MessageSend)) {
            return null;
        }
        return getMethodBinding(((MessageSend) obj).binding);
    }

    @Override
    public synchronized ITypeBinding resolveType(TypeDeclaration typeDeclaration) {
        Object obj = this.newAstToOldAst.get(typeDeclaration);
        if (!(obj instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration)) {
            return null;
        }
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration2 = (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) obj;
        ITypeBinding internalGetTypeBinding = internalGetTypeBinding(typeDeclaration2.binding, getDeclaringMember(typeDeclaration2, typeDeclaration2.scope));
        if (internalGetTypeBinding == null) {
            return null;
        }
        this.bindingsToAstNodes.put(internalGetTypeBinding, typeDeclaration);
        String key = internalGetTypeBinding.getKey();
        if (key != null) {
            this.bindingTables.bindingKeysToBindings.put(key, internalGetTypeBinding);
        }
        return internalGetTypeBinding;
    }
}
