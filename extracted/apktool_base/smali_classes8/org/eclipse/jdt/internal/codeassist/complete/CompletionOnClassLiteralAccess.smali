.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnClassLiteralAccess;
.super Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;
.source "SourceFile"


# instance fields
.field public classStart:I

.field public completionIdentifier:[C


# direct methods
.method public constructor <init>(JLorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V
    .locals 1

    long-to-int v0, p1

    invoke-direct {p0, v0, p3}, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;-><init>(ILorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    const/16 p3, 0x20

    ushr-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnClassLiteralAccess;->classStart:I

    return-void
.end method


# virtual methods
.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    const-string p1, "<CompleteOnClassLiteralAccess:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnClassLiteralAccess;->completionIdentifier:[C

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>()V

    throw p1

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;->targetType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v0, p0, v1, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0
.end method
