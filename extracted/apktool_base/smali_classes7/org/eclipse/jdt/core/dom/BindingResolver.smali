.class Lorg/eclipse/jdt/core/dom/BindingResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findDeclaringNode(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeclaringNode(Lorg/eclipse/jdt/core/dom/IAnnotationBinding;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeclaringNode(Lorg/eclipse/jdt/core/dom/IBinding;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 0

    .line 3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnnotationInstance(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCorrespondingNode(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMemberValuePairBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getModuleBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/core/dom/IModuleBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTypeBinding(Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;I)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTypeBinding(Lorg/eclipse/jdt/core/dom/Type;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTypeBinding(Lorg/eclipse/jdt/core/dom/VariableDeclaration;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 0

    .line 3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 0

    .line 4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getWorkingCopyOwner()Lorg/eclipse/jdt/core/WorkingCopyOwner;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isResolvedTypeInferredFromExpectedType(Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public isResolvedTypeInferredFromExpectedType(Lorg/eclipse/jdt/core/dom/MethodInvocation;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public isResolvedTypeInferredFromExpectedType(Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public lookupEnvironment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public recordScope(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    return-void
.end method

.method public resolveAnnotation(Lorg/eclipse/jdt/core/dom/Annotation;)Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveArrayType(Lorg/eclipse/jdt/core/dom/ITypeBinding;I)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveBoxing(Lorg/eclipse/jdt/core/dom/Expression;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public resolveConstantExpressionValue(Lorg/eclipse/jdt/core/dom/Expression;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveConstructor(Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveConstructor(Lorg/eclipse/jdt/core/dom/ConstructorInvocation;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveConstructor(Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 0

    .line 3
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveConstructor(Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 0

    .line 4
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveExpressionType(Lorg/eclipse/jdt/core/dom/Expression;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveField(Lorg/eclipse/jdt/core/dom/FieldAccess;)Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveField(Lorg/eclipse/jdt/core/dom/SuperFieldAccess;)Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveImport(Lorg/eclipse/jdt/core/dom/ImportDeclaration;)Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveMember(Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveMemberValuePair(Lorg/eclipse/jdt/core/dom/MemberValuePair;)Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveMethod(Lorg/eclipse/jdt/core/dom/LambdaExpression;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveMethod(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveMethod(Lorg/eclipse/jdt/core/dom/MethodInvocation;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 0

    .line 3
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveMethod(Lorg/eclipse/jdt/core/dom/MethodReference;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 0

    .line 4
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveMethod(Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 0

    .line 5
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveModule(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)Lorg/eclipse/jdt/core/dom/IModuleBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveName(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public resolvePackage(Lorg/eclipse/jdt/core/dom/PackageDeclaration;)Lorg/eclipse/jdt/core/dom/IPackageBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveReference(Lorg/eclipse/jdt/core/dom/MemberRef;)Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveReference(Lorg/eclipse/jdt/core/dom/MethodRef;)Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/core/dom/EnumDeclaration;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 0

    .line 3
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/core/dom/Type;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 0

    .line 4
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 0

    .line 5
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveTypeParameter(Lorg/eclipse/jdt/core/dom/TypeParameter;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveUnboxing(Lorg/eclipse/jdt/core/dom/Expression;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public resolveVariable(Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;)Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveVariable(Lorg/eclipse/jdt/core/dom/VariableDeclaration;)Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveWellKnownType(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public scope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public store(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 0

    return-void
.end method

.method public updateKey(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 0

    return-void
.end method
