.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMemberAccess;
.super Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;
.source "SourceFile"


# instance fields
.field public isInsideAnnotation:Z


# direct methods
.method public constructor <init>([CJZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;-><init>([CJ)V

    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMemberAccess;->isInsideAnnotation:Z

    return-void
.end method


# virtual methods
.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    const-string p1, "<CompleteOnMemberAccess:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    array-length v3, v1

    :goto_0
    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v1, v2

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v5, v4, v2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>()V

    throw p1

    :cond_3
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    const/4 v2, 0x1

    invoke-direct {v1, v0, v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {v0, p0, v1, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v0, p0, v1, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0

    :cond_6
    :goto_2
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>()V

    throw p1
.end method
