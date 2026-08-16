.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword3;
.super Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword;


# instance fields
.field private possibleKeywords:[[C

.field private tryOrCatch:Z


# direct methods
.method public constructor <init>([CJ[C)V
    .locals 6

    .line 1
    filled-new-array {p4}, [[C

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword3;-><init>([CJ[[CZ)V

    return-void
.end method

.method public constructor <init>([CJ[[CZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;-><init>([CJ)V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    .line 4
    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword3;->possibleKeywords:[[C

    .line 5
    iput-boolean p5, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword3;->tryOrCatch:Z

    return-void
.end method


# virtual methods
.method public afterTryOrCatch()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword3;->tryOrCatch:Z

    return v0
.end method

.method public getPossibleKeywords()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword3;->possibleKeywords:[[C

    return-object v0
.end method

.method public getToken()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    return-object v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    const-string p1, "<CompleteOnKeyword:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0
.end method
