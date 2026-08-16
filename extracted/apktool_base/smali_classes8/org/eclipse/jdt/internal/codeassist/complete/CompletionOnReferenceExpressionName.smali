.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnReferenceExpressionName;
.super Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;)V

    return-void
.end method


# virtual methods
.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    const-string p1, "<CompletionOnReferenceExpressionName:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p1, "::"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/16 v1, 0x3e

    if-eqz p1, :cond_1

    const/16 p1, 0x3c

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    move v2, v0

    :goto_0
    if-lt v2, p1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object p1, v2, p1

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v3, ", "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_5

    array-length v2, v2

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v5, 0x310000

    cmp-long v0, v3, v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    new-array v5, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->resolvedTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_1
    if-lt v3, v2, :cond_2

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>()V

    throw p1

    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v5, v5, v3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->resolvedTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v5, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    aput-object v7, v6, v3

    if-nez v7, :cond_3

    move v0, v4

    :cond_3
    if-eqz v0, :cond_4

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalUsageOfWildcard(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {v0, p0, v1, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0

    :cond_6
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>()V

    throw p1
.end method
