.class public Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;
.super Lorg/eclipse/jdt/internal/compiler/ast/Statement;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ast/Invocation;


# static fields
.field public static final ImplicitSuper:I = 0x1

.field public static final Super:I = 0x2

.field public static final This:I = 0x3


# instance fields
.field public accessMode:I

.field public arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field public binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public implicitArguments:[[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

.field public qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

.field public typeArgumentsSourceStart:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->analyseResourceLeaks:Z

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v3, v3

    move v4, v0

    :goto_1
    if-lt v4, v3, :cond_1

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseArguments(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    if-eqz v1, :cond_2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v5, v5, v4

    invoke-static {p1, v5, p3, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->markPassedToOutside(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v1, v3, :cond_6

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, v3, v2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawTypes([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    :cond_4
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    if-ne v3, v2, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto :goto_3

    :cond_5
    move-object v2, p0

    :goto_3
    invoke-virtual {p2, v1, v2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->checkExceptionHandlers([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_6
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->manageEnclosingInstanceAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iput-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    return-object p3

    :goto_4
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iput-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    throw p2
.end method

.method public arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    return-object v0
.end method

.method public binding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0
.end method

.method public cleanUpInferenceContexts()V
    .locals 0

    return-void
.end method

.method public freshInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    return-object v0
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 7

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v5, 0x29

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_1()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iload_2()V

    :cond_2
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_3

    move-object v4, v5

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :goto_1
    invoke-virtual {p2, p1, v3, v4, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticEnclosingInstanceValues(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v4, v6, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->generateArguments(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2, p1, v3, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticOuterArgumentValues(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/16 v4, -0x49

    if-eqz v3, :cond_7

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v3, v3

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v2

    sub-int/2addr v3, v2

    move v2, v0

    :goto_2
    if-lt v2, v3, :cond_6

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2, v4, v2, v5, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2, v4, v2, v5, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :goto_3
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iput-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    return-void

    :goto_4
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iput-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    throw p2
.end method

.method public genericTypeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public getInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isImplicitSuper()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSuperAccess()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTypeAccess()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public manageEnclosingInstanceAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr p2, v1

    if-nez p2, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->addInnerEmulationDependent(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)V

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->propagateInnerEmulation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 5

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isNestmateOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v3, 0x10

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v3, 0x300000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    iget-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->isSuperAccess()Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->needToEmulateMethodAccess(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const-string v1, ", "

    if-eqz p1, :cond_2

    const/16 p1, 0x3c

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    move v2, v0

    :goto_0
    if-lt v2, p1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object p1, v2, p1

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    const-string p1, "this("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const-string p1, "super("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_6

    move p1, v0

    :goto_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v2, v2

    if-lt p1, v2, :cond_4

    goto :goto_4

    :cond_4
    if-lez p1, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    const-string p1, ");"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public registerInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V
    .locals 0

    return-void
.end method

.method public registerResult(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 0

    return-void
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v4

    if-eqz v4, :cond_22

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v5

    if-eqz v5, :cond_22

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eq v4, p0, :cond_0

    goto/16 :goto_b

    :cond_0
    iput-boolean v2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v5

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v5, :cond_1

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v6, v4

    move v4, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_10

    :cond_1
    move-object v6, v4

    move v4, v1

    :goto_0
    const/16 v5, 0x29

    if-eqz v6, :cond_5

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    if-ne v7, v0, :cond_2

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v7, v5, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v8

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v7, p0, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotInvokeSuperConstructorInEnum(Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_2
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v7, :cond_5

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    if-eq v7, v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v7, v8, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryEnclosingInstanceSpecification(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_3
    if-nez v4, :cond_5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v7, v8, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryEnclosingInstanceSpecification(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v7, v7, 0x2000

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v8, p1, v7}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v8, p1, v7, v7}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v7

    iget-wide v7, v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v9, :cond_c

    const-wide/32 v10, 0x310000

    cmp-long v7, v7, v10

    if-gez v7, :cond_6

    move v7, v2

    goto :goto_2

    :cond_6
    move v7, v1

    :goto_2
    array-length v8, v9

    new-array v9, v8, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v9, v1

    :goto_3
    if-lt v9, v8, :cond_9

    if-eqz v7, :cond_c

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_8

    array-length v0, v0

    move v4, v1

    :goto_4
    if-lt v4, v0, :cond_7

    goto :goto_5

    :cond_7
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v4, v2

    goto :goto_4

    :cond_8
    :goto_5
    iput-boolean v1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    return-void

    :cond_9
    :try_start_1
    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v10, v10, v9

    iget-object v11, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v10, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v12

    aput-object v12, v11, v9

    if-nez v12, :cond_a

    move v7, v2

    :cond_a
    if-eqz v7, :cond_b

    instance-of v11, v10, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-eqz v11, :cond_b

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v11

    invoke-virtual {v11, v10}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalUsageOfWildcard(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_b
    add-int/2addr v9, v2

    goto :goto_3

    :cond_c
    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/high16 v12, 0x8000000

    if-eqz v8, :cond_16

    array-length v0, v8

    new-array v5, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v1

    move v8, v7

    move v9, v8

    :goto_6
    if-lt v7, v0, :cond_13

    if-eqz v8, :cond_12

    if-nez v6, :cond_d

    iput-boolean v1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    return-void

    :cond_d
    :try_start_2
    new-array v7, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_10

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, v6

    move-object v6, v0

    move-object v8, p0

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v2, v4, :cond_e

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object v0

    :cond_e
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isOrEnclosedByPrivateType()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isDefinedInMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    if-nez p1, :cond_f

    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/2addr p1, v12

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_f
    iput-boolean v1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    return-void

    :cond_10
    :try_start_3
    aget-object v2, v5, v0

    if-nez v2, :cond_11

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    :cond_11
    aput-object v2, v7, v0

    goto :goto_7

    :cond_12
    move v10, v9

    move-object v9, v5

    goto :goto_8

    :cond_13
    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v10, v10, v7

    instance-of v11, v10, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v11, :cond_14

    iget v9, v10, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v9, v9, 0x20

    iput v9, v10, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    move v9, v2

    :cond_14
    sget-object v11, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->INVOCATION_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {v10, v11}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    invoke-virtual {v10, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    aput-object v10, v5, v7

    if-nez v10, :cond_15

    move v8, v2

    :cond_15
    add-int/2addr v7, v2

    goto/16 :goto_6

    :cond_16
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v8, v5, :cond_17

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangString()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v5, v0, v1

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    aput-object v5, v0, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, v0

    move v10, v1

    goto :goto_8

    :cond_17
    move v10, v1

    move-object v9, v7

    :goto_8
    if-nez v6, :cond_18

    iput-boolean v1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    return-void

    :cond_18
    :try_start_4
    invoke-virtual {p0, p1, p0, v6, v9}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->findConstructorBinding(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Invocation;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v7, 0x80

    and-long/2addr v4, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-eqz v0, :cond_19

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, p0, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingTypeInConstructor(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_19
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    if-eq v4, v2, :cond_1a

    goto :goto_9

    :cond_1a
    move v2, v1

    :goto_9
    invoke-virtual {p0, v0, p1, v2, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isMethodUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, v2, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1b
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v5, 0x0

    move-object v4, p1

    move-object v11, p0

    invoke-static/range {v4 .. v11}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->checkInvocationArguments(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_1c
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isOrEnclosedByPrivateType()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/2addr v2, v12

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_1d
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v0, v2, :cond_21

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p1, v0, v2, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryTypeArgumentsForMethodInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto :goto_a

    :cond_1e
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v2, :cond_1f

    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1f
    if-eqz v4, :cond_20

    iput-boolean v1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    return-void

    :cond_20
    :try_start_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidConstructor(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_21
    :goto_a
    iput-boolean v1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    return-void

    :cond_22
    :goto_b
    :try_start_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidExplicitConstructorCall(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_23

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_23
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_25

    array-length v0, v0

    move v4, v1

    :goto_c
    if-lt v4, v0, :cond_24

    goto :goto_d

    :cond_24
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    add-int/2addr v4, v2

    goto :goto_c

    :cond_25
    :goto_d
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_27

    array-length v0, v0

    move v4, v1

    :goto_e
    if-lt v4, v0, :cond_26

    goto :goto_f

    :cond_26
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/2addr v4, v2

    goto :goto_e

    :cond_27
    :goto_f
    iput-boolean v1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    return-void

    :goto_10
    iput-boolean v1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    throw p1
.end method

.method public setActualReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 0

    return-void
.end method

.method public setDepth(I)V
    .locals 0

    return-void
.end method

.method public setFieldIndex(I)V
    .locals 0

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 4

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_4

    array-length v0, v0

    :goto_2
    if-lt v1, v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
