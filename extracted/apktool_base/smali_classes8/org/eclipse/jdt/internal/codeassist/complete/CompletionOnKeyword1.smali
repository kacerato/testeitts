.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;
.super Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword;


# instance fields
.field private possibleKeywords:[[C


# direct methods
.method public constructor <init>([CJ[C)V
    .locals 0

    .line 1
    filled-new-array {p4}, [[C

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;-><init>([CJ[[C)V

    return-void
.end method

.method public constructor <init>([CJ[[C)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    .line 3
    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;->possibleKeywords:[[C

    return-void
.end method


# virtual methods
.method public aboutToResolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public getPossibleKeywords()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword1;->possibleKeywords:[[C

    return-object v0
.end method

.method public getToken()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    return-object v0
.end method

.method public getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    const-string p1, "<CompleteOnKeyword:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method
