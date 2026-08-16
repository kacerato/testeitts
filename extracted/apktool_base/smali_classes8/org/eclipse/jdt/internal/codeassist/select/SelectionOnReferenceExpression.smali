.class public Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnReferenceExpression;
.super Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/parser/Scanner;)V
    .locals 6

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;)V

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->initialize(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[CI)V

    return-void
.end method


# virtual methods
.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->original:Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method
