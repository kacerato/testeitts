.class public Lorg/eclipse/jdt/internal/eval/CodeSnippetThisReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/eval/EvaluationConstants;
.implements Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;


# instance fields
.field delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

.field evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

.field isImplicit:Z


# direct methods
.method public constructor <init>(IILorg/eclipse/jdt/internal/eval/EvaluationContext;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;-><init>(II)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetThisReference;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetThisReference;->isImplicit:Z

    return-void
.end method


# virtual methods
.method public checkAccess(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetThisReference;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->isConstructorCall:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->fieldsOrThisBeforeConstructorInvocation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return v3

    :cond_0
    iget-object v2, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->declaringTypeName:[C

    if-eqz v2, :cond_2

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->isStatic:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->tagAsAccessingEnclosingInstanceStateOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->errorThisSuperInStatic(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return v3
.end method

.method public freshInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 2

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetThisReference;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 v0, 0x0

    const/16 v1, -0x4c

    invoke-virtual {p2, v1, p3, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_0
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public genericTypeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isSuperAccess()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTypeAccess()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetThisReference;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->declaringTypeName:[C

    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-nez p1, :cond_0

    const-string p1, "<NO DECLARING TYPE>"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_0
    const-string p1, ")this"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetThisReference;->isImplicit:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetThisReference;->checkAccess(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->DELEGATE_THIS:[C

    invoke-virtual {p1, v0, v2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetThisReference;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetThisReference;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_2
    :goto_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->errorThisSuperInStatic(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-object v3
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
