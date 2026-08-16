.class public Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnLambdaExpression;
.super Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)V
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Z)V

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->hasParentheses:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->hasParentheses:Z

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->statementEnd:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->statementEnd:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body()Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->setBody(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->setArguments([Lorg/eclipse/jdt/internal/compiler/ast/Argument;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arrowPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->setArrowPosition(I)V

    return-void
.end method


# virtual methods
.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->original:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eq p2, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method
